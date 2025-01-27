`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 12:51:54 PM
// Design Name: 
// Module Name: Step_Datapath_tb
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

module Step_Datapath_tb();
reg CLK,RST;

wire [31:0] ALU_OUT;
wire [31:0] muxb_out;


Step_Datapath dut (.clk(CLK), .rst(RST), .alu_out(ALU_OUT), .MUXB_OUT(muxb_out));

initial begin
    CLK=0; RST=1;
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0; //2
    #10
    CLK=0; RST=0;
    #10
    CLK=1; RST=0; //3
    #10
    CLK=0; RST=0;
    #10
//    CLK=1; RST=0; //4
//    #10
//    CLK=0; RST=0;
//    #10
//    CLK=1; RST=0; //5
//    #10
//    CLK=0; RST=0;
//    #10
//    CLK=1; RST=0; //6
//    #10
//    CLK=0; RST=0;
//    #10
//    CLK=1; RST=0; //7
//    #10
//    CLK=0; RST=0;
//    #10
//    CLK=1; RST=0; //8
//    #10
//    CLK=0; RST=0;
//    #10
//    CLK=1; RST=0; //9
//    #10
//    CLK=0; RST=0;
//    #10
//    CLK=1; RST=0; //10
//    #10
//    CLK=0; RST=0;
//    #10  
//    CLK=1; RST=0; //11
//    #10
//    CLK=0; RST=0;
//    #10 
//    CLK=1; RST=0; //12
//    #10
//    CLK=0; RST=0;
//    #10
//    CLK=1; RST=0; //13
//    #10
//    CLK=0; RST=0;
//    #10 
//    CLK=1; RST=0; //14
//    #10
//    CLK=0; RST=0;
//    #10 
//    CLK=1; RST=0; //15
//    #10
//    CLK=0; RST=0;
//    #10 
//    CLK=1; RST=0; //16
//    #10
//    CLK=0; RST=0;
//    #10 
//    CLK=1; RST=0; //17
//    #10
//    CLK=0; RST=0;
//    #10   
//    CLK=1; RST=0; //18
//    #10
//    CLK=0; RST=0;
//    #10 
//    CLK=1; RST=0; //19
//    #10
//    CLK=0; RST=0;
//    #10 
//    CLK=1; RST=0; //20
//    #10
//    CLK=0; RST=0;
//    #10
    $finish;
end
endmodule
