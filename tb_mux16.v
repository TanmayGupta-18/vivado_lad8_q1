`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 02:27:48 PM
// Design Name: 
// Module Name: tb_muxdemux
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


module tb_muxdemux;
    reg [15:0] d;
    reg [3:0] s;
    wire x;
    mux16 uut (
        .d0(d[0]),
        .d1(d[1]),
        .d2(d[2]),
        .d3(d[3]),
        .d4(d[4]),
        .d5(d[5]),
        .d6(d[6]),
        .d7(d[7]),
        .d8(d[8]),
        .d9(d[9]),
        .d10(d[10]),
        .d11(d[11]),
        .d12(d[12]),
        .d13(d[13]),
        .d14(d[14]),
        .d15(d[15]),
        .s0(s[0]),
        .s1(s[1]),
        .s2(s[2]),
        .s3(s[3]),
        .x(x)
    );
    integer i;
    initial begin 
        d = 16'b1010101010101010;
     
        for(i=0;i<16;i=i+1) begin
            s=i;
            #10
            if(x==d[i])
                $display("PASS");
            else
                $display("FAIL");
        end

        $finish;
    end
endmodule
