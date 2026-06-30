module Four_bit_FullAdder(
    input [3:0] x,
    input [3:0] y,
    input c_in,
    output [3:0] sum,
    output c_out
);

    wire c1, c2, c3;

    FullAdder FA0(
        .x(x[0]),
        .y(y[0]),
        .c_in(c_in),
        .sum(sum[0]),
        .c_out(c1)
    );

    FullAdder FA1(
        .x(x[1]),
        .y(y[1]),
        .c_in(c1),
        .sum(sum[1]),
        .c_out(c2)
    );

    FullAdder FA2(
        .x(x[2]),
        .y(y[2]),
        .c_in(c2),
        .sum(sum[2]),
        .c_out(c3)
    );

    FullAdder FA3(
        .x(x[3]),
        .y(y[3]),
        .c_in(c3),
        .sum(sum[3]),
        .c_out(c_out)
    );

endmodule