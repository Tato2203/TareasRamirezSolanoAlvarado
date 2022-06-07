`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2022 07:39:31 PM
// Design Name: 
// Module Name: Register_File
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


module Register_File(
    input  [4:0] Add_A, //Registro 1 
    input  [4:0] Add_B, //Registro 2
    input [4:0] Add_Dest, //Registro Destino
    input [31:0] Write_Data, //Informacion 
    input CLK, //CLK
    input Write_En,//Write Enable 
    output reg [31:0] Info_A, //Contenido del Registro A
    output reg [31:0] Info_B //Contenido del Registro B
    );
    
reg [31:0] REGISTROS [0:31];
integer i;

initial begin //Inicializando las Memorias 
Info_A <= 32'd0;
Info_B <= 32'd0;
for (i=0; i<16; i=i+1)
    begin
    REGISTROS[i]=i;
    end
end

always @(posedge CLK)
begin
if (Write_En==1'b1)begin 
REGISTROS [Add_A] <= Write_Data;
Info_A <= REGISTROS[Add_A];
Info_B <= REGISTROS[Add_B];
end
else begin
Info_A <= REGISTROS[Add_A];
Info_B <= REGISTROS[Add_B];
end

end
endmodule
