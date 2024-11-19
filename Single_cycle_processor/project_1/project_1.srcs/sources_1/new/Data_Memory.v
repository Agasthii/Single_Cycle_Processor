`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 11:46:34 AM
// Design Name: 
// Module Name: Data_Memory
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


module Data_Memory #(
    parameter Data_addr = 9,
    parameter Data_W = 32
    )(
    input logic clk,
    input logic mem_rd,
    input logic mem_wr,
    input logic [Data_addr-1:0] addr,
    input logic [2:0] load_type,
    input logic [2:0] store_type,
    input logic [Data_W-1:0] wd,
    output logic [Data_W-1:0] rd  
    );
    
    logic [Data_W-1:0] memory [(2**Data_addr) - 1:0];
    logic [31:0] rmem;
    
    initial begin 
        memory[0] = 32'd1;
        memory[1] = 32'd2;
        memory[2] = 32'd3;
        memory[3] = 32'd4;
        memory[4] = 32'd5;
    //  memory[4] = 32'b00000000000000000000000011110000;
        memory[5] = 32'd6;
        memory[6] = 32'd7;
        memory[7] = 32'd8;
    end
    
    always_comb begin
        if (mem_rd) begin
            rmem = memory[addr];
                   
            case(load_type)
                3'b000:
                    rd = {rmem[7]? {24{1'b1}}:24'b0 , rmem[7:0]};
                3'b001:
                    rd = {rmem[15]? {16{1'b1}}:16'b0 , rmem[15:0]};
                3'b010:
                    rd = rmem;
                3'b011:
                    rd = {24'b0 , rmem[7:0]};
                3'b100:
                    rd = {16'b0 , rmem[15:0]};
                default:
                    rd = 32'b0;
            endcase
        end
    end     
    
    always @(posedge clk) begin  
        if (mem_wr) begin 

            case(store_type)
                3'b000:
                    memory[addr] = wd[7:0];
                3'b001:
                    memory[addr] = wd[15:0];
                3'b010:
                    memory[addr] = wd;
                default:
                    memory[addr] = 32'd15;
            endcase 
        end   
    end  
    
    
//    always@(posedge clk) begin
//        if (mem_wr)
//            memory[addr] = wd;
//    end
    
endmodule