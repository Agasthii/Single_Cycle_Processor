`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 08:07:25 PM
// Design Name: 
// Module Name: PC_ALU
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


module PC_ALU#(
    parameter Index_width = 9
    )(
    input logic [Index_width-1:0] Current_value,
    input logic mem_copy,
    output logic [Index_width-1:0] Next_value
    );
    always_comb
        if (mem_copy)
            Next_value <= Current_value;
        else
            Next_value <= Current_value + 4;  
endmodule
