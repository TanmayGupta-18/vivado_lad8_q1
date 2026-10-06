`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 02:42:56 PM
// Design Name: 
// Module Name: 4mux
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


module mux4(input d0, input d1, input d2, input d3, input s0, input s1, output x);
    wire  A,B;
    muxdemux m1(
        .d0(d0),
        .d1(d1),
        .s(s0),
        .y(A)
    );
    muxdemux m2(
        .d0(d2),
        .d1(3),
        .s(s0),
        .y(B)
    );
    muxdemux m3(
        .d0(A),
        .d1(B),
        .s(s1),
        .y(x)
    );
endmodule