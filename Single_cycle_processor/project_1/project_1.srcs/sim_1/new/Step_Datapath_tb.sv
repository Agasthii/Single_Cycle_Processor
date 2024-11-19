`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 12:51:54 PM
// Design Name: 
// Module Name: Step_Datapath_tb
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


module Datapath_tb();
reg CLK,RST;
wire [31:0] d_a;
wire [31:0] d_b;
//wire [2:0] OPCODE;
//wire ALU_SEL;
//wire WRITE_EN;
wire [31:0] INSTRUCTION;
wire [31:0] ALU_OUT;

Datapath dut (.clk(CLK), .rst(RST), .Instruction(INSTRUCTION), .alu_out(ALU_OUT), .D_A(d_a), .D_B(d_b)); //.Write_en(WRITE_EN), .alu_sel(ALU_SEL), .opcode(OPCODE));  // ;

initial begin
    CLK=0; RST=1;
    #10
    CLK=1; RST=1;
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0;
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0;
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0;
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0;
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0;
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0;
    #10
    CLK=0; RST=0;
    #10
    $finish;
end
endmodule
