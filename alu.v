`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SUHASH KASTURI
// 
// Create Date: 30.10.2024 10:45:06
// Design Name: Arithmetic Logic Unit
// Module Name: alu
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


module alu (
    input [7:0] a, b,
    input [3:0] sel,
    output reg [15:0] y
);

    // Define operation codes for readability
    parameter ADD = 4'd0;
    parameter SUB = 4'd1;
    parameter MUL = 4'd2;
    parameter B_AND = 4'd3;
    parameter B_OR = 4'd4;
    parameter B_NOT = 4'd5;
    parameter B_XOR = 4'd6;
    parameter B_XNOR = 4'd7;
    parameter LSHIFT = 4'd8;
    parameter RSHIFT = 4'd9;
    parameter L_AND = 4'd10;
    parameter L_OR = 4'd11;
    parameter L_NOT = 4'd12;
    parameter L_EQUAL = 4'd13;
    parameter GREATER_THAN = 4'd14;
    parameter LESSER_THAN = 4'd15;

    // Always block to evaluate `y` based on `sel`
    always @(*) begin
        case (sel)
            ADD: y = a + b;
            SUB: y = a - b;
            MUL: y = a * b;
            B_AND: y = a & b;
            B_OR: y = a | b;
            B_NOT: y = ~a;
            B_XOR: y = a ^ b;
            B_XNOR: y = ~(a ^ b);
            LSHIFT: y = a << b;
            RSHIFT: y = a >> b;
            L_AND: y = a && b;
            L_OR: y = a || b;
            L_NOT: y = !a;
            L_EQUAL: y = (a == b) ? 16'd1 : 16'd0;
            GREATER_THAN: y = (a > b) ? 16'd1 : 16'd0;
            LESSER_THAN: y = (a < b) ? 16'd1 : 16'd0;
            default: y = 16'd0;  // Default case
        endcase
    end

endmodule

