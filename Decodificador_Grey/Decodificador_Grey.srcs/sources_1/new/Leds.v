`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2022 02:36:46 PM
// Design Name: 
// Module Name: leds
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


module leds(
    input reg [3:0] bin,
    input clk,
    output reg [3:0] leds
    );
    reg [3:0] count_aux= 4'd0;
    reg [3:0] counter = 4'd0;
    reg enable =0;
    
    always @ (posedge clk)
    begin 
        if (enable)
        begin
             leds <= bin;
             enable <=0;
        end
        else
        begin
            count_aux <= counter;
        end
    end
    always @ *
    begin
        if(counter == 4'd10)
        begin 
            enable =1;
            counter = 4'd0;
        end
        else
        begin 
            counter = count_aux + 1'd1;
        end
    end
    
endmodule
