# Single_Cycle_Prcessor

## R type

![image](https://github.com/user-attachments/assets/7cf1d0b9-32c5-46e8-8706-e2e42a96ef1f)

The above simulation shows the results for R type instructions. Each of the clock pulses executes
instructions sequentially for,

1. ADD
2. SUB
3. SLL
4. SLT
5. SLTU
6. XOR
7. SRL
8. SRA
9. OR
10. AND

## I type

![image](https://github.com/user-attachments/assets/2f09a86c-cd00-4cb6-b575-ccac0db2d023)

The above simulations represent the I-type instructions, and they are listed below in order;

1. ADDI
2. SLTI
3. SLTIU
4. XORI
5. ORI
6. ANDI

## L and S type

![image](https://github.com/user-attachments/assets/b28b3027-5e45-4f07-900a-cb3f293c4303)

The above simulation figure represents the Load and Store instructions. Here I have loaded the value of the 4th index of the data memory, and then stored value 40 from the registry file to the 4th index of the data memory, overwriting the previous value.

After that I have loaded the 4th index again to show the difference. Previously it was 5 and now it is 40.

Here I have implemented the following load instructions;

1. LB
2. LH
3. LW
4. LBU
5. LHU

The following store instructions are also implemented;

1. SB
2. SH
3. SW

## B type

![image](https://github.com/user-attachments/assets/b4cb631f-447c-4b01-9f75-899a25496af8)

The above simulation figure represents branching by 12 indexes if the two inputs are equal. Here I have inserted 2 for both DataA and DataB, and therefore the pc_out is incremented from 4 to 16.

I have implemented several branching instructions;

1. BEQ
2. BNE
3. BLT
4. BGE
5. BLTU
6. BGEU

## J type

![image](https://github.com/user-attachments/assets/6be3b38f-33b4-4d2a-8f55-7161ac0c23fe)

The above figure represents jumping by 12 indexes using jalr. The Instruction address is changed from 4 to 16 because the Imm_out is 14 which is the offset and the rs1 of 2.

I have implemented;

1. Jal
2. Jalr

## Unsigned multiplication

![image](https://github.com/user-attachments/assets/9a3312b4-3bef-4fe8-9b4d-0345d4871db1)

As shown in the above figure, the value of DataA and DataB is multiplied and given as the output in ALU_OUT.

## Mem copy

![image](https://github.com/user-attachments/assets/331fa4c9-725f-4a47-b24a-7fe41bcd877c)

The above simulation figure shows that the value in the 2nd index of the data memory is loaded to rd, and then it is stored in the 4th index of the data memory. Then it is loaded again to verify that the memory copying is working properly.
