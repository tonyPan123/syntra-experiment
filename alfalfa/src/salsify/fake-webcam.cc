/* -*-mode:c++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */

/* Copyright 2013-2018 the Alfalfa authors
                       and the Massachusetts Institute of Technology

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:

      1. Redistributions of source code must retain the above copyright
         notice, this list of conditions and the following disclaimer.

      2. Redistributions in binary form must reproduce the above copyright
         notice, this list of conditions and the following disclaimer in the
         documentation and/or other materials provided with the distribution.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. */

#include <iostream>
#include <chrono>
#include <thread>
#include <unordered_map>
#include <mutex>

#include "yuv4mpeg.hh"
#include "paranoid.hh"
#include "encoder.hh"
#include "display.hh"
#include "ivf_reader.hh"
#include "poller.hh"
#include "socketpair.hh"
#include "socket.hh"
#include "packet.hh"
#include "pacer.hh"
#include "cong_ctrl.hh"
#include "slow_conv.hh"
#include "slow_conv_manual.hh"
#include "adaptive_stream.hh"
#include "player.hh"

#include "reed_solomon.hpp"

using namespace std;
using namespace std::chrono;
using namespace PollerShortNames;

struct From_Rust {
  int a;
  int b;
};
/*
struct BeliefBound {
    double min_c;
    double max_c;
    double min_b;
    double max_b;
    double min_q;
    double max_q;
};

extern "C" {
    //From_Rust rust_function(From_Rust*);
    struct BeliefBound compute_belief_bounds_c_test();
    
}
*/

void usage( const char *argv0 )
{
  cerr << "Usage: " << argv0 << " INPUT FPS HOST PORT CONNECTION_ID" << endl;
}

double current_timestamp( chrono::high_resolution_clock::time_point &start_time_point ){
  using namespace chrono;
  high_resolution_clock::time_point cur_time_point = high_resolution_clock::now();
  // convert to milliseconds, because that is the scale on which the
  // rats have been trained
  return duration_cast<duration<double>>(cur_time_point - start_time_point).count()*1000;
}


int main( int argc, char *argv[] )
{  ReedSolomon rs;
  rs.reed_test();
  //return 1;
  //fec_test();
  //From_Rust in = {true, 1000};
  //From_Rust ret = rust_function(&in);
  //BeliefBound bb = compute_belief_bounds_c_test();
  //cout << "Pidan: " << bb.min_c << " " << bb.max_c << endl; 
  /* check the command-line arguments */
  if ( argc < 1 ) { /* for sticklers */
    abort();
  }

  if ( argc != 2 ) {
    usage( argv[ 0 ] );
    return EXIT_FAILURE;
  }

  /* open the YUV4MPEG input */
  YUV4MPEGReader input { argv[ 1 ] };

  //IVFReader input {argv[1]};

  /* parse the # of frames per second of playback */
  //unsigned int frames_per_second = paranoid::stoul( argv[ 2 ] );

  /* open the output */
  FileDescriptor stdout { STDOUT_FILENO };

  //const auto interval_between_frames = chrono::microseconds( int( 1.0e6 / frames_per_second ) );

  //auto next_frame_is_due = chrono::system_clock::now();

  auto encode_pipe = UnixDomainSocket::make_pair();
  auto update_pipe = UnixDomainSocket::make_pair();

    /* construct Socket for outgoing datagrams */
  UDPSocket socket;
  socket.connect( Address( "10.0.0.1", "8889" ) );
  //socket.connect( Address( "0", "8889" ) );
  socket.set_timestamps();

  /* get connection_id */
  const uint16_t connection_id = 1337;

  Poller poller;
  Pacer pacer;
  std::mutex first_encoder_lock;
  std::mutex second_encoder_lock;

  /* counter variable */
  [[maybe_unused]] uint32_t real_frame_no = 0;

  SeqNum pkt_no = 0;
  //auto start = chrono::system_clock::now();
  system_clock::time_point last_sent = system_clock::now();
  [[maybe_unused]] chrono::high_resolution_clock::time_point start_time_point = chrono::high_resolution_clock::now();
  unordered_map<uint32_t, unordered_map<uint16_t, SeqNum>> pkt_nums; // TODO: in packet or map?
  unordered_map<SeqNum, system_clock::time_point> pkt_sent_time;

  //SlowConvManual congctrl("./log", 1);
  Encoder encoder = Encoder{ input.display_width(), input.display_height(),
    false /* two-pass */, REALTIME_QUALITY };


  /* Playground Here!!! */ /*
  Encoder encoder1 = Encoder{ input.display_width(), input.display_height(),
    false , REALTIME_QUALITY };

  Encoder encoder2 = Encoder{ input.display_width(), input.display_height(),
    false , REALTIME_QUALITY };

    Optional<RasterHandle> raster1 = input.get_next_frame();
    Optional<RasterHandle> raster2 = input.get_next_frame();

    auto output1 = encoder1.encode_with_target_size( raster1.get(),
                                                        10000 );
    auto output2 = encoder2.encode_with_target_size( raster2.get(),
                                                        10000 );

    cout << encoder1.minihash() << endl;
    cout << encoder2.minihash() << endl;

  Decoder decoder1 = {1280, 720};
  Decoder decoder2 = {1280, 720};

  decoder1.parse_and_decode_frame(output1);
  decoder2.parse_and_decode_frame(output2);
  cout << decoder1.minihash() << endl;
  cout << decoder2.minihash() << endl;*/

  // Skip the first small header file
  //Optional<RasterHandle> raster = input.get_next_frame();
  //raster = input.get_next_frame();
  //[[maybe_unused]] std::vector<uint8_t> output = encoder.encode_with_target_size( raster.get(), 7000 );
  //cout << output.size() << endl;

  CongCtrl cc; 
  ABR abr {connection_id, encoder};

  [[maybe_unused]] auto start = chrono::system_clock::now();

  poller.add_action( Poller::Action( socket, Direction::Out, [&]() {
    while ( pacer.micro_until_due() == 0 ) {
      assert( not pacer.empty() );
      string to_sent = pacer.front();
      socket.send( to_sent );
      pacer.pop();

      FECPacket sent {to_sent};
      ++pkt_no;
      pkt_nums[sent.fec_frame_no_][sent.pkt_no_] = pkt_no;
      pkt_sent_time[pkt_no] = system_clock::now();
      cc.onSent();
    }
    return ResultType::Continue;
}, [&]() { 
  return pacer.micro_until_due() == 0; } ) );

  poller.add_action( Poller::Action( socket, Direction::In,
    [&]()
    {
      auto packet = socket.recv();
      AckFECPacket ack( packet.payload );

      if ( ack.connection_id_ != connection_id ) {
        /* this is not an ack for this session! */
        return ResultType::Continue;
      }


      // Need also to take loss into account
      // Need to check content of the pkt to detect dup
      uint32_t pkt_num = pkt_nums[ack.fec_frame_no_][ack.pkt_no_];
      std::chrono::duration<double, std::ratio<1,1000>> diff = (system_clock::now() - pkt_sent_time[pkt_num]); // in millis
      cc.onACK(pkt_num, diff.count());
      //cout << "Get Ack!" << ack.fec_frame_no_ << " " << ack.pkt_no_ << " " << diff.count() << endl;

      return ResultType::Continue;
    } )
  );

  auto fetch_start = system_clock::now();
  poller.add_action( Poller::Action( encode_pipe.second, Direction::In,
    [&]() -> Result {
      encode_pipe.second.read();
      // Simulate 30 fps
      fetch_start = system_clock::now();
      //Optional<RasterHandle> raster = input.get_next_frame();
      //if ( not raster.initialized() ) {
      //  return { ResultType::Exit, EXIT_FAILURE };
      //}
      abr.add_fetch_frame(input);
      encode_pipe.first.write( "1" );


      //std::chrono::duration<double, std::ratio<1,1000>> diff = (system_clock::now() - fetch_start);
      //cout << "This fetch takes " << diff.count() << endl; 

      return ResultType::Continue;
    }, [&]() { 
      std::chrono::duration<double, std::ratio<1,1000>> diff = (system_clock::now() - fetch_start); // in millis
      return diff.count() >= (33) && !abr.stop_encode; 
    } ) 
  );

    // only send new frames after min_rtt
  int min_rtt = cc.beliefs.min_rtt;  
  int count = 1;
  poller.add_action( Poller::Action( update_pipe.second, Direction::In, [&]() {
      update_pipe.second.read();
      // update history and state of cong_ctrl 
      cout << "Timestamp: " << count << endl;
      count++;
      auto before_update = system_clock::now();
      cc.updateHistory();
      cc.updateBeliefBound();
      auto after_update = system_clock::now();
      abr.add_fec(pacer, cc);
      auto after_fec = system_clock::now();
      if (!abr.stop_encode) {
        abr.encode_fetched_frames(cc.beliefs.min_c * Packet::MAXIMUM_PAYLOAD);
      }
      last_sent = system_clock::now();
      std::chrono::duration<double, std::ratio<1,1000>> diff1 = (last_sent - after_fec);
      std::chrono::duration<double, std::ratio<1,1000>> diff2 = (after_update - before_update);
      std::chrono::duration<double, std::ratio<1,1000>> diff3 = (after_fec - after_update);
      //cout << "This update takes " << diff2.count() << endl; 
      //cout << "This fec takes " << diff3.count() << endl; 
      //cout << "This scheduling takes " << diff1.count() << endl; 
      update_pipe.first.write( "1" );
      return ResultType::Continue;
    }, [&]() { 
      std::chrono::duration<double, std::ratio<1,1000>> diff = (system_clock::now() - last_sent); // in millis
      return diff.count() >= (min_rtt); 
  } ) );

  // Start!!!
  encode_pipe.first.write( "1" );
  update_pipe.first.write( "1" );

  while ( true ) {
    const auto poll_result = poller.poll(0);
    if ( poll_result.result == Poller::Result::Type::Exit ) {
      if ( poll_result.exit_status ) {
        //cerr << "Connection error." << endl;
        continue;
      }

      return poll_result.exit_status;
    }
    // Advanced to next action? 
    
  }

  return EXIT_FAILURE;
}
 