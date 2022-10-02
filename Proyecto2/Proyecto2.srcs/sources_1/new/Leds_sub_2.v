`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2022 08:02:40 PM
// Design Name: 
// Module Name: Leds_sub_2
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


module Leds_sub_2(
    input wire [3:0] codigo,
    output reg [3:0] leds
    );
    always@(*)
    begin
        leds = codigo;
    end
endmodule
