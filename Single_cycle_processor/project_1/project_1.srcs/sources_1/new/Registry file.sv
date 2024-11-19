`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 06:30:58 PM
// Design Name: 
// Module Name: Registry file
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


module Registry file#(
    parameter Data_width = 32,
    parameter Address_width = 5,
    parameter reg_count = 32
    )(
    input logic clk,
    input logic rst,
    input logic [Address_width-1:0] DataA_addr,
    input logic [Address_width-1:0] DataB_addr,
    input logic [Address_width-1:0] DataWrite_addr,
    input logic [Data_width-1:0] Write_data,
    input logic write_en,
    
    output logic [Data_width-1:0] DataA,
    output logic [Data_width-1:0] DataB
    );
    
    integer i;
    logic [Data_width-1:0] Registry_file [reg_count-1:0];
    
    always @ (negedge clk) begin
        if (rst == 1'b1) begin
            for (i=0;i<reg_count;i=i+1)
                Registry_file[i] <= 0;
        else if (rst == 1'b0 && write_en) begin
            Registr_file[DataWrite_addr] <= Write_data;
    end

assign DataA = Registry_file[DataA_addr];
assign DataB = Registry_file[DataB_addr];
   
endmodule
