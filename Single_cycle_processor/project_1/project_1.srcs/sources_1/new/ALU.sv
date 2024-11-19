`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 02:16:24 PM
// Design Name: 
// Module Name: ALU
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


module ALU#(
    parameter Data_width = 32,
    parameter Opcode_width = 3
    )(
    input logic [Data_width-1:0] DataA,
    input logic [Data_width-1:0] DataB,
    input logic [Opcode_width-1:0] Opcode,
    input logic ALUSel,
    input logic mul_sel,
    
    output logic [Data_width-1:0] ALU_out,
    output logic Zero,
    output logic BLT,
    output logic BGT
    );
    
    integer i;
    always_comb begin
        ALU_out = 0;
        Zero = 0;
        BLT = 0;
        BGT = 0;
    
        if (mul_sel)
            ALU_out = DataA * DataB;
        else begin
            case(Opcode)
                3'b000:
                    if (ALUSel) begin // ADD
                        ALU_out = DataA - DataB;
                    end else begin //SUB
                        ALU_out = DataA + DataB;
                    end
                3'b001: //SLL
                    ALU_out = DataA << DataB;
                3'b010: //SLT
                    ALU_out = $signed(DataA) < $signed(DataB);
                3'b011: //SLTU
                    ALU_out = DataA < DataB;
                3'b100: //XOR
                    ALU_out = DataA ^ DataB;
                3'b101: 
                    if (ALUSel) begin //SRL
                        ALU_out = DataA >> DataB;
                    end else begin //SRA
                        ALU_out = DataA + DataB;
                    ALU_out = $signed(DataA) >> $signed(DataB);
                    end
                3'b110: //OR
                    ALU_out = DataA | DataB;
                3'b111: //AND
                    ALU_out = DataA & DataB;
                
                default: 
                    ALU_out = 'b0;
            endcase
        end
    end   
    
    assign Zero = 1'b0; //Temporary
    assign BGT = 1'b0;
    assign BLT = 1'b0;
endmodule
