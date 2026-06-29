module TB_4bit_FA;

    reg [3:0] x;
    reg [3:0] y;
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
        $timeformat(-9, 0, " ns", 10);
    end

    initial begin
        x = 4'b0000;
        y = 4'b0000;
        c_in = 1'b0;

        #50;
        x = 4'b0101;
        y = 4'b0001;
        c_in = 1'b0;

        #50;
        x = 4'b1111;
        y = 4'b0001;
        c_in = 1'b0;

        #100;
        x = 4'b0110;
        y = 4'b0001;
        c_in = 1'b1;

        #50;
        $finish;
    end

    initial begin
        $dumpfile("FA_4B_dump.vcd");
        $dumpvars(0, TB_4B_FA);
    end

    always @(sum or c_out) begin
        $display("time = %0t \t input value: x = %b, y = %b, c_in = %b \t output value: sum = %b, c_out = %b",
                 $realtime, x, y, c_in, sum, c_out);
    end

endmodule