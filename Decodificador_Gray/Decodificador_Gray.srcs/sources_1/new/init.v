`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 10:55:32 PM
// Design Name: 
// Module Name: init
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


module init(
    input [3:0]g,
    output wire [6:0] turnOnDisplay,
    output wire [7:0] anodo,
    output wire dp
);
   
   
    wire [3:0]b;
    Decoder U1(g,b);
    //Leds U2(b, turnOnLed);
    Display U3(b,turnOnDisplay,anodo,dp);
    
endmodule
