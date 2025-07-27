#ifndef SLOWCONV_HH
#define SLOWCONV_HH

#include <boost/circular_buffer.hpp>
#include <sstream>
#include <fstream>
#include <map>
#include <iomanip>

#include "ccc.hh"

typedef double Time;		  // ms (cumulative)
typedef double TimeDelta;	  // ms
typedef int32_t SeqNum;		  // Segments (Segs)
typedef int32_t SeqNumDelta;  // Segs (cuumulative)
typedef double SegsRate;	  // Segs per second

class SlowConv: public CCC {
	// TODO: have a separate class for belief based CCA.
	//  Just keep the update cwnd/rate logic in the derived classes...
   public:
	struct History {
		Time creation_tstamp;

		TimeDelta interval_min_rtt;
		TimeDelta interval_max_rtt;

		SeqNum creation_cum_sent_segs;
		SeqNum creation_cum_delivered_segs;
		SeqNum creation_cum_lost_segs;

		SegsRate creation_sending_rate;

		// What was delivered when the packet corresponding to this ACK was
		// sent.
		SeqNum creation_cum_delivered_segs_at_send;

		SeqNumDelta interval_segs_lost;

		bool processed;

		std::string to_string() const {
			std::stringstream ss;
			ss << std::fixed << std::setprecision(2)
			   << "creation_tstamp " << creation_tstamp
			//    << " interval_min_rtt "
			//    << interval_min_rtt << " interval_max_rtt " << interval_max_rtt
			//    << " creation_cum_sent_segs " << creation_cum_sent_segs
			//    << " creation_cum_delivered_segs " << creation_cum_delivered_segs
			//    << " creation_cum_lost_segs " << creation_cum_lost_segs
			//    << " creation_sending_rate " << creation_sending_rate
			//    << " creation_cum_delivered_segs_at_send "
			//    << creation_cum_delivered_segs_at_send
			   << " interval_segs_lost "
			   << interval_segs_lost << " processed " << processed;
			return ss.str();
		}
	};

	struct SendHistory {
		Time creation_tstamp;

		TimeDelta interval_min_rtt;
		TimeDelta interval_max_rtt;

		SeqNum creation_cum_sent_segs;
		SeqNum creation_cum_delivered_segs;
		SeqNum creation_cum_lost_segs;

		SegsRate creation_sending_rate;

		// What was delivered when the packet corresponding to this ACK was
		// sent.
		SeqNum creation_cum_delivered_segs_at_send;

		SeqNumDelta interval_segs_lost;

		bool processed;

		std::string to_string() const {
			std::stringstream ss;
			ss << std::fixed << std::setprecision(2)
			   << "creation_tstamp " << creation_tstamp
			//    << " interval_min_rtt "
			//    << interval_min_rtt << " interval_max_rtt " << interval_max_rtt
			//    << " creation_cum_sent_segs " << creation_cum_sent_segs
			//    << " creation_cum_delivered_segs " << creation_cum_delivered_segs
			//    << " creation_cum_lost_segs " << creation_cum_lost_segs
			//    << " creation_sending_rate " << creation_sending_rate
			//    << " creation_cum_delivered_segs_at_send "
			//    << creation_cum_delivered_segs_at_send
			   << " interval_segs_lost "
			   << interval_segs_lost << " processed " << processed;
			return ss.str();
		}
	};

	struct Beliefs {
		// Updated on every ACK
		TimeDelta min_rtt;
		TimeDelta min_qdel;

		// Updated before every time cwnd/rate is updated (regardless of ACK or
		// sent.)
		SeqNumDelta bq_belief1;	 // inflight segs
		SeqNumDelta bq_belief2;	 // estimated bottleneck queue segs
		SeqNum last_bq_update_segs_sent;
		Time last_bq_update_time;

		// Updated every rtprop time (on ACK)
		Time last_minc_lambda_timeout_time;
		SegsRate min_c_lambda;
		SegsRate prev_consistent_min_c_lambda;

		SegsRate min_c_lambda_since_last_timeout;
		// This is actually needed as loss may happen, and then
		// fresh_min_c_lambda would not be as if it is recomputed over the
		// entire recorded history.
		// // This is not needed since the fresh_min_c_lambda is actually
		// // recomputed over the entire recorded history.

		Time last_minc_maxc_timeout_time;
		SegsRate min_c;
		SegsRate max_c;

		SegsRate minc_since_last_timeout;
		SegsRate maxc_since_last_timeout;

		SegsRate minc_at_last_timeout;
		SegsRate maxc_at_last_timeout;

		Beliefs()
			: min_rtt(TIME_DELTA_MAX),
			  min_qdel(TIME_DELTA_MAX),
			  bq_belief1(0),
			  bq_belief2(0),
			  last_bq_update_segs_sent(0),
			  last_bq_update_time(0),

			  last_minc_lambda_timeout_time(0),
			  min_c_lambda(INIT_MIN_C),
			  prev_consistent_min_c_lambda(INIT_MIN_C),
			  min_c_lambda_since_last_timeout(INIT_MIN_C),

			  last_minc_maxc_timeout_time(0),
			  min_c(INIT_MIN_C),
			  max_c(INIT_MAX_C),
			  minc_since_last_timeout(INIT_MIN_C),
			  maxc_since_last_timeout(INIT_MAX_C),
			  minc_at_last_timeout(INIT_MIN_C),
			  maxc_at_last_timeout(INIT_MAX_C) {}
	};

	enum State { SLOW_START, CONG_AVOID, PROBE, DRAIN };

	enum LogLevel { ERROR, INFO, DEBUG };

	struct SegmentData {
		// On send
		Time send_tstamp;
		SeqNum cum_delivered_segs_at_send;
		SeqNum cum_sent_segs_at_send;

		// On ACK
		TimeDelta rtt;
		SeqNumDelta this_loss_count;
		bool lost;
	};

	static constexpr int HISTORY_SIZE = 32;
	static constexpr SeqNumDelta MIN_CWND = 5;
	static constexpr SegsRate INIT_MIN_C = MIN_CWND;  // ~60 Kbps
	static constexpr SegsRate INIT_MAX_C = 1e5;		  // ~1.2 Gbps
	static constexpr TimeDelta TIME_DELTA_MAX = 1e5;  // 1e2 seconds
	static constexpr TimeDelta MS_TO_SECS = 1e3;
	static constexpr double INTER_HISTORY_TIME = 1;		  // Multiple of min_rtt
	static constexpr double BELIEFS_TIMEOUT_PERIOD = 12;  // Multiple of min_rtt
	static constexpr double JITTER_MULTIPLIER = 1;		  // Multiple of min_rtt
	static constexpr double BELIEFS_CHANGED_SIGNIFICANTLY_THRESH = 1.1;
	static constexpr double TIMEOUT_THRESH = 1.5;
	static constexpr int INTER_RATE_UPDATE_TIME = 1;  // Multiple of min_rtt

	const uint32_t MEASUREMENT_INTERVAL_RTPROP;  // Multiple of min_rtt
	const uint32_t MEASUREMENT_INTERVAL_HISTORY;	 // Multiple of history
	const uint32_t MEASUREMENT_INTERVAL_RATE_UPDATE;	 // Multiple of rate update time

	std::string LOG_TYPE_TO_STR[3];

   protected:
	Time cur_tick;

	Time genericcc_min_rtt;
	double genericcc_rate_measurement;

	Time last_rate_update_time;
	Time last_history_update_time;
	Time last_send_history_update_time;
	State state;

	SeqNum sent_at_last_rate_update;
	SegsRate prev_measured_sending_rate;
	SeqNum expected_cum_sent;

	std::map<SeqNum, SegmentData> unacknowledged_segs;
	boost::circular_buffer<History> history;
	boost::circular_buffer<SendHistory> send_history;
	Beliefs beliefs;

	SeqNum cum_segs_sent;
	SeqNum cum_segs_delivered;
	SeqNum cum_segs_lost;
	SegsRate sending_rate;
	SeqNumDelta cwnd;

	std::string logfilepath;
	std::ofstream logfile;

	bool oddeven;

	Time current_timestamp() { return cur_tick; }
	SegsRate get_min_sending_rate();
	void update_beliefs_minc_maxc(Time, const SegmentData & __attribute((unused)));
	void update_beliefs_minc_lambda(Time __attribute((unused)), const SegmentData &);
	void update_beliefs_on_ack(Time, const SegmentData &, bool, TimeDelta __attribute((unused)));
	void update_bq_beliefs_on_ack_and_sent(Time);
	void update_history(Time, const SegmentData &);
	void update_send_history_on_rate_update(Time);
	// void update_send_history_on_send(Time, const SegmentData &);
	void update_send_history_on_ack(Time __attribute((unused)), const SegmentData &);
	void update_rate_cwnd(Time);
	void update_rate_cwnd_fast_conv(Time __attribute((unused)));
	virtual void update_rate_cwnd_slow_conv(Time __attribute((unused)));
	virtual void update_state(Time __attribute((unused)), const SegmentData &);
	void log(LogLevel, std::string);
	void log_state(Time);
	void log_beliefs(Time);
	void log_history(Time __attribute((unused)));
	void log_send_history(Time __attribute((unused)));
	SeqNumDelta count_loss(SeqNum seq);

   public:
	SlowConv(std::string logfilepath = "",
			 const int MEASUREMENT_INTERVAL_RTPROP_ = 1)
		: MEASUREMENT_INTERVAL_RTPROP(MEASUREMENT_INTERVAL_RTPROP_),
		  MEASUREMENT_INTERVAL_HISTORY(MEASUREMENT_INTERVAL_RTPROP /
									   INTER_HISTORY_TIME),
		  MEASUREMENT_INTERVAL_RATE_UPDATE(MEASUREMENT_INTERVAL_RTPROP /
										   INTER_RATE_UPDATE_TIME),
		  LOG_TYPE_TO_STR {"ERROR", "INFO", "DEBUG"},
		  cur_tick(0),
		  genericcc_min_rtt(0),
		  genericcc_rate_measurement(0),
		  last_rate_update_time(0),
		  last_history_update_time(0),
		  last_send_history_update_time(0),
		  state(State::SLOW_START),
		  sent_at_last_rate_update(0),
		  prev_measured_sending_rate(0),
		  expected_cum_sent(0),
		  unacknowledged_segs(),
		  history(HISTORY_SIZE),
		  send_history(HISTORY_SIZE),
		  beliefs(Beliefs()),
		  cum_segs_sent(0),
		  cum_segs_delivered(0),
		  cum_segs_lost(0),
		  sending_rate(INIT_MIN_C),
		  cwnd(MIN_CWND),
		  logfilepath(logfilepath),
		  logfile(),
		  oddeven(false) {
		if (!logfilepath.empty()) {
			std::cout << "Logging at " << logfilepath << "\n";
			logfile.open(logfilepath);
		}
		// This is the only tested configuration.
		assert(INTER_RATE_UPDATE_TIME == INTER_HISTORY_TIME);
	}

	~SlowConv() {
		if (logfile.is_open()) logfile.close();
	}

	virtual void init() override;
	virtual void onACK(SeqNum ack, Time receiver_timestamp __attribute((unused)),
					   Time sender_timestamp __attribute((unused))) override;
	virtual void onPktSent(SeqNum seq_num) override;
	virtual void onTimeout() override { std::cerr << "Ack timed out!\n"; }
	virtual void onLinkRateMeasurement(double s_measured_link_rate) override {
		genericcc_rate_measurement = s_measured_link_rate;
	}
	void set_timestamp(Time s_cur_tick) { cur_tick = s_cur_tick; }
	void set_min_rtt(Time s_min_rtt) { genericcc_min_rtt = s_min_rtt; }
};

#endif