module TB_4bit_FA;

    reg [3:0] x, y;
    reg c_in;
    wire [3:0] sum;
    wire c_out;

    Four_bit_FullAdder uut(
        .x(x),
        .y(y),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );

    initial begin
        $dumpfile("FA4_dump.vcd");
        $dumpvars(0, TB_4bit_FA);
    end

    initial begin
        $display("time\tx\ty\tc_in\tc_out sum");

        x = 4'b0000; y = 4'b0000; c_in = 0; #50;
        x = 4'b0011; y = 4'b0101; c_in = 0; #50;  // 3 + 5 = 8
        x = 4'b0111; y = 4'b0001; c_in = 0; #50;  // 7 + 1 = 8
        x = 4'b1111; y = 4'b0001; c_in = 0; #50;  // 15 + 1 = 16
        x = 4'b1010; y = 4'b0101; c_in = 1; #50;  // 10 + 5 + 1 = 16

        $finish;
    end

    always @(x or y or c_in or sum or c_out) begin
        $display("%0t\t%b\t%b\t%b\t%b_%b",
                 $time, x, y, c_in, c_out, sum);
    end

endmodule