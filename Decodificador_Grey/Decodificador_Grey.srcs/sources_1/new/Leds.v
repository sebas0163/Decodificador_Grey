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
    input wire [3:0] bin,
    input clk,
    output reg [3:0] leds
    );
    reg [25:0] counter = 26'd0;
    reg enable =0;
    
    //Flip flop
    always @ (posedge clk)
    begin 
        if (enable)
        begin
             leds <= bin;
        end
    end
    
    //Counter
    always @ (posedge clk)
    begin
        if(counter == 26'd50000000)
        begin 
            counter <= 26'd0;
        end
        else
        begin 
            counter <= counter + 26'd1;
        end
            
    end
    //comparador
    assign enable <= (counter == 26'd50000000) ? 1'b1: 1'b0;
    

endmodule
