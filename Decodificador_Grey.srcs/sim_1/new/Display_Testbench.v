`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Joseph Jimenez Zuñiga
// 
// Create Date: 10/01/2022 03:50:03 AM
// Design Name: Display Testbench
// Module Name: Display_Testbench
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

module Display_Testbench(
    );
    reg [3:0] inputs;
    wire [6:0] segments;
    Display U1(inputs,segments);
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
    end
endmodule
