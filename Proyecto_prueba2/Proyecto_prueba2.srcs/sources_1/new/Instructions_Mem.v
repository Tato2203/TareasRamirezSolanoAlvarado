`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2022 23:44:18
// Design Name: 
// Module Name: Instructions_Mem
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


module Instructions_Mem(
    input [31:0] A_in,
    //input [];
    output wire [31:0] RD_in
    );
endmodule

module RAM(

    input [6:0] Din,
	input [3:0] Addr,
	input WE,
	input CLK, 
	

	output [6:0] Q

    );
    
   
    //Declare the RAM variable 
	reg [6:0] ram [15:0];

	
	//Address register 
	reg [3:0] addr_register;

	
	always @ (posedge CLK)
	begin 
        if (WE)
			ram[Addr]<= Din;		
		else 
			addr_register <= Addr;
	end 

	assign Q = ram[addr_register];
    
    
endmodule
