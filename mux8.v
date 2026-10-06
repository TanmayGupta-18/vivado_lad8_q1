`timescale 1ns / 1ps
module mux8(input d0, input d1, input d2, input d3, input d4, input d5, input d6, input d7, input s0, input s1, input s2, input s3, output x);
    wire A,B;
    mux4 m1(
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .s0(s0),
        .s1(s1),
        .x(A)
    );
    mux4 m2(
        .d0(d4),
        .d1(d5),
        .d2(d6),
        .d3(d7),
        .s0(s0),
        .s1(s1),
        .x(B)
    );
    muxdemux m3(
        .d0(A),
        .d1(B),
        .s(s2),
        .y(x)
    );
endmodule