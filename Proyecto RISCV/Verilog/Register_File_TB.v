`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 07:40:44 PM
// Design Name: 
// Module Name: Register_File_TB
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


module Register_File_TB();
 reg [4:0] Add_A; //Registro 1 
    reg [4:0] Add_B; //Registro 2
    reg [4:0] Add_Dest; //Registro Destino
    reg  [31:0] Write_Data; //Informacion 
    reg  CLK; //CLK
    reg  Write_En;//Write Enable 
    wire [31:0] Info_A; //Contenido del Registro A
    wire [31:0] Info_B; //Contenido del Registro B
    
    Register_File uut (
    .Add_A(Add_A),
    .Add_B(Add_B),
    .Add_Dest(Add_Dest),
    .Write_Data(Write_Data),
    .CLK(CLK),
    .Write_En(Write_En),
    .Info_A(Info_A),
    .Info_B(Info_B)
    );
    

endmodule

