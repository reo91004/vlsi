module TB_TOP;
    reg        clk;
    reg        rstN;
    reg  [7:0] A;
    reg        A_en;
    wire [7:0] check;
    wire [2:0] state;

    top dut_top(
        .clk(clk), .rstN(rstN),
        .A(A), .A_en(A_en),
        .check(check), .state(state)
    );

    initial begin
        $timeformat(-9, 0, " ns", 10);
    end

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        rstN = 0;
        #100;
        rstN = 1; A_en = 1; A = 8'd5;
        #100;
        A_en = 0;
        #100;
        rstN = 1; A_en = 1; A = 8'd9;
        #100;
        A_en = 0;
        #100;
        $finish;
    end

    initial begin
        $dumpfile("TB_top.vcd");
        $dumpvars(0, TB_TOP);
    end

    always @(posedge clk)
        $display("time = %0t \t\t input value: %b \t\t output value: %b \t\t state: %b",
                 $realtime, A, check, state);
endmodule
