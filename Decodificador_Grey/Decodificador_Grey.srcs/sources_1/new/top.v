`timescale 1ns / 1ps

module top(
	input clk_100Mhz,
	input reset,
	output [3:0] o_bin,
	output [3:0] o_gray_code
	);

	wire w_1Hz;

	gray_counter gcntr(.clk(w_1Hz), .reset(reset), .o_bin(o_bin), .o_gray_code(o_gray_code));
	oneHz_gen uno(.clk_100MHz(clk_100MHz), .clk_1Hz(w_1Hz));

endmodule