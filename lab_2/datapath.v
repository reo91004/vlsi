module datapath(
    input        clk,
    input        rstN,
    input        ALoad,
    input        BLoad,
    input        Muxsel,
    input        out_s,
    input  [7:0] A,
    output       equal,
    output reg   equal_en,
    output [7:0] check
);

    reg [7:0] o_q_A;
    reg [7:0] o_q_B;

    always @(posedge clk or negedge rstN) begin
        if(!rstN) begin
            o_q_A   <= 8'd0;
            equal_en <= 0;
        end
        else if(ALoad) begin
            o_q_A   <= A;
            equal_en <= 1;
        end
        else begin
            o_q_A   <= o_q_A;
            equal_en <= 0;
        end
    end

    always @(posedge clk or negedge rstN) begin
        if(!rstN) begin
            o_q_B <= 8'd0;
        end
        else if(BLoad == 1 && Muxsel == 0) begin
            o_q_B <= 8'd13;
        end
        else if(BLoad == 1 && Muxsel == 1) begin
            o_q_B <= 8'd8;
        end
    end

    assign check = (out_s == 1'b1) ? o_q_B : 8'd0;
    assign equal = (o_q_A == 8'd5) ? 1 : 0;

endmodule
