`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2022 22:51:29
// Design Name: 
// Module Name: ALU_suma
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

// Verilog code for ALU
module ALU_suma(
    input [31:0] PC_reg_out,
    output reg [31:0] Next_PC
    );
    always@(*)
    Next_PC = PC_reg_out + 32'd4; // add
endmodule
