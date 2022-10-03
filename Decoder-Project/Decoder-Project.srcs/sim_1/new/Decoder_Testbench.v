`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 06:28:42 AM
// Design Name: 
// Module Name: Decoder_Testbench
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


module Decoder_Testbench;
    reg clk;
	reg reset;
	wire [3:0] gray_code;
	wire [3:0] bin_count;
	gray_counter gc(.clk(clk), .reset(reset), .o_bin(bin_count), .o_gray_code(gray_code));

	always #1 clk = ~clk;

	initial begin
		clk = 0;
		reset = 1;
		#2;
		reset = 0;

		#20 $finish;
	end
endmodule
