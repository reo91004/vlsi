/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Jun 30 15:17:29 2026
/////////////////////////////////////////////////////////////


module datapath ( clk, rstN, ALoad, BLoad, out_s, A_7_, A_6_, A_5_, A_4_, A_3_, 
        A_2_, A_1_, A_0_, equal, equal_en, check_7_, check_6_, check_5_, 
        check_4_, check_3_, check_2_, check_1_, check_0_, Muxsel_BAR );
  input clk, rstN, ALoad, BLoad, out_s, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_,
         A_1_, A_0_, Muxsel_BAR;
  output equal, equal_en, check_7_, check_6_, check_5_, check_4_, check_3_,
         check_2_, check_1_, check_0_;
  wire   Muxsel, o_q_A_7_, o_q_A_6_, o_q_A_5_, o_q_A_4_, o_q_A_3_, o_q_A_2_,
         o_q_A_1_, o_q_A_0_, o_q_B_0_, n34, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n33, check_0_;
  assign Muxsel = Muxsel_BAR;
  assign check_2_ = check_0_;

  \**FFGEN**  equal_en_reg ( .next_state(ALoad), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(equal_en)
         );
  \**FFGEN**  o_q_B_reg_3_ ( .next_state(n44), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .QN(n3) );
  \**FFGEN**  o_q_B_reg_0_ ( .next_state(n43), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_B_0_)
         );
  \**FFGEN**  o_q_A_reg_7_ ( .next_state(n42), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_7_)
         );
  \**FFGEN**  o_q_A_reg_6_ ( .next_state(n41), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_6_)
         );
  \**FFGEN**  o_q_A_reg_5_ ( .next_state(n40), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_5_)
         );
  \**FFGEN**  o_q_A_reg_4_ ( .next_state(n39), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_4_)
         );
  \**FFGEN**  o_q_A_reg_3_ ( .next_state(n38), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_3_)
         );
  \**FFGEN**  o_q_A_reg_2_ ( .next_state(n37), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_2_), 
        .QN(n1) );
  \**FFGEN**  o_q_A_reg_1_ ( .next_state(n36), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_1_)
         );
  \**FFGEN**  o_q_A_reg_0_ ( .next_state(n34), .clocked_on(clk), .force_00(
        1'b0), .force_01(n33), .force_10(1'b0), .force_11(1'b0), .Q(o_q_A_0_), 
        .QN(n2) );
  INVX1_RVT U4 ( .A(rstN), .Y(n33) );
  INVX1_RVT U5 ( .A(out_s), .Y(n4) );
  NOR2X1_RVT U6 ( .A1(n3), .A2(n4), .Y(check_3_) );
  NAND2X1_RVT U7 ( .A1(o_q_B_0_), .A2(out_s), .Y(n5) );
  INVX1_RVT U8 ( .A(n5), .Y(check_0_) );
  NOR2X1_RVT U9 ( .A1(o_q_A_4_), .A2(o_q_A_5_), .Y(n7) );
  NOR2X1_RVT U10 ( .A1(o_q_A_6_), .A2(o_q_A_7_), .Y(n6) );
  NAND2X1_RVT U11 ( .A1(n7), .A2(n6), .Y(n11) );
  NOR2X1_RVT U12 ( .A1(o_q_A_1_), .A2(n2), .Y(n9) );
  NOR2X1_RVT U13 ( .A1(o_q_A_3_), .A2(n1), .Y(n8) );
  NAND2X1_RVT U14 ( .A1(n9), .A2(n8), .Y(n10) );
  NOR2X1_RVT U15 ( .A1(n11), .A2(n10), .Y(equal) );
  INVX1_RVT U16 ( .A(BLoad), .Y(n12) );
  NAND2X1_RVT U17 ( .A1(n12), .A2(n3), .Y(n44) );
  NAND2X1_RVT U18 ( .A1(Muxsel), .A2(BLoad), .Y(n14) );
  NAND2X1_RVT U19 ( .A1(o_q_B_0_), .A2(n12), .Y(n13) );
  NAND2X1_RVT U20 ( .A1(n14), .A2(n13), .Y(n43) );
  NAND2X1_RVT U21 ( .A1(ALoad), .A2(A_7_), .Y(n16) );
  INVX1_RVT U22 ( .A(ALoad), .Y(n29) );
  NAND2X1_RVT U23 ( .A1(o_q_A_7_), .A2(n29), .Y(n15) );
  NAND2X1_RVT U24 ( .A1(n16), .A2(n15), .Y(n42) );
  NAND2X1_RVT U25 ( .A1(ALoad), .A2(A_6_), .Y(n18) );
  NAND2X1_RVT U26 ( .A1(o_q_A_6_), .A2(n29), .Y(n17) );
  NAND2X1_RVT U27 ( .A1(n18), .A2(n17), .Y(n41) );
  NAND2X1_RVT U28 ( .A1(ALoad), .A2(A_5_), .Y(n20) );
  NAND2X1_RVT U29 ( .A1(o_q_A_5_), .A2(n29), .Y(n19) );
  NAND2X1_RVT U30 ( .A1(n20), .A2(n19), .Y(n40) );
  NAND2X1_RVT U31 ( .A1(ALoad), .A2(A_4_), .Y(n22) );
  NAND2X1_RVT U32 ( .A1(o_q_A_4_), .A2(n29), .Y(n21) );
  NAND2X1_RVT U33 ( .A1(n22), .A2(n21), .Y(n39) );
  NAND2X1_RVT U34 ( .A1(ALoad), .A2(A_3_), .Y(n24) );
  NAND2X1_RVT U35 ( .A1(o_q_A_3_), .A2(n29), .Y(n23) );
  NAND2X1_RVT U36 ( .A1(n24), .A2(n23), .Y(n38) );
  NAND2X1_RVT U37 ( .A1(ALoad), .A2(A_2_), .Y(n26) );
  NAND2X1_RVT U38 ( .A1(o_q_A_2_), .A2(n29), .Y(n25) );
  NAND2X1_RVT U39 ( .A1(n26), .A2(n25), .Y(n37) );
  NAND2X1_RVT U40 ( .A1(ALoad), .A2(A_1_), .Y(n28) );
  NAND2X1_RVT U41 ( .A1(o_q_A_1_), .A2(n29), .Y(n27) );
  NAND2X1_RVT U42 ( .A1(n28), .A2(n27), .Y(n36) );
  NAND2X1_RVT U43 ( .A1(ALoad), .A2(A_0_), .Y(n31) );
  NAND2X1_RVT U44 ( .A1(o_q_A_0_), .A2(n29), .Y(n30) );
  NAND2X1_RVT U45 ( .A1(n31), .A2(n30), .Y(n34) );
endmodule


module control_unit ( clk, rstN, A_en, equal, equal_en, ALoad, BLoad, out_s, 
        state_2_, state_1_, state_0_, Muxsel_BAR );
  input clk, rstN, A_en, equal, equal_en;
  output ALoad, BLoad, out_s, state_2_, state_1_, state_0_, Muxsel_BAR;
  wire   Muxsel, n39, n41, n42, n43, n44, n45, n46, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n47;

  \**FFGEN**  state_reg_0_ ( .next_state(n46), .clocked_on(clk), .force_00(
        1'b0), .force_01(n47), .force_10(1'b0), .force_11(1'b0), .Q(state_0_), 
        .QN(n3) );
  \**FFGEN**  state_reg_2_ ( .next_state(n45), .clocked_on(clk), .force_00(
        1'b0), .force_01(n47), .force_10(1'b0), .force_11(1'b0), .Q(state_2_), 
        .QN(n1) );
  \**FFGEN**  state_reg_1_ ( .next_state(n44), .clocked_on(clk), .force_00(
        1'b0), .force_01(n47), .force_10(1'b0), .force_11(1'b0), .Q(state_1_), 
        .QN(n2) );
  \**FFGEN**  out_s_reg ( .next_state(n43), .clocked_on(clk), .force_00(1'b0), 
        .force_01(n47), .force_10(1'b0), .force_11(1'b0), .Q(out_s) );
  \**FFGEN**  ALoad_reg ( .next_state(n42), .clocked_on(clk), .force_00(1'b0), 
        .force_01(n47), .force_10(1'b0), .force_11(1'b0), .Q(ALoad) );
  \**FFGEN**  Muxsel_reg ( .next_state(n41), .clocked_on(clk), .force_00(1'b0), 
        .force_01(n47), .force_10(1'b0), .force_11(1'b0), .Q(Muxsel), .QN(
        Muxsel_BAR) );
  \**FFGEN**  BLoad_reg ( .next_state(n39), .clocked_on(clk), .force_00(1'b0), 
        .force_01(n47), .force_10(1'b0), .force_11(1'b0), .Q(BLoad) );
  INVX1_RVT U4 ( .A(rstN), .Y(n47) );
  NOR2X1_RVT U5 ( .A1(state_1_), .A2(state_0_), .Y(n29) );
  NAND2X1_RVT U6 ( .A1(state_2_), .A2(n29), .Y(n32) );
  INVX1_RVT U7 ( .A(n32), .Y(n10) );
  NAND2X1_RVT U8 ( .A1(equal), .A2(equal_en), .Y(n4) );
  NOR2X1_RVT U9 ( .A1(state_2_), .A2(n4), .Y(n5) );
  NOR2X1_RVT U10 ( .A1(state_0_), .A2(n5), .Y(n6) );
  NOR2X1_RVT U11 ( .A1(n6), .A2(n2), .Y(n7) );
  NOR2X1_RVT U12 ( .A1(n10), .A2(n7), .Y(n9) );
  NAND2X1_RVT U13 ( .A1(n29), .A2(A_en), .Y(n8) );
  NAND2X1_RVT U14 ( .A1(n9), .A2(n8), .Y(n46) );
  NAND2X1_RVT U15 ( .A1(state_0_), .A2(n1), .Y(n15) );
  NOR2X1_RVT U16 ( .A1(n2), .A2(n15), .Y(n28) );
  NOR2X1_RVT U17 ( .A1(n10), .A2(n28), .Y(n37) );
  NOR2X1_RVT U18 ( .A1(n2), .A2(n1), .Y(n26) );
  INVX1_RVT U19 ( .A(equal_en), .Y(n11) );
  NOR2X1_RVT U20 ( .A1(equal), .A2(n11), .Y(n18) );
  NAND2X1_RVT U21 ( .A1(state_1_), .A2(n18), .Y(n12) );
  INVX1_RVT U22 ( .A(n12), .Y(n13) );
  NOR2X1_RVT U23 ( .A1(n26), .A2(n13), .Y(n14) );
  NAND2X1_RVT U24 ( .A1(n37), .A2(n14), .Y(n45) );
  NOR2X1_RVT U25 ( .A1(state_1_), .A2(n15), .Y(n20) );
  NAND2X1_RVT U26 ( .A1(state_1_), .A2(n1), .Y(n16) );
  NOR2X1_RVT U27 ( .A1(state_0_), .A2(n16), .Y(n17) );
  NOR2X1_RVT U28 ( .A1(n20), .A2(n17), .Y(n34) );
  NOR2X1_RVT U29 ( .A1(n34), .A2(n18), .Y(n19) );
  NOR2X1_RVT U30 ( .A1(n20), .A2(n19), .Y(n21) );
  INVX1_RVT U31 ( .A(n26), .Y(n33) );
  NAND2X1_RVT U32 ( .A1(n21), .A2(n33), .Y(n44) );
  NOR2X1_RVT U33 ( .A1(n1), .A2(n3), .Y(n22) );
  NAND2X1_RVT U34 ( .A1(n22), .A2(n2), .Y(n25) );
  NAND2X1_RVT U35 ( .A1(n29), .A2(n1), .Y(n23) );
  NAND2X1_RVT U36 ( .A1(out_s), .A2(n23), .Y(n24) );
  NAND2X1_RVT U37 ( .A1(n25), .A2(n24), .Y(n43) );
  NAND2X1_RVT U38 ( .A1(n26), .A2(ALoad), .Y(n27) );
  NAND2X1_RVT U39 ( .A1(n34), .A2(n27), .Y(n42) );
  NOR2X1_RVT U40 ( .A1(n29), .A2(n28), .Y(n30) );
  NAND2X1_RVT U41 ( .A1(Muxsel), .A2(n30), .Y(n31) );
  NAND2X1_RVT U42 ( .A1(n32), .A2(n31), .Y(n41) );
  NAND2X1_RVT U43 ( .A1(n34), .A2(n33), .Y(n35) );
  NAND2X1_RVT U44 ( .A1(BLoad), .A2(n35), .Y(n36) );
  NAND2X1_RVT U45 ( .A1(n37), .A2(n36), .Y(n39) );
endmodule


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

