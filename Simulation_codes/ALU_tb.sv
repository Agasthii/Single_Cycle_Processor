`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 08:49:09 AM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
reg [31:0] Data_A;
reg [31:0] Data_B;
reg [2:0] Op_code;
reg ALU_Sel;
wire [31:0] alu_out;
wire zero,bgt,blt;

ALU dut(.DataA(Data_A), .DataB(Data_B), .Opcode(Op_code), .ALUSel(ALU_Sel), .ALU_out(alu_out), .Zero(zero), .BGT(bgt), .BLT(blt));

initial begin
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b000; ALU_Sel = 0;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b000; ALU_Sel = 1;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b001; ALU_Sel = 0;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b010; ALU_Sel = 0;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b011; ALU_Sel = 0;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b100; ALU_Sel = 0;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b101; ALU_Sel = 0;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b101; ALU_Sel = 1;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b110; ALU_Sel = 0;
    #10
    Data_A = 32'd40; Data_B = 32'd2; Op_code = 3'b111; ALU_Sel = 0;
    #10
    $finish;
end
endmodule
