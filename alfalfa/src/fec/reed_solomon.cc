#include "reed_solomon.hpp"

   FECPacket::FECPacket( const uint16_t connection_id, 
      const uint32_t frame_no, 
      const uint16_t pkt_no,
      const uint16_t pkts_in_this_frame,
      const uint16_t pkts_needed_for_decoding, 
      const std::string payload) 
      : connection_id_(connection_id),
      frame_no_(frame_no),
      pkt_no_(pkt_no),
      pkts_in_this_frame_(pkts_in_this_frame),
      pkts_needed_for_decoding_(pkts_needed_for_decoding),
      payload_(payload)
      {}

   FECPacket::FECPacket( const Chunk & str )
      : connection_id_( str( 0, 2 ).le16() ),
      frame_no_( str( 2, 4 ).le32() ),
      pkt_no_( str( 6, 2 ).le16() ),
      pkts_in_this_frame_( str( 8, 2 ).le16() ),
      pkts_needed_for_decoding_( str( 10, 2 ).le16() ),
      payload_( str( 12 ).to_string() )
   {}

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
      return put_header_field( connection_id_ )
         + put_header_field( frame_no_ )
         + put_header_field( pkt_no_ )
         + put_header_field( pkts_in_this_frame_ )
         + put_header_field( pkts_needed_for_decoding_ )
         + payload_;
   }

   FECFrame::FECFrame() {}


   FECFrame::FECFrame(const std::vector<Packet> packets, const uint16_t connection_id, const uint32_t frame_no, const uint16_t fec_length) {
      const uint16_t total_num = packets.size();
      assert(total_num >= 1);

      // Add data pkts first
      uint16_t pkt_no = 0;
      for ( const auto & packet : packets ) {
         std::string payload = packet.to_string();
         fecpkts.push_back(FECPacket {connection_id, frame_no, pkt_no, (uint16_t)(total_num + fec_length), total_num, payload});
         pkt_no++;
      }
      // Add fec pkts
      std::vector<std::string> fec_payloads;
      for (int i = 0; i < fec_length; i++) {
         fec_payloads.push_back("");   
      }
      size_t fec_payload_len = fecpkts.at(0).payload_.length();
      //std::cout << "FEC packet length is:" << fec_payload_len << std::endl;

      for (size_t j = 0; j < fec_payload_len; j++) {
         std::string message;
         for (uint16_t k = 0; k < total_num; k++) {
            size_t datalog_len = fecpkts.at(k).payload_.length();
            if (j < datalog_len) {
               message += fecpkts.at(k).payload_[j];
            } else {
               message += (char)0x00;
            }
         }
         std::string parities = make_fec(message, fec_length);  
         assert(parities.length() == fec_length);
         for (uint16_t k = 0; k < fec_length; k++) {
            fec_payloads.at(k) += parities[k];
         }
      }

      for ( const auto & payload : fec_payloads ) {
         fecpkts.push_back(FECPacket {connection_id, frame_no, pkt_no, (uint16_t)(total_num + fec_length), total_num, payload});
         pkt_no++;
      }

      assert(fecpkts.size() == (std::size_t)(total_num + fec_length));
   }


   std::string FECFrame::make_fec(std::string message, const uint16_t fec_length) {

      /* Finite Field Parameters */
      const std::size_t field_descriptor                =   6;
      const std::size_t generator_polynomial_index      = 30;
      const std::size_t generator_polynomial_root_count =  fec_length;

      /* Reed Solomon Code Parameters */
      const std::size_t code_length = 63;
      const std::size_t data_length = code_length - fec_length;

      /* Instantiate Finite Field and Generator Polynomials */
      const schifra::galois::field field(field_descriptor,
                                      schifra::galois::primitive_polynomial_size03,
                                      schifra::galois::primitive_polynomial03);

      schifra::galois::field_polynomial generator_polynomial(field);

      if (
         !schifra::make_sequential_root_generator_polynomial(field,
                                                            generator_polynomial_index,
                                                            generator_polynomial_root_count,
                                                            generator_polynomial)
      )
      {
         std::cout << "Error - Failed to create sequential root generator!" << std::endl;
         return "";
      }

      /* Instantiate Encoder and Decoder (Codec) */
      typedef schifra::reed_solomon::encoder<code_length> encoder_t;
      //typedef schifra::reed_solomon::decoder<code_length> decoder_t;

      const encoder_t encoder(field, generator_polynomial, data_length, fec_length);

      /* Transform message into Reed-Solomon encoded codeword */
      message.resize(code_length, 0x00);

      //std::cout << "Original Message:  [" << message << "]" << std::endl;
      
      /* Instantiate RS Block For Codec */
      schifra::reed_solomon::block<code_length> block{data_length, fec_length};
      
      /* Transform message into Reed-Solomon encoded codeword */
      if (!encoder.encode(message, block))
      {
         std::cout << "Error - Critical encoding failure! "
            << "Msg: " << block.error_as_string()  << std::endl;
         return "";
      }

      //std::cout << "Encoded Codeword: [" << block << "]" << std::endl;

      /*
      typedef schifra::reed_solomon::decoder<code_length> decoder_t;

      const decoder_t decoder(field, data_length, fec_length, generator_polynomial_index);



      schifra::reed_solomon::erasure_locations_t erasure_location_list;

      schifra::corrupt_message_all_erasures00(block, erasure_location_list, 0, 2);

      std::cout << "Corrupted Codeword: [" << block << "]" << std::endl;

      if (!decoder.decode(block, erasure_location_list))
      {
         std::cout << "Error - Critical decoding failure! "
                   << "Msg: " << block.error_as_string()  << std::endl;
         return "";
      }

      block.data_to_string(message);

      std::cout << "Corrected Message: [" << message << "]" << std::endl; 
      */

      return block.fec_to_string();
   }

   


   int ReedSolomon::reed_test() {
      FECFrame ff;
      std::string test = ff.make_fec("Dingdongji", 20);

      schifra::reed_solomon::erasure_locations_t erasure_location_list;
      std::cout << "Got: [" << test << "]" << " " << test.length() << std::endl;
      return 0;
   }


   AckFECPacket::AckFECPacket( const uint16_t connection_id, const uint32_t frame_no, const uint16_t pkt_no, const std::string frame_ack)
      : connection_id_( connection_id ), frame_no_( frame_no ),
         pkt_no_( pkt_no ), frame_ack_( frame_ack )
      {}

   AckFECPacket::AckFECPacket( const Chunk & str )
      : connection_id_( str( 0, 2 ).le16() ),
        frame_no_( str( 2, 4 ).le32() ),
        pkt_no_( str( 6, 2 ).le16() ),
        frame_ack_( str( 8 ).to_string() )
      {}

   std::string AckFECPacket::to_string()
   {
      return FECPacket::put_header_field( connection_id_ )
                + FECPacket::put_header_field( frame_no_ )
                + FECPacket::put_header_field( pkt_no_ )
                + frame_ack_;
   }  


   void AckFECPacket::sendto( UDPSocket & socket, const Address & addr )
   {
      socket.sendto( addr, to_string() );
   }