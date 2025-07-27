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


#ifndef INCLUDE_SCHIFRA_ERROR_PROCESSES_HPP
#define INCLUDE_SCHIFRA_ERROR_PROCESSES_HPP


#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <deque>
#include <vector>

#include "schifra_reed_solomon_block.hpp"
#include "schifra_fileio.hpp"


namespace schifra
{

   template <std::size_t code_length>
   inline void add_erasure_error(const std::size_t& position, reed_solomon::block<code_length>& block)
   {
      block[position] = (~block[position]) & 0xFF; // Or one can simply equate to zero
   }

   template <std::size_t code_length>
   inline void add_error(const std::size_t& position, reed_solomon::block<code_length>& block)
   {
      block[position] = (~block[position]) & 0xFF;
   }

   template <std::size_t code_length>
   inline void add_error_4bit_symbol(const std::size_t& position, reed_solomon::block<code_length>& block)
   {
      block[position] = (~block[position]) & 0x0F;
   }

   template <std::size_t code_length>
   inline void corrupt_message_all_errors00(reed_solomon::block<code_length>& rsblock,
                                           const std::size_t& start_position,
                                           const std::size_t& scale = 1)
   {
      for (std::size_t i = 0; i < (rsblock.fec_length >> 1); ++i)
      {
         add_error((start_position + scale * i) % code_length,rsblock);
      }
   }

   template <std::size_t code_length>
   inline void corrupt_message_all_errors_wth_mask(reed_solomon::block<code_length>& rsblock,
                                                   const std::size_t& start_position,
                                                   const int& mask,
                                                   const std::size_t& scale = 1)
   {
      for (std::size_t i = 0; i < (rsblock.fec_length >> 1); ++i)
      {
         std::size_t position = (start_position + scale * i) % code_length;
         rsblock[position] = (~rsblock[position]) & mask;

      }
   }

   template <std::size_t code_length>
   inline void corrupt_message_all_errors(schifra::reed_solomon::block<code_length>& rsblock,
                                          const std::size_t error_count,
                                          const std::size_t& start_position,
                                          const std::size_t& scale = 1)
   {
      for (std::size_t i = 0; i < error_count; ++i)
      {
         add_error((start_position + scale * i) % code_length,rsblock);
      }
   }

   template <std::size_t code_length>
   inline void corrupt_message_all_erasures00(reed_solomon::block<code_length>& rsblock,
                                              reed_solomon::erasure_locations_t& erasure_list,
                                              const std::size_t& start_position,
                                              const std::size_t& scale = 1)
   {
      std::size_t erasures[code_length];

      for (std::size_t i = 0; i < code_length; ++i) erasures[i] = 0;

      for (std::size_t i = 0; i < rsblock.fec_length - 1; ++i)
      {
         std::size_t error_position = (start_position + scale * i) % code_length;
         add_erasure_error(error_position,rsblock);
         erasures[error_position] = 1;
      }

      add_erasure_error(code_length - 1, rsblock);
      erasures[code_length - 1] = 1;

      for (std::size_t i = 0; i < code_length; ++i)
      {
         if (erasures[i] == 1) erasure_list.push_back(i);
      }
   }
} // namespace schifra

#endif
