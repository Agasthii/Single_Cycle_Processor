`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 01:08:09 PM
// Design Name: 
// Module Name: Imm_Gen
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


module Imm_Gen(
    input logic [31:0] Imm_in,  
    output logic [31:0] Imm_out
    );
    
    always_comb
        case(Imm_in[6:0])
            7'b0010011:
                Imm_out = {Imm_in[31]? {20{1'b1}}:20'b0 , Imm_in[31:20]}; //20'b1:20'b0 
            7'b0000011:
                Imm_out = {Imm_in[31]? {20{1'b1}}:20'b0 , Imm_in[31:20]};
            7'b0100011:
                Imm_out = {Imm_in[31]? {20{1'b1}}:20'b0 , Imm_in[31:25], Imm_in[11:7]};
            7'b1100011: //branching
                Imm_out = {Imm_in[31]? {20{1'b1}}:20'b0 , Imm_in[31], Imm_in[7], Imm_in[30:25],Imm_in[11:8],1'b0};
            7'b1100111: //JALR
                Imm_out = {Imm_in[31]? {20{1'b1}}:20'b0 , Imm_in[31:20]};
            7'b1101111: //JAL
                Imm_out = {Imm_in[31]? {12{1'b1}}:12'b0 , Imm_in[31], Imm_in[19:12], Imm_in[20],Imm_in[30:21],1'b0};
            default: 
                Imm_out = {32'b0};
        endcase
endmodule
