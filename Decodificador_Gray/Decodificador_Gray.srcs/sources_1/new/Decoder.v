`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Ignacio Grane Rojas
// 
// Create Date: 10/03/2022 06:23:35 AM
// Design Name: Submodulo 1
// Module Name: Decoder
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


module Decoder(
    input [3:0]g,
    output [3:0]b
    );
   
    assign b[3] = g[3];
    assign b[2] = g[3] ^ g[2];
    assign b[1] = g[3] ^ g[2] ^ g[1];
    assign b[0] = g[3] ^ g[2] ^ g[1] ^ g[0];
    
    //Display U2(b,turnOnDisplay);
    
endmodule
