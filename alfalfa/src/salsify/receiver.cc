#include <getopt.h>

#include <cstdlib>
#include <random>
#include <unordered_map>
#include <utility>
#include <tuple>
#include <queue>
#include <deque>
#include <thread>
#include <condition_variable>
#include <future>
#include <boost/circular_buffer.hpp>

#include "socket.hh"
#include "packet.hh"
#include "poller.hh"
#include "optional.hh"
#include "player.hh"
#include "display.hh"
#include "paranoid.hh"
#include "procinfo.hh"

#include "reed_solomon.hpp"
#include "concurrent_queue.hh"

using namespace std;
using namespace std::chrono;
using namespace PollerShortNames;

class AverageInterPacketDelay
{
private:
  static constexpr double ALPHA = 0.1;

  double value_ { -1.0 };
  uint64_t last_update_{ 0 };

public:
  void add( const uint64_t timestamp_us, const int32_t grace )
  {
    assert( timestamp_us >= last_update_ );

    if ( value_ < 0 ) {
      value_ = 0;
    }
    // else if ( timestamp_us - last_update_ > 0.2 * 1000 * 1000 /* 0.2 seconds */ ) {
    //   value_ /= 4;
    // }
    else {
      double new_value = max( 0l, static_cast<int64_t>( timestamp_us - last_update_ - grace ) );
      value_ = ALPHA * new_value + ( 1 - ALPHA ) * value_;
    }

    last_update_ = timestamp_us;
  }

  uint32_t int_value() const { return static_cast<uint32_t>( value_ ); }
};

void usage( const char *argv0 )
{
  cerr << "Usage: " << argv0 << " [-f, --fullscreen] [--verbose] PORT WIDTH HEIGHT" << endl;
}

uint16_t ezrand()
{
  random_device rd;
  uniform_int_distribution<uint16_t> ud;

  return ud( rd );
}

queue<RasterHandle> display_queue;
mutex mtx;
condition_variable cv;


int main( int argc, char *argv[] )
//int main()
{
  /* choose a random connection_id */
  const uint16_t connection_id = 1337; // ezrand();
  cerr << "Connection ID: " << connection_id << endl;

  if ( argc != 2 ) {
    usage( argv[ 0 ] );
    return EXIT_FAILURE;
  }
  
  /* construct Socket for incoming  datagrams */
  UDPSocket socket;
  socket.bind( Address( "0", argv[1] ) );
  socket.set_timestamps();

  /* frame no => FragmentedFrame; used when receiving packets out of order */
  unordered_map<size_t, FragmentedFrame> fragmented_frames;
  //size_t next_frame_no = 0;

  /* EWMA */
  AverageInterPacketDelay avg_delay;

  /* decoder states */
  Decoder decoder = Decoder {1280, 720};
  //uint32_t current_state = decoder.minihash();
  //const uint32_t initial_state = current_state;
  deque<uint32_t> complete_states;
  //auto next_ack_is_due = chrono::system_clock::now();
  const auto interval_between_acks = chrono::microseconds( 0 );
  /* memory usage logs */
  //system_clock::time_point next_mem_usage_report = system_clock::now();

  //auto start = chrono::system_clock::now();

  unordered_map<uint32_t, FECFrame> frames;

  uint32_t current_state = decoder.get_hash().hash();
  unordered_map<uint32_t, Decoder> decoders { { current_state, decoder } };

  ConcurrentQueue<FECPacket> pkts;

  boost::circular_buffer<uint32_t> past_source_state{3};
  past_source_state.push_back(current_state);
  past_source_state.push_back(current_state);
  past_source_state.push_back(current_state);


  Poller poller;
  poller.add_action( Poller::Action( socket, Direction::In,
    [&]()
    {
      /* wait for next UDP datagram */
      const auto new_fragment = socket.recv();
      //cout << new_fragment.source_address.to_string() << " " << socket.local_address().to_string()  << endl;
      /* parse into Packet */
      FECPacket fecpacket { new_fragment.payload };
      //std::chrono::duration<double, std::ratio<1,1000>> diff = (system_clock::now() - start);
      //cout << "Receive:" << fecpacket.fec_frame_no_ << " " << fecpacket.pkt_no_  << " " << diff.count() << endl;
      pkts.push(fecpacket);

      AckFECPacket ack = AckFECPacket (connection_id, fecpacket.fec_frame_no_, fecpacket.pkt_no_, "");
      ack.sendto( socket, new_fragment.source_address );   

      //std::this_thread::sleep_for(std::chrono::milliseconds(1));

      return ResultType::Continue;
    },
    [&]() { return not socket.eof(); } )
  );

  // Make sure decoder works serially 
  thread([&frames, &pkts, &decoders, &past_source_state]() {
    while (true) {
      FECPacket fecpacket = pkts.wait_and_pop();
      if (fecpacket.pkt_no_ > fecpacket.total_pkts) {
        // Check for dummy pkts
        continue;
      }
      if (!frames[fecpacket.fec_frame_no_].is_valid) {
        frames[fecpacket.fec_frame_no_] = FECFrame {fecpacket};
        frames[fecpacket.fec_frame_no_].addPacket(fecpacket, decoders, past_source_state);
      } else {
        frames[fecpacket.fec_frame_no_].addPacket(fecpacket, decoders, past_source_state);
      }
    }
  }).detach();

  /* handle events */
  while ( true ) {
    const auto poll_result = poller.poll( 0 );
    if ( poll_result.result == Poller::Result::Type::Exit ) {
      return poll_result.exit_status;
    }
  }

  return EXIT_SUCCESS;
}
