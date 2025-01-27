`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 05:17:52 PM
// Design Name: 
// Module Name: Mem_copy
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

//rd 5
//offset 9
//offset 9
//id 7 = 1000000
//operation 2


module Mem_copy(
    input clk,
    input logic [31:0] mem_copy_in,
    output logic [31:0] Instruction,
    output logic mem_copy
    );
    
    logic [31:0] prev_instr;
    
    always_comb begin
        mem_copy = 0;
        if (mem_copy_in[6:0] == 7'b1000000) begin
            if (mem_copy_in == prev_instr) begin //store
                mem_copy = 0;
                Instruction = {3'b0,mem_copy_in[31:28],mem_copy_in[13:9],5'b0,1'b0,mem_copy_in[8:7],mem_copy_in[27:23],7'b0100011};
            end
            else begin
                mem_copy = 1;                                //load
                Instruction = {3'b0,mem_copy_in[22:14],5'b0,1'b0,mem_copy_in[8:7],mem_copy_in[13:9],7'b0000011};       
            end
        end
        else begin
            mem_copy = 0;
            Instruction = mem_copy_in; 
        end
    end
    
    always @(posedge clk) begin
        prev_instr <= mem_copy_in;
    end   
    
endmodule
