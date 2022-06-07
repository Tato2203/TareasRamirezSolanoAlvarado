`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 10:43:17 PM
// Design Name: 
// Module Name: Instruction_Mem
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


module Instruction_Mem(Dir, Inst);
input [31:0] Dir; 
reg [31:0] Add; 
output[31:0] Inst; 
reg[31:0] mem[127:0]; 
reg[31:0] INST; 

initial begin

$readmemh("code1.txt",mem); 
end
initial begin
for (Add=0; Add<39; Add=Add+1) begin
assign INST = mem[Add];
$display("%b",INST); 
end
#10
$finish; 
end
assign Inst = mem[Dir];
endmodule
