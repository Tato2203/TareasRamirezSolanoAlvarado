`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 08:25:29 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [2:0] funct3,        
    input [6:0] opcode,        
    output reg [1:0] ALUreg, ALUop,
    output reg ALUsrc, WEmem, WEreg, immsrc
    );
        
    always @(*) begin
        case(funct3)
            3'b000: 
                case(opcode)
                    7'b0110011:
                    begin
                        ALUreg = 2'b00;
                        ALUop = 2'b00;
                        ALUsrc = 0;
                        WEmem = 0;
                        WEreg = 1;
                        immsrc = 1'bX;
                    end
                    7'b0010011:
                    begin
                        ALUreg = 2'b00;
                        ALUop = 2'b00;
                        ALUsrc = 1;
                        WEmem = 0;
                        WEreg = 1;
                        immsrc = 1;
                    end
                endcase
            
            3'b010: 
                case(opcode)
                    7'b0000011:
                    begin
                        ALUreg = 2'b01;
                        ALUop = 2'b00;
                        ALUsrc = 1;
                        WEmem = 0;
                        WEreg = 1;
                        immsrc = 1;
                    end
                    7'b0100011:
                    begin
                        ALUreg = 2'bXX;
                        ALUop = 2'b00;
                        ALUsrc = 1;
                        WEmem = 1;
                        WEreg = 0;
                        immsrc = 0;
                    end                    
                endcase
            
            3'b101: 
                case(opcode)
                    7'b0010011:
                    begin
                        ALUreg = 2'b00;
                        ALUop = 2'b01;
                        ALUsrc = 1;
                        WEmem = 0;
                        WEreg = 1;
                        immsrc = 1;
                    end                                       
                endcase
            3'b110: 
                case(opcode)
                    7'b0010011:
                    begin
                        ALUreg = 2'b00;
                        ALUop = 2'b10;
                        ALUsrc = 1;
                        WEmem = 0;
                        WEreg = 1;
                        immsrc = 1;
                    end                                       
                endcase
            3'b111: 
                case(opcode)
                    7'b0010011:
                    begin
                        ALUreg = 2'b00;
                        ALUop = 2'b11;
                        ALUsrc = 1;
                        WEmem = 0;
                        WEreg = 1;
                        immsrc = 1;
                    end                                       
                endcase
            
        default: 
            if (opcode == 7'b0110111) 
                begin
                    ALUreg = 2'b10;
                    ALUop = 2'bXX;
                    ALUsrc = 1'bX;
                    WEmem = 0;
                    WEreg = 1;
                    immsrc = 1'bX;
                end     
        endcase
        
    end
endmodule
