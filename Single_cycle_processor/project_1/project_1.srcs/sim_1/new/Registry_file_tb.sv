`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 11:26:21 AM
// Design Name: 
// Module Name: Registry_file_tb
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


module Registry_file_tb();
reg CLK,RST;
reg [4:0] DATAA_ADDR;
reg [4:0] DATAB_ADDR;
reg [4:0] DATAWRITE_ADDR;
reg [31:0] WRITE_DATA;
reg WRITE_EN;

wire [31:0] DATAA;
wire [31:0] DATAB;

Registry_file dut(.clk(CLK), .rst(RST), .DataA_addr(DATAA_ADDR), .DataB_addr(DATAB_ADDR), .DataWrite_addr(DATAWRITE_ADDR), .Write_data(WRITE_DATA), .write_en(WRITE_EN), .DataA(DATAA), .DataB(DATAB));

initial begin
    CLK=0; RST=0; DATAA_ADDR=5'd0; DATAB_ADDR=5'd1; DATAWRITE_ADDR=5'd2; WRITE_DATA=32'd10;WRITE_EN=1;
    #10
    CLK=1; RST=0; DATAA_ADDR=5'd0; DATAB_ADDR=5'd1; DATAWRITE_ADDR=5'd2; WRITE_DATA=32'd10;WRITE_EN=1;
    #10
    CLK=0; RST=0; DATAA_ADDR=5'd2; DATAB_ADDR=5'd3; DATAWRITE_ADDR=5'd4; WRITE_DATA=32'd15;WRITE_EN=1;
    #10
    CLK=1; RST=0; DATAA_ADDR=5'd2; DATAB_ADDR=5'd3; DATAWRITE_ADDR=5'd4; WRITE_DATA=32'd15;WRITE_EN=1;
    #10
    CLK=0; RST=0; DATAA_ADDR=5'd2; DATAB_ADDR=5'd3; DATAWRITE_ADDR=5'd4; WRITE_DATA=32'd15;WRITE_EN=1;
    $finish;
end
endmodule

