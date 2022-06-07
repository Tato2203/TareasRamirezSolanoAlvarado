`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 10:32:37 PM
// Design Name: 
// Module Name: Mem_Instrucciones_TB
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


module Mem_Instrucciones_TB();
reg[31:0]  Add;        // Input Address 
wire[31:0]  Inst;    // Instruction at memory location Address
reg [31:0] mem[0:1024];
integer i; 
 /* Please fill in the implementation here */
	initial begin
		$readmemh("code1.txt",mem);
	for (i=0; i<40; i=i+4) begin 
	$display("%b", mem[i]); 
	end
	
	end
			assign Inst = mem[Add>>2];	

endmodule

