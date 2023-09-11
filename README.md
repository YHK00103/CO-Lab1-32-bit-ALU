# CO-Lab1-32-bit-ALU
## Goal
The goal of this LAB is to implement a 32-bit ALU (Arithmetic Logic Unit). ALU is the basic 
computing component of a CPU. Its operations include AND, OR, addition, subtraction, etc. 

## Lab Requirement
1. instruction set: basic operation instruction
![image](https://github.com/YHK00103/CO-Lab1-32-bit-ALU/assets/117156581/a38800fb-b6fc-4874-b666-3c7f85bb87c5)
2. zcv three control signal: zero, carry out, overflow
  a. “zero”must be set when the result is 0.
  b. “cout”must be set when there is a carry out.
  c. “overflow”must be set when overflow.
  Only "add" and "sub" operations need to handle carry out and overflow flag.

## Architecture Diagrams
The following figure shows the components that make up the 32-bit ALU, including the full adder and the 1-bit ALU.There are two types of 1-bit ALUs, one is for non-MSB ALU (alu_top) and the other is for MSB ALU (alu_last).
Both ALUs contain AND gate, OR gate and full adder with operation, A_invert and B_invert to perform different operations.
The 32-bit ALU is a combination of 31 ALUs (alu_top) for non-MSBs and 1 ALU (alu_last) for MSBs.
![image](https://github.com/YHK00103/CO-Lab1-32-bit-ALU/assets/117156581/f67cd783-ee26-42a1-8bc4-a54fdae81a96)
![image](https://github.com/YHK00103/CO-Lab1-32-bit-ALU/assets/117156581/9b58972f-2447-41e1-9a92-5fa39f3fbfb2)

