`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Ignacio Grane Rojas
// 
// Create Date: 10/03/2022 06:23:35 AM
// Design Name: Submodulo 1
// Module Name: Decoder
// Project Name: Decodificador_Grey
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

module Decoder(
    input clk,
	input reset,
	output [3:0] o_bin,
	output [3:0] o_gray_code
	);

	// 4-bit binary counter
	reg [3:0] bin_counter = 0;

	always @(posedge clk or posedge reset)
		if(reset)
			bin_counter <= 0;
		else
			bin_counter <= bin_counter + 1;

	assign o_bin = bin_counter;

	assign o_gray_code[2] = bin_counter[2];
	assign o_gray_code[1] = bin_counter[2] ^ bin_counter[1];
	assign o_gray_code[0] = bin_counter[1] ^ bin_counter[0];
endmodule
