`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Joseph Jimenez Zuñiga
// 
// Create Date: 09/30/2022 02:18:48 AM
// Design Name: Submodulo 3
// Module Name: Display
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


module Display(
    input [3:0] inputs,
    output reg [6:0] segments,
    output wire [7:0] anodo,
    output wire dp
    );
    
    assign dp =1;
    assign anodo = 8'b11111110;
    
    
    always@(*)
    begin
        case(inputs)
            0: segments = 7'b0000001;
            1: segments = 7'b1111001;
            2: segments = 7'b0010010;
            3: segments = 7'b0000110;
            4: segments = 7'b1001100;
            5: segments = 7'b0100100;
            6: segments = 7'b0100000;
            7: segments = 7'b0001111;
            8: segments = 7'b000000;
            9: segments = 7'b0000100;
            'hA: segments = 7'b0001000;
            'hB: segments = 7'b000000;
            'hC: segments = 7'b0110001;
            'hD: segments = 7'b0000001;
            'hE: segments = 7'b0110000;
            'hF: segments = 7'b0111000;
            default: segments = 7'b0000001;
        endcase
    end
endmodule
