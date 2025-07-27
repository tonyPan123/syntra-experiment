/*
(**************************************************************************)
(*                                                                        *)
(*                                Schifra                                 *)
(*                Reed-Solomon Error Correcting Code Library              *)
(*                                                                        *)
(* Release Version 0.0.1                                                  *)
(* http://www.schifra.com                                                 *)
(* Copyright (c) 2000-2020 Arash Partow, All Rights Reserved.             *)
(*                                                                        *)
(* The Schifra Reed-Solomon error correcting code library and all its     *)
(* components are supplied under the terms of the General Schifra License *)
(* agreement. The contents of the Schifra Reed-Solomon error correcting   *)
(* code library and all its components may not be copied or disclosed     *)
(* except in accordance with the terms of that agreement.                 *)
(*                                                                        *)
(* URL: http://www.schifra.com/license.html                               *)
(*                                                                        *)
(**************************************************************************)
*/


#ifndef INCLUDE_SCHIFRA_REED_SOLOMON_ENCODER_HPP
#define INCLUDE_SCHIFRA_REED_SOLOMON_ENCODER_HPP


#include <string>

#include "schifra_galois_field.hpp"
#include "schifra_galois_field_element.hpp"
#include "schifra_galois_field_polynomial.hpp"
#include "schifra_reed_solomon_block.hpp"
#include "schifra_ecc_traits.hpp"


namespace schifra
{

   namespace reed_solomon
   {

      template <std::size_t code_length>
      class encoder
      {
      public:

         //typedef traits::reed_solomon_triat<code_length> trait;
         typedef block<code_length> block_type;

         encoder(const galois::field& gfield, const galois::field_polynomial& generator, const std::size_t data_len, const std::size_t fec_len)
         : encoder_valid_(code_length == gfield.size()),
           field_(gfield),
           generator_(generator),
           data_length(data_len),
           fec_length(fec_len)
         {assert(code_length == data_length + fec_length);}

        ~encoder()
         {}

         inline bool encode(block_type& rsblock) const
         {
            if (!encoder_valid_)
            {
               rsblock.error = block_type::e_encoder_error0;
               return false;
            }

            const galois::field_polynomial parities = msg_poly(rsblock) % generator_;
            const galois::field_symbol     mask     = field_.mask();

            if (parities.deg() == (int)(fec_length - 1))
            {
               for (std::size_t i = 0; i < fec_length; ++i)
               {
                  rsblock.fec(i) = parities[fec_length - 1 - i].poly() & mask;
               }
            }
            else
            {
               /*
                  Note: Encoder should never branch here.
                  Possible issues to look for:
                  1. Generator polynomial degree is not equivelent to fec length
                  2. Field and code length are not consistent.

               */
               rsblock.error = block_type::e_encoder_error1;
               return false;
            }

            return true;
         }

         inline bool encode(const std::string& data, block_type& rsblock) const
         {
            std::string::const_iterator itr  = data.begin();
            const galois::field_symbol  mask = field_.mask();

            for (std::size_t i = 0; i < data_length; ++i, ++itr)
            {
               rsblock.data[i] = static_cast<typename block_type::symbol_type>(*itr) & mask;
            }

            return encode(rsblock);
         }

      private:

         encoder();
         encoder(const encoder& enc);
         encoder& operator=(const encoder& enc);

         inline galois::field_polynomial msg_poly(const block_type& rsblock) const
         {
            galois::field_polynomial message(field_, code_length);

            for (std::size_t i = fec_length; i < code_length; ++i)
            {
               message[i] = rsblock.data[code_length - 1 - i];
            }

            return message;
         }

         const bool                     encoder_valid_;
         const galois::field&           field_;
         const galois::field_polynomial generator_;
         const std::size_t data_length;
         const std::size_t fec_length;
      };

   } // namespace reed_solomon

} // namespace schifra

#endif
