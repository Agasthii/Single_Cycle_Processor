`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 03:46:44 PM
// Design Name: 
// Module Name: Instruction_mem
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


module Instruction_mem#(
    parameter Instruct_addr_width = 9,
    parameter Instruct_width = 32
     )(
    input logic [ Instruct_addr_width -1:0] Instruct_addr , 
    output logic [ Instruct_width -1:0] Instruct // Read Data
    );
    

logic [7 :0] Instruct_mem [(2**Instruct_addr_width)-1:0];
    
//assign Instruct_mem[0]   = 8'b00000000;//  ADD        
//assign Instruct_mem[1]   = 8'b00100000;//     
//assign Instruct_mem[2]   = 8'b10000000;//     
//assign Instruct_mem[3]   = 8'b00110011;//     
 
//assign Instruct_mem[4]   = 8'b01000000;//    SUB      
//assign Instruct_mem[5]   = 8'b01010010;//     
//assign Instruct_mem[6]   = 8'b00000001;//     
//assign Instruct_mem[7]   = 8'b10110011;//  

//assign Instruct_mem[8]   = 8'b00000000;//   SLL       
//assign Instruct_mem[9]   = 8'b10000011;//     
//assign Instruct_mem[10]   = 8'b10010011;//     
//assign Instruct_mem[11]   = 8'b00110011;//  

//assign Instruct_mem[12]   = 8'b00000000;//   SLT       
//assign Instruct_mem[13]   = 8'b10110101;//     
//assign Instruct_mem[14]   = 8'b00100100;//     
//assign Instruct_mem[15]   = 8'b10110011;//  

//assign Instruct_mem[16]   = 8'b00000000;//   SLTU       
//assign Instruct_mem[17]   = 8'b11100110;//     
//assign Instruct_mem[18]   = 8'b10110110;//     
//assign Instruct_mem[19]   = 8'b00110011;//  

//assign Instruct_mem[20]   = 8'b00000001;//   XOR       
//assign Instruct_mem[21]   = 8'b00011000;//     
//assign Instruct_mem[22]   = 8'b01000111;//     
//assign Instruct_mem[23]   = 8'b10110011;//  

//assign Instruct_mem[24]   = 8'b00000001;//   SRL       
//assign Instruct_mem[25]   = 8'b01001001;//     
//assign Instruct_mem[26]   = 8'b11011001;//     
//assign Instruct_mem[27]   = 8'b00110011;//  

//assign Instruct_mem[28]   = 8'b01000001;//   SRA       
//assign Instruct_mem[29]   = 8'b01111011;//     
//assign Instruct_mem[30]   = 8'b01011010;//     
//assign Instruct_mem[31]   = 8'b10110011;// 

//assign Instruct_mem[32]   = 8'b00000001;//    OR      
//assign Instruct_mem[33]   = 8'b01111011;//     
//assign Instruct_mem[34]   = 8'b01101010;//     
//assign Instruct_mem[35]   = 8'b10110011;//  

//assign Instruct_mem[36]   = 8'b00000001;//   AND       
//assign Instruct_mem[37]   = 8'b01111011;//     
//assign Instruct_mem[38]   = 8'b01111010;//     
//assign Instruct_mem[39]   = 8'b10110011;// 

//assign Instruct_mem[40]   = 8'b11111100;//   ADDi with -      
//assign Instruct_mem[41]   = 8'b11100000;//     
//assign Instruct_mem[42]   = 8'b10000001;//     
//assign Instruct_mem[43]   = 8'b00010011;//   

//assign Instruct_mem[44]   = 8'b00000000;//   ADDi with +      
//assign Instruct_mem[45]   = 8'b00100000;//     
//assign Instruct_mem[46]   = 8'b10000001;//     
//assign Instruct_mem[47]   = 8'b00010011;//

//assign Instruct_mem[48]   = 8'b00000000;//   SLTI      
//assign Instruct_mem[49]   = 8'b00100000;//     
//assign Instruct_mem[50]   = 8'b10100001;//     
//assign Instruct_mem[51]   = 8'b00010011;//

//assign Instruct_mem[52]   = 8'b00000000;//   SLTIU      
//assign Instruct_mem[53]   = 8'b00100000;//     
//assign Instruct_mem[54]   = 8'b10110001;//     
//assign Instruct_mem[55]   = 8'b00010011;//

//assign Instruct_mem[56]   = 8'b00000000;//   XORI   
//assign Instruct_mem[57]   = 8'b00100000;//     
//assign Instruct_mem[58]   = 8'b11000001;//     
//assign Instruct_mem[59]   = 8'b00010011;//

//assign Instruct_mem[60]   = 8'b00000000;//   ORI    
//assign Instruct_mem[61]   = 8'b00100000;//     
//assign Instruct_mem[62]   = 8'b11100001;//     
//assign Instruct_mem[63]   = 8'b00010011;//

//assign Instruct_mem[64]   = 8'b00000000;//   ANDI    
//assign Instruct_mem[65]   = 8'b00100000;//     
//assign Instruct_mem[66]   = 8'b11110001;//     
//assign Instruct_mem[67]   = 8'b00010011;//

assign Instruct_mem[0]   = 8'b00000000;//   LW  
assign Instruct_mem[1]   = 8'b00100010;//     
assign Instruct_mem[2]   = 8'b10000100;//     
assign Instruct_mem[3]   = 8'b10000011;//

//assign Instruct_mem[4]   = 8'b00000001;//   Branch 16 eq   
//assign Instruct_mem[5]   = 8'b01001000;//     
//assign Instruct_mem[6]   = 8'b10000110;//     
//assign Instruct_mem[7]   = 8'b01100011;//

assign Instruct_mem[4]   = 8'b00000000;//   jalr 14   
assign Instruct_mem[5]   = 8'b11100100;//     
assign Instruct_mem[6]   = 8'b00000000;//     
assign Instruct_mem[7]   = 8'b01100111;//

//assign Instruct_mem[4]   = 8'b00000000;//   jal 14
//assign Instruct_mem[5]   = 8'b11000000;//     
//assign Instruct_mem[6]   = 8'b00000010;//     
//assign Instruct_mem[7]   = 8'b01101111;//

//assign Instruct_mem[4]   = 8'b00000000;//   unsigned mult
//assign Instruct_mem[5]   = 8'b01010010;//     
//assign Instruct_mem[6]   = 8'b00000000;//     
//assign Instruct_mem[7]   = 8'b01111111;//

//assign Instruct_mem[4]   = 8'b00000010;//   mem_copy
//assign Instruct_mem[5]   = 8'b00000000;//     
//assign Instruct_mem[6]   = 8'b10000110;//     
//assign Instruct_mem[7]   = 8'b01000000;//

assign Instruct_mem[8]   = 8'b00000000;//   LW 4    
assign Instruct_mem[9]   = 8'b00100010;//     
assign Instruct_mem[10]   = 8'b10000000;//     
assign Instruct_mem[11]   = 8'b00000011;//

assign Instruct_mem[12]   = 8'b00000000;//   LW 4    
assign Instruct_mem[13]   = 8'b00100010;//     
assign Instruct_mem[14]   = 8'b10000000;//     
assign Instruct_mem[15]   = 8'b00000011;//

//assign Instruct_mem[4]   = 8'b00000000;//   SW  rs2(13)=40 rs1(11)=2 offset=2  
//assign Instruct_mem[5]   = 8'b11010101;//     
//assign Instruct_mem[6]   = 8'b10100001;//     
//assign Instruct_mem[7]   = 8'b00100011;//

assign Instruct_mem[16]   = 8'b00000000;//   LW    
assign Instruct_mem[17]   = 8'b00100010;//     
assign Instruct_mem[18]   = 8'b10000000;//     
assign Instruct_mem[19]   = 8'b00000011;//

//assign Instruct_mem[4]   = 8'b00000000;//   SW    
//assign Instruct_mem[5]   = 8'b00000101;//     
//assign Instruct_mem[6]   = 8'b10100001;//     
//assign Instruct_mem[7]   = 8'b00100011;//

//assign Instruct_mem[8]   = 8'b00000000;//   LW    
//assign Instruct_mem[9]   = 8'b00100010;//     
//assign Instruct_mem[10]   = 8'b10000000;//     
//assign Instruct_mem[11]   = 8'b00000011;//

//    
assign Instruct = {Instruct_mem[Instruct_addr],Instruct_mem[Instruct_addr+1],
                    Instruct_mem[Instruct_addr+2],Instruct_mem[Instruct_addr+3]};
//assign Instruct = Instruct_mem[Instruct_addr];

endmodule
