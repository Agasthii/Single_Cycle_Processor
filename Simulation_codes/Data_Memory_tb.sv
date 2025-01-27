`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 12:20:47 PM
// Design Name: 
// Module Name: Data_Memory_tb
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


module Data_Memory_tb();
reg clk;
reg mem_rd;
reg mem_wr;
reg [8:0] addr;
reg [2:0] load_type;
reg [2:0] store_type;
reg [31:0] wd;
wire [31:0] rd;

Data_Memory dut (.clk(clk), .mem_rd(mem_rd), .mem_wr(mem_wr), .addr(addr), .load_type(load_type), .store_type(store_type), .wd(wd), .rd(rd));

initial begin
    clk=0; mem_rd=0; mem_wr=0; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd7;
    #10
    
    clk=1; mem_rd=1; mem_wr=0; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd7;
    #10
    clk=0; mem_rd=1; mem_wr=0; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd7;
    #10
    
    clk=1; mem_rd=0; mem_wr=1; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd7;
    #10
    clk=0; mem_rd=0; mem_wr=1; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd7;
    #10
    
    clk=1; mem_rd=1; mem_wr=0; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd10;
    #10
    clk=0; mem_rd=1; mem_wr=0; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd10;
    #10
    
    clk=1; mem_rd=0; mem_wr=0; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd7;
    #10
    clk=0; mem_rd=0; mem_wr=0; addr=9'd4; load_type=3'b010; store_type=3'b010; wd=32'd7;
    #10
    
    $finish;
end
endmodule
