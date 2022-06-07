`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 05:42:02 PM
// Design Name: 
// Module Name: Register
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


module Register
// Verilog code for register file 
 (  
      input clk, 
      input [31:0] PC_in,
      output [31:0] PC_out  
 );  
      reg [31:0]PC_reg; 
      always @ (posedge clk) begin
        PC_reg <= PC_in;   
      end  
      assign PC_out = PC_reg;  
       
 endmodule

