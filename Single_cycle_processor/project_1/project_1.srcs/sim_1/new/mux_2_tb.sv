`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 03:34:19 PM
// Design Name: 
// Module Name: mux_2_tb
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


module Mux_2_tb();
reg [31:0] DATA1;
reg [31:0] DATA2;
reg SEL;
wire [31:0] DATAOUT;

Mux_2 dut (.Data1(DATA1), .Data2(DATA2), .sel(SEL), .Data_out(DATAOUT));

initial begin
    DATA1=32'd40;DATA2=32'd2;SEL=0;
    #10
    DATA1=32'd40;DATA2=32'd2;SEL=1;
    #10
    $finish;
end
endmodule
