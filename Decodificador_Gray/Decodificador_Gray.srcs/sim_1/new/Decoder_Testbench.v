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


module Decoder_Testbench;
    reg [3:0] bin; 
    wire [3:0] binout;
    
    
    Decoder dut (bin,binout);
    
    
    always begin
        bin <= 0;
        #10 bin <= 1;
        #10 bin <= 2;
        #10 bin <= 3;
        #10 bin <= 4;
        #10 bin <= 5;
        #10 bin <= 6;
        #10 bin <= 7;
        #10 bin <= 8;
        #10 bin <= 9;
        #10 bin <= 10;
        #10 bin <= 11;
        #10 bin <= 12;
        #10 bin <= 13;
        #10 bin <= 14;
        #10 bin <= 15;
        #100;
        $stop;
    end
endmodule 