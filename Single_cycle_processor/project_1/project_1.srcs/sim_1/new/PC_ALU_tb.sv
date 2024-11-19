`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 12:09:18 PM
// Design Name: 
// Module Name: PC_ALU_tb
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


module PC_ALU_tb();
reg CLK;
reg [8:0] CURRENT_VALUE;
wire [8:0] NEXT_VALUE;

PC_ALU dut (.clk(CLK), .Current_value(CURRENT_VALUE), .Next_value(NEXT_VALUE));

initial begin
    CLK=0; CURRENT_VALUE=9'd0;
    #10
    CLK=1; CURRENT_VALUE=9'd0;
    #10
    CLK=0; CURRENT_VALUE=9'd4;
    #10
    CLK=1; CURRENT_VALUE=9'd4;
    #10
    CLK=0; CURRENT_VALUE=9'd12;
    #10
    $finish;
end
endmodule
