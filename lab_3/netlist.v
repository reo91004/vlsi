/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Jun 30 15:17:29 2026
/////////////////////////////////////////////////////////////


module top ( clk, rstN, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, A_en, 
        check_7_, check_6_, check_5_, check_4_, check_3_, check_2_, check_1_, 
        check_0_, state_2_, state_1_, state_0_ );
  input clk, rstN, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, A_en;
  output check_7_, check_6_, check_5_, check_4_, check_3_, check_2_, check_1_,
         check_0_, state_2_, state_1_, state_0_;
  wire   ALoad, BLoad, Muxsel, out_s, equal, equal_en;
  assign check_1_ = 1'b0;
  assign check_4_ = 1'b0;
  assign check_5_ = 1'b0;
  assign check_6_ = 1'b0;
  assign check_7_ = 1'b0;

  datapath u_datapath_00 ( .clk(clk), .rstN(rstN), .ALoad(ALoad), .BLoad(BLoad), .out_s(out_s), .A_7_(A_7_), .A_6_(A_6_), .A_5_(A_5_), .A_4_(A_4_), .A_3_(
        A_3_), .A_2_(A_2_), .A_1_(A_1_), .A_0_(A_0_), .equal(equal), 
        .equal_en(equal_en), .check_3_(check_3_), .check_2_(check_2_), 
        .check_0_(check_0_), .Muxsel_BAR(Muxsel) );
  control_unit u_control_unit_00 ( .clk(clk), .rstN(rstN), .A_en(A_en), 
        .equal(equal), .equal_en(equal_en), .ALoad(ALoad), .BLoad(BLoad), 
        .out_s(out_s), .state_2_(state_2_), .state_1_(state_1_), .state_0_(
        state_0_), .Muxsel_BAR(Muxsel) );
endmodule

