`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2022 01:28:36 PM
// Design Name: 
// Module Name: Mux_2to1
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


module Mux_2to1(
    input [4:0] In_A, 
    input [4:0] In_B,
    input [1:0] Selector,
    output reg [4:0] OutMux
    );
    
    always @ (*) begin  
     case (Selector)  
        2'd0 : OutMux <= In_A;  
        2'd1 : OutMux <= In_B; 
        default : OutMux <=5'b0; 
     endcase  
   end  
endmodule
