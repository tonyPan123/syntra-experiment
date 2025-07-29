#ifndef ADAPTIVE_STREAM_HH
#define ADAPTIVE_STREAM_HH

#include <iostream>
#include <boost/circular_buffer.hpp>
#include <vector>
#include <thread>
#include <future>
#include <chrono>
//#include <boost>

#include "yuv4mpeg.hh"
#include "packet.hh"
#include "encoder.hh"
#include "ivf_reader.hh"
#include "reed_solomon.hpp"
#include "pacer.hh"
#include "thread_pool.hh"
#include "player.hh"

using namespace std;

const int MILLI_TO_MICRO = 1000;

struct EncodeJob
{
    RasterHandle raster;
    
    Encoder encoder;

    size_t target_size;

    uint32_t timestamp;

    EncodeJob(RasterHandle raster, const Encoder & encoder, const size_t target_size, const uint32_t timestamp)
        : raster( raster ), encoder( encoder ), target_size( target_size ), timestamp(timestamp)
    {}
};

struct EncodeOutput
{
    Encoder encoder;
    vector<uint8_t> frame;
    uint32_t source_minihash;
    uint32_t timestamp;

    EncodeOutput( Encoder && encoder, vector<uint8_t> && frame,
                    const uint32_t source_minihash, const uint32_t timestamp)
        : encoder( std::move( encoder ) ), frame( std::move( frame ) ),
        source_minihash( source_minihash), timestamp(timestamp)
        {}
};

EncodeOutput do_encode_job( EncodeJob && encode_job )
{
    std::vector<uint8_t> output;
    uint32_t source_minihash = encode_job.encoder.minihash();
    //if (encode_job.target_size >= 5000) {
        output = encode_job.encoder.encode_with_target_size( encode_job.raster.get(),
                                                        encode_job.target_size );
    //} else {
    //    output = encode_job.encoder.encode_with_quantizer( encode_job.raster.get(),
    //                                                    100 );
    //}
    return { move( encode_job.encoder ), move( output ), source_minihash, encode_job.timestamp};
}


enum SENDING_BAHAVIOUR {
    DRAIN,
    SINGLE_FRAME, 
    MULTI_FRAME, 
    PER_FRAME,
    CONVERGED,
};


class ABR {
    public: 
        // Fetched frames per RTT 
        vector<RasterHandle> fetched_frames;
        // Encoders should be parallel (>= 2)
        Encoder encoder{ 1280, 720, false, REALTIME_QUALITY };
        // Can only consider 2 RTTs' frames for each abr action  
        static constexpr unsigned MAX_NUM_RTTS = 3;
        FECPre encoded_output_by_rtt[MAX_NUM_RTTS];

        /* where we keep the outputs of parallel encoding jobs */
        vector<EncodeJob> encode_jobs;
        vector<future<EncodeOutput>> encode_outputs;

        uint16_t connection_id;
        uint32_t frame_no;
        uint32_t fec_frame_no;

        Encoder original_encoder{ 1280, 720, false, REALTIME_QUALITY };

        Decoder decoder = {1280, 720};

        bool stop_encode;

        boost::circular_buffer<Encoder> past_encoders;

        FECPacket latest_pkt;

        ABR(uint16_t _conenction_id, Encoder & encoder_) 
            : encoder(move(encoder_)),
              stop_encode(false), 
              past_encoders(4)
        {  
            connection_id = _conenction_id;
            frame_no = 0;
            for (unsigned i = 0; i < MAX_NUM_RTTS; i++) {
                encoded_output_by_rtt[i] = FECPre{connection_id};
            }
            past_encoders.push_back({ 1280, 720, false, REALTIME_QUALITY });
            past_encoders.push_back({ 1280, 720, false, REALTIME_QUALITY });
            past_encoders.push_back({ 1280, 720, false, REALTIME_QUALITY });
            past_encoders.push_back({ 1280, 720, false, REALTIME_QUALITY });
        }

        void add_fetch_frame(IVFReader & reader) {
            // TODO: Change to thread pool later???
            thread([this, &reader]() {
                Optional<RasterHandle> raster = reader.get_next_frame();
                if ( raster.initialized() ) {
                    fetched_frames.push_back(raster.get());
                }
            }).detach();
        }

        void add_fetch_frame(YUV4MPEGReader & reader) {
            // TODO: Change to thread pool later???
            thread([this, &reader]() {
                Optional<RasterHandle> raster = reader.get_next_frame();
                if ( raster.initialized() ) {
                    fetched_frames.push_back(raster.get());
                }
            }).detach();
        }

        void encode_fetched_frames([[maybe_unused]] size_t target_sizes) {
            if (fetched_frames.size() == 0) {
                return;
            }
            for (RasterHandle & raster : fetched_frames) {
                auto now = chrono::steady_clock::now();
                uint32_t ms = chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()).count();
                //encode_jobs.emplace_back(raster, encoder, target_sizes / fetched_frames.size() /*TODO: change to min_c later */, ms);
                encode_jobs.emplace_back(raster, past_encoders[past_encoders.size() - 1], target_sizes / fetched_frames.size() /*TODO: change to min_c later */, ms);
            }
            fetched_frames.clear();

            thread(
                [this]()
                {
                    encode_outputs.clear();
                    encode_outputs.reserve( encode_jobs.size() );

                    for ( auto & job : encode_jobs ) {
                        encode_outputs.push_back(
                            async( (launch::async),
                                do_encode_job, move( job ) ) );
                    }
                
                    for ( auto & future_res : encode_outputs ) {
                        future_res.wait();
                    }

                    cout << "Encoding Job done!!!" << endl;
                }
            ).detach();
        }

        // Assume all jobs are finished before calling
        void add_fec([[maybe_unused]] Pacer & pacer, [[maybe_unused]] CongCtrl & cc) {
            encode_jobs.clear();
            //auto probe = chrono::_V2::system_clock::now();
            vector<EncodeOutput> good_outputs;
            for ( auto & out_future : encode_outputs ) {
              if ( out_future.valid() ) {
                good_outputs.push_back( move( out_future.get() ) );
              }
            }
            //chrono::duration<double, std::ratio<1,1000>> diff = (chrono::_V2::system_clock::now() - probe); // in millis
            // Collect frames
            // Our algorithm can only handle up to MAX_NUM_RTTS frames
            assert(MAX_NUM_RTTS >= 2);
            for (unsigned i = 0; i < MAX_NUM_RTTS; i++) {
                if (i == 0) {
                    encoded_output_by_rtt[i].merge(encoded_output_by_rtt[i + 1]);
                    //encoded_output_by_rtt[i] = encoded_output_by_rtt[i + 1];
                } else {
                    if (i < MAX_NUM_RTTS - 1) {
                        encoded_output_by_rtt[i] = encoded_output_by_rtt[i + 1];
                    }
                }
            }
            //cout << "Time is: " << 1 << endl;

            vector<FragmentedFrame> encode_output = {};
            FECPre frames(connection_id);
            for ( size_t i = 0; i < good_outputs.size(); i++ ) {
                frame_no++;
                cout << "Encoding of " << frame_no << " is " << good_outputs[ i ].frame.size() << endl;
                FragmentedFrame ff { connection_id, good_outputs[ i ].source_minihash, good_outputs[ i ].encoder.minihash(),
                    frame_no,
                    0 /* Unused */,
                    good_outputs[ i ].frame };
                cout << "SSIM of " << frame_no << " is " << good_outputs[i].encoder.stats().ssim.get() << endl;
                //cout << "Hash is " << ff.source_state() << endl;
                //cout << "Hash out is " << ff.target_state() << endl;

                //Decoder temp{decoder};
                //temp.parse_and_decode_frame(ff.frame());
                //cout << "Decoding " << temp.minihash() << endl;
                //if (i == good_outputs.size() - 1) {
                //    decoder = move(temp);
                //}
                // TODO: Need to include fetch and encoding time
                //auto now = chrono::steady_clock::now();
                //uint32_t ms = chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()).count();
                frames.add_frame(frame_no, ff.packets(), good_outputs[i].timestamp);
            }
            // The frames added into FECPre will be sent anyway
            encoded_output_by_rtt[MAX_NUM_RTTS - 1] = frames;
            if (good_outputs.size() > 0) {
                past_encoders.push_back(move(good_outputs[ good_outputs.size() - 1 ].encoder));
                //encoder = move(good_outputs[ good_outputs.size() - 1 ].encoder);
            }
            //good_outputs[ good_outputs.size() - 1 ].encoder.stats().ssim;
            // Sending behaviour and add FEC

            // Decide mode first
            SENDING_BAHAVIOUR status = DRAIN;
            if ((pacer.size() + cc.beliefs.max_q) <= 2) {
                if (encoded_output_by_rtt[0].initialized) {
                    if (encoded_output_by_rtt[1].initialized) {
                        if (encoded_output_by_rtt[0].total_len <= cc.no_loss_rate &&
                             (encoded_output_by_rtt[0].total_len + encoded_output_by_rtt[1].total_len) <= (2 * cc.beliefs.min_c - cc.beliefs.max_q) && 
                               (encoded_output_by_rtt[0].total_len + encoded_output_by_rtt[1].total_len + encoded_output_by_rtt[2].total_len) <= (3 * cc.beliefs.min_c - cc.beliefs.max_q))
                        status = PER_FRAME;  
                    }                 
                } else {
                    if (encoded_output_by_rtt[1].initialized) {
                        if ((encoded_output_by_rtt[1].total_len + encoded_output_by_rtt[2].total_len) <= (cc.beliefs.min_c + cc.no_loss_rate)) {
                            if ((encoded_output_by_rtt[1].total_len + encoded_output_by_rtt[2].total_len) <= (3 * cc.beliefs.min_c - cc.beliefs.max_q)) {
                                status = MULTI_FRAME;
                            }
                        }
                    } else {
                        if (encoded_output_by_rtt[2].initialized) {
                            if ((encoded_output_by_rtt[2].total_len) <= (cc.no_loss_rate)) {
                                status = SINGLE_FRAME;
                            }
                        }
                    }
                }
            }

            if (cc.converged()) {
                status = CONVERGED;
            }

            stop_encode = false;

            if (status == SINGLE_FRAME) {
                FECPre & sum = encoded_output_by_rtt[2];
                uint16_t extra_fec = min((uint16_t)(3 * cc.beliefs.min_c - cc.beliefs.max_q - sum.total_len), (uint16_t)(255 - sum.total_len));
                fec_frame_no++;
                FECFrame fec_frame {fec_frame_no, sum, extra_fec};

                bool loss_detect = sum.total_len > cc.no_loss_rate;
                if (loss_detect) {
                    uint16_t next_interval_sent = sum.total_len - cc.no_loss_rate;
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.total_pkts - next_interval_sent); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Single-frame Encoding two RTT, frame_size: " << sum.total_len << " extra_fec: " << extra_fec << endl;
                } else {
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.total_pkts); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Single-frame Encoding one RTT, frame_size: " << sum.total_len << " extra_fec: " << extra_fec << endl;
                }
                encoded_output_by_rtt[2] =  FECPre{connection_id};
            } else if (status == MULTI_FRAME) {
                FECPre & sum = encoded_output_by_rtt[1];
                sum.merge(encoded_output_by_rtt[2]);
                uint16_t extra_fec = min((uint16_t)(3 * cc.beliefs.min_c - cc.beliefs.max_q - sum.total_len), (uint16_t)(255 - sum.total_len));
                fec_frame_no++;
                FECFrame fec_frame {fec_frame_no, sum, extra_fec};

                bool loss_detect = sum.total_len > cc.no_loss_rate;
                if (loss_detect) {
                    uint16_t next_interval_sent = sum.total_len - cc.no_loss_rate;
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.total_pkts - next_interval_sent); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Multi-frame Encoding two RTT, frame_size: " << sum.total_len << " extra_fec: " << extra_fec << endl;
                } else {
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.total_pkts); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Multi-frame Encoding one RTT, frame_size: " << sum.total_len << " extra_fec: " << extra_fec << endl;
                }
                encoded_output_by_rtt[1] =  FECPre{connection_id};
                encoded_output_by_rtt[2] =  FECPre{connection_id};
            } else if (status == PER_FRAME) {
                int64_t total_sum = ((int64_t)encoded_output_by_rtt[0].total_len + (int64_t)encoded_output_by_rtt[1].total_len);
                if (total_sum <= cc.no_loss_rate) {
                    // Shrink min(c)
                    // Best effort for latency and probing
                    // Non-determinsim at the encoder can make the normal condition check fail
                    int64_t lower_bound = (int64_t)encoded_output_by_rtt[0].total_len + (int64_t)encoded_output_by_rtt[1].total_len;
                    int64_t upper_bound = (int64_t)3 * cc.beliefs.min_c - cc.beliefs.max_q;
                    if (encoded_output_by_rtt[2].initialized) {
                        upper_bound -= (int64_t)encoded_output_by_rtt[2].total_len;
                    }
                    int64_t fec_loss = (int64_t)cc.no_loss_rate - lower_bound;
                    int64_t fec_latency = ((upper_bound - lower_bound) / 2);
                    int64_t extra_fec = max(min(fec_loss, fec_latency), (int64_t)0);
                    if (lower_bound >= 256) {
                        extra_fec = 0;
                    }
                    fec_frame_no++;
                    FECFrame fec_frame1 {fec_frame_no, encoded_output_by_rtt[0], (uint16_t)extra_fec};
                    fec_frame_no++;
                    FECFrame fec_frame2 {fec_frame_no, encoded_output_by_rtt[1], (uint16_t)extra_fec};
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame1.total_pkts + fec_frame2.total_pkts); 
                    for (FECPacket & pkt : fec_frame1.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    for (FECPacket & pkt : fec_frame2.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Per-frame Encoding probing minc, frame_size1: " << encoded_output_by_rtt[0].total_len << " frame_size2: "<< encoded_output_by_rtt[1].total_len 
                        << " frame_size3: "<< encoded_output_by_rtt[2].total_len << " extra_fec for 1&2: " << extra_fec << endl;
                    encoded_output_by_rtt[0] =  FECPre{connection_id};
                    encoded_output_by_rtt[1] =  FECPre{connection_id};
                } else {
                    // Shrink min(c+b)
                    bool single_fec = (2 * cc.beliefs.min_c - cc.beliefs.max_q - cc.no_loss_rate) >= (int64_t)encoded_output_by_rtt[1].total_len;
                    if (single_fec) {
                        uint16_t extra_fec = min((uint16_t)( 2 * cc.beliefs.min_c - cc.beliefs.max_q - total_sum ), (uint16_t)(255 - encoded_output_by_rtt[0].total_len));
                        fec_frame_no++;
                        FECFrame fec_frame1 {fec_frame_no, encoded_output_by_rtt[0], (uint16_t)extra_fec};
                        fec_frame_no++;
                        FECFrame fec_frame2 {fec_frame_no, encoded_output_by_rtt[1], 0};
                        int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame1.total_pkts); 
                        for (FECPacket & pkt : fec_frame1.pkts) {
                            pacer.push( pkt.to_string(), pkt_interdelay);
                        }
                        pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame2.total_pkts); 
                        for (FECPacket & pkt : fec_frame2.pkts) {
                            pacer.push( pkt.to_string(), pkt_interdelay);
                        }
                        cout << "Action: Per-frame Encoding probing min(c+b), frame_size1: " << encoded_output_by_rtt[0].total_len << " frame_size2: "<< encoded_output_by_rtt[1].total_len << " extra_fec for 1: " << extra_fec << endl;
                        encoded_output_by_rtt[0] =  FECPre{connection_id};
                        encoded_output_by_rtt[1] =  FECPre{connection_id};
                    } else {
                        uint16_t extra_fec = min((uint16_t)(cc.beliefs.min_c - cc.beliefs.max_q / 2 - total_sum / 2), (uint16_t)((255 - total_sum) / 2));
                        fec_frame_no++;
                        FECFrame fec_frame1 {fec_frame_no, encoded_output_by_rtt[0], (uint16_t)extra_fec};
                        fec_frame_no++;
                        FECFrame fec_frame2 {fec_frame_no, encoded_output_by_rtt[1], (uint16_t)extra_fec};
                        int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (cc.no_loss_rate + extra_fec); 
                        for (FECPacket & pkt : fec_frame1.pkts) {
                            pacer.push( pkt.to_string(), pkt_interdelay);
                        }
                        for (FECPacket & pkt : fec_frame2.pkts) {
                            pacer.push( pkt.to_string(), pkt_interdelay);
                        }
                        cout << "Action: Per-frame Encoding probing min(c+b), frame_size1: " << encoded_output_by_rtt[0].total_len << " frame_size2: "<< encoded_output_by_rtt[1].total_len << " extra_fec for 1&2: " << extra_fec << endl;
                        encoded_output_by_rtt[0] =  FECPre{connection_id};
                        encoded_output_by_rtt[1] =  FECPre{connection_id};
                    }

                } 
            } else if (status == DRAIN) {
                // Check for stop encoding 
                if ((encoded_output_by_rtt[0].total_len + encoded_output_by_rtt[1].total_len + encoded_output_by_rtt[2].total_len + pacer.size()) > 2 * cc.beliefs.min_c) {
                    stop_encode = true;
                    cout << "Action: Stop encoding" << endl;
                }
                /*
                if ((encoded_output_by_rtt[1].total_len + encoded_output_by_rtt[2].total_len + pacer.size()) > 2 * cc.beliefs.min_c) {
                    stop_encode = true;
                    cout << "Action: Stop encoding" << endl;
                } */

                if (encoded_output_by_rtt[0].initialized) {
                    FECPre & sum = encoded_output_by_rtt[0];
                    fec_frame_no++;
                    FECFrame fec_frame {fec_frame_no, sum, 0};
    
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (cc.beliefs.min_c); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Do Draining, frame_size: " << sum.total_len << " extra_fec: " << 0 << endl;
                    encoded_output_by_rtt[0] =  FECPre{connection_id};
                }
                // TODO: When to sent encoded_output_by_rtt[1]
            } else {
                // Check for stop encoding 
                /*if (encoded_output_by_rtt[0].total_len > 0) {
                    FECPre & sum = encoded_output_by_rtt[0];
                    fec_frame_no++;
                    FECFrame fec_frame {fec_frame_no, sum, 0};
    
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (cc.beliefs.min_c); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Converged, do eviction. frame_size: " << sum.total_len << endl;
                    encoded_output_by_rtt[0] =  FECPre{connection_id};
                } 
                
                if (encoded_output_by_rtt[1].total_len > 0) {
                    FECPre & sum = encoded_output_by_rtt[1];
                    fec_frame_no++;
                    FECFrame fec_frame {fec_frame_no, sum, 0};
    
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (cc.beliefs.min_c); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Converged, do eviction. frame_size: " << sum.total_len << endl;
                    encoded_output_by_rtt[1] =  FECPre{connection_id};
                } */

                if (encoded_output_by_rtt[0].total_len > 0 || encoded_output_by_rtt[1].total_len > 0) {
                    if (encoded_output_by_rtt[2].total_len > 0) {
                        //encoder = move(past_encoders.back());
                        past_encoders.pop_back();
                    }
                    if (encoded_output_by_rtt[1].total_len > 0) {
                        //if (encoded_output_by_rtt[0].total_len == 0) {
                        //    encoder = move(past_encoders.back());
                        //}
                        past_encoders.pop_back();
                    }
                    if (encoded_output_by_rtt[0].total_len > 0) {
                        //encoder = move(past_encoders.back());
                        past_encoders.pop_back();
                    }
                    encoded_output_by_rtt[0] =  FECPre{connection_id};
                    encoded_output_by_rtt[1] =  FECPre{connection_id};
                    encoded_output_by_rtt[2] =  FECPre{connection_id};
                    cout << "Action: Converged, do eviction." << endl;
                }


                if (encoded_output_by_rtt[2].total_len > 0) {
                    FECPre & sum = encoded_output_by_rtt[2];
                    uint16_t extra_fec = 0;
                    if ((cc.beliefs.max_q + pacer.size()) == 0 && sum.total_len < cc.beliefs.min_c) {
                        extra_fec = min((uint16_t)(cc.beliefs.min_c - (uint16_t)min((uint16_t)sum.total_len, (uint16_t)cc.beliefs.min_c)), (uint16_t)(255 - sum.total_len));
                    }
                    fec_frame_no++;
                    FECFrame fec_frame {fec_frame_no, sum, extra_fec};
    
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.pkts.size()); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    cout << "Action: Converged, frame_size: " << sum.total_len << " extra_fec: " << extra_fec << endl;
                    encoded_output_by_rtt[2] =  FECPre{connection_id};
                }

                if ((pacer.size() + cc.beliefs.max_q) > (cc.beliefs.min_c + 3)) {
                    stop_encode = true;
                    cout << "Action: Stop encoding" << endl;
                }
                //TODO: Consider allow 2 * min_c latency to account for single frame size fluctuation
            }


            if (pacer.empty()) {
                // Need to send prob packets for detecting lost packets
                if (latest_pkt.is_valid) {
                    //pacer.push(latest_pkt.to_string(), 0);
                    latest_pkt.pkt_no_ += 1;
                }
                
            } else {
                latest_pkt = FECPacket{pacer.end()} ;
                latest_pkt.pkt_no_ += 1;
            }

            /*
            stop_encode = false;
            if (cc.beliefs.max_q == 0) {
                if (cc.beliefs.max_c < cc.MAX_BANDWIDTH) {
                    // Draining until latency of 3 goes to 1
                    cout << "Upper Bound already shrink" << endl;
                    vector<int> cert = {};
                    for (int i = 0; i < 3; i++) {
                        if (encoded_output_by_rtt[i].initialized) {
                            cert.push_back(i);
                        }
                    }
                    if (cert.size() > 1) {
                        stop_encode = true;
                    }
                    if (cert.size() == 0) {
                        throw new runtime_error("No frames at all!!!");
                    }
                    int target = cert[0];
                    FECPre & sum = encoded_output_by_rtt[target];
                    uint16_t extra_fec = min((uint16_t)(cc.beliefs.min_c - (uint16_t)min((uint16_t)sum.total_len, (uint16_t)cc.beliefs.min_c)), (uint16_t)(255 - sum.total_len));
                    cout << "Total Frame: " << sum.total_len << endl;
                    cout << "Extra Fec: " << extra_fec << endl;
                    fec_frame_no++;
                    FECFrame fec_frame {fec_frame_no, sum, extra_fec};
                    encoded_output_by_rtt[target] =  FECPre{connection_id};
                    int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.total_pkts); 
                    for (FECPacket & pkt : fec_frame.pkts) {
                        pacer.push( pkt.to_string(), pkt_interdelay);
                    }
                    return;
                }
                // c_max does not shrink
                if (encoded_output_by_rtt[0].initialized) {
                    if (encoded_output_by_rtt[1].initialized) {
                        cout << "Per-frame Encoding" << endl;
                        // Best effort for latency and probing
                        // Non-determinsim at the encoder can make the normal condition check fail
                        int64_t lower_bound = (int64_t)encoded_output_by_rtt[0].total_len + (int64_t)encoded_output_by_rtt[1].total_len;
                        int64_t upper_bound = (int64_t)3 * cc.beliefs.min_c;
                        if (encoded_output_by_rtt[2].initialized) {
                            upper_bound -= (int64_t)encoded_output_by_rtt[2].total_len;
                        }
                        int64_t fec_loss = (int64_t)cc.no_loss_rate - lower_bound;
                        int64_t fec_latency = ((upper_bound - lower_bound) / 2);
                        int64_t extra_fec = max(min(fec_loss, fec_latency), (int64_t)0);
                        if (lower_bound >= 256) {
                            extra_fec = 0;
                        }
                        cout << "First Frame: " << encoded_output_by_rtt[0].total_len << " Second Frame: " << encoded_output_by_rtt[1].total_len << " Third Frame: " << encoded_output_by_rtt[2].total_len << endl;
                        cout << "Extra Fec: " << extra_fec << endl;
                        cout << cc.no_loss_rate << endl;
                        fec_frame_no++;
                        FECFrame fec_frame1 {fec_frame_no, encoded_output_by_rtt[0], (uint16_t)extra_fec};
                        encoded_output_by_rtt[0] =  FECPre{connection_id};
                        fec_frame_no++;
                        FECFrame fec_frame2 {fec_frame_no, encoded_output_by_rtt[1], (uint16_t)extra_fec};
                        encoded_output_by_rtt[1] =  FECPre{connection_id};
                        int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame1.total_pkts + fec_frame2.total_pkts); 
                        for (FECPacket & pkt : fec_frame1.pkts) {
                            pacer.push( pkt.to_string(), pkt_interdelay);
                        }
                        for (FECPacket & pkt : fec_frame2.pkts) {
                            pacer.push( pkt.to_string(), pkt_interdelay);
                        }

                    } else {
                        //throw std::runtime_error("Not Implemented 3\n");
                    }
                } else {
                    if (encoded_output_by_rtt[1].initialized) {
                        if (encoded_output_by_rtt[2].initialized) {
                            if ((encoded_output_by_rtt[1].total_len + encoded_output_by_rtt[2].total_len) <= (uint32_t)cc.no_loss_rate) {
                                cout << "Multi-frame Encoding" << endl;
                                FECPre & sum = encoded_output_by_rtt[1];
                                sum.merge(encoded_output_by_rtt[2]);
                                uint16_t extra_fec = min((uint16_t)(3 * cc.beliefs.min_c - sum.total_len), (uint16_t)(255 - sum.total_len));
                                cout << "Total Frame: " << sum.total_len << endl;
                                cout << "Extra Fec: " << extra_fec << endl;
                                fec_frame_no++;
                                FECFrame fec_frame {fec_frame_no, sum, extra_fec};
                                encoded_output_by_rtt[1] =  FECPre{connection_id};
                                encoded_output_by_rtt[2] =  FECPre{connection_id};
                                int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.total_pkts); 
                                for (FECPacket & pkt : fec_frame.pkts) {
                                    pacer.push( pkt.to_string(), pkt_interdelay);
                                }
                            } else {
                                //throw std::runtime_error("Not Implemented 4\n");
                            }
                        } else {
                            //throw std::runtime_error("Not Implemented 5\n");
                        }
                    } else {
                        if (encoded_output_by_rtt[2].initialized) {
                            cout << "Single-frame Encoding" << endl;
                            FECPre & sum = encoded_output_by_rtt[2];
                            uint16_t extra_fec = min((uint16_t)(3 * cc.beliefs.min_c - sum.total_len), (uint16_t)(255 - sum.total_len));
                            cout << "Total Frame: " << sum.total_len << endl;
                            cout << "Extra Fec: " << extra_fec << endl;
                            fec_frame_no++;
                            FECFrame fec_frame {fec_frame_no, sum, extra_fec};
                            encoded_output_by_rtt[2] =  FECPre{connection_id};
                            int pkt_interdelay = (cc.beliefs.min_rtt * MILLI_TO_MICRO) / (fec_frame.total_pkts); 
                            for (FECPacket & pkt : fec_frame.pkts) {
                                pacer.push( pkt.to_string(), pkt_interdelay);
                            }
                        } else {

                        }
                    }
                }
            }*/
        }
};


#endif