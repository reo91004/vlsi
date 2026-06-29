module HalfAdder(
    input x, y,
    output sum, c_out
    );

    assign sum = x ^ y;
    assign c_out = x & y;

endmodule