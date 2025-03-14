# 8-Bit Arithmetic Logic Unit (ALU)

## Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) in Verilog. The ALU supports various arithmetic and logical operations based on a 4-bit selection signal.

## Features
- 8-bit inputs (`a` and `b`)
- 16-bit output (`y`)
- 16 operations supported:
  1. Addition (`ADD`)
  2. Subtraction (`SUB`)
  3. Multiplication (`MUL`)
  4. Bitwise AND (`B_AND`)
  5. Bitwise OR (`B_OR`)
  6. Bitwise NOT (`B_NOT`)
  7. Bitwise XOR (`B_XOR`)
  8. Bitwise XNOR (`B_XNOR`)
  9. Left Shift (`LSHIFT`)
  10. Right Shift (`RSHIFT`)
  11. Logical AND (`L_AND`)
  12. Logical OR (`L_OR`)
  13. Logical NOT (`L_NOT`)
  14. Logical Equal (`L_EQUAL`)
  15. Greater Than (`GREATER_THAN`)
  16. Lesser Than (`LESSER_THAN`)

## Files
- `alu.v` - ALU module implementation
- `alu_tb.v` - Testbench for verifying ALU functionality
- `alu_waveform.vcd` - Generated waveform output

## How to Run
1. Clone the repository:
   ```sh
   git clone https://github.com/kasturiSuhash/8-bit-alu.git
   cd 8-bit-alu
   ```
   


