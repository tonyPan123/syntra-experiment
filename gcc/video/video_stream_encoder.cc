/*
 *  Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#include "video/video_stream_encoder.h"

#include <algorithm>
#include <array>
#include <limits>
#include <memory>
#include <numeric>
#include <utility>

#include "absl/algorithm/container.h"
#include "absl/types/optional.h"
#include "api/video/encoded_image.h"
#include "api/video/i420_buffer.h"
#include "api/video/video_adaptation_reason.h"
#include "api/video/video_bitrate_allocator_factory.h"
#include "api/video/video_codec_constants.h"
#include "api/video_codecs/video_encoder.h"
#include "call/adaptation/resource_adaptation_processor.h"
#include "modules/video_coding/codecs/vp9/svc_rate_allocator.h"
#include "modules/video_coding/include/video_codec_initializer.h"
#include "rtc_base/arraysize.h"
#include "rtc_base/checks.h"
#include "rtc_base/experiments/alr_experiment.h"
#include "rtc_base/experiments/rate_control_settings.h"
#include "rtc_base/location.h"
#include "rtc_base/logging.h"
#include "rtc_base/strings/string_builder.h"
#include "rtc_base/time_utils.h"
#include "rtc_base/trace_event.h"
#include "system_wrappers/include/field_trial.h"
#include "video/adaptation/video_stream_encoder_resource_manager.h"

namespace webrtc {

namespace {

// Time interval for logging frame counts.
const int64_t kFrameLogIntervalMs = 60000;

// Time to keep a single cached pending frame in paused state.
const int64_t kPendingFrameTimeoutMs = 1000;

constexpr char kFrameDropperFieldTrial[] = "WebRTC-FrameDropper";

// Averaging window spanning 90 frames at default 30fps, matching old media
// optimization module defaults.
const int64_t kFrameRateAvergingWindowSizeMs = (1000 / 30) * 90;

const size_t kDefaultPayloadSize = 1440;

const int64_t kParameterUpdateIntervalMs = 1000;

// Animation is capped to 720p.
constexpr int kMaxAnimationPixels = 1280 * 720;

bool RequiresEncoderReset(const VideoCodec& prev_send_codec,
                          const VideoCodec& new_send_codec,
                          bool was_encode_called_since_last_initialization) {
  // Does not check max/minBitrate or maxFramerate.
  if (new_send_codec.codecType != prev_send_codec.codecType ||
      new_send_codec.width != prev_send_codec.width ||
      new_send_codec.height != prev_send_codec.height ||
      new_send_codec.qpMax != prev_send_codec.qpMax ||
      new_send_codec.numberOfSimulcastStreams !=
          prev_send_codec.numberOfSimulcastStreams ||
      new_send_codec.mode != prev_send_codec.mode) {
    return true;
  }

  if (!was_encode_called_since_last_initialization &&
      (new_send_codec.startBitrate != prev_send_codec.startBitrate)) {
    // If start bitrate has changed reconfigure encoder only if encoding had not
    // yet started.
    return true;
  }

  switch (new_send_codec.codecType) {
    case kVideoCodecVP8:
      if (new_send_codec.VP8() != prev_send_codec.VP8()) {
        return true;
      }
      break;

    case kVideoCodecVP9:
      if (new_send_codec.VP9() != prev_send_codec.VP9()) {
        return true;
      }
      break;

    case kVideoCodecH264:
      if (new_send_codec.H264() != prev_send_codec.H264()) {
        return true;
      }
      break;

    default:
      break;
  }

  for (unsigned char i = 0; i < new_send_codec.numberOfSimulcastStreams; ++i) {
    if (new_send_codec.simulcastStream[i].width !=
            prev_send_codec.simulcastStream[i].width ||
        new_send_codec.simulcastStream[i].height !=
            prev_send_codec.simulcastStream[i].height ||
        new_send_codec.simulcastStream[i].maxFramerate !=
            prev_send_codec.simulcastStream[i].maxFramerate ||
        new_send_codec.simulcastStream[i].numberOfTemporalLayers !=
            prev_send_codec.simulcastStream[i].numberOfTemporalLayers ||
        new_send_codec.simulcastStream[i].qpMax !=
            prev_send_codec.simulcastStream[i].qpMax ||
        new_send_codec.simulcastStream[i].active !=
            prev_send_codec.simulcastStream[i].active) {
      return true;
    }
  }
  return false;
}

std::array<uint8_t, 2> GetExperimentGroups() {
  std::array<uint8_t, 2> experiment_groups;
  absl::optional<AlrExperimentSettings> experiment_settings =
      AlrExperimentSettings::CreateFromFieldTrial(
          AlrExperimentSettings::kStrictPacingAndProbingExperimentName);
  if (experiment_settings) {
    experiment_groups[0] = experiment_settings->group_id + 1;
  } else {
    experiment_groups[0] = 0;
  }
  experiment_settings = AlrExperimentSettings::CreateFromFieldTrial(
      AlrExperimentSettings::kScreenshareProbingBweExperimentName);
  if (experiment_settings) {
    experiment_groups[1] = experiment_settings->group_id + 1;
  } else {
    experiment_groups[1] = 0;
  }
  return experiment_groups;
}

// Limit allocation across TLs in bitrate allocation according to number of TLs
// in EncoderInfo.
VideoBitrateAllocation UpdateAllocationFromEncoderInfo(
    const VideoBitrateAllocation& allocation,
    const VideoEncoder::EncoderInfo& encoder_info) {
  if (allocation.get_sum_bps() == 0) {
    return allocation;
  }
  VideoBitrateAllocation new_allocation;
  for (int si = 0; si < kMaxSpatialLayers; ++si) {
    if (encoder_info.fps_allocation[si].size() == 1 &&
        allocation.IsSpatialLayerUsed(si)) {
      // One TL is signalled to be used by the encoder. Do not distribute
      // bitrate allocation across TLs (use sum at ti:0).
      new_allocation.SetBitrate(si, 0, allocation.GetSpatialLayerSum(si));
    } else {
      for (int ti = 0; ti < kMaxTemporalStreams; ++ti) {
        if (allocation.HasBitrate(si, ti))
          new_allocation.SetBitrate(si, ti, allocation.GetBitrate(si, ti));
      }
    }
  }
  new_allocation.set_bw_limited(allocation.is_bw_limited());
  return new_allocation;
}

}  //  namespace

VideoStreamEncoder::EncoderRateSettings::EncoderRateSettings()
    : rate_control(),
      encoder_target(DataRate::Zero()),
      stable_encoder_target(DataRate::Zero()) {}

VideoStreamEncoder::EncoderRateSettings::EncoderRateSettings(
    const VideoBitrateAllocation& bitrate,
    double framerate_fps,
    DataRate bandwidth_allocation,
    DataRate encoder_target,
    DataRate stable_encoder_target)
    : rate_control(bitrate, framerate_fps, bandwidth_allocation),
      encoder_target(encoder_target),
      stable_encoder_target(stable_encoder_target) {}

bool VideoStreamEncoder::EncoderRateSettings::operator==(
    const EncoderRateSettings& rhs) const {
  return rate_control == rhs.rate_control &&
         encoder_target == rhs.encoder_target &&
         stable_encoder_target == rhs.stable_encoder_target;
}

bool VideoStreamEncoder::EncoderRateSettings::operator!=(
    const EncoderRateSettings& rhs) const {
  return !(*this == rhs);
}

VideoStreamEncoder::VideoStreamEncoder(
    Clock* clock,
    uint32_t number_of_cores,
    VideoStreamEncoderObserver* encoder_stats_observer,
    const VideoStreamEncoderSettings& settings,
    std::unique_ptr<OveruseFrameDetector> overuse_detector,
    TaskQueueFactory* task_queue_factory)
    : shutdown_event_(true /* manual_reset */, false),
      number_of_cores_(number_of_cores),
      quality_scaling_experiment_enabled_(QualityScalingExperiment::Enabled()),
      sink_(nullptr),
      settings_(settings),
      rate_control_settings_(RateControlSettings::ParseFromFieldTrials()),
      encoder_selector_(settings.encoder_factory->GetEncoderSelector()),
      encoder_stats_observer_(encoder_stats_observer),
      encoder_initialized_(false),
      max_framerate_(-1),
      pending_encoder_reconfiguration_(false),
      pending_encoder_creation_(false),
      crop_width_(0),
      crop_height_(0),
      encoder_target_bitrate_bps_(absl::nullopt),
      max_data_payload_length_(0),
      encoder_paused_and_dropped_frame_(false),
      was_encode_called_since_last_initialization_(false),
      encoder_failed_(false),
      clock_(clock),
      posted_frames_waiting_for_encode_(0),
      last_captured_timestamp_(0),
      delta_ntp_internal_ms_(clock_->CurrentNtpInMilliseconds() -
                             clock_->TimeInMilliseconds()),
      last_frame_log_ms_(clock_->TimeInMilliseconds()),
      captured_frame_count_(0),
      dropped_frame_cwnd_pushback_count_(0),
      dropped_frame_encoder_block_count_(0),
      pending_frame_post_time_us_(0),
      accumulated_update_rect_{0, 0, 0, 0},
      accumulated_update_rect_is_valid_(true),
      animation_start_time_(Timestamp::PlusInfinity()),
      cap_resolution_due_to_video_content_(false),
      expect_resize_state_(ExpectResizeState::kNoResize),
      bitrate_observer_(nullptr),
      fec_controller_override_(nullptr),
      force_disable_frame_dropper_(false),
      input_framerate_(kFrameRateAvergingWindowSizeMs, 1000),
      pending_frame_drops_(0),
      cwnd_frame_counter_(0),
      next_frame_types_(1, VideoFrameType::kVideoFrameDelta),
      frame_encode_metadata_writer_(this),
      experiment_groups_(GetExperimentGroups()),
      next_frame_id_(0),
      encoder_switch_experiment_(ParseEncoderSwitchFieldTrial()),
      automatic_animation_detection_experiment_(
          ParseAutomatincAnimationDetectionFieldTrial()),
      encoder_switch_requested_(false),
      input_state_provider_(encoder_stats_observer),
      resource_adaptation_processor_(
          std::make_unique<ResourceAdaptationProcessor>(
              &input_state_provider_,
              encoder_stats_observer)),
      stream_resource_manager_(&input_state_provider_,
                               encoder_stats_observer,
                               clock_,
                               settings_.experiment_cpu_load_estimator,
                               std::move(overuse_detector)),
      video_source_sink_controller_(/*sink=*/this,
                                    /*source=*/nullptr),
      resource_adaptation_queue_(task_queue_factory->CreateTaskQueue(
          "ResourceAdaptationQueue",
          TaskQueueFactory::Priority::NORMAL)),
      encoder_queue_(task_queue_factory->CreateTaskQueue(
          "EncoderQueue",
          TaskQueueFactory::Priority::NORMAL)) {
  RTC_DCHECK(encoder_stats_observer);
  RTC_DCHECK_GE(number_of_cores, 1);

  stream_resource_manager_.Initialize(&encoder_queue_,
                                      &resource_adaptation_queue_);

  rtc::Event initialize_processor_event;
  resource_adaptation_queue_.PostTask([this, &initialize_processor_event] {
    RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
    resource_adaptation_processor_->InitializeOnResourceAdaptationQueue();
    stream_resource_manager_.SetAdaptationProcessor(
        resource_adaptation_processor_.get());
    resource_adaptation_processor_->AddAdaptationListener(
        &stream_resource_manager_);
    resource_adaptation_processor_->AddAdaptationListener(this);
    // Add the stream resource manager's resources to the processor.
    for (Resource* resource : stream_resource_manager_.MappedResources())
      resource_adaptation_processor_->AddResource(resource);
    initialize_processor_event.Set();
  });
  initialize_processor_event.Wait(rtc::Event::kForever);

  for (auto& state : encoder_buffer_state_)
    state.fill(std::numeric_limits<int64_t>::max());
}

VideoStreamEncoder::~VideoStreamEncoder() {
  RTC_DCHECK_RUN_ON(&thread_checker_);
  RTC_DCHECK(shutdown_event_.Wait(0))
      << "Must call ::Stop() before destruction.";
}

void VideoStreamEncoder::Stop() {
  RTC_DCHECK_RUN_ON(&thread_checker_);
  video_source_sink_controller_.SetSource(nullptr);

  rtc::Event shutdown_adaptation_processor_event;
  resource_adaptation_queue_.PostTask([this,
                                       &shutdown_adaptation_processor_event] {
    RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
    if (resource_adaptation_processor_) {
      resource_adaptation_processor_->StopResourceAdaptation();
      for (Resource* resource : stream_resource_manager_.MappedResources()) {
        resource_adaptation_processor_->RemoveResource(resource);
      }
      resource_adaptation_processor_->RemoveAdaptationListener(this);
      resource_adaptation_processor_->RemoveAdaptationListener(
          &stream_resource_manager_);
      stream_resource_manager_.SetAdaptationProcessor(nullptr);
      resource_adaptation_processor_.reset();
    }
    shutdown_adaptation_processor_event.Set();
  });
  shutdown_adaptation_processor_event.Wait(rtc::Event::kForever);
  encoder_queue_.PostTask([this] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    stream_resource_manager_.StopManagedResources();
    rate_allocator_ = nullptr;
    bitrate_observer_ = nullptr;
    ReleaseEncoder();
    shutdown_event_.Set();
  });
  shutdown_event_.Wait(rtc::Event::kForever);
}

void VideoStreamEncoder::SetBitrateAllocationObserver(
    VideoBitrateAllocationObserver* bitrate_observer) {
  RTC_DCHECK_RUN_ON(&thread_checker_);
  encoder_queue_.PostTask([this, bitrate_observer] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    RTC_DCHECK(!bitrate_observer_);
    bitrate_observer_ = bitrate_observer;
  });
}

void VideoStreamEncoder::SetFecControllerOverride(
    FecControllerOverride* fec_controller_override) {
  encoder_queue_.PostTask([this, fec_controller_override] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    RTC_DCHECK(!fec_controller_override_);
    fec_controller_override_ = fec_controller_override;
    if (encoder_) {
      encoder_->SetFecControllerOverride(fec_controller_override_);
    }
  });
}

void VideoStreamEncoder::SetSource(
    rtc::VideoSourceInterface<VideoFrame>* source,
    const DegradationPreference& degradation_preference) {
  RTC_DCHECK_RUN_ON(&thread_checker_);
  video_source_sink_controller_.SetSource(source);
  input_state_provider_.OnHasInputChanged(source);

  // Set the degradation preference on the adaptation queue.
  resource_adaptation_queue_.PostTask([this, degradation_preference] {
    RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
    if (!resource_adaptation_processor_) {
      // The VideoStreamEncoder was stopped and the processor destroyed before
      // this task had a chance to execute. No action needed.
      return;
    }
    resource_adaptation_processor_->SetDegradationPreference(
        degradation_preference);
  });
  // This may trigger reconfiguring the QualityScaler on the encoder queue.
  encoder_queue_.PostTask([this, degradation_preference] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    stream_resource_manager_.SetDegradationPreferences(degradation_preference);
    if (encoder_) {
      stream_resource_manager_.ConfigureQualityScaler(
          encoder_->GetEncoderInfo());
    }
  });
}

void VideoStreamEncoder::SetSink(EncoderSink* sink, bool rotation_applied) {
  video_source_sink_controller_.SetRotationApplied(rotation_applied);
  video_source_sink_controller_.PushSourceSinkSettings();
  encoder_queue_.PostTask([this, sink] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    sink_ = sink;
  });
}

void VideoStreamEncoder::SetStartBitrate(int start_bitrate_bps) {
  encoder_queue_.PostTask([this, start_bitrate_bps] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    encoder_target_bitrate_bps_ =
        start_bitrate_bps != 0 ? absl::optional<uint32_t>(start_bitrate_bps)
                               : absl::nullopt;
    stream_resource_manager_.SetStartBitrate(
        DataRate::BitsPerSec(start_bitrate_bps));
  });
}

void VideoStreamEncoder::ConfigureEncoder(VideoEncoderConfig config,
                                          size_t max_data_payload_length) {
  encoder_queue_.PostTask(
      [this, config = std::move(config), max_data_payload_length]() mutable {
        RTC_DCHECK_RUN_ON(&encoder_queue_);
        RTC_DCHECK(sink_);
        RTC_LOG(LS_INFO) << "ConfigureEncoder requested.";

        pending_encoder_creation_ =
            (!encoder_ || encoder_config_.video_format != config.video_format ||
             max_data_payload_length_ != max_data_payload_length);
        encoder_config_ = std::move(config);
        max_data_payload_length_ = max_data_payload_length;
        pending_encoder_reconfiguration_ = true;

        // Reconfigure the encoder now if the encoder has an internal source or
        // if the frame resolution is known. Otherwise, the reconfiguration is
        // deferred until the next frame to minimize the number of
        // reconfigurations. The codec configuration depends on incoming video
        // frame size.
        if (last_frame_info_) {
          ReconfigureEncoder();
        } else {
          codec_info_ = settings_.encoder_factory->QueryVideoEncoder(
              encoder_config_.video_format);
          if (HasInternalSource()) {
            last_frame_info_ = VideoFrameInfo(kDefaultInputPixelsWidth,
                                              kDefaultInputPixelsHeight, false);
            ReconfigureEncoder();
          }
        }
      });
}

// TODO(bugs.webrtc.org/8807): Currently this always does a hard
// reconfiguration, but this isn't always necessary. Add in logic to only update
// the VideoBitrateAllocator and call OnEncoderConfigurationChanged with a
// "soft" reconfiguration.
void VideoStreamEncoder::ReconfigureEncoder() {
  RTC_DCHECK(pending_encoder_reconfiguration_);

  if (!encoder_selector_ &&
      encoder_switch_experiment_.IsPixelCountBelowThreshold(
          last_frame_info_->width * last_frame_info_->height) &&
      !encoder_switch_requested_ && settings_.encoder_switch_request_callback) {
    EncoderSwitchRequestCallback::Config conf;
    conf.codec_name = encoder_switch_experiment_.to_codec;
    conf.param = encoder_switch_experiment_.to_param;
    conf.value = encoder_switch_experiment_.to_value;
    settings_.encoder_switch_request_callback->RequestEncoderSwitch(conf);

    encoder_switch_requested_ = true;
  }

  std::vector<VideoStream> streams =
      encoder_config_.video_stream_factory->CreateEncoderStreams(
          last_frame_info_->width, last_frame_info_->height, encoder_config_);

  // Check that the higher layers do not try to set number of temporal layers
  // to less than 1.
  // TODO(brandtr): Get rid of the wrapping optional as it serves no purpose
  // at this layer.
#if RTC_DCHECK_IS_ON
  for (const auto& stream : streams) {
    RTC_DCHECK_GE(stream.num_temporal_layers.value_or(1), 1);
  }
#endif

  // TODO(ilnik): If configured resolution is significantly less than provided,
  // e.g. because there are not enough SSRCs for all simulcast streams,
  // signal new resolutions via SinkWants to video source.

  // Stream dimensions may be not equal to given because of a simulcast
  // restrictions.
  auto highest_stream = absl::c_max_element(
      streams, [](const webrtc::VideoStream& a, const webrtc::VideoStream& b) {
        return std::tie(a.width, a.height) < std::tie(b.width, b.height);
      });
  int highest_stream_width = static_cast<int>(highest_stream->width);
  int highest_stream_height = static_cast<int>(highest_stream->height);
  // Dimension may be reduced to be, e.g. divisible by 4.
  RTC_CHECK_GE(last_frame_info_->width, highest_stream_width);
  RTC_CHECK_GE(last_frame_info_->height, highest_stream_height);
  crop_width_ = last_frame_info_->width - highest_stream_width;
  crop_height_ = last_frame_info_->height - highest_stream_height;

  bool encoder_reset_required = false;
  if (pending_encoder_creation_) {
    // Destroy existing encoder instance before creating a new one. Otherwise
    // attempt to create another instance will fail if encoder factory
    // supports only single instance of encoder of given type.
    encoder_.reset();

    encoder_ = settings_.encoder_factory->CreateVideoEncoder(
        encoder_config_.video_format);
    // TODO(nisse): What to do if creating the encoder fails? Crash,
    // or just discard incoming frames?
    RTC_CHECK(encoder_);

    if (encoder_selector_) {
      encoder_selector_->OnCurrentEncoder(encoder_config_.video_format);
    }

    encoder_->SetFecControllerOverride(fec_controller_override_);

    codec_info_ = settings_.encoder_factory->QueryVideoEncoder(
        encoder_config_.video_format);

    encoder_reset_required = true;
  }

  encoder_bitrate_limits_ =
      encoder_->GetEncoderInfo().GetEncoderBitrateLimitsForResolution(
          last_frame_info_->width * last_frame_info_->height);

  if (streams.size() == 1 && encoder_bitrate_limits_) {
    // Bitrate limits can be set by app (in SDP or RtpEncodingParameters) or/and
    // can be provided by encoder. In presence of both set of limits, the final
    // set is derived as their intersection.
    int min_bitrate_bps;
    if (encoder_config_.simulcast_layers.empty() ||
        encoder_config_.simulcast_layers[0].min_bitrate_bps <= 0) {
      min_bitrate_bps = encoder_bitrate_limits_->min_bitrate_bps;
    } else {
      min_bitrate_bps = std::max(encoder_bitrate_limits_->min_bitrate_bps,
                                 streams.back().min_bitrate_bps);
    }

    int max_bitrate_bps;
    // We don't check encoder_config_.simulcast_layers[0].max_bitrate_bps
    // here since encoder_config_.max_bitrate_bps is derived from it (as
    // well as from other inputs).
    if (encoder_config_.max_bitrate_bps <= 0) {
      max_bitrate_bps = encoder_bitrate_limits_->max_bitrate_bps;
    } else {
      max_bitrate_bps = std::min(encoder_bitrate_limits_->max_bitrate_bps,
                                 streams.back().max_bitrate_bps);
    }

    if (min_bitrate_bps < max_bitrate_bps) {
      streams.back().min_bitrate_bps = min_bitrate_bps;
      streams.back().max_bitrate_bps = max_bitrate_bps;
      streams.back().target_bitrate_bps =
          std::min(streams.back().target_bitrate_bps,
                   encoder_bitrate_limits_->max_bitrate_bps);
    } else {
      RTC_LOG(LS_WARNING) << "Bitrate limits provided by encoder"
                          << " (min="
                          << encoder_bitrate_limits_->min_bitrate_bps
                          << ", max="
                          << encoder_bitrate_limits_->min_bitrate_bps
                          << ") do not intersect with limits set by app"
                          << " (min=" << streams.back().min_bitrate_bps
                          << ", max=" << encoder_config_.max_bitrate_bps
                          << "). The app bitrate limits will be used.";
    }
  }

  VideoCodec codec;
  if (!VideoCodecInitializer::SetupCodec(encoder_config_, streams, &codec)) {
    RTC_LOG(LS_ERROR) << "Failed to create encoder configuration.";
  }

  char log_stream_buf[4 * 1024];
  rtc::SimpleStringBuilder log_stream(log_stream_buf);
  log_stream << "ReconfigureEncoder:\n";
  log_stream << "Simulcast streams:\n";
  for (size_t i = 0; i < codec.numberOfSimulcastStreams; ++i) {
    log_stream << i << ": " << codec.simulcastStream[i].width << "x"
               << codec.simulcastStream[i].height
               << " fps: " << codec.simulcastStream[i].maxFramerate
               << " min_kbps: " << codec.simulcastStream[i].minBitrate
               << " target_kbps: " << codec.simulcastStream[i].targetBitrate
               << " max_kbps: " << codec.simulcastStream[i].maxBitrate
               << " max_fps: " << codec.simulcastStream[i].maxFramerate
               << " max_qp: " << codec.simulcastStream[i].qpMax
               << " num_tl: " << codec.simulcastStream[i].numberOfTemporalLayers
               << " active: "
               << (codec.simulcastStream[i].active ? "true" : "false") << "\n";
  }
  if (encoder_config_.codec_type == kVideoCodecVP9) {
    size_t num_spatial_layers = codec.VP9()->numberOfSpatialLayers;
    log_stream << "Spatial layers:\n";
    for (size_t i = 0; i < num_spatial_layers; ++i) {
      log_stream << i << ": " << codec.spatialLayers[i].width << "x"
                 << codec.spatialLayers[i].height
                 << " fps: " << codec.spatialLayers[i].maxFramerate
                 << " min_kbps: " << codec.spatialLayers[i].minBitrate
                 << " target_kbps: " << codec.spatialLayers[i].targetBitrate
                 << " max_kbps: " << codec.spatialLayers[i].maxBitrate
                 << " max_qp: " << codec.spatialLayers[i].qpMax
                 << " num_tl: " << codec.spatialLayers[i].numberOfTemporalLayers
                 << " active: "
                 << (codec.spatialLayers[i].active ? "true" : "false") << "\n";
    }
  }
  RTC_LOG(LS_INFO) << log_stream.str();

  codec.startBitrate = std::max(encoder_target_bitrate_bps_.value_or(0) / 1000,
                                codec.minBitrate);
  codec.startBitrate = std::min(codec.startBitrate, codec.maxBitrate);
  codec.expect_encode_from_texture = last_frame_info_->is_texture;
  // Make sure the start bit rate is sane...
  RTC_DCHECK_LE(codec.startBitrate, 1000000);
  max_framerate_ = codec.maxFramerate;

  // Inform source about max configured framerate.
  int max_framerate = 0;
  for (const auto& stream : streams) {
    max_framerate = std::max(stream.max_framerate, max_framerate);
  }
  int alignment = encoder_->GetEncoderInfo().requested_resolution_alignment;
  if (max_framerate != video_source_sink_controller_.frame_rate_upper_limit() ||
      alignment != video_source_sink_controller_.resolution_alignment()) {
    video_source_sink_controller_.SetFrameRateUpperLimit(max_framerate);
    video_source_sink_controller_.SetResolutionAlignment(alignment);
    video_source_sink_controller_.PushSourceSinkSettings();
  }

  if (codec.maxBitrate == 0) {
    // max is one bit per pixel
    codec.maxBitrate =
        (static_cast<int>(codec.height) * static_cast<int>(codec.width) *
         static_cast<int>(codec.maxFramerate)) /
        1000;
    if (codec.startBitrate > codec.maxBitrate) {
      // But if the user tries to set a higher start bit rate we will
      // increase the max accordingly.
      codec.maxBitrate = codec.startBitrate;
    }
  }

  if (codec.startBitrate > codec.maxBitrate) {
    codec.startBitrate = codec.maxBitrate;
  }

  rate_allocator_ =
      settings_.bitrate_allocator_factory->CreateVideoBitrateAllocator(codec);

  // Reset (release existing encoder) if one exists and anything except
  // start bitrate or max framerate has changed.
  if (!encoder_reset_required) {
    encoder_reset_required = RequiresEncoderReset(
        codec, send_codec_, was_encode_called_since_last_initialization_);
  }
  send_codec_ = codec;

  encoder_switch_experiment_.SetCodec(send_codec_.codecType);

  // Keep the same encoder, as long as the video_format is unchanged.
  // Encoder creation block is split in two since EncoderInfo needed to start
  // CPU adaptation with the correct settings should be polled after
  // encoder_->InitEncode().
  bool success = true;
  if (encoder_reset_required) {
    ReleaseEncoder();
    const size_t max_data_payload_length = max_data_payload_length_ > 0
                                               ? max_data_payload_length_
                                               : kDefaultPayloadSize;
    if (encoder_->InitEncode(
            &send_codec_,
            VideoEncoder::Settings(settings_.capabilities, number_of_cores_,
                                   max_data_payload_length)) != 0) {
      RTC_LOG(LS_ERROR) << "Failed to initialize the encoder associated with "
                           "codec type: "
                        << CodecTypeToPayloadString(send_codec_.codecType)
                        << " (" << send_codec_.codecType << ")";
      ReleaseEncoder();
      success = false;
    } else {
      encoder_initialized_ = true;
      encoder_->RegisterEncodeCompleteCallback(this);
      frame_encode_metadata_writer_.OnEncoderInit(send_codec_,
                                                  HasInternalSource());
    }

    frame_encode_metadata_writer_.Reset();
    last_encode_info_ms_ = absl::nullopt;
    was_encode_called_since_last_initialization_ = false;
  }

  // Inform dependents of updated encoder settings.
  OnEncoderSettingsChanged();

  if (success) {
    next_frame_types_.clear();
    next_frame_types_.resize(
        std::max(static_cast<int>(codec.numberOfSimulcastStreams), 1),
        VideoFrameType::kVideoFrameKey);
    RTC_LOG(LS_VERBOSE) << " max bitrate " << codec.maxBitrate
                        << " start bitrate " << codec.startBitrate
                        << " max frame rate " << codec.maxFramerate
                        << " max payload size " << max_data_payload_length_;
  } else {
    RTC_LOG(LS_ERROR) << "Failed to configure encoder.";
    rate_allocator_ = nullptr;
  }

  if (pending_encoder_creation_) {
    // TODO(hbos): Stopping and restarting for backwards compatibility reasons.
    // We may be able to change this to "EnsureStarted()" if it took care of
    // reconfiguring the QualityScaler as well. (ConfigureQualityScaler() is
    // invoked later in this method.)
    stream_resource_manager_.StopManagedResources();
    stream_resource_manager_.StartEncodeUsageResource();
    resource_adaptation_queue_.PostTask([this] {
      RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
      if (!resource_adaptation_processor_) {
        // The VideoStreamEncoder was stopped and the processor destroyed before
        // this task had a chance to execute. No action needed.
        return;
      }
      // Ensures started. If already started this is a NO-OP.
      resource_adaptation_processor_->StartResourceAdaptation();
    });
    pending_encoder_creation_ = false;
  }

  int num_layers;
  if (codec.codecType == kVideoCodecVP8) {
    num_layers = codec.VP8()->numberOfTemporalLayers;
  } else if (codec.codecType == kVideoCodecVP9) {
    num_layers = codec.VP9()->numberOfTemporalLayers;
  } else if (codec.codecType == kVideoCodecH264) {
    num_layers = codec.H264()->numberOfTemporalLayers;
  } else if (codec.codecType == kVideoCodecGeneric &&
             codec.numberOfSimulcastStreams > 0) {
    // This is mainly for unit testing, disabling frame dropping.
    // TODO(sprang): Add a better way to disable frame dropping.
    num_layers = codec.simulcastStream[0].numberOfTemporalLayers;
  } else {
    num_layers = 1;
  }

  frame_dropper_.Reset();
  frame_dropper_.SetRates(codec.startBitrate, max_framerate_);
  // Force-disable frame dropper if either:
  //  * We have screensharing with layers.
  //  * "WebRTC-FrameDropper" field trial is "Disabled".
  force_disable_frame_dropper_ =
      field_trial::IsDisabled(kFrameDropperFieldTrial) ||
      (num_layers > 1 && codec.mode == VideoCodecMode::kScreensharing);

  VideoEncoder::EncoderInfo info = encoder_->GetEncoderInfo();
  if (rate_control_settings_.UseEncoderBitrateAdjuster()) {
    bitrate_adjuster_ = std::make_unique<EncoderBitrateAdjuster>(codec);
    bitrate_adjuster_->OnEncoderInfo(info);
  }

  if (rate_allocator_ && last_encoder_rate_settings_) {
    // We have a new rate allocator instance and already configured target
    // bitrate. Update the rate allocation and notify observers.
    // We must invalidate the last_encoder_rate_settings_ to ensure
    // the changes get propagated to all listeners.
    EncoderRateSettings rate_settings = *last_encoder_rate_settings_;
    last_encoder_rate_settings_.reset();
    rate_settings.rate_control.framerate_fps = GetInputFramerateFps();

    SetEncoderRates(UpdateBitrateAllocationAndNotifyObserver(rate_settings));
  }

  encoder_stats_observer_->OnEncoderReconfigured(encoder_config_, streams);

  pending_encoder_reconfiguration_ = false;

  bool is_svc = false;
  // Set min_bitrate_bps, max_bitrate_bps, and max padding bit rate for VP9
  // and leave only one stream containing all necessary information.
  if (encoder_config_.codec_type == kVideoCodecVP9) {
    // Lower max bitrate to the level codec actually can produce.
    streams[0].max_bitrate_bps =
        std::min(streams[0].max_bitrate_bps,
                 SvcRateAllocator::GetMaxBitrate(codec).bps<int>());
    streams[0].min_bitrate_bps = codec.spatialLayers[0].minBitrate * 1000;
    // target_bitrate_bps specifies the maximum padding bitrate.
    streams[0].target_bitrate_bps =
        SvcRateAllocator::GetPaddingBitrate(codec).bps<int>();
    streams[0].width = streams.back().width;
    streams[0].height = streams.back().height;
    is_svc = codec.VP9()->numberOfSpatialLayers > 1;
    streams.resize(1);
  }

  sink_->OnEncoderConfigurationChanged(
      std::move(streams), is_svc, encoder_config_.content_type,
      encoder_config_.min_transmit_bitrate_bps);

  stream_resource_manager_.ConfigureQualityScaler(info);
}

void VideoStreamEncoder::OnEncoderSettingsChanged() {
  EncoderSettings encoder_settings(encoder_->GetEncoderInfo(),
                                   encoder_config_.Copy(), send_codec_);
  stream_resource_manager_.SetEncoderSettings(encoder_settings);
  input_state_provider_.OnEncoderSettingsChanged(encoder_settings);
  bool is_screenshare = encoder_settings.encoder_config().content_type ==
                        VideoEncoderConfig::ContentType::kScreen;
  resource_adaptation_queue_.PostTask([this, is_screenshare] {
    RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
    if (!resource_adaptation_processor_) {
      // The VideoStreamEncoder was stopped and the processor destroyed before
      // this task had a chance to execute. No action needed.
      return;
    }
    resource_adaptation_processor_->SetIsScreenshare(is_screenshare);
  });
}

void VideoStreamEncoder::OnFrame(const VideoFrame& video_frame) {
  RTC_DCHECK_RUNS_SERIALIZED(&incoming_frame_race_checker_);
  VideoFrame incoming_frame = video_frame;

  // Local time in webrtc time base.
  int64_t current_time_us = clock_->TimeInMicroseconds();
  int64_t current_time_ms = current_time_us / rtc::kNumMicrosecsPerMillisec;
  // In some cases, e.g., when the frame from decoder is fed to encoder,
  // the timestamp may be set to the future. As the encoding pipeline assumes
  // capture time to be less than present time, we should reset the capture
  // timestamps here. Otherwise there may be issues with RTP send stream.
  if (incoming_frame.timestamp_us() > current_time_us)
    incoming_frame.set_timestamp_us(current_time_us);

  // Capture time may come from clock with an offset and drift from clock_.
  int64_t capture_ntp_time_ms;
  if (video_frame.ntp_time_ms() > 0) {
    capture_ntp_time_ms = video_frame.ntp_time_ms();
  } else if (video_frame.render_time_ms() != 0) {
    capture_ntp_time_ms = video_frame.render_time_ms() + delta_ntp_internal_ms_;
  } else {
    capture_ntp_time_ms = current_time_ms + delta_ntp_internal_ms_;
  }
  incoming_frame.set_ntp_time_ms(capture_ntp_time_ms);

  // Convert NTP time, in ms, to RTP timestamp.
  const int kMsToRtpTimestamp = 90;
  incoming_frame.set_timestamp(
      kMsToRtpTimestamp * static_cast<uint32_t>(incoming_frame.ntp_time_ms()));

  if (incoming_frame.ntp_time_ms() <= last_captured_timestamp_) {
    // We don't allow the same capture time for two frames, drop this one.
    RTC_LOG(LS_WARNING) << "Same/old NTP timestamp ("
                        << incoming_frame.ntp_time_ms()
                        << " <= " << last_captured_timestamp_
                        << ") for incoming frame. Dropping.";
    encoder_queue_.PostTask([this, incoming_frame]() {
      RTC_DCHECK_RUN_ON(&encoder_queue_);
      accumulated_update_rect_.Union(incoming_frame.update_rect());
      accumulated_update_rect_is_valid_ &= incoming_frame.has_update_rect();
    });
    return;
  }

  bool log_stats = false;
  if (current_time_ms - last_frame_log_ms_ > kFrameLogIntervalMs) {
    last_frame_log_ms_ = current_time_ms;
    log_stats = true;
  }

  last_captured_timestamp_ = incoming_frame.ntp_time_ms();

  int64_t post_time_us = rtc::TimeMicros();
  ++posted_frames_waiting_for_encode_;

  encoder_queue_.PostTask(
      [this, incoming_frame, post_time_us, log_stats]() {
        RTC_DCHECK_RUN_ON(&encoder_queue_);
        encoder_stats_observer_->OnIncomingFrame(incoming_frame.width(),
                                                 incoming_frame.height());
        ++captured_frame_count_;
        const int posted_frames_waiting_for_encode =
            posted_frames_waiting_for_encode_.fetch_sub(1);
        RTC_DCHECK_GT(posted_frames_waiting_for_encode, 0);
        CheckForAnimatedContent(incoming_frame, post_time_us);
        bool cwnd_frame_drop =
            cwnd_frame_drop_interval_ &&
            (cwnd_frame_counter_++ % cwnd_frame_drop_interval_.value() == 0);
        if (posted_frames_waiting_for_encode == 1 && !cwnd_frame_drop) {
          MaybeEncodeVideoFrame(incoming_frame, post_time_us);
        } else {
          if (cwnd_frame_drop) {
            // Frame drop by congestion window pusback. Do not encode this
            // frame.
            ++dropped_frame_cwnd_pushback_count_;
            encoder_stats_observer_->OnFrameDropped(
                VideoStreamEncoderObserver::DropReason::kCongestionWindow);
          } else {
            // There is a newer frame in flight. Do not encode this frame.
            RTC_LOG(LS_VERBOSE)
                << "Incoming frame dropped due to that the encoder is blocked.";
            ++dropped_frame_encoder_block_count_;
            encoder_stats_observer_->OnFrameDropped(
                VideoStreamEncoderObserver::DropReason::kEncoderQueue);
          }
          accumulated_update_rect_.Union(incoming_frame.update_rect());
          accumulated_update_rect_is_valid_ &= incoming_frame.has_update_rect();
        }
        if (log_stats) {
          RTC_LOG(LS_INFO) << "Number of frames: captured "
                           << captured_frame_count_
                           << ", dropped (due to congestion window pushback) "
                           << dropped_frame_cwnd_pushback_count_
                           << ", dropped (due to encoder blocked) "
                           << dropped_frame_encoder_block_count_
                           << ", interval_ms " << kFrameLogIntervalMs;
          captured_frame_count_ = 0;
          dropped_frame_cwnd_pushback_count_ = 0;
          dropped_frame_encoder_block_count_ = 0;
        }
      });
}

void VideoStreamEncoder::OnDiscardedFrame() {
  encoder_stats_observer_->OnFrameDropped(
      VideoStreamEncoderObserver::DropReason::kSource);
}

bool VideoStreamEncoder::EncoderPaused() const {
  RTC_DCHECK_RUN_ON(&encoder_queue_);
  // Pause video if paused by caller or as long as the network is down or the
  // pacer queue has grown too large in buffered mode.
  // If the pacer queue has grown too large or the network is down,
  // |last_encoder_rate_settings_->encoder_target| will be 0.
  return !last_encoder_rate_settings_ ||
         last_encoder_rate_settings_->encoder_target == DataRate::Zero();
}

void VideoStreamEncoder::TraceFrameDropStart() {
  RTC_DCHECK_RUN_ON(&encoder_queue_);
  // Start trace event only on the first frame after encoder is paused.
  if (!encoder_paused_and_dropped_frame_) {
    TRACE_EVENT_ASYNC_BEGIN0("webrtc", "EncoderPaused", this);
  }
  encoder_paused_and_dropped_frame_ = true;
}

void VideoStreamEncoder::TraceFrameDropEnd() {
  RTC_DCHECK_RUN_ON(&encoder_queue_);
  // End trace event on first frame after encoder resumes, if frame was dropped.
  if (encoder_paused_and_dropped_frame_) {
    TRACE_EVENT_ASYNC_END0("webrtc", "EncoderPaused", this);
  }
  encoder_paused_and_dropped_frame_ = false;
}

VideoStreamEncoder::EncoderRateSettings
VideoStreamEncoder::UpdateBitrateAllocationAndNotifyObserver(
    const EncoderRateSettings& rate_settings) {
  VideoBitrateAllocation new_allocation;
  // Only call allocators if bitrate > 0 (ie, not suspended), otherwise they
  // might cap the bitrate to the min bitrate configured.
  if (rate_allocator_ && rate_settings.encoder_target > DataRate::Zero()) {
    new_allocation = rate_allocator_->Allocate(VideoBitrateAllocationParameters(
        rate_settings.encoder_target, rate_settings.stable_encoder_target,
        rate_settings.rate_control.framerate_fps));
  }

  if (bitrate_observer_ && new_allocation.get_sum_bps() > 0) {
    if (encoder_ && encoder_initialized_) {
      // Avoid too old encoder_info_.
      const int64_t kMaxDiffMs = 100;
      const bool updated_recently =
          (last_encode_info_ms_ && ((clock_->TimeInMilliseconds() -
                                     *last_encode_info_ms_) < kMaxDiffMs));
      // Update allocation according to info from encoder.
      bitrate_observer_->OnBitrateAllocationUpdated(
          UpdateAllocationFromEncoderInfo(
              new_allocation,
              updated_recently ? encoder_info_ : encoder_->GetEncoderInfo()));
    } else {
      bitrate_observer_->OnBitrateAllocationUpdated(new_allocation);
    }
  }

  EncoderRateSettings new_rate_settings = rate_settings;
  new_rate_settings.rate_control.bitrate = new_allocation;
  // VideoBitrateAllocator subclasses may allocate a bitrate higher than the
  // target in order to sustain the min bitrate of the video codec. In this
  // case, make sure the bandwidth allocation is at least equal the allocation
  // as that is part of the document contract for that field.
  new_rate_settings.rate_control.bandwidth_allocation =
      std::max(new_rate_settings.rate_control.bandwidth_allocation,
               DataRate::BitsPerSec(
                   new_rate_settings.rate_control.bitrate.get_sum_bps()));

  if (bitrate_adjuster_) {
    VideoBitrateAllocation adjusted_allocation =
        bitrate_adjuster_->AdjustRateAllocation(new_rate_settings.rate_control);
    RTC_LOG(LS_VERBOSE) << "Adjusting allocation, fps = "
                        << rate_settings.rate_control.framerate_fps << ", from "
                        << new_allocation.ToString() << ", to "
                        << adjusted_allocation.ToString();
    new_rate_settings.rate_control.bitrate = adjusted_allocation;
  }

  encoder_stats_observer_->OnBitrateAllocationUpdated(
      send_codec_, new_rate_settings.rate_control.bitrate);

  return new_rate_settings;
}

uint32_t VideoStreamEncoder::GetInputFramerateFps() {
  const uint32_t default_fps = max_framerate_ != -1 ? max_framerate_ : 30;
  absl::optional<uint32_t> input_fps =
      input_framerate_.Rate(clock_->TimeInMilliseconds());
  if (!input_fps || *input_fps == 0) {
    return default_fps;
  }
  return *input_fps;
}

void VideoStreamEncoder::SetEncoderRates(
    const EncoderRateSettings& rate_settings) {
  RTC_DCHECK_GT(rate_settings.rate_control.framerate_fps, 0.0);
  bool rate_control_changed =
      (!last_encoder_rate_settings_.has_value() ||
       last_encoder_rate_settings_->rate_control != rate_settings.rate_control);
  if (last_encoder_rate_settings_ != rate_settings) {
    last_encoder_rate_settings_ = rate_settings;
  }

  if (!encoder_) {
    return;
  }

  // |bitrate_allocation| is 0 it means that the network is down or the send
  // pacer is full. We currently only report this if the encoder has an internal
  // source. If the encoder does not have an internal source, higher levels
  // are expected to not call AddVideoFrame. We do this since its unclear
  // how current encoder implementations behave when given a zero target
  // bitrate.
  // TODO(perkj): Make sure all known encoder implementations handle zero
  // target bitrate and remove this check.
  if (!HasInternalSource() &&
      rate_settings.rate_control.bitrate.get_sum_bps() == 0) {
    return;
  }

  if (rate_control_changed) {
    encoder_->SetRates(rate_settings.rate_control);
    frame_encode_metadata_writer_.OnSetRates(
        rate_settings.rate_control.bitrate,
        static_cast<uint32_t>(rate_settings.rate_control.framerate_fps + 0.5));
    stream_resource_manager_.SetEncoderRates(rate_settings.rate_control);
  }
}

void VideoStreamEncoder::MaybeEncodeVideoFrame(const VideoFrame& video_frame,
                                               int64_t time_when_posted_us) {
  RTC_DCHECK_RUN_ON(&encoder_queue_);
  input_state_provider_.OnFrameSizeObserved(video_frame.size());

  if (!last_frame_info_ || video_frame.width() != last_frame_info_->width ||
      video_frame.height() != last_frame_info_->height ||
      video_frame.is_texture() != last_frame_info_->is_texture) {
    pending_encoder_reconfiguration_ = true;
    last_frame_info_ = VideoFrameInfo(video_frame.width(), video_frame.height(),
                                      video_frame.is_texture());
    RTC_LOG(LS_INFO) << "Video frame parameters changed: dimensions="
                      << last_frame_info_->width << "x"
                      << last_frame_info_->height
                      << ", texture=" << last_frame_info_->is_texture 
                      << " at time= " << clock_->TimeInMilliseconds() << "ms.";
    // Force full frame update, since resolution has changed.
    accumulated_update_rect_ =
        VideoFrame::UpdateRect{0, 0, video_frame.width(), video_frame.height()};
  }

  // We have to create then encoder before the frame drop logic,
  // because the latter depends on encoder_->GetScalingSettings.
  // According to the testcase
  // InitialFrameDropOffWhenEncoderDisabledScaling, the return value
  // from GetScalingSettings should enable or disable the frame drop.

  // Update input frame rate before we start using it. If we update it after
  // any potential frame drop we are going to artificially increase frame sizes.
  // Poll the rate before updating, otherwise we risk the rate being estimated
  // a little too high at the start of the call when then window is small.
  uint32_t framerate_fps = GetInputFramerateFps();
  input_framerate_.Update(1u, clock_->TimeInMilliseconds());

  int64_t now_ms = clock_->TimeInMilliseconds();
  if (pending_encoder_reconfiguration_) {
    ReconfigureEncoder();
    last_parameters_update_ms_.emplace(now_ms);
  } else if (!last_parameters_update_ms_ ||
             now_ms - *last_parameters_update_ms_ >=
                 kParameterUpdateIntervalMs) {
    if (last_encoder_rate_settings_) {
      // Clone rate settings before update, so that SetEncoderRates() will
      // actually detect the change between the input and
      // |last_encoder_rate_setings_|, triggering the call to SetRate() on the
      // encoder.
      EncoderRateSettings new_rate_settings = *last_encoder_rate_settings_;
      new_rate_settings.rate_control.framerate_fps =
          static_cast<double>(framerate_fps);
      SetEncoderRates(
          UpdateBitrateAllocationAndNotifyObserver(new_rate_settings));
    }
    last_parameters_update_ms_.emplace(now_ms);
  }

  // Because pending frame will be dropped in any case, we need to
  // remember its updated region.
  if (pending_frame_) {
    encoder_stats_observer_->OnFrameDropped(
        VideoStreamEncoderObserver::DropReason::kEncoderQueue);
    accumulated_update_rect_.Union(pending_frame_->update_rect());
    accumulated_update_rect_is_valid_ &= pending_frame_->has_update_rect();
  }

  /*
  if (DropDueToSize(video_frame.size())) {
    stream_resource_manager_.OnFrameDroppedDueToSize();
    // Storing references to a native buffer risks blocking frame capture.
    if (video_frame.video_frame_buffer()->type() !=
        VideoFrameBuffer::Type::kNative) {
      pending_frame_ = video_frame;
      pending_frame_post_time_us_ = time_when_posted_us;
    } else {
      // Ensure that any previously stored frame is dropped.
      pending_frame_.reset();
      accumulated_update_rect_.Union(video_frame.update_rect());
      accumulated_update_rect_is_valid_ &= video_frame.has_update_rect();
    }
    return;
  }
  */
  stream_resource_manager_.OnMaybeEncodeFrame();

  if (EncoderPaused()) {
    // Storing references to a native buffer risks blocking frame capture.
    if (video_frame.video_frame_buffer()->type() !=
        VideoFrameBuffer::Type::kNative) {
      if (pending_frame_)
        TraceFrameDropStart();
      pending_frame_ = video_frame;
      pending_frame_post_time_us_ = time_when_posted_us;
    } else {
      // Ensure that any previously stored frame is dropped.
      pending_frame_.reset();
      TraceFrameDropStart();
      accumulated_update_rect_.Union(video_frame.update_rect());
      accumulated_update_rect_is_valid_ &= video_frame.has_update_rect();
    }
    return;
  }

  pending_frame_.reset();

  frame_dropper_.Leak(framerate_fps);
  // Frame dropping is enabled iff frame dropping is not force-disabled, and
  // rate controller is not trusted.
  const bool frame_dropping_enabled =
      !force_disable_frame_dropper_ &&
      !encoder_info_.has_trusted_rate_controller;
  frame_dropper_.Enable(frame_dropping_enabled);
  if (frame_dropping_enabled && frame_dropper_.DropFrame()) {
    RTC_LOG(LS_VERBOSE)
        << "Drop Frame: "
           "target bitrate "
        << (last_encoder_rate_settings_
                ? last_encoder_rate_settings_->encoder_target.bps()
                : 0)
        << ", input frame rate " << framerate_fps;
    OnDroppedFrame(
        EncodedImageCallback::DropReason::kDroppedByMediaOptimizations);
    accumulated_update_rect_.Union(video_frame.update_rect());
    accumulated_update_rect_is_valid_ &= video_frame.has_update_rect();
    return;
  }

  EncodeVideoFrame(video_frame, time_when_posted_us);
}

void VideoStreamEncoder::EncodeVideoFrame(const VideoFrame& video_frame,
                                          int64_t time_when_posted_us) {
  RTC_DCHECK_RUN_ON(&encoder_queue_);

  // If the encoder fail we can't continue to encode frames. When this happens
  // the WebrtcVideoSender is notified and the whole VideoSendStream is
  // recreated.
  if (encoder_failed_)
    return;

  TraceFrameDropEnd();

  // Encoder metadata needs to be updated before encode complete callback.
  VideoEncoder::EncoderInfo info = encoder_->GetEncoderInfo();
  if (info.implementation_name != encoder_info_.implementation_name) {
    encoder_stats_observer_->OnEncoderImplementationChanged(
        info.implementation_name);
    if (bitrate_adjuster_) {
      // Encoder implementation changed, reset overshoot detector states.
      bitrate_adjuster_->Reset();
    }
  }

  if (encoder_info_ != info) {
    OnEncoderSettingsChanged();
    RTC_LOG(LS_INFO) << "Encoder settings changed from "
                     << encoder_info_.ToString() << " to " << info.ToString();
  }

  if (bitrate_adjuster_) {
    for (size_t si = 0; si < kMaxSpatialLayers; ++si) {
      if (info.fps_allocation[si] != encoder_info_.fps_allocation[si]) {
        bitrate_adjuster_->OnEncoderInfo(info);
        break;
      }
    }
  }
  encoder_info_ = info;
  last_encode_info_ms_ = clock_->TimeInMilliseconds();

  VideoFrame out_frame(video_frame);

  const VideoFrameBuffer::Type buffer_type =
      out_frame.video_frame_buffer()->type();
  const bool is_buffer_type_supported =
      buffer_type == VideoFrameBuffer::Type::kI420 ||
      (buffer_type == VideoFrameBuffer::Type::kNative &&
       info.supports_native_handle);

  if (!is_buffer_type_supported) {
    // This module only supports software encoding.
    rtc::scoped_refptr<I420BufferInterface> converted_buffer(
        out_frame.video_frame_buffer()->ToI420());

    if (!converted_buffer) {
      RTC_LOG(LS_ERROR) << "Frame conversion failed, dropping frame.";
      return;
    }

    VideoFrame::UpdateRect update_rect = out_frame.update_rect();
    if (!update_rect.IsEmpty() &&
        out_frame.video_frame_buffer()->GetI420() == nullptr) {
      // UpdatedRect is reset to full update if it's not empty, and buffer was
      // converted, therefore we can't guarantee that pixels outside of
      // UpdateRect didn't change comparing to the previous frame.
      update_rect =
          VideoFrame::UpdateRect{0, 0, out_frame.width(), out_frame.height()};
    }

    out_frame.set_video_frame_buffer(converted_buffer);
    out_frame.set_update_rect(update_rect);
  }

  // Crop frame if needed.
  if ((crop_width_ > 0 || crop_height_ > 0) &&
      out_frame.video_frame_buffer()->type() !=
          VideoFrameBuffer::Type::kNative) {
    // If the frame can't be converted to I420, drop it.
    auto i420_buffer = video_frame.video_frame_buffer()->ToI420();
    if (!i420_buffer) {
      RTC_LOG(LS_ERROR) << "Frame conversion for crop failed, dropping frame.";
      return;
    }
    int cropped_width = video_frame.width() - crop_width_;
    int cropped_height = video_frame.height() - crop_height_;
    rtc::scoped_refptr<I420Buffer> cropped_buffer =
        I420Buffer::Create(cropped_width, cropped_height);
    // TODO(ilnik): Remove scaling if cropping is too big, as it should never
    // happen after SinkWants signaled correctly from ReconfigureEncoder.
    VideoFrame::UpdateRect update_rect = video_frame.update_rect();
    if (crop_width_ < 4 && crop_height_ < 4) {
      cropped_buffer->CropAndScaleFrom(*i420_buffer, crop_width_ / 2,
                                       crop_height_ / 2, cropped_width,
                                       cropped_height);
      update_rect.offset_x -= crop_width_ / 2;
      update_rect.offset_y -= crop_height_ / 2;
      update_rect.Intersect(
          VideoFrame::UpdateRect{0, 0, cropped_width, cropped_height});

    } else {
      cropped_buffer->ScaleFrom(*i420_buffer);
      if (!update_rect.IsEmpty()) {
        // Since we can't reason about pixels after scaling, we invalidate whole
        // picture, if anything changed.
        update_rect =
            VideoFrame::UpdateRect{0, 0, cropped_width, cropped_height};
      }
    }
    out_frame.set_video_frame_buffer(cropped_buffer);
    out_frame.set_update_rect(update_rect);
    out_frame.set_ntp_time_ms(video_frame.ntp_time_ms());
    // Since accumulated_update_rect_ is constructed before cropping,
    // we can't trust it. If any changes were pending, we invalidate whole
    // frame here.
    if (!accumulated_update_rect_.IsEmpty()) {
      accumulated_update_rect_ =
          VideoFrame::UpdateRect{0, 0, out_frame.width(), out_frame.height()};
      accumulated_update_rect_is_valid_ = false;
    }
  }

  if (!accumulated_update_rect_is_valid_) {
    out_frame.clear_update_rect();
  } else if (!accumulated_update_rect_.IsEmpty() &&
             out_frame.has_update_rect()) {
    accumulated_update_rect_.Union(out_frame.update_rect());
    accumulated_update_rect_.Intersect(
        VideoFrame::UpdateRect{0, 0, out_frame.width(), out_frame.height()});
    out_frame.set_update_rect(accumulated_update_rect_);
    accumulated_update_rect_.MakeEmptyUpdate();
  }
  accumulated_update_rect_is_valid_ = true;

  TRACE_EVENT_ASYNC_STEP0("webrtc", "Video", video_frame.render_time_ms(),
                          "Encode");

  stream_resource_manager_.OnEncodeStarted(out_frame, time_when_posted_us);

  RTC_DCHECK_LE(send_codec_.width, out_frame.width());
  RTC_DCHECK_LE(send_codec_.height, out_frame.height());
  // Native frames should be scaled by the client.
  // For internal encoders we scale everything in one place here.
  RTC_DCHECK((out_frame.video_frame_buffer()->type() ==
              VideoFrameBuffer::Type::kNative) ||
             (send_codec_.width == out_frame.width() &&
              send_codec_.height == out_frame.height()));

  TRACE_EVENT1("webrtc", "VCMGenericEncoder::Encode", "timestamp",
               out_frame.timestamp());

  frame_encode_metadata_writer_.OnEncodeStarted(out_frame);

  const int32_t encode_status = encoder_->Encode(out_frame, &next_frame_types_);
  was_encode_called_since_last_initialization_ = true;

  if (encode_status < 0) {
    if (encode_status == WEBRTC_VIDEO_CODEC_ENCODER_FAILURE) {
      RTC_LOG(LS_ERROR) << "Encoder failed, failing encoder format: "
                        << encoder_config_.video_format.ToString();

      if (settings_.encoder_switch_request_callback) {
        if (encoder_selector_) {
          if (auto encoder = encoder_selector_->OnEncoderBroken()) {
            settings_.encoder_switch_request_callback->RequestEncoderSwitch(
                *encoder);
          }
        } else {
          encoder_failed_ = true;
          settings_.encoder_switch_request_callback->RequestEncoderFallback();
        }
      } else {
        RTC_LOG(LS_ERROR)
            << "Encoder failed but no encoder fallback callback is registered";
      }
    } else {
      RTC_LOG(LS_ERROR) << "Failed to encode frame. Error code: "
                        << encode_status;
    }

    return;
  }

  for (auto& it : next_frame_types_) {
    it = VideoFrameType::kVideoFrameDelta;
  }
}

void VideoStreamEncoder::SendKeyFrame() {
  if (!encoder_queue_.IsCurrent()) {
    encoder_queue_.PostTask([this] { SendKeyFrame(); });
    return;
  }
  RTC_DCHECK_RUN_ON(&encoder_queue_);
  TRACE_EVENT0("webrtc", "OnKeyFrameRequest");
  RTC_DCHECK(!next_frame_types_.empty());

  // TODO(webrtc:10615): Map keyframe request to spatial layer.
  std::fill(next_frame_types_.begin(), next_frame_types_.end(),
            VideoFrameType::kVideoFrameKey);

  if (HasInternalSource()) {
    // Try to request the frame if we have an external encoder with
    // internal source since AddVideoFrame never will be called.

    // TODO(nisse): Used only with internal source. Delete as soon as
    // that feature is removed. The only implementation I've been able
    // to find ignores what's in the frame. With one exception: It seems
    // a few test cases, e.g.,
    // VideoSendStreamTest.VideoSendStreamStopSetEncoderRateToZero, set
    // internal_source to true and use FakeEncoder. And the latter will
    // happily encode this 1x1 frame and pass it on down the pipeline.
    if (encoder_->Encode(VideoFrame::Builder()
                             .set_video_frame_buffer(I420Buffer::Create(1, 1))
                             .set_rotation(kVideoRotation_0)
                             .set_timestamp_us(0)
                             .build(),
                         &next_frame_types_) == WEBRTC_VIDEO_CODEC_OK) {
      // Try to remove just-performed keyframe request, if stream still exists.
      std::fill(next_frame_types_.begin(), next_frame_types_.end(),
                VideoFrameType::kVideoFrameDelta);
    }
  }
}

void VideoStreamEncoder::OnLossNotification(
    const VideoEncoder::LossNotification& loss_notification) {
  if (!encoder_queue_.IsCurrent()) {
    encoder_queue_.PostTask(
        [this, loss_notification] { OnLossNotification(loss_notification); });
    return;
  }

  RTC_DCHECK_RUN_ON(&encoder_queue_);
  if (encoder_) {
    encoder_->OnLossNotification(loss_notification);
  }
}

EncodedImageCallback::Result VideoStreamEncoder::OnEncodedImage(
    const EncodedImage& encoded_image,
    const CodecSpecificInfo* codec_specific_info,
    const RTPFragmentationHeader* fragmentation) {
  TRACE_EVENT_INSTANT1("webrtc", "VCMEncodedFrameCallback::Encoded",
                       "timestamp", encoded_image.Timestamp());
  const size_t spatial_idx = encoded_image.SpatialIndex().value_or(0);
  EncodedImage image_copy(encoded_image);

  frame_encode_metadata_writer_.FillTimingInfo(spatial_idx, &image_copy);

  std::unique_ptr<RTPFragmentationHeader> fragmentation_copy =
      frame_encode_metadata_writer_.UpdateBitstream(codec_specific_info,
                                                    fragmentation, &image_copy);

  // Piggyback ALR experiment group id and simulcast id into the content type.
  const uint8_t experiment_id =
      experiment_groups_[videocontenttypehelpers::IsScreenshare(
          image_copy.content_type_)];

  // TODO(ilnik): This will force content type extension to be present even
  // for realtime video. At the expense of miniscule overhead we will get
  // sliced receive statistics.
  RTC_CHECK(videocontenttypehelpers::SetExperimentId(&image_copy.content_type_,
                                                     experiment_id));
  // We count simulcast streams from 1 on the wire. That's why we set simulcast
  // id in content type to +1 of that is actual simulcast index. This is because
  // value 0 on the wire is reserved for 'no simulcast stream specified'.
  RTC_CHECK(videocontenttypehelpers::SetSimulcastId(
      &image_copy.content_type_, static_cast<uint8_t>(spatial_idx + 1)));

  // Currently internal quality scaler is used for VP9 instead of webrtc qp
  // scaler (in no-svc case or if only a single spatial layer is encoded).
  // It has to be explicitly detected and reported to adaptation metrics.
  // Post a task because |send_codec_| requires |encoder_queue_| lock.
  unsigned int image_width = image_copy._encodedWidth;
  unsigned int image_height = image_copy._encodedHeight;
  VideoCodecType codec = codec_specific_info
                             ? codec_specific_info->codecType
                             : VideoCodecType::kVideoCodecGeneric;
  encoder_queue_.PostTask([this, codec, image_width, image_height] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    if (codec == VideoCodecType::kVideoCodecVP9 &&
        send_codec_.VP9()->automaticResizeOn) {
      unsigned int expected_width = send_codec_.width;
      unsigned int expected_height = send_codec_.height;
      int num_active_layers = 0;
      for (int i = 0; i < send_codec_.VP9()->numberOfSpatialLayers; ++i) {
        if (send_codec_.spatialLayers[i].active) {
          ++num_active_layers;
          expected_width = send_codec_.spatialLayers[i].width;
          expected_height = send_codec_.spatialLayers[i].height;
        }
      }
      RTC_DCHECK_LE(num_active_layers, 1)
          << "VP9 quality scaling is enabled for "
             "SVC with several active layers.";
      encoder_stats_observer_->OnEncoderInternalScalerUpdate(
          image_width < expected_width || image_height < expected_height);
    }
  });

  // Encoded is called on whatever thread the real encoder implementation run
  // on. In the case of hardware encoders, there might be several encoders
  // running in parallel on different threads.
  encoder_stats_observer_->OnSendEncodedImage(image_copy, codec_specific_info);

  // The simulcast id is signaled in the SpatialIndex. This makes it impossible
  // to do simulcast for codecs that actually support spatial layers since we
  // can't distinguish between an actual spatial layer and a simulcast stream.
  // TODO(bugs.webrtc.org/10520): Signal the simulcast id explicitly.
  int simulcast_id = 0;
  if (codec_specific_info &&
      (codec_specific_info->codecType == kVideoCodecVP8 ||
       codec_specific_info->codecType == kVideoCodecH264 ||
       codec_specific_info->codecType == kVideoCodecGeneric)) {
    simulcast_id = encoded_image.SpatialIndex().value_or(0);
  }

  std::unique_ptr<CodecSpecificInfo> codec_info_copy;
  {
    rtc::CritScope cs(&encoded_image_lock_);

    if (codec_specific_info && codec_specific_info->generic_frame_info) {
      codec_info_copy =
          std::make_unique<CodecSpecificInfo>(*codec_specific_info);
      GenericFrameInfo& generic_info = *codec_info_copy->generic_frame_info;
      generic_info.frame_id = next_frame_id_++;

      if (encoder_buffer_state_.size() <= static_cast<size_t>(simulcast_id)) {
        RTC_LOG(LS_ERROR) << "At most " << encoder_buffer_state_.size()
                          << " simulcast streams supported.";
      } else {
        std::array<int64_t, kMaxEncoderBuffers>& state =
            encoder_buffer_state_[simulcast_id];
        for (const CodecBufferUsage& buffer : generic_info.encoder_buffers) {
          if (state.size() <= static_cast<size_t>(buffer.id)) {
            RTC_LOG(LS_ERROR)
                << "At most " << state.size() << " encoder buffers supported.";
            break;
          }

          if (buffer.referenced) {
            int64_t diff = generic_info.frame_id - state[buffer.id];
            if (diff <= 0) {
              RTC_LOG(LS_ERROR) << "Invalid frame diff: " << diff << ".";
            } else if (absl::c_find(generic_info.frame_diffs, diff) ==
                       generic_info.frame_diffs.end()) {
              generic_info.frame_diffs.push_back(diff);
            }
          }

          if (buffer.updated)
            state[buffer.id] = generic_info.frame_id;
        }
      }
    }
  }

  EncodedImageCallback::Result result = sink_->OnEncodedImage(
      image_copy, codec_info_copy ? codec_info_copy.get() : codec_specific_info,
      fragmentation_copy ? fragmentation_copy.get() : fragmentation);

  // We are only interested in propagating the meta-data about the image, not
  // encoded data itself, to the post encode function. Since we cannot be sure
  // the pointer will still be valid when run on the task queue, set it to null.
  DataSize frame_size = DataSize::Bytes(image_copy.size());
  image_copy.ClearEncodedData();

  int temporal_index = 0;
  if (codec_specific_info) {
    if (codec_specific_info->codecType == kVideoCodecVP9) {
      temporal_index = codec_specific_info->codecSpecific.VP9.temporal_idx;
    } else if (codec_specific_info->codecType == kVideoCodecVP8) {
      temporal_index = codec_specific_info->codecSpecific.VP8.temporalIdx;
    }
  }
  if (temporal_index == kNoTemporalIdx) {
    temporal_index = 0;
  }

  RunPostEncode(image_copy, rtc::TimeMicros(), temporal_index, frame_size);

  if (result.error == Result::OK) {
    // In case of an internal encoder running on a separate thread, the
    // decision to drop a frame might be a frame late and signaled via
    // atomic flag. This is because we can't easily wait for the worker thread
    // without risking deadlocks, eg during shutdown when the worker thread
    // might be waiting for the internal encoder threads to stop.
    if (pending_frame_drops_.load() > 0) {
      int pending_drops = pending_frame_drops_.fetch_sub(1);
      RTC_DCHECK_GT(pending_drops, 0);
      result.drop_next_frame = true;
    }
  }

  return result;
}

void VideoStreamEncoder::OnDroppedFrame(DropReason reason) {
  switch (reason) {
    case DropReason::kDroppedByMediaOptimizations:
      encoder_stats_observer_->OnFrameDropped(
          VideoStreamEncoderObserver::DropReason::kMediaOptimization);
      break;
    case DropReason::kDroppedByEncoder:
      encoder_stats_observer_->OnFrameDropped(
          VideoStreamEncoderObserver::DropReason::kEncoder);
      break;
  }
  sink_->OnDroppedFrame(reason);
  encoder_queue_.PostTask([this, reason] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    stream_resource_manager_.OnFrameDropped(reason);
  });
}

DataRate VideoStreamEncoder::UpdateTargetBitrate(DataRate target_bitrate,
                                                 double cwnd_reduce_ratio) {
  RTC_DCHECK_RUN_ON(&encoder_queue_);
  DataRate updated_target_bitrate = target_bitrate;

  // Drop frames when congestion window pushback ratio is larger than 1
  // percent and target bitrate is larger than codec min bitrate.
  // When target_bitrate is 0 means codec is paused, skip frame dropping.
  if (cwnd_reduce_ratio > 0.01 && target_bitrate.bps() > 0 &&
      target_bitrate.bps() > send_codec_.minBitrate * 1000) {
    int reduce_bitrate_bps = std::min(
        static_cast<int>(target_bitrate.bps() * cwnd_reduce_ratio),
        static_cast<int>(target_bitrate.bps() - send_codec_.minBitrate * 1000));
    if (reduce_bitrate_bps > 0) {
      // At maximum the congestion window can drop 1/2 frames.
      cwnd_frame_drop_interval_ = std::max(
          2, static_cast<int>(target_bitrate.bps() / reduce_bitrate_bps));
      // Reduce target bitrate accordingly.
      updated_target_bitrate =
          target_bitrate - (target_bitrate / cwnd_frame_drop_interval_.value());
      return updated_target_bitrate;
    }
  }
  cwnd_frame_drop_interval_.reset();
  return updated_target_bitrate;
}

void VideoStreamEncoder::OnBitrateUpdated(DataRate target_bitrate,
                                          DataRate stable_target_bitrate,
                                          DataRate link_allocation,
                                          uint8_t fraction_lost,
                                          int64_t round_trip_time_ms,
                                          double cwnd_reduce_ratio) {
  RTC_DCHECK_GE(link_allocation, target_bitrate);
  if (!encoder_queue_.IsCurrent()) {
    encoder_queue_.PostTask([this, target_bitrate, stable_target_bitrate,
                             link_allocation, fraction_lost, round_trip_time_ms,
                             cwnd_reduce_ratio] {
      DataRate updated_target_bitrate =
          UpdateTargetBitrate(target_bitrate, cwnd_reduce_ratio);
      OnBitrateUpdated(updated_target_bitrate, stable_target_bitrate,
                       link_allocation, fraction_lost, round_trip_time_ms,
                       cwnd_reduce_ratio);
    });
    return;
  }
  RTC_DCHECK_RUN_ON(&encoder_queue_);

  const bool video_is_suspended = target_bitrate == DataRate::Zero();
  const bool video_suspension_changed = video_is_suspended != EncoderPaused();

  if (!video_is_suspended && settings_.encoder_switch_request_callback) {
    if (encoder_selector_) {
      if (auto encoder =
              encoder_selector_->OnAvailableBitrate(link_allocation)) {
        settings_.encoder_switch_request_callback->RequestEncoderSwitch(
            *encoder);
      }
    } else if (encoder_switch_experiment_.IsBitrateBelowThreshold(
                   target_bitrate) &&
               !encoder_switch_requested_) {
      EncoderSwitchRequestCallback::Config conf;
      conf.codec_name = encoder_switch_experiment_.to_codec;
      conf.param = encoder_switch_experiment_.to_param;
      conf.value = encoder_switch_experiment_.to_value;
      settings_.encoder_switch_request_callback->RequestEncoderSwitch(conf);

      encoder_switch_requested_ = true;
    }
  }

  RTC_DCHECK(sink_) << "sink_ must be set before the encoder is active.";

  RTC_LOG(LS_VERBOSE) << "OnBitrateUpdated, bitrate " << target_bitrate.bps()
                      << " stable bitrate = " << stable_target_bitrate.bps()
                      << " link allocation bitrate = " << link_allocation.bps()
                      << " packet loss " << static_cast<int>(fraction_lost)
                      << " rtt " << round_trip_time_ms;

  if (encoder_) {
    encoder_->OnPacketLossRateUpdate(static_cast<float>(fraction_lost) / 256.f);
    encoder_->OnRttUpdate(round_trip_time_ms);
  }

  uint32_t framerate_fps = GetInputFramerateFps();
  frame_dropper_.SetRates((target_bitrate.bps() + 500) / 1000, framerate_fps);

  EncoderRateSettings new_rate_settings{
      VideoBitrateAllocation(), static_cast<double>(framerate_fps),
      link_allocation, target_bitrate, stable_target_bitrate};
  SetEncoderRates(UpdateBitrateAllocationAndNotifyObserver(new_rate_settings));

  if (target_bitrate.bps() != 0)
    encoder_target_bitrate_bps_ = target_bitrate.bps();

  stream_resource_manager_.SetTargetBitrate(target_bitrate);

  if (video_suspension_changed) {
    RTC_LOG(LS_INFO) << "Video suspend state changed to: "
                     << (video_is_suspended ? "suspended" : "not suspended");
    encoder_stats_observer_->OnSuspendChange(video_is_suspended);
  }
  if (video_suspension_changed && !video_is_suspended && pending_frame_ &&
      !DropDueToSize(pending_frame_->size())) {
    int64_t pending_time_us = rtc::TimeMicros() - pending_frame_post_time_us_;
    if (pending_time_us < kPendingFrameTimeoutMs * 1000)
      EncodeVideoFrame(*pending_frame_, pending_frame_post_time_us_);
    pending_frame_.reset();
  }
}

bool VideoStreamEncoder::DropDueToSize(uint32_t pixel_count) const {
  bool simulcast_or_svc =
      (send_codec_.codecType == VideoCodecType::kVideoCodecVP9 &&
       send_codec_.VP9().numberOfSpatialLayers > 1) ||
      send_codec_.numberOfSimulcastStreams > 1;

  if (simulcast_or_svc || !stream_resource_manager_.DropInitialFrames() ||
      !encoder_target_bitrate_bps_.has_value()) {
    return false;
  }

  absl::optional<VideoEncoder::ResolutionBitrateLimits> encoder_bitrate_limits =
      encoder_->GetEncoderInfo().GetEncoderBitrateLimitsForResolution(
          pixel_count);

  if (encoder_bitrate_limits.has_value()) {
    // Use bitrate limits provided by encoder.
    return encoder_target_bitrate_bps_.value() <
           static_cast<uint32_t>(encoder_bitrate_limits->min_start_bitrate_bps);
  }

  if (encoder_target_bitrate_bps_.value() < 300000 /* qvga */) {
    return pixel_count > 320 * 240;
  } else if (encoder_target_bitrate_bps_.value() < 500000 /* vga */) {
    return pixel_count > 640 * 480;
  }
  return false;
}

void VideoStreamEncoder::OnVideoSourceRestrictionsUpdated(
    VideoSourceRestrictions restrictions,
    const VideoAdaptationCounters& adaptation_counters,
    rtc::scoped_refptr<Resource> reason) {
  RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
  video_source_sink_controller_.SetRestrictions(std::move(restrictions));
  video_source_sink_controller_.PushSourceSinkSettings();
}

void VideoStreamEncoder::RunPostEncode(const EncodedImage& encoded_image,
                                       int64_t time_sent_us,
                                       int temporal_index,
                                       DataSize frame_size) {
  if (!encoder_queue_.IsCurrent()) {
    encoder_queue_.PostTask([this, encoded_image, time_sent_us, temporal_index,
                             frame_size] {
      RunPostEncode(encoded_image, time_sent_us, temporal_index, frame_size);
    });
    return;
  }

  RTC_DCHECK_RUN_ON(&encoder_queue_);

  absl::optional<int> encode_duration_us;
  if (encoded_image.timing_.flags != VideoSendTiming::kInvalid) {
    encode_duration_us =
        // TODO(nisse): Maybe use capture_time_ms_ rather than encode_start_ms_?
        rtc::kNumMicrosecsPerMillisec *
        (encoded_image.timing_.encode_finish_ms -
         encoded_image.timing_.encode_start_ms);
  }

  // Run post encode tasks, such as overuse detection and frame rate/drop
  // stats for internal encoders.
  const bool keyframe =
      encoded_image._frameType == VideoFrameType::kVideoFrameKey;

  if (!frame_size.IsZero()) {
    frame_dropper_.Fill(frame_size.bytes(), !keyframe);
  }

  if (HasInternalSource()) {
    // Update frame dropper after the fact for internal sources.
    input_framerate_.Update(1u, clock_->TimeInMilliseconds());
    frame_dropper_.Leak(GetInputFramerateFps());
    // Signal to encoder to drop next frame.
    if (frame_dropper_.DropFrame()) {
      pending_frame_drops_.fetch_add(1);
    }
  }

  stream_resource_manager_.OnEncodeCompleted(encoded_image, time_sent_us,
                                             encode_duration_us);
  if (bitrate_adjuster_) {
    bitrate_adjuster_->OnEncodedFrame(encoded_image, temporal_index);
  }
}

bool VideoStreamEncoder::HasInternalSource() const {
  // TODO(sprang): Checking both info from encoder and from encoder factory
  // until we have deprecated and removed the encoder factory info.
  return codec_info_.has_internal_source || encoder_info_.has_internal_source;
}

void VideoStreamEncoder::ReleaseEncoder() {
  if (!encoder_ || !encoder_initialized_) {
    return;
  }
  encoder_->Release();
  encoder_initialized_ = false;
  TRACE_EVENT0("webrtc", "VCMGenericEncoder::Release");
}

bool VideoStreamEncoder::EncoderSwitchExperiment::IsBitrateBelowThreshold(
    const DataRate& target_bitrate) {
  DataRate rate = DataRate::KilobitsPerSec(
      bitrate_filter.Apply(1.0, target_bitrate.kbps()));
  return current_thresholds.bitrate && rate < *current_thresholds.bitrate;
}

bool VideoStreamEncoder::EncoderSwitchExperiment::IsPixelCountBelowThreshold(
    int pixel_count) const {
  return current_thresholds.pixel_count &&
         pixel_count < *current_thresholds.pixel_count;
}

void VideoStreamEncoder::EncoderSwitchExperiment::SetCodec(
    VideoCodecType codec) {
  auto it = codec_thresholds.find(codec);
  if (it == codec_thresholds.end()) {
    current_thresholds = {};
  } else {
    current_thresholds = it->second;
  }
}

VideoStreamEncoder::EncoderSwitchExperiment
VideoStreamEncoder::ParseEncoderSwitchFieldTrial() const {
  EncoderSwitchExperiment result;

  // Each "codec threshold" have the format
  // "<codec name>;<bitrate kbps>;<pixel count>", and are separated by the "|"
  // character.
  webrtc::FieldTrialOptional<std::string> codec_thresholds_string{
      "codec_thresholds"};
  webrtc::FieldTrialOptional<std::string> to_codec{"to_codec"};
  webrtc::FieldTrialOptional<std::string> to_param{"to_param"};
  webrtc::FieldTrialOptional<std::string> to_value{"to_value"};
  webrtc::FieldTrialOptional<double> window{"window"};

  webrtc::ParseFieldTrial(
      {&codec_thresholds_string, &to_codec, &to_param, &to_value, &window},
      webrtc::field_trial::FindFullName(
          "WebRTC-NetworkCondition-EncoderSwitch"));

  if (!codec_thresholds_string || !to_codec || !window) {
    return {};
  }

  result.bitrate_filter.Reset(1.0 - 1.0 / *window);
  result.to_codec = *to_codec;
  result.to_param = to_param.GetOptional();
  result.to_value = to_value.GetOptional();

  std::vector<std::string> codecs_thresholds;
  if (rtc::split(*codec_thresholds_string, '|', &codecs_thresholds) == 0) {
    return {};
  }

  for (const std::string& codec_threshold : codecs_thresholds) {
    std::vector<std::string> thresholds_split;
    if (rtc::split(codec_threshold, ';', &thresholds_split) != 3) {
      return {};
    }

    VideoCodecType codec = PayloadStringToCodecType(thresholds_split[0]);
    int bitrate_kbps;
    rtc::FromString(thresholds_split[1], &bitrate_kbps);
    int pixel_count;
    rtc::FromString(thresholds_split[2], &pixel_count);

    if (bitrate_kbps > 0) {
      result.codec_thresholds[codec].bitrate =
          DataRate::KilobitsPerSec(bitrate_kbps);
    }

    if (pixel_count > 0) {
      result.codec_thresholds[codec].pixel_count = pixel_count;
    }

    if (!result.codec_thresholds[codec].bitrate &&
        !result.codec_thresholds[codec].pixel_count) {
      return {};
    }
  }

  rtc::StringBuilder ss;
  ss << "Successfully parsed WebRTC-NetworkCondition-EncoderSwitch field "
        "trial."
        " to_codec:"
     << result.to_codec << " to_param:" << result.to_param.value_or("<none>")
     << " to_value:" << result.to_value.value_or("<none>")
     << " codec_thresholds:";

  for (auto kv : result.codec_thresholds) {
    std::string codec_name = CodecTypeToPayloadString(kv.first);
    std::string bitrate = kv.second.bitrate
                              ? std::to_string(kv.second.bitrate->kbps())
                              : "<none>";
    std::string pixels = kv.second.pixel_count
                             ? std::to_string(*kv.second.pixel_count)
                             : "<none>";
    ss << " (" << codec_name << ":" << bitrate << ":" << pixels << ")";
  }

  RTC_LOG(LS_INFO) << ss.str();

  return result;
}

VideoStreamEncoder::AutomaticAnimationDetectionExperiment
VideoStreamEncoder::ParseAutomatincAnimationDetectionFieldTrial() const {
  AutomaticAnimationDetectionExperiment result;

  result.Parser()->Parse(webrtc::field_trial::FindFullName(
      "WebRTC-AutomaticAnimationDetectionScreenshare"));

  if (!result.enabled) {
    RTC_LOG(LS_INFO) << "Automatic animation detection experiment is disabled.";
    return result;
  }

  RTC_LOG(LS_INFO) << "Automatic animation detection experiment settings:"
                      " min_duration_ms="
                   << result.min_duration_ms
                   << " min_area_ration=" << result.min_area_ratio
                   << " min_fps=" << result.min_fps;

  return result;
}

void VideoStreamEncoder::CheckForAnimatedContent(
    const VideoFrame& frame,
    int64_t time_when_posted_in_us) {
  if (!automatic_animation_detection_experiment_.enabled ||
      encoder_config_.content_type !=
          VideoEncoderConfig::ContentType::kScreen ||
      stream_resource_manager_.degradation_preference() !=
          DegradationPreference::BALANCED) {
    return;
  }

  if (expect_resize_state_ == ExpectResizeState::kResize && last_frame_info_ &&
      last_frame_info_->width != frame.width() &&
      last_frame_info_->height != frame.height()) {
    // On applying resolution cap there will be one frame with no/different
    // update, which should be skipped.
    // It can be delayed by several frames.
    expect_resize_state_ = ExpectResizeState::kFirstFrameAfterResize;
    return;
  }

  if (expect_resize_state_ == ExpectResizeState::kFirstFrameAfterResize) {
    // The first frame after resize should have new, scaled update_rect.
    if (frame.has_update_rect()) {
      last_update_rect_ = frame.update_rect();
    } else {
      last_update_rect_ = absl::nullopt;
    }
    expect_resize_state_ = ExpectResizeState::kNoResize;
  }

  bool should_cap_resolution = false;
  if (!frame.has_update_rect()) {
    last_update_rect_ = absl::nullopt;
    animation_start_time_ = Timestamp::PlusInfinity();
  } else if ((!last_update_rect_ ||
              frame.update_rect() != *last_update_rect_)) {
    last_update_rect_ = frame.update_rect();
    animation_start_time_ = Timestamp::Micros(time_when_posted_in_us);
  } else {
    TimeDelta animation_duration =
        Timestamp::Micros(time_when_posted_in_us) - animation_start_time_;
    float area_ratio = static_cast<float>(last_update_rect_->width *
                                          last_update_rect_->height) /
                       (frame.width() * frame.height());
    if (animation_duration.ms() >=
            automatic_animation_detection_experiment_.min_duration_ms &&
        area_ratio >=
            automatic_animation_detection_experiment_.min_area_ratio &&
        encoder_stats_observer_->GetInputFrameRate() >=
            automatic_animation_detection_experiment_.min_fps) {
      should_cap_resolution = true;
    }
  }
  if (cap_resolution_due_to_video_content_ != should_cap_resolution) {
    expect_resize_state_ = should_cap_resolution ? ExpectResizeState::kResize
                                                 : ExpectResizeState::kNoResize;
    cap_resolution_due_to_video_content_ = should_cap_resolution;
    if (should_cap_resolution) {
      RTC_LOG(LS_INFO) << "Applying resolution cap due to animation detection.";
    } else {
      RTC_LOG(LS_INFO) << "Removing resolution cap due to no consistent "
                          "animation detection.";
    }
    video_source_sink_controller_.SetPixelsPerFrameUpperLimit(
        should_cap_resolution ? absl::optional<size_t>(kMaxAnimationPixels)
                              : absl::nullopt);
    video_source_sink_controller_.PushSourceSinkSettings();
  }
}
void VideoStreamEncoder::InjectAdaptationResource(
    rtc::scoped_refptr<Resource> resource,
    VideoAdaptationReason reason) {
  rtc::Event map_resource_event;
  encoder_queue_.PostTask([this, resource, reason, &map_resource_event] {
    RTC_DCHECK_RUN_ON(&encoder_queue_);
    stream_resource_manager_.MapResourceToReason(resource, reason);
    map_resource_event.Set();
  });
  map_resource_event.Wait(rtc::Event::kForever);

  resource_adaptation_queue_.PostTask([this, resource] {
    RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
    if (!resource_adaptation_processor_) {
      // The VideoStreamEncoder was stopped and the processor destroyed before
      // this task had a chance to execute. No action needed.
      return;
    }
    resource_adaptation_processor_->AddResource(resource);
  });
}

rtc::scoped_refptr<QualityScalerResource>
VideoStreamEncoder::quality_scaler_resource_for_testing() {
  RTC_DCHECK_RUN_ON(&encoder_queue_);
  return stream_resource_manager_.quality_scaler_resource_for_testing();
}

void VideoStreamEncoder::AddAdaptationListenerForTesting(
    ResourceAdaptationProcessorListener* adaptation_listener) {
  rtc::Event event;
  resource_adaptation_queue_.PostTask([this, adaptation_listener, &event] {
    RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
    RTC_DCHECK(resource_adaptation_processor_);
    resource_adaptation_processor_->AddAdaptationListener(adaptation_listener);
    event.Set();
  });
  event.Wait(rtc::Event::kForever);
}

void VideoStreamEncoder::RemoveAdaptationListenerForTesting(
    ResourceAdaptationProcessorListener* adaptation_listener) {
  rtc::Event event;
  resource_adaptation_queue_.PostTask([this, adaptation_listener, &event] {
    RTC_DCHECK_RUN_ON(&resource_adaptation_queue_);
    RTC_DCHECK(resource_adaptation_processor_);
    resource_adaptation_processor_->RemoveAdaptationListener(
        adaptation_listener);
    event.Set();
  });
  event.Wait(rtc::Event::kForever);
}

}  // namespace webrtc
