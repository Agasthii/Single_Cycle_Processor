`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 05:53:54 PM
// Design Name: 
// Module Name: Branch_comp
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


module Branch_comp(
    input logic [31:0] DataA,
    input logic [31:0] DataB,
    input logic BrUn,
    
    output logic BrLT,
    output logic BrEq
    );
    
    logic state;
    
    assign BrEq = (DataA==DataB)? 1:0;
    assign BrLT = (BrUn)? (DataA<DataB) : ($signed(DataA) < $signed(DataB));
    
endmodule


