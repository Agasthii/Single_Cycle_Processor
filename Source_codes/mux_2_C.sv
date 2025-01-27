`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 06:05:50 PM
// Design Name: 
// Module Name: mux_2_C
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


module Mux_2_C(
    input logic [31:0] Data1,
    input logic [8:0] Data2,
    input logic sel,
    
    output logic [31:0] Data_out
    );
    
    assign Data_out = sel? {23'b0,Data2} : Data1;
    
endmodule
