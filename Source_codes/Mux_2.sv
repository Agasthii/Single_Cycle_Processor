`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 01:31:50 PM
// Design Name: 
// Module Name: Mux_2
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


module Mux_2(
    input logic [31:0] Data1,
    input logic [31:0] Data2,
    input logic sel,
    
    output logic [31:0] Data_out
    );
    
    assign Data_out = sel? Data2 : Data1;
endmodule
