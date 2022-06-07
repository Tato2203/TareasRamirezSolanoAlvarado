`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 04:25:32 PM
// Design Name: 
// Module Name: ExtendUnit_21to32_TB
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

module ExtendUnit_21to32_TB();

reg  [5:0] extender;
wire   [10:0] extendido;

ExtendUnit_21to32 uut (extender, extendido);

initial
begin
  #100 
   extender = 5'd0;

   #100 
   
   extender = 6'b010101;
   
   #200 extender = 6'b100001;
   
end

endmodule
