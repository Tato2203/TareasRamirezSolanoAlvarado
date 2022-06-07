`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 06:55:24 PM
// Design Name: 
// Module Name: ExtendUnit_20to32_TB
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


module ExtendUnit_20to32_TB();

reg  [19:0] extender;
wire   [31:0] extendido;

ExtendUnit_20to32 uut (extender, extendido);

initial begin
  extender = 20'd0;

  #100 
  extender = 20'd25;
  
  #200 
  extender = 20'd1000000;
   
end

endmodule
