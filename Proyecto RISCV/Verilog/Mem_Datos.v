`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 06:06:20 PM
// Design Name: 
// Module Name: Mem_Datos
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


module Mem_Datos(
input wire [31:0] ALUResult, //Direccion de Memoria
input wire [31:0] WriteData, //Informacion en Memoria 
input wire Write_EN,         //Enable de Escritura
input wire CLK,              //Clock 
input wire RST,
output reg [31:0] Read_Data //Salida Informacion en Memoria 
);

reg [31:0] MEMORIA [0:255]; //256 Palabras de 32 bits c/u

integer i;

initial begin //Inicializando las Memorias 
Read_Data <= 0;
for (i=0; i<256; i=i+1)begin
MEMORIA[i]=i;
end
end

always @(posedge CLK)
if (RST) begin
Read_Data <= 0;
end else begin
if (Write_EN == 1'b1)begin
MEMORIA[ALUResult] <= WriteData;
Read_Data <= WriteData;

// agregar la escritura de ALUResult y de  WriteData a algún txt

end
else begin 
Read_Data <= MEMORIA[ALUResult];
end 
end

endmodule
