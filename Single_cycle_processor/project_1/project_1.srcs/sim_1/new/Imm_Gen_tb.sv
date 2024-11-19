`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 03:43:25 PM
// Design Name: 
// Module Name: Imm_Gen_tb
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


module Imm_Gen_tb();
reg [31:0] IMM_IN;
wire [31:0] IMM_OUT;

Imm_Gen dut (.Imm_in(IMM_IN), .Imm_out(IMM_OUT));

initial begin
    IMM_IN=32'b10000000000000000000000000010011;
    #10
    IMM_IN=32'b01000000000000000000000000010001;
    #10
    $finish;
end
endmodule
