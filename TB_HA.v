module TB_HA;

    reg x, y;
    wire sum, c_out;

    HalfAdder uut(
        .x(x),
        .y(y),
        .sum(sum),
        .c_out(c_out)
    );

    initial begin
        $timeformat(-9, 0, " ns", 10);
    end

    initial begin
        x = 0;
        y = 0;

        #50;
        x = 1'b0;
        y = 1'b1;

        #50;
        x = 1'b1;
        y = 1'b0;

        #50;
        x = 1'b1;
        y = 1'b1;
    end

    initial begin
        $dumpfile("HA_dump.vcd");
        $dumpvars(0, TB_HA);
    end

    always @(x or y or sum or c_out) begin
        $display(
            "time = %0t \t input value: x = %b, y = %b \t output value: sum = %b, c_out = %b",
            $realtime, x, y, sum, c_out
        );
    end

endmodule