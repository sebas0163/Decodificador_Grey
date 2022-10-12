`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Sebastian Moya Monge
// 
// Create Date: 10/01/2022 08:08:33 PM
// Design Name: Leds Testbench
// Module Name: Leds_Testbench
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


module Leds_Testbench(

);
    reg [3:0] aa;
    wire [3:0] leds_;
    
    Leds U1(aa, leds_);
    
    initial begin
        aa[0]=0;
        aa[1]=0;
        aa[2]=0;
        aa[3]=0;
        #50
        aa[0]=1;
        #50
        aa[0]=0;
        aa[1]=1;
        #50
        aa[0]=1;
        aa[1]=1;
        #50
        aa[0]=0;
        aa[1]=0;
        aa[2]=1;
        #50
        aa[0]=1;
        #50
        aa[0]=0;
        aa[1]=1;
        #50
        aa[0]=1;
        #50
        aa[0]=0;
        aa[1]=0;
        aa[2]=0;
        aa[3]=1;
        #50
        aa[0]=1;
        #50
        aa[0]=0;
        aa[1]=1;
        #50
        aa[0]=1;
        aa[1]=1;
        #50
        aa[0]=0;
        aa[1]=0;
        aa[2]=1;
        #50
        aa[0]=1;
        #50
        aa[0]=0;
        aa[1]=1;
        #50
        aa[0]=1;
        #50
        inputs[0]=0;
        inputs[1]=0;
        inputs[2]=0;
        inputs[3]=0;
    end
endmodule
