`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Joseph Jimenez Zuñiga
// 
// Create Date: 10/03/2022 05:57:26 PM
// Design Name: Decodificador Grey Testbench
// Module Name: Decodificador_Grey_Testbench
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


module Decodificador_Gray_Testbench(

);
    reg [3:0] inputs; //Inputs en Gray
    wire [3:0] binario; //Outputs en binario
    wire [3:0] turnOnLed;
    wire [6:0] turnOnDisplay;


    Decoder U5 (inputs, binario);
    //Leds U1(binario, turnOnLed);
    Display U2(binario,turnOnDisplay);

    initial begin
        inputs[0]=0;
        inputs[1]=0;
        inputs[2]=0;
        inputs[3]=0;
        #50
        inputs[0]=1;
        #50
        inputs[0]=0;
        inputs[1]=1;
        #50
        inputs[0]=1;
        inputs[1]=1;
        #50
        inputs[0]=0;
        inputs[1]=0;
        inputs[2]=1;
        #50
        inputs[0]=1;
        #50
        inputs[0]=0;
        inputs[1]=1;
        #50
        inputs[0]=1;
        #50
        inputs[0]=0;
        inputs[1]=0;
        inputs[2]=0;
        inputs[3]=1;
        #50
        inputs[0]=1;
        #50
        inputs[0]=0;
        inputs[1]=1;
        #50
        inputs[0]=1;
        inputs[1]=1;
        #50
        inputs[0]=0;
        inputs[1]=0;
        inputs[2]=1;
        #50
        inputs[0]=1;
        #50
        inputs[0]=0;
        inputs[1]=1;
        #50
        inputs[0]=1;
        #50
        inputs[0]=0;
        inputs[1]=0;
        inputs[2]=0;
        inputs[3]=0;
    end
endmodule
