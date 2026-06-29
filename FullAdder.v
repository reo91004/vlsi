module FullAdder(
    input x, y, c_in,
    output sum, c_out
    );

    wire s1, c1, c2;

    HalfAdder HA0(
        .x(x),
        .y(y),
        .sum(s1),
        .c_out(c1)
    );

    HalfAdder HA1(
        .x(c_in),
        .y(s1),
        .sum(sum),
        .c_out(c2)
    );

    assign c_out = c1 | c2;
)

endmodule