`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 06:49:57 PM
// Design Name: 
// Module Name: Mux_2_B
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


module Mux_2_B(
    input logic [31:0] Data1,
    input logic [31:0] Data2,
    input logic [8:0] Data3,
    input logic [1:0] sel,
    
    output logic [31:0] Data_out
    );
    
    always_comb
        case(sel)
            2'b00:
                Data_out = Data1;
            2'b01:
                Data_out = Data2;
            2'b10:
                Data_out = {24'b0,Data3};
            default:
                Data_out = Data1;
        endcase
endmodule
