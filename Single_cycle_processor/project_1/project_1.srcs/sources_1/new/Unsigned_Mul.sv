`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 12:05:47 PM
// Design Name: 
// Module Name: Unsigned_Mul
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


module Unsigned_Mul#(
    parameter Data_width = 16
    )(
    input logic [Data_width-1:0] Data1,Data2,
    
    output logic [(Data_width*2)-1:0] Data_out
    );
    
    assign Data_out = Data1 * Data2;

endmodule
