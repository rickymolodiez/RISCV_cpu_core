\m5_TLV_version 1d: tl-x.org
\m5
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;

   $out = $in1^$in2^$carry_in;
   $carry_out = (($carry_in&($in1^$in2))|($in1&$in2));
   

   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
