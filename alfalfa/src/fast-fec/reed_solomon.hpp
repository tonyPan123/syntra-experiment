#ifndef REED_SOLOMON_HPP
#define REED_SOLOMON_HPP

#include <cstddef>
#include <iostream>
#include <string>
#include <unordered_map>
#include <set>

#include "packet.hh"
#include "optional.hh"
#include "player.hh"
#include <boost/circular_buffer.hpp>

using namespace std;

extern "C" {
    #include "cauchy.h"
    #include <gf_rand.h>
    #include "galois.h"
    #include "jerasure.h"
    #include "reed_sol.h"
}

class ReedSolomon {
    public: 
        int reed_test();
   
};


class FECPre {
    public: 
        bool initialized;
        uint16_t connection_id;
        uint32_t frame_no_start;
        uint32_t frame_no_end;
        unordered_map<uint32_t, std::vector<Packet>> frame_no_to_pkts;
        uint32_t total_len;
        unordered_map<uint32_t, uint32_t> frame_no_to_timestamps;

        FECPre () {
            initialized = false;
            connection_id = 0;
            frame_no_start = 0;
            frame_no_end = 0;
            total_len = 0;
        }

        FECPre (const uint16_t _connection_id) {
            initialized = false;
            connection_id = _connection_id;
            frame_no_start = 0;
            frame_no_end = 0;
            total_len = 0;
        }

        void add_frame (const uint32_t frame_no, const std::vector<Packet> packets, const uint32_t timestamp) {
            assert(!initialized || frame_no == frame_no_start + 1);
            assert(frame_no >= 1);
            if (!initialized) {
                initialized = true;
                frame_no_start = frame_no;
                frame_no_end = frame_no;
            } else {
                frame_no_end += 1;
            }
            frame_no_to_pkts[frame_no] = packets;
            total_len += packets.size();
            frame_no_to_timestamps[frame_no] = timestamp;
        }

        void merge(FECPre & other) {
            if (!other.initialized) {
                return;
            }
            assert(other.frame_no_start == frame_no_end + 1 || !initialized);
            if (!initialized) {
                initialized = true;
                frame_no_start = other.frame_no_start;
                frame_no_end = other.frame_no_end;
            } else {
                frame_no_end = other.frame_no_end;
            }
            for (uint32_t frame_no = other.frame_no_start; frame_no <= other.frame_no_end; frame_no++) {
                frame_no_to_pkts[frame_no] = other.frame_no_to_pkts[frame_no];
                total_len += frame_no_to_pkts[frame_no].size();
                frame_no_to_timestamps[frame_no] = other.frame_no_to_timestamps[frame_no];
            }
            assert(frame_no_end >= frame_no_start);
        }
};

class FECPacket {
    public: 
        uint16_t connection_id_;
        uint32_t fec_frame_no_;
        uint16_t total_pkts;
        uint16_t pkts_needed_for_decoding;

        uint32_t frame_no_start;
        uint32_t frame_no_end;
        unordered_map<uint32_t, uint16_t> frame_no_to_length;

        uint16_t pkt_no_;
        uint32_t timestamp;

        std::string payload_;

        bool is_valid;

        FECPacket( const uint16_t connection_id_,
                   const uint32_t fec_frame_no_,
                   const uint16_t total_pkts,
                   const uint16_t pkts_needed_for_decoding,
                   const uint32_t frame_no_start,
                   const uint32_t frame_no_end,
                   const unordered_map<uint32_t, uint16_t> frame_no_to_length,
                   const uint16_t pkt_no_,
                   const uint32_t timestamp,
                   const std::string payload_);
        FECPacket( const Chunk & str );
        FECPacket();

        std::string to_string() const ;
        static std::string put_header_field( const uint16_t n );
        static std::string put_header_field( const uint32_t n );
};

class FECFrame {
    public: 
    /* Basic information for FECFrame */
    uint16_t connection_id_;
    uint32_t fec_frame_no;
    uint16_t total_pkts;
    uint16_t pkts_needed_for_decoding;

    /* Map from FEC Frame to ordinary frame*/
    uint32_t frame_no_start;
    uint32_t frame_no_end;
    unordered_map<uint32_t, uint16_t> frame_no_to_length;
    vector<FECPacket> pkts;

    unordered_map<uint32_t, vector<FECPacket>> frame_no_to_received_data;
    vector<FECPacket> fecs;

    bool is_valid;

    FECFrame(uint32_t fec_frame_no, FECPre & pre, const uint16_t fec_length);
    FECFrame(FECPacket & pkt);
    FECFrame() : is_valid(false) {};
    void addPacket(FECPacket & pkt, unordered_map<uint32_t, Decoder> & decoders, boost::circular_buffer<uint32_t> & past_source_state);
    void recover_loss();
};


class AckFECPacket
{
public:
  uint16_t connection_id_;
  uint32_t fec_frame_no_;
  uint16_t pkt_no_;

  std::string frame_ack_;

  AckFECPacket( const uint16_t connection_id, const uint32_t fec_frame_no,
             const uint16_t pkt_no, const std::string frame_ack);

  AckFECPacket( const Chunk & str );

  std::string to_string();

  void sendto( UDPSocket & socket, const Address & addr );
};



#endif