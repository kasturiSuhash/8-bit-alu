`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SUHASH KASTURI
// 
// Create Date: 30.10.2024 11:33:45
// Design Name: Arithmetic Logic Unit testbench
// Module Name: alu_tb
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

`timescale 1ns/1ps
module alu_tb;

    reg [7:0] a, b;
    reg [3:0] sel;
    wire [15:0] y;

    // Instantiate the ALU module
    alu uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Initialize the dumpfile and dumpvars for waveform generation
        $dumpfile("alu_waveform.vcd");
        $dumpvars(0, alu_tb);

        // Test cases
        a = 8'd15; b = 8'd3;

        // ADD Operation
        sel = 4'd0;
        #10;
        $display("ADD: a = %d, b = %d, y = %d", a, b, y);

        // SUB Operation
        sel = 4'd1;
        #10;
        $display("SUB: a = %d, b = %d, y = %d", a, b, y);

        // MUL Operation
        sel = 4'd2;
        #10;
        $display("MUL: a = %d, b = %d, y = %d", a, b, y);

        // B_AND Operation
        sel = 4'd3;
        #10;
        $display("B_AND: a = %b, b = %b, y = %b", a, b, y);

        // B_OR Operation
        sel = 4'd4;
        #10;
        $display("B_OR: a = %b, b = %b, y = %b", a, b, y);

        // B_NOT Operation
        sel = 4'd5;
        #10;
        $display("B_NOT: a = %b, y = %b", a, y);

        // B_XOR Operation
        sel = 4'd6;
        #10;
        $display("B_XOR: a = %b, b = %b, y = %b", a, b, y);

        // B_XNOR Operation
        sel = 4'd7;
        #10;
        $display("B_XNOR: a = %b, b = %b, y = %b", a, b, y);

        // LSHIFT Operation
        sel = 4'd8;
        #10;
        $display("LSHIFT: a = %b, b = %d, y = %b", a, b, y);

        // RSHIFT Operation
        sel = 4'd9;
        #10;
        $display("RSHIFT: a = %b, b = %d, y = %b", a, b, y);

        // L_AND Operation
        sel = 4'd10;
        #10;
        $display("L_AND: a = %d, b = %d, y = %d", a, b, y);

        // L_OR Operation
        sel = 4'd11;
        #10;
        $display("L_OR: a = %d, b = %d, y = %d", a, b, y);

        // L_NOT Operation
        sel = 4'd12;
        #10;
        $display("L_NOT: a = %d, y = %d", a, y);

        // L_EQUAL Operation
        sel = 4'd13;
        #10;
        $display("L_EQUAL: a = %d, b = %d, y = %d", a, b, y);

        // GREATER_THAN Operation
        sel = 4'd14;
        #10;
        $display("GREATER_THAN: a = %d, b = %d, y = %d", a, b, y);

        // LESSER_THAN Operation
        sel = 4'd15;
        #10;
        $display("LESSER_THAN: a = %d, b = %d, y = %d", a, b, y);

        // End the test
        $display("ALU Testbench Completed");
        $finish;
    end
endmodule

