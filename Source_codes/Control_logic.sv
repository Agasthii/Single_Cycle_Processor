`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 07:53:21 PM
// Design Name: 
// Module Name: Control_logic
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


module Control_logic(
    input logic [31:0] Instruct,
    input logic BrEq,
    input logic BrLT,
    
    output logic [2:0] Opcode,
    output logic ALU_sel,
//    output logic write_en,
    output logic Mux_sel,
    output logic MemRW,mem_wr,
    output logic [1:0] WBsel,
    output logic [2:0] load_type,
    output logic [2:0] store_type,
    output logic BrUN,
    output logic MuxC_sel,MuxD_sel,mul_sel
    );
    
//    assign write_en = 1; //Temporary
    assign Opcode = ((Instruct[6:0] == 7'b0000011) || (Instruct[6:0] == 7'b0100011) || (Instruct[6:0] == 7'b1100011) || (Instruct[6:0] == 7'b1100111))? 3'b000:Instruct[14:12];
    assign ALU_sel = (Instruct[6:0] == 7'b0110011)? Instruct[30]:0;
    assign Mux_sel = ((Instruct[6:0] == 7'b0110011) || (Instruct[6:0] == 7'b1111111))? 0:1;
    assign MemRW = (Instruct[6:0] == 7'b0000011)? 1:0;
//    assign WBsel = (Instruct[6:0] == 7'b0000011)? 1:0;
    assign load_type = (Instruct[6:0] == 7'b0000011)? Instruct[14:12]: 3'b0;
    assign store_type = (Instruct[6:0] == 7'b0100011)? Instruct[14:12]: 3'b0;
    assign mem_wr = (Instruct[6:0] == 7'b0100011)? 1:0;
    assign BrUN = ((Instruct[6:0] == 7'b1100011) && ((Instruct[14:12] == 3'b110) || (Instruct[14:12] == 3'b110)))? 1:0;
    assign MuxC_sel = ((Instruct[6:0] == 7'b1100011) || (Instruct[6:0] == 7'b1101111))? 1:0;
    assign mul_sel = (Instruct[6:0] == 7'b1111111)?1:0; //Unsigned multiplication
    
    always_comb
        case(Instruct[6:0])
            7'b0110011: //add
                WBsel = 2'b00;
            7'b0010011: //addi
                WBsel = 2'b00;
            7'b0000011: //load
                WBsel = 2'b01;
            7'b1100111: //JALR
                WBsel = 2'b10;
            7'b1101111: //JAL
                WBsel = 2'b10;
            7'b1111111: //unsigned mul
                WBsel = 2'b00;
            default :
                WBsel = 2'b00;
        endcase
        
    always_comb begin//Branching
        if (Instruct[6:0] == 7'b1100011) //branching
            case(Instruct[14:12])
                3'b000:
                    MuxD_sel = BrEq? 1:0;
                3'b001:
                    MuxD_sel = BrEq? 0:1;
                3'b100:
                    MuxD_sel = BrLT? 1:0;
                3'b101:
                    MuxD_sel = BrLT? 0:1;
                3'b110:
                    MuxD_sel = BrLT? 1:0;
                3'b111:
                    MuxD_sel = BrLT? 0:1;
                default:
                    MuxD_sel = 0;
            endcase
        else if ((Instruct[6:0] == 7'b1100111)|| (Instruct[6:0] == 7'b1101111)) //jalr and jal
            MuxD_sel = 1;
        else
            MuxD_sel = 0;
    end
endmodule
