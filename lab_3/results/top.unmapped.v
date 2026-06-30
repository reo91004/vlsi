/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : S-2021.06-SP4
// Date      : Tue Jun 30 15:17:26 2026
/////////////////////////////////////////////////////////////


module datapath ( clk, rstN, ALoad, BLoad, Muxsel, out_s, A, equal, equal_en, 
        check );
  input [7:0] A;
  output [7:0] check;
  input clk, rstN, ALoad, BLoad, Muxsel, out_s;
  output equal, equal_en;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21;
  wire   [7:0] o_q_A;
  wire   [7:0] o_q_B;

  \**SEQGEN**  equal_en_reg ( .clear(N4), .preset(1'b0), .next_state(ALoad), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(equal_en), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \o_q_A_reg[7]  ( .clear(N4), .preset(1'b0), .next_state(A[7]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_A_reg[6]  ( .clear(N4), .preset(1'b0), .next_state(A[6]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_A_reg[5]  ( .clear(N4), .preset(1'b0), .next_state(A[5]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_A_reg[4]  ( .clear(N4), .preset(1'b0), .next_state(A[4]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_A_reg[3]  ( .clear(N4), .preset(1'b0), .next_state(A[3]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_A_reg[2]  ( .clear(N4), .preset(1'b0), .next_state(A[2]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_A_reg[1]  ( .clear(N4), .preset(1'b0), .next_state(A[1]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_A_reg[0]  ( .clear(N4), .preset(1'b0), .next_state(A[0]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_A[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ALoad) );
  \**SEQGEN**  \o_q_B_reg[7]  ( .clear(N4), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \o_q_B_reg[6]  ( .clear(N4), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \o_q_B_reg[5]  ( .clear(N4), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \o_q_B_reg[4]  ( .clear(N4), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \o_q_B_reg[3]  ( .clear(N4), .preset(1'b0), .next_state(1'b1), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \o_q_B_reg[2]  ( .clear(N4), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \o_q_B_reg[1]  ( .clear(N4), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \o_q_B_reg[0]  ( .clear(N4), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(o_q_B[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  GTECH_NOT I_0 ( .A(o_q_A[2]), .Z(N11) );
  GTECH_NOT I_1 ( .A(o_q_A[0]), .Z(N12) );
  GTECH_OR2 C122 ( .A(o_q_A[6]), .B(o_q_A[7]), .Z(N13) );
  GTECH_OR2 C123 ( .A(o_q_A[5]), .B(N13), .Z(N14) );
  GTECH_OR2 C124 ( .A(o_q_A[4]), .B(N14), .Z(N15) );
  GTECH_OR2 C125 ( .A(o_q_A[3]), .B(N15), .Z(N16) );
  GTECH_OR2 C126 ( .A(N11), .B(N16), .Z(N17) );
  GTECH_OR2 C127 ( .A(o_q_A[1]), .B(N17), .Z(N18) );
  GTECH_OR2 C128 ( .A(N12), .B(N18), .Z(N19) );
  GTECH_NOT I_2 ( .A(N19), .Z(N20) );
  GTECH_NOT I_3 ( .A(Muxsel), .Z(N21) );
  SELECT_OP C131 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N0), 
        .CONTROL2(N1), .CONTROL3(N8), .Z(N9) );
  GTECH_BUF B_0 ( .A(N5), .Z(N0) );
  GTECH_BUF B_1 ( .A(N6), .Z(N1) );
  SELECT_OP C132 ( .DATA1(o_q_B), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CONTROL1(N2), .CONTROL2(N3), .Z(check) );
  GTECH_BUF B_2 ( .A(out_s), .Z(N2) );
  GTECH_BUF B_3 ( .A(N10), .Z(N3) );
  GTECH_NOT I_4 ( .A(rstN), .Z(N4) );
  GTECH_AND2 C139 ( .A(BLoad), .B(N21), .Z(N5) );
  GTECH_AND2 C140 ( .A(BLoad), .B(Muxsel), .Z(N6) );
  GTECH_OR2 C143 ( .A(N6), .B(N5), .Z(N7) );
  GTECH_NOT I_5 ( .A(N7), .Z(N8) );
  GTECH_NOT I_6 ( .A(out_s), .Z(N10) );
  GTECH_BUF B_4 ( .A(N20), .Z(equal) );
endmodule


module control_unit ( clk, rstN, A_en, equal, equal_en, ALoad, BLoad, Muxsel, 
        out_s, state );
  output [2:0] state;
  input clk, rstN, A_en, equal, equal_en;
  output ALoad, BLoad, Muxsel, out_s;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46;

  \**SEQGEN**  \state_reg[2]  ( .clear(N9), .preset(1'b0), .next_state(N25), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \state_reg[1]  ( .clear(N9), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  \state_reg[0]  ( .clear(N9), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  out_s_reg ( .clear(N9), .preset(1'b0), .next_state(N46), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(out_s), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  ALoad_reg ( .clear(N9), .preset(1'b0), .next_state(N17), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(ALoad), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N16) );
  \**SEQGEN**  Muxsel_reg ( .clear(N9), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(Muxsel), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  BLoad_reg ( .clear(N9), .preset(1'b0), .next_state(N19), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(BLoad), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N18) );
  GTECH_NOT I_0 ( .A(state[0]), .Z(N26) );
  GTECH_OR2 C76 ( .A(state[1]), .B(state[2]), .Z(N27) );
  GTECH_OR2 C77 ( .A(N26), .B(N27), .Z(N28) );
  GTECH_NOT I_1 ( .A(N28), .Z(N29) );
  GTECH_NOT I_2 ( .A(state[1]), .Z(N30) );
  GTECH_OR2 C80 ( .A(N30), .B(state[2]), .Z(N31) );
  GTECH_OR2 C81 ( .A(state[0]), .B(N31), .Z(N32) );
  GTECH_NOT I_3 ( .A(N32), .Z(N33) );
  GTECH_OR2 C83 ( .A(state[1]), .B(state[2]), .Z(N34) );
  GTECH_OR2 C84 ( .A(state[0]), .B(N34), .Z(N35) );
  GTECH_NOT I_4 ( .A(N35), .Z(N36) );
  GTECH_OR2 C88 ( .A(N30), .B(state[2]), .Z(N37) );
  GTECH_OR2 C89 ( .A(N26), .B(N37), .Z(N38) );
  GTECH_NOT I_5 ( .A(N38), .Z(N39) );
  GTECH_NOT I_6 ( .A(state[2]), .Z(N40) );
  GTECH_OR2 C92 ( .A(state[1]), .B(N40), .Z(N41) );
  GTECH_OR2 C93 ( .A(state[0]), .B(N41), .Z(N42) );
  GTECH_NOT I_7 ( .A(N42), .Z(N43) );
  GTECH_OR2 C97 ( .A(state[1]), .B(N40), .Z(N44) );
  GTECH_OR2 C98 ( .A(N26), .B(N44), .Z(N45) );
  GTECH_NOT I_8 ( .A(N45), .Z(N46) );
  SELECT_OP C100 ( .DATA1({N12, equal, equal}), .DATA2({1'b0, 1'b1, 1'b0}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N15, N14, N13}) );
  GTECH_BUF B_0 ( .A(equal_en), .Z(N0) );
  GTECH_BUF B_1 ( .A(N11), .Z(N1) );
  SELECT_OP C101 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .DATA7(1'b0), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N8), .Z(N16) );
  GTECH_BUF B_2 ( .A(N36), .Z(N2) );
  GTECH_BUF B_3 ( .A(N29), .Z(N3) );
  GTECH_BUF B_4 ( .A(N33), .Z(N4) );
  GTECH_BUF B_5 ( .A(N39), .Z(N5) );
  GTECH_BUF B_6 ( .A(N43), .Z(N6) );
  GTECH_BUF B_7 ( .A(N46), .Z(N7) );
  GTECH_BUF B_8 ( .A(N10), .Z(N8) );
  SELECT_OP C102 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .Z(N17) );
  SELECT_OP C103 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .DATA7(1'b0), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N8), .Z(N18) );
  SELECT_OP C104 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N2), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .Z(N19) );
  SELECT_OP C105 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N8), .Z(N20) );
  SELECT_OP C106 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .CONTROL1(N2), 
        .CONTROL2(N5), .CONTROL3(N6), .Z(N21) );
  SELECT_OP C107 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b0), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N8), .Z(N22) );
  SELECT_OP C108 ( .DATA1({1'b0, 1'b0, A_en}), .DATA2({1'b0, 1'b1, 1'b0}), 
        .DATA3({N15, N14, N13}), .DATA4({1'b1, 1'b0, 1'b1}), .DATA5({1'b1, 
        1'b0, 1'b1}), .DATA6({1'b0, 1'b0, 1'b0}), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .Z({N25, 
        N24, N23}) );
  GTECH_NOT I_9 ( .A(rstN), .Z(N9) );
  GTECH_AND2 C112 ( .A(state[2]), .B(state[1]), .Z(N10) );
  GTECH_NOT I_10 ( .A(equal_en), .Z(N11) );
  GTECH_NOT I_11 ( .A(equal), .Z(N12) );
endmodule


module top ( clk, rstN, A, A_en, check, state );
  input [7:0] A;
  output [7:0] check;
  output [2:0] state;
  input clk, rstN, A_en;
  wire   ALoad, BLoad, Muxsel, out_s, equal, equal_en;

  datapath u_datapath_00 ( .clk(clk), .rstN(rstN), .ALoad(ALoad), .BLoad(BLoad), .Muxsel(Muxsel), .out_s(out_s), .A(A), .equal(equal), .equal_en(equal_en), 
        .check(check) );
  control_unit u_control_unit_00 ( .clk(clk), .rstN(rstN), .A_en(A_en), 
        .equal(equal), .equal_en(equal_en), .ALoad(ALoad), .BLoad(BLoad), 
        .Muxsel(Muxsel), .out_s(out_s), .state(state) );
endmodule

