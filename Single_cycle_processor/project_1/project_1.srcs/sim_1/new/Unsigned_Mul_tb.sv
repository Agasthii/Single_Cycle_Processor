`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 12:16:49 PM
// Design Name: 
// Module Name: Unsigned_Mul_tb
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


module Unsigned_Mul_tb();
reg [15:0] Data1,Data2;
wire [31:0] Data_out;

Unsigned_Mul dut (.Data1(Data1), .Data2(Data2), .Data_out(Data_out));

initial begin
    Data1=16'b1111111111111111;Data2=16'b1111111111111111;
    #10
    Data1=16'd10;Data2=16'd2;
    #10
    Data1=16'd5;Data2=16'd2;
    #10
    $finish;
end
endmodule
