`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2022 07:16:58 PM
// Design Name: 
// Module Name: Mux_3to1_TB
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


module Mux_3to1_TB();
    reg [4:0] In_A, In_B, In_C;
    reg [1:0] Selector;
    wire [4:0] OutMux;
    
    Mux_3to1 uut(In_A, In_B, In_C, Selector, OutMux);
    initial begin
    In_A = 5'h10;   
    In_B = 5'hA;
    In_C = 5'h1F;
    Selector = 2'd0; 
    #100
    Selector = 2'd0;     
    #100
    Selector = 2'd1;
    #100
    Selector = 2'd2;
    #100
    Selector = 2'd3;     
    #100
    Selector = 2'd0;
    #100
    Selector = 2'd3;
  end
endmodule
