`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 08:01:02 PM
// Design Name: 
// Module Name: PC
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


module PC#(
    parameter Index_width = 9
    )(
    input logic clk,
    input logic rst,
    input logic [Index_width-1:0] next_value,
    
    output logic [Index_width-1:0] output_value
    );
    
    always_ff @ (posedge clk,posedge rst)
        if(rst)
            output_value <= 9'd0;
        else 
            output_value <= next_value;
endmodule
