`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 01:46:53 PM
// Design Name: 
// Module Name: Instruction_mem_tb
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


module Instruction_mem_tb();
reg [8:0] INSTR_ADDR;
wire [31:0] INSTR;

Instruction_mem dut(.Instruct_addr(INSTR_ADDR), .Instruct(INSTR));

initial begin
INSTR_ADDR = 9'd0;
#10
INSTR_ADDR = 9'd4;
#10
INSTR_ADDR = 9'd8;
#10
INSTR_ADDR = 9'd12;
#10
INSTR_ADDR = 9'd16;
#10
INSTR_ADDR = 9'd20;
#10
INSTR_ADDR = 9'd24;
#10
INSTR_ADDR = 9'd28;
#10
$stop;
end
endmodule
