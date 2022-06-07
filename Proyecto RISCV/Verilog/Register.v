`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2022 21:24:41
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
      input  clk,
      input  rst,
      input  [31:0] PC_in,   
      output [31:0] PC_out  
 );  
      reg [31:0] PC_reg; 
      always @ (posedge clk) 
      if (rst) begin
        PC_reg <= 0;   
      end else begin
        PC_reg <= PC_in; 
      end
      assign PC_out = PC_reg;  
       
 endmodule
