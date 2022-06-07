`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 04:27:54 PM
// Design Name: 
// Module Name: Mem_Datos_TB
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

module Mem_Datos_TB();
reg [31:0] Address; //Direccion de Memoria
reg [31:0] WriteData; //Informacion en Memoria 
reg Write_EN;         //Enable de Escritura
reg CLK;              //Clock 
wire [31:0] Read_Data; //Salida Informacion en module Mem_Datos

Mem_Datos uut(
.Address(Address), 
.WriteData(WriteData), 
.Write_EN(Write_EN), 
.CLK(CLK), 
.Read_Data(Read_Data)
);

always #5 CLK = ~CLK;
initial begin
CLK = 0;
Address = 0;
WriteData = 0;
Write_EN = 0;

#100 
Address = 32'd1;
WriteData = 32'd2;
Write_EN = 1;

#100 
Address = 32'd1;
WriteData = 32'd1;
Write_EN = 0;

#100 
Address = 32'd3;
WriteData = 32'd4;
Write_EN = 1;

#100 
Address = 32'd5;
WriteData = 32'd6;


end
endmodule