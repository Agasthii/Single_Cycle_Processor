`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 12:48:02 PM
// Design Name: 
// Module Name: Step_Datapath
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


module Datapath(
    input logic clk,
    input logic rst,
    
    output logic [31:0] D_A,
    output logic [31:0] D_B,
//    output logic alu_sel,
//    output logic Write_en,
//    output logic [2:0] opcode
    output logic [31:0] Instruction,
    output logic [31:0] alu_out
    );
    
    logic [8:0] pc_out, pc_in;
//    logic [31:0] Instruction; //, D_A, D_B;
    logic [2:0] opcode;
    logic Write_en, alu_sel;
//    logic zero,blt,bgt;
    
    PC PC_d (.clk(clk), .rst(rst), .next_value(pc_in), .output_value(pc_out));
    PC_ALU PC_ALU_d (.clk(clk), .Current_value(pc_out), .Next_value(pc_in));
    Instruction_mem Instruction_mem_d (.Instruct_addr(pc_out), .Instruct(Instruction));
    Control_logic Control_logic_d(.Instruct(Instruction), .write_en(Write_en), .ALU_sel(alu_sel), .Opcode(opcode));
    Registry_file Registry_file_d  (.clk(clk), .rst(rst), .DataA_addr(Instruction[19:15]), .DataB_addr(Instruction[24:20]), .DataWrite_addr(Instruction[11:7]), .Write_data(Instruction), .write_en(Write_en), .DataA(D_A), .DataB(D_B));
    ALU ALU_d (.DataA(D_A), .DataB(D_B), .Opcode(opcode), .ALUSel(alu_sel), .ALU_out(alu_out), .Zero(zero), .BLT(blt), .BGT(bgt));
    
endmodule
