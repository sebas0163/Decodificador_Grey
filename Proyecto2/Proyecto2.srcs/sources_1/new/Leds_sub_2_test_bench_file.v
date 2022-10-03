`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2022 08:08:33 PM
// Design Name: 
// Module Name: Leds_sub_2_test_bench_file
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


module Leds_sub_2_test_bench_file(

    );
    reg [3:0] aa;
    reg [3:0] leds_;
    Leds_sub_2 U1(aa, leds_);
    initial begin
    aa= 4'b0000;
    #500
    aa=4'b1010;
    #500
    aa=4'b1000;
    end
endmodule
