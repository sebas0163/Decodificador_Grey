`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Ignacio Grane Rojas
// 
// Create Date: 10/12/2022 12:00:00 AM
// Design Name: Generador 100 Hz
// Module Name: oneHz_gen
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


module oneHz_gen(
    input clk_100Mhz,
    output clk_1Hz
);
    reg reg_1Hz = 0;
    reg [25:0] r_counter = 0;

    always @(posedge clk_100Mhz)
    if (r_counter == 49_999_999)
        begin
            r_counter <= 0;
            r_1Hz < ~r_1Hz;
        end
    else
        r_counter <= r_counter + 1;
    assign clk_1Hz = r_1Hz;
endmodule
