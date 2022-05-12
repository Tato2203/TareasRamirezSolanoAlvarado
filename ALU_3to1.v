`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 10:48:35 AM
// Design Name: 
// Module Name: ALU_3to1
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


module ALU_3to1(
    input [5:0] In_a,         // en realidad deberían ser de 32 bits
    input [5:0] In_b,         // en realidad deberían ser de 32 bits
    input [5:0] In_c,         // en realidad deberían ser de 32 bits
   
    input [1:0] Selector,
    
    output reg [5:0] OUT_ALU3     // en realidad deberían ser de 32 bits
    );
        
    always @(*) begin
        case(Selector)
            2'b00:  OUT_ALU3 = In_a;
            2'b01:  OUT_ALU3 = In_b;
            2'b10:  OUT_ALU3 = In_c;
        default: OUT_ALU3 = 5'b00000;    // en realidad deberían ser de 32 bits
        endcase
        
    end
endmodule


