\m5_TLV_version 1d: tl-x.org
\m5
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   
   
   $sum[31:0] = $val1 + $val2;
   $diff[31:0] = $val1 - $val2;
   $prod = $val1*$val2;
   $quot = $val1/$val2;
   
   $out[31:0] = $op[1:0] == 2'b00 ? $sum :
   $op == 2'b01 ? $diff :
   $op == 2'b10 ? $prod :
                  $quot;
    
   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
