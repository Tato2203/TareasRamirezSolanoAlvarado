`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 11:37:23 AM
// Design Name: 
// Module Name: ALU_2to1
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


module ALU_2to1(
    input [5:0] In_a,         // en realidad deberían ser de 32 bits
    input [5:0] In_b,         // en realidad deberían ser de 32 bits
   
    input Selector,   
    
    output reg [5:0] OUT_ALU2     // en realidad deberían ser de 32 bits
    );
        
    always @(*) begin
        case(Selector)
            1'b0:  OUT_ALU2 = In_a;
            1'b1:  OUT_ALU2 = In_b;
        default: OUT_ALU2 = 6'b00000;    // en realidad deberían ser de 32 bits
        endcase
        
    end
endmodule