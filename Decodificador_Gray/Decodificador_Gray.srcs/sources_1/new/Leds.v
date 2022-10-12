`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Sebastian Moya Monge
// 
// Create Date: 10/01/2022 08:02:40 PM
// Design Name: Submodulo 2
// Module Name: Leds
// Project Name: Decodificador_Gray
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
    input wire [3:0] bin,
    output reg [3:0] leds,
    input clk
);
    reg [25:0] counter = 26'd0;
    reg enable = 0;

    always@(posedge clk)
    begin
        if(enable)
        begin
            leds <= bin;
        end
    end
    always @ *
    begin
        if(counter == 26'd50000000)
            begin
                counter = 26'd0;
            end
        else
            begin
                counter = counter + 26'd1;
            end
        enable = (counter == 26'd50000000)? 1'b1:1'b0;
    end


endmodule
