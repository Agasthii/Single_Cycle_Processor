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


module Registry_file#(
    parameter Data_width = 32,
    parameter Address_width = 5,
    parameter reg_count = 32
    )(
    input logic clk,
    input logic rst,
//    input logic [31:0] Instruction,
    input logic [Address_width-1:0] DataA_addr,
    input logic [Address_width-1:0] DataB_addr,
    input logic [Address_width-1:0] DataWrite_addr,
    input logic [Data_width-1:0] Write_data,
    input logic write_en,
    
    output logic [Data_width-1:0] DataA,
    output logic [Data_width-1:0] DataB
    );
    
    logic [Data_width-1:0] Register [reg_count-1:0];
    
    assign Register[0] = 32'd0;
    assign Register[1] = 32'd40;
    assign Register[2] = 32'd2;
    
    assign Register[4] = 32'd40;
    assign Register[5] = 32'd2;
    
    assign Register[7] = 32'd40;
    assign Register[8] = 32'd2;
    
    assign Register[10] = 32'd40;
    assign Register[11] = 32'd2;
    
    assign Register[13] = 32'd40;
    assign Register[14] = 32'd2;
    
    assign Register[16] = 32'd40;
    assign Register[17] = 32'd2;
    
    assign Register[19] = 32'd40;
    assign Register[20] = 32'd2;
    
    assign Register[22] = 32'd40;
    assign Register[23] = 32'd2;
    
    assign Register[25] = 32'd40;
    assign Register[26] = 32'd2;
    
    assign Register[28] = 32'd40;
    assign Register[29] = 32'd2;
    
    always @ (negedge clk) begin
    
        Register[DataWrite_addr] <= Write_data;
//        if (rst == 1'b1) begin
//            for (i=0;i<reg_count;i=i+1)
//                Register[i] <= 0;
//        end
//        else if (rst == 1'b0 && write_en) begin
//            Register[DataWrite_addr] <= Write_data;
//        end
    end

//if (((Instruction[6:0] == 7'b0100011) || (Instruction[6:0] == 7'b0000011)) && (Instruction[14] == 1'b1))
assign DataA = Register[DataA_addr];
assign DataB = Register[DataB_addr];
   
endmodule
