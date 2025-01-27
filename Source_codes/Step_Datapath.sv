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


module Step_Datapath(
    input logic clk,
    input logic rst,

    output logic [31:0] alu_out,
    output logic [31:0] MUXB_OUT
    );
    
    logic [8:0] pc_out, pc_in;
    logic [31:0] Instruction;
    logic [2:0] opcode;
    logic [31:0] D_A,D_B;
    logic [31:0] IMM_OUT;
    logic [31:0] MUXC_OUT;
    logic [8:0] MUXD_OUT;
    logic Write_en;
    logic MEMRW, MEM_WR;
    logic [31:0] RD;
    logic [1:0] WBSEL;
    logic [2:0] LOAD_TYPE;
    logic [2:0] STORE_TYPE;
    logic MUX_SEL,sel_C,sel_D,alu_sel,mul_sel;
    logic [31:0] MUX_OUT;
    logic BRUN,BREQ,BRLT;
    logic mem_copy;
    logic [31:0] mem_copy_in;
    //    logic zero,blt,bgt;
    
    PC PC_d (.clk(clk), .rst(rst), .next_value(MUXD_OUT), .output_value(pc_out));
    PC_ALU PC_ALU_d (.Current_value(pc_out), .Next_value(pc_in), .mem_copy(mem_copy));  //.clk(clk), 
    Instruction_mem Instruction_mem_d (.Instruct_addr(pc_out), .Instruct(mem_copy_in));
    Control_logic Control_logic_d(.Instruct(Instruction), .BrEq(BREQ), .BrLT(BRLT), .mul_sel(mul_sel), .ALU_sel(alu_sel), .Opcode(opcode), .Mux_sel(MUX_SEL), .MemRW(MEMRW), .WBsel(WBSEL), .load_type(LOAD_TYPE), .store_type(STORE_TYPE), .mem_wr(MEM_WR), .BrUN(BRUN), .MuxC_sel(sel_C), .MuxD_sel(sel_D)); //, .write_en(Write_en)
    Registry_file Registry_file_d  (.clk(clk), .rst(rst), .DataA_addr(Instruction[19:15]), .DataB_addr(Instruction[24:20]), .DataWrite_addr(Instruction[11:7]), .write_en(MEM_WR), .Write_data(MUXB_OUT), .DataA(D_A), .DataB(D_B)); //, .write_en(Write_en)
    ALU ALU_d (.DataA(MUXC_OUT), .DataB(MUX_OUT), .Opcode(opcode), .mul_sel(mul_sel), .ALUSel(alu_sel), .ALU_out(alu_out), .Zero(zero), .BLT(blt), .BGT(bgt));
    Imm_Gen Imm_Gen_d (.Imm_in(Instruction), .Imm_out(IMM_OUT));
    Mux_2 Mux_2_d (.Data1(D_B), .Data2(IMM_OUT), .sel(MUX_SEL), .Data_out(MUX_OUT));
    Data_Memory Data_Memory_d (.clk(clk), .mem_rd(MEMRW), .load_type(LOAD_TYPE), .store_type(STORE_TYPE), .addr(alu_out[8:0]), .rd(RD), .mem_wr(MEM_WR), .wd(D_B));
    Mux_2_B Mux_2_B_d (.Data1(alu_out), .Data2(RD), .Data3(pc_in), .sel(WBSEL), .Data_out(MUXB_OUT));
    Mux_2_C Mux_2_C_d (.Data1(D_A), .Data2(pc_out), .sel(sel_C), .Data_out(MUXC_OUT));
    Branch_comp Branch_comp_d (.DataA(D_A), .DataB(D_B), .BrUn(BRUN), .BrLT(BRLT), .BrEq(BREQ));
    Mux_2_D Mux_2_D_d (.Data1(pc_in), .Data2(alu_out), .sel(sel_D), .Data_out(MUXD_OUT));
    Mem_copy Mem_copy_d (.clk(clk), .mem_copy_in(mem_copy_in), .Instruction(Instruction), .mem_copy(mem_copy));
    
endmodule
