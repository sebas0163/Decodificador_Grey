`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Sebastian Moya Monge
// 
// Create Date: 10/01/2022 08:02:40 PM
// Design Name: Submodulo 2
// Module Name: Leds
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

module Leds(
    input wire [3:0] codigo,
    output reg [3:0] leds
    );
    always@(*)
    begin
        leds = codigo;
    end
endmodule
