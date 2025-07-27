#include <chrono>
#include <queue>
#include <thread>

#include "reed_solomon.hpp"
#include "packet.hh"

using namespace std;

#define talloc(type, num) (type *) malloc(sizeof(type)*(num))

   FECPacket::FECPacket(const uint16_t connection_id_,
                        const uint32_t fec_frame_no_,
                        const uint16_t total_pkts,
                        const uint16_t pkts_needed_for_decoding,
                        const uint32_t frame_no_start,
                        const uint32_t frame_no_end,
                        const unordered_map<uint32_t, uint16_t> frame_no_to_length,
                        const uint16_t pkt_no_,
                        const uint32_t timestamp, 
                        const std::string payload_)
      : connection_id_(connection_id_),
        fec_frame_no_(fec_frame_no_),
        total_pkts(total_pkts),
        pkts_needed_for_decoding(pkts_needed_for_decoding),
        frame_no_start(frame_no_start),
        frame_no_end(frame_no_end),
        frame_no_to_length(frame_no_to_length),
        pkt_no_(pkt_no_),
        timestamp(timestamp),
        payload_(payload_), 
        is_valid(true)
      {}
   
   FECPacket::FECPacket( const Chunk & str )
      : connection_id_( str( 0, 2 ).le16() ),
      fec_frame_no_( str( 2, 4 ).le32() ),
      total_pkts( str( 6, 2 ).le16() ),
      pkts_needed_for_decoding( str( 8, 2 ).le16() ),
      frame_no_start( str( 10, 4 ).le32() ),
      frame_no_end( str( 14, 4 ).le32() ),
      frame_no_to_length( {} ), 
      is_valid(true)
   {
      int start = 18;
      for (uint32_t frame_no = frame_no_start; frame_no <= frame_no_end; frame_no++) {
         uint16_t length = str( start, 2 ).le16();
         frame_no_to_length[frame_no] = length;
         start += 2;
      }
      pkt_no_ = str( start, 2 ).le16();
      start += 2;
      timestamp = str( start, 4 ).le32();
      start += 4;
      payload_ = str( start ).to_string();
   }

   FECPacket::FECPacket()
      : is_valid(false) {}
   
   std::string FECPacket::put_header_field( const uint16_t n )
   {
      const uint16_t network_order = htole16( n );
      return std::string( reinterpret_cast<const char *>( &network_order ),
                  sizeof( network_order ) );
   }

   std::string FECPacket::put_header_field( const uint32_t n )
   {
      const uint32_t network_order = htole32( n );
      return std::string( reinterpret_cast<const char *>( &network_order ),
                     sizeof( network_order ) );
   }


   /* serialize a Packet */
   std::string FECPacket::to_string() const {
      string frame_no_to_length_str = "";
      for (uint32_t frame_no = frame_no_start; frame_no <= frame_no_end; frame_no++) {
         uint16_t length = frame_no_to_length.at(frame_no);
         frame_no_to_length_str += put_header_field( length );
      }

      return put_header_field( connection_id_ )
         + put_header_field( fec_frame_no_ )
         + put_header_field( total_pkts )
         + put_header_field( pkts_needed_for_decoding )
         + put_header_field( frame_no_start ) 
         + put_header_field( frame_no_end )
         + frame_no_to_length_str 
         + put_header_field( pkt_no_ )
         + put_header_field( timestamp )
         + payload_;
   }

   FECFrame::FECFrame(FECPacket & pkt) 
      : connection_id_(pkt.connection_id_), 
      fec_frame_no(pkt.fec_frame_no_), 
      total_pkts(pkt.total_pkts),
      pkts_needed_for_decoding(pkt.pkts_needed_for_decoding),
      frame_no_start(pkt.frame_no_start),
      frame_no_end(pkt.frame_no_end),
      is_valid(true) {
         for (uint32_t frame_no = frame_no_start; frame_no <= frame_no_end; frame_no++) {
            frame_no_to_length[frame_no] = pkt.frame_no_to_length[frame_no];
            std::vector<FECPacket> v(frame_no_to_length[frame_no]);  
            frame_no_to_received_data[frame_no] = v;
         }
         fecs = vector<FECPacket>(total_pkts - pkts_needed_for_decoding);
   }

   void recover_frames() {



   }

   void FECFrame::addPacket(FECPacket &pkt, unordered_map<uint32_t, Decoder> & decoders, [[maybe_unused]]boost::circular_buffer<uint32_t> & past_source_state) {
      int start = 1;
      // Data packet
      for (uint32_t frame_no = frame_no_start; frame_no <= frame_no_end; frame_no++) {
         int end = start + frame_no_to_length[frame_no] - 1;
         if (start <= pkt.pkt_no_ && pkt.pkt_no_ <= end ) {
            frame_no_to_received_data[frame_no][pkt.pkt_no_ - start] = pkt;
            auto & pkts = frame_no_to_received_data[frame_no];
            for (auto pkt : pkts) {
               if (!pkt.is_valid) {
                  return;
               }
            }
            // TODO: Check for extra-padding of the last packet during FEC
            FragmentedFrame ff {connection_id_, Packet{pkts[0].payload_} };
            for (int i = 1; i < (int)pkts.size(); i++) {
               ff.add_packet(Packet{pkts[i].payload_});
            }
            //cout << ff.source_state() << endl;
            //if (ff.source_state() != past_source_state[2]) {
            //   past_source_state.push_back(ff.source_state());
            //}
            
            for (auto it = decoders.cbegin(), next_it = it; it != decoders.cend(); it = next_it) {
               ++next_it;
               //if (it->first != past_source_state[0] && it->first != past_source_state[1] && it->first != past_source_state[2])
               if (it->first != ff.source_state())
               {
                  decoders.erase(it);
               }
            }
            //cout << "Source State is " << ff.source_state() << endl;
            if (decoders.count(ff.source_state()) >= 1) {
               Decoder decoder{decoders.at(ff.source_state())};
               //Decoder decoder {1280, 720};
               const string frame = ff.frame();
               uint32_t frame_no = ff.frame_no();
               const Optional<RasterHandle> raster = decoder.parse_and_decode_frame( frame );
               auto now = chrono::steady_clock::now();
               uint32_t ms = chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()).count();
               cout << "Frame " << frame_no << " 's latency is " << ms - pkts[0].timestamp << endl;
               cout << decoder.minihash() << endl;
               decoders.insert( make_pair( decoder.minihash(), decoder ) );
            } else {
               std::this_thread::sleep_for(std::chrono::milliseconds(10));
               auto now = chrono::steady_clock::now();
               uint32_t ms = chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()).count();
               cout << "Frame " << frame_no << " 's latency is " << ms - pkts[0].timestamp << endl;
            }
            return;
         }
         start = end + 1;
      }
      // FEC packet
      if (pkt.pkt_no_ > pkts_needed_for_decoding) {
         fecs[pkt.pkt_no_ - pkts_needed_for_decoding - 1] = pkt;
      }
      return;
   }

      //auto now = chrono::steady_clock::now();
      //uint32_t ms = chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()).count();
      //cout << "Frame " << ff.frame_no() << " 's latency is " << ms  << endl;



   FECFrame::FECFrame(const uint32_t fec_frame_no, FECPre & pre, const uint16_t fec_length)
      : connection_id_(pre.connection_id),
        fec_frame_no(fec_frame_no),
        frame_no_start(pre.frame_no_start),
        frame_no_end(pre.frame_no_end), 
        frame_no_to_length(), 
        pkts({}), 
        is_valid(true)
   {
      assert(pre.frame_no_start <= pre.frame_no_end && pre.initialized);
      vector<Packet> all_packets = {};
      queue<uint32_t> timestamps = {};
      for (uint32_t frame_no = pre.frame_no_start; frame_no <= pre.frame_no_end; frame_no++) {
         vector<Packet> & packets = pre.frame_no_to_pkts[frame_no];
         frame_no_to_length[frame_no] = packets.size();
         for (Packet & packet : packets) {
            all_packets.push_back(packet);
            timestamps.push(pre.frame_no_to_timestamps[frame_no]);
         }
         //all_packets.insert(packets.end(), packets.begin(), packets.end());  
      }
      pkts_needed_for_decoding = all_packets.size();
      total_pkts = pkts_needed_for_decoding + fec_length;
      assert(pkts_needed_for_decoding >= 1);
      assert(pkts_needed_for_decoding + fec_length <= 256);
      //  Maximum size of packet
      size_t fec_payload_len = 1424 + 1;
      uint16_t pkt_no = 1;
      for ( const auto & pkt : all_packets ) {
         // Do we need padding here???
         pkts.push_back(FECPacket {connection_id_, fec_frame_no, total_pkts, pkts_needed_for_decoding, frame_no_start, frame_no_end, frame_no_to_length, pkt_no, timestamps.front(), pkt.to_string()});
         timestamps.pop();
         pkt_no++;
      }

      if (fec_length == 0) {
         return;
      }
      char **data, **coding;
      data = talloc(char *, pkts_needed_for_decoding);
      for (int i = 0; i < pkts_needed_for_decoding; i++) {
        data[i] = talloc(char, fec_payload_len);
        assert(all_packets[i].to_string().length() < fec_payload_len);
        strcpy (data[i], all_packets[i].to_string().c_str());
      }

      coding = talloc(char *, fec_length);
      for (int i = 0; i < fec_length; i++) {
        coding[i] = talloc(char, fec_payload_len);
      }
      // k + m <= 2^w
      int *matrix;
      matrix = reed_sol_vandermonde_coding_matrix(pkts_needed_for_decoding, fec_length, 8);
      jerasure_matrix_encode(pkts_needed_for_decoding, fec_length, 8, matrix, data, coding, fec_payload_len);

      for (int i = 0; i < fec_length; i++) {
         std::string parity(coding[i], fec_payload_len - 1);
         pkts.push_back(FECPacket {connection_id_, fec_frame_no, total_pkts, pkts_needed_for_decoding, frame_no_start, frame_no_end, frame_no_to_length, pkt_no, 0, parity});
         pkt_no++;
      }

      // Free the space
      for (int i = 0; i < pkts_needed_for_decoding; i++) {
         free(data[i]);
      }
      free(data);
      for (int i = 0; i < fec_length; i++) {
         free(coding[i]);
      }
      free(coding);
      assert(pkts.size() == total_pkts);
   }

   void FECFrame::recover_loss() {
      size_t fec_payload_len = 1424 + 1;
      uint16_t fec_length = total_pkts - pkts_needed_for_decoding;
      char **data, **coding;
      int *erasures = (int *)malloc(sizeof(int)*(total_pkts));

      data = talloc(char *, pkts_needed_for_decoding);
      for (int i = 0; i < pkts_needed_for_decoding; i++) {
         data[i] = talloc(char, fec_payload_len);
         //strcpy (data[i], all_packets[i].to_string().c_str());
      }

      int index = 0;
      for (int i = frame_no_start; i <= (int)frame_no_end; i++) {
         for (int j = 0; j <= frame_no_to_length[i]; j++) {


            index++;
         }


      }

      coding = talloc(char *, fec_length);
      for (int i = 0; i < fec_length; i++) {
        coding[i] = talloc(char, fec_payload_len);
      }
      // k + m <= 2^w
      int *matrix;
      matrix = reed_sol_vandermonde_coding_matrix(pkts_needed_for_decoding, fec_length, 8);
      jerasure_matrix_decode(pkts_needed_for_decoding, fec_length, 8, matrix, 1, erasures, data, coding, fec_payload_len);

   }


   int ReedSolomon::reed_test() {
      int k = 40;
      int m = 256 - k;
      int w = 8;
      int l = 1500;

      unsigned char uc;

      int *matrix;
      char **data, **coding, **dcopy, **ccopy;

      matrix = reed_sol_vandermonde_coding_matrix(k, m, w);

      MOA_Seed(510);
      data = talloc(char *, k);
      dcopy = talloc(char *, k);
      for (int i = 0; i < k; i++) {
        data[i] = talloc(char, l);
        dcopy[i] = talloc(char, l);
        for (int j = 0; j < 1200; j++) {
          uc = MOA_Random_W(8, 1);
          data[i][j] = (char) uc;
        }
        memcpy(dcopy[i], data[i], l);
      }
    
      coding = talloc(char *, m);
      ccopy = talloc(char *, m);
      for (int i = 0; i < m; i++) {
        coding[i] = talloc(char, l);
        ccopy[i] = talloc(char, l);
      }
      //std::cout << *matrix << std::endl;
      jerasure_matrix_encode(k, m, w, matrix, data, coding, l);

      for (int i = 0; i < m; i++) {
         std::string a(coding[i], l);
         //std::cout << a.length() << std::endl;
      }

      return 1;
   }


   AckFECPacket::AckFECPacket( const uint16_t connection_id, const uint32_t fec_frame_no, const uint16_t pkt_no, const std::string frame_ack)
      : connection_id_( connection_id ), fec_frame_no_( fec_frame_no ),
         pkt_no_( pkt_no ), frame_ack_( frame_ack )
      {}

   AckFECPacket::AckFECPacket( const Chunk & str )
      : connection_id_( str( 0, 2 ).le16() ),
        fec_frame_no_( str( 2, 4 ).le32() ),
        pkt_no_( str( 6, 2 ).le16() ),
        frame_ack_( str( 8 ).to_string() )
      {
      }

   std::string AckFECPacket::to_string()
   {
      return FECPacket::put_header_field( connection_id_ )
                + FECPacket::put_header_field( fec_frame_no_ )
                + FECPacket::put_header_field( pkt_no_ )
                + frame_ack_;
   }  


   void AckFECPacket::sendto( UDPSocket & socket, const Address & addr )
   {
      socket.sendto( addr, to_string() );
   }