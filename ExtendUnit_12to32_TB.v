`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 05:24:06 PM
// Design Name: 
// Module Name: ExtendUnit_12to32_TB
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


module ExtendUnit_12to32_TB();
reg  [11:0] extender;
wire   [31:0] extendido;

ExtendeUnit_12to32 uut (extender, extendido);

initial
begin
  #100 
   extender = 12'd0;

   #100 
   
   extender = 12'b101010101010;
   
   #200 extender = 12'b010101010101;
   
end

endmodule