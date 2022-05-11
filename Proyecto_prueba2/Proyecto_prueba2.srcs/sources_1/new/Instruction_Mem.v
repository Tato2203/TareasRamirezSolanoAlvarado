`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2022 09:46:18
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


module Instruction_Mem(
    input [31:0] A_in,
    output reg [31:0] RD_out
    );
      
    always @ (*) begin
        case (A_in)
            32'd0: RD_out <= 32'hfd010113;
            32'd1: RD_out <= 32'h02812623;
            32'd2: RD_out <= 32'h03010413;
            32'd3: RD_out <= 32'h0000b7b7;
            32'd4: RD_out <= 32'hfef42623;
            32'd5: RD_out <= 32'hfc042823;
            32'd6: RD_out <= 32'hfc042a23;
            32'd7: RD_out <= 32'hfc042c23;
            32'd8: RD_out <= 32'hfc042e23;
            32'd9: RD_out <= 32'hfc042023;
            32'd10: RD_out <= 32'h0cc0079;
            32'd11: RD_out <= 32'hfef4222;
            32'd12: RD_out <= 32'hfe84270;
            32'd13: RD_out <= 32'hfe44278;
            32'd14: RD_out <= 32'h00f707b;
            32'd15: RD_out <= 32'hfcf4282;
            32'd16: RD_out <= 32'hfe84278;
            32'd17: RD_out <= 32'h4047d79;
            32'd18: RD_out <= 32'hfcf42a2;
            32'd19: RD_out <= 32'hfe84278;
            32'd20: RD_out <= 32'h4047d79;
            32'd21: RD_out <= 32'hfcf42a2;
            32'd22: RD_out <= 32'hfe84278;
            32'd23: RD_out <= 32'h4047d79;
            32'd24: RD_out <= 32'hfcf42a2;
            32'd25: RD_out <= 32'hfe84278;
            32'd26: RD_out <= 32'h0337e79;
            32'd27: RD_out <= 32'hfcf42c2;
            32'd28: RD_out <= 32'hfe84278;
            32'd29: RD_out <= 32'h0777f79;
            32'd30: RD_out <= 32'hfcf42e2;
            32'd31: RD_out <= 32'hfe84278;
            32'd32: RD_out <= 32'hff47879;
            32'd33: RD_out <= 32'hfef4202;
            32'd34: RD_out <= 32'h0000079;
            32'd35: RD_out <= 32'h0007851;
            32'd36: RD_out <= 32'h02c1240;
            32'd37: RD_out <= 32'h0301011;
            32'd38: RD_out <= 32'h0000806;
        default: RD_out <= 32'd69;
        endcase
    end
    
endmodule
