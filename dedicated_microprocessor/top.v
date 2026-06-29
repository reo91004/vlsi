module top(
    input        clk,
    input        rstN,
    input  [7:0] A,
    input        A_en,
    output [7:0] check,
    output [2:0] state
);

    wire ALoad, BLoad;
    wire Muxsel;
    wire out_s;
    wire equal;
    wire equal_en;

    datapath u_datapath_00(
        .clk      (clk),
        .rstN     (rstN),
        .ALoad    (ALoad),
        .BLoad    (BLoad),
        .Muxsel   (Muxsel),
        .out_s    (out_s),
        .A        (A),
        .equal    (equal),
        .equal_en (equal_en),
        .check    (check)
    );

    control_unit u_control_unit_00(
        .clk      (clk),
        .rstN     (rstN),
        .A_en     (A_en),
        .equal    (equal),
        .equal_en (equal_en),
        .ALoad    (ALoad),
        .BLoad    (BLoad),
        .Muxsel   (Muxsel),
        .out_s    (out_s),
        .state    (state)
    );

endmodule
