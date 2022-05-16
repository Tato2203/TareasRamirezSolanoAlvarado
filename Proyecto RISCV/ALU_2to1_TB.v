`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 06:04:51 PM
// Design Name: 
// Module Name: ALU_2to1_TB
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


module ALU_2to1_TB();
reg [5:0] In_a, In_b;
reg Selector;
wire [5:0] OUT_ALU2;
 
ALU_2to1 uut(In_a, In_b, Selector, OUT_ALU2);
initial begin
In_a= 6'd0;
In_b= 6'd1;
Selector=0;
#100
Selector= 2'd1;
#100
Selector= 2'd0;
#100
Selector= 2'd1;
end
endmodule
