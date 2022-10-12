`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Ignacio Grane Rojas
// 
// Create Date: 10/03/2022 06:28:42 AM
// Design Name: Decoder Testbench
// Module Name: Decoder_Testbench
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


module Decoder_Testbench(

);

    reg [3:0] gray;
    wire [3:0] binario;

    Decoder(gray,binario);
endmodule
