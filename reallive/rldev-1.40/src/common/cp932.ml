(*
   RLdev: CP932 conversion tables for use in binary distributions
   Copyright (C) 2006 Haeleth

   This program is free software; you can redistribute it and/or modify it under
   the terms of the GNU General Public License as published by the Free Software
   Foundation; either version 2 of the License, or (at your option) any later
   version.

   This program is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
   FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
   details.

   You should have received a copy of the GNU General Public License along with
   this program; if not, write to the Free Software Foundation, Inc., 59 Temple
   Place - Suite 330, Boston, MA  02111-1307, USA.
*)

(* Load data structures generated by mkdatafiles *)
let sb_to_uni, db_to_uni, uni_to_sb, uni_to_db =
  let ic = open_in_bin (Filename.concat (Config.prefix()) "cp932.dat") in
  let tables = (Marshal.from_channel ic : int array * int array array * string IMap.t * string IMap.t) in
  close_in ic;
  tables
