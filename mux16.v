`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 02:56:11 PM
// Design Name: 
// Module Name: mux16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux16(input d0, input d1, input d2, input d3, input d4, input d5, input d6, input d7, input d8, input d9, input d10, input d11, input d12, input d13, input d14, input d15, input s0, input s1, input s2, input s3, output x);
    wire A,B;
    mux8 m1(
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .d5(d5),
        .d6(d6),
        .d7(d7),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .x(A)
    );
    mux8 m2(
        .d0(d8),
        .d1(d9),
        .d2(d10),
        .d3(d11),
        .d4(d12),
        .d5(d13),
        .d6(d14),
        .d7(d15),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .x(B)
    );
    muxdemux m3(
        .d0(A),
        .d1(B),
        .s(s3),
        .y(x)
    );
endmodule
