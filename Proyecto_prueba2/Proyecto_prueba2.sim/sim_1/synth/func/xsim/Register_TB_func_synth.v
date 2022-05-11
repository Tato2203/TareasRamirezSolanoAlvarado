// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue May 10 21:34:22 2022
// Host        : Tatos-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/usuario/Desktop/Vivado/Proyecto_prueba2/Proyecto_prueba2.sim/sim_1/synth/func/xsim/Register_TB_func_synth.v
// Design      : Register
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Register
   (clk,
    PC_in,
    PC_out);
  input clk;
  input [31:0]PC_in;
  output [31:0]PC_out;

  wire [31:0]PC_in;
  wire [31:0]PC_in_IBUF;
  wire [31:0]PC_out;
  wire [31:0]PC_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;

  IBUF \PC_in_IBUF[0]_inst 
       (.I(PC_in[0]),
        .O(PC_in_IBUF[0]));
  IBUF \PC_in_IBUF[10]_inst 
       (.I(PC_in[10]),
        .O(PC_in_IBUF[10]));
  IBUF \PC_in_IBUF[11]_inst 
       (.I(PC_in[11]),
        .O(PC_in_IBUF[11]));
  IBUF \PC_in_IBUF[12]_inst 
       (.I(PC_in[12]),
        .O(PC_in_IBUF[12]));
  IBUF \PC_in_IBUF[13]_inst 
       (.I(PC_in[13]),
        .O(PC_in_IBUF[13]));
  IBUF \PC_in_IBUF[14]_inst 
       (.I(PC_in[14]),
        .O(PC_in_IBUF[14]));
  IBUF \PC_in_IBUF[15]_inst 
       (.I(PC_in[15]),
        .O(PC_in_IBUF[15]));
  IBUF \PC_in_IBUF[16]_inst 
       (.I(PC_in[16]),
        .O(PC_in_IBUF[16]));
  IBUF \PC_in_IBUF[17]_inst 
       (.I(PC_in[17]),
        .O(PC_in_IBUF[17]));
  IBUF \PC_in_IBUF[18]_inst 
       (.I(PC_in[18]),
        .O(PC_in_IBUF[18]));
  IBUF \PC_in_IBUF[19]_inst 
       (.I(PC_in[19]),
        .O(PC_in_IBUF[19]));
  IBUF \PC_in_IBUF[1]_inst 
       (.I(PC_in[1]),
        .O(PC_in_IBUF[1]));
  IBUF \PC_in_IBUF[20]_inst 
       (.I(PC_in[20]),
        .O(PC_in_IBUF[20]));
  IBUF \PC_in_IBUF[21]_inst 
       (.I(PC_in[21]),
        .O(PC_in_IBUF[21]));
  IBUF \PC_in_IBUF[22]_inst 
       (.I(PC_in[22]),
        .O(PC_in_IBUF[22]));
  IBUF \PC_in_IBUF[23]_inst 
       (.I(PC_in[23]),
        .O(PC_in_IBUF[23]));
  IBUF \PC_in_IBUF[24]_inst 
       (.I(PC_in[24]),
        .O(PC_in_IBUF[24]));
  IBUF \PC_in_IBUF[25]_inst 
       (.I(PC_in[25]),
        .O(PC_in_IBUF[25]));
  IBUF \PC_in_IBUF[26]_inst 
       (.I(PC_in[26]),
        .O(PC_in_IBUF[26]));
  IBUF \PC_in_IBUF[27]_inst 
       (.I(PC_in[27]),
        .O(PC_in_IBUF[27]));
  IBUF \PC_in_IBUF[28]_inst 
       (.I(PC_in[28]),
        .O(PC_in_IBUF[28]));
  IBUF \PC_in_IBUF[29]_inst 
       (.I(PC_in[29]),
        .O(PC_in_IBUF[29]));
  IBUF \PC_in_IBUF[2]_inst 
       (.I(PC_in[2]),
        .O(PC_in_IBUF[2]));
  IBUF \PC_in_IBUF[30]_inst 
       (.I(PC_in[30]),
        .O(PC_in_IBUF[30]));
  IBUF \PC_in_IBUF[31]_inst 
       (.I(PC_in[31]),
        .O(PC_in_IBUF[31]));
  IBUF \PC_in_IBUF[3]_inst 
       (.I(PC_in[3]),
        .O(PC_in_IBUF[3]));
  IBUF \PC_in_IBUF[4]_inst 
       (.I(PC_in[4]),
        .O(PC_in_IBUF[4]));
  IBUF \PC_in_IBUF[5]_inst 
       (.I(PC_in[5]),
        .O(PC_in_IBUF[5]));
  IBUF \PC_in_IBUF[6]_inst 
       (.I(PC_in[6]),
        .O(PC_in_IBUF[6]));
  IBUF \PC_in_IBUF[7]_inst 
       (.I(PC_in[7]),
        .O(PC_in_IBUF[7]));
  IBUF \PC_in_IBUF[8]_inst 
       (.I(PC_in[8]),
        .O(PC_in_IBUF[8]));
  IBUF \PC_in_IBUF[9]_inst 
       (.I(PC_in[9]),
        .O(PC_in_IBUF[9]));
  OBUF \PC_out_OBUF[0]_inst 
       (.I(PC_out_OBUF[0]),
        .O(PC_out[0]));
  OBUF \PC_out_OBUF[10]_inst 
       (.I(PC_out_OBUF[10]),
        .O(PC_out[10]));
  OBUF \PC_out_OBUF[11]_inst 
       (.I(PC_out_OBUF[11]),
        .O(PC_out[11]));
  OBUF \PC_out_OBUF[12]_inst 
       (.I(PC_out_OBUF[12]),
        .O(PC_out[12]));
  OBUF \PC_out_OBUF[13]_inst 
       (.I(PC_out_OBUF[13]),
        .O(PC_out[13]));
  OBUF \PC_out_OBUF[14]_inst 
       (.I(PC_out_OBUF[14]),
        .O(PC_out[14]));
  OBUF \PC_out_OBUF[15]_inst 
       (.I(PC_out_OBUF[15]),
        .O(PC_out[15]));
  OBUF \PC_out_OBUF[16]_inst 
       (.I(PC_out_OBUF[16]),
        .O(PC_out[16]));
  OBUF \PC_out_OBUF[17]_inst 
       (.I(PC_out_OBUF[17]),
        .O(PC_out[17]));
  OBUF \PC_out_OBUF[18]_inst 
       (.I(PC_out_OBUF[18]),
        .O(PC_out[18]));
  OBUF \PC_out_OBUF[19]_inst 
       (.I(PC_out_OBUF[19]),
        .O(PC_out[19]));
  OBUF \PC_out_OBUF[1]_inst 
       (.I(PC_out_OBUF[1]),
        .O(PC_out[1]));
  OBUF \PC_out_OBUF[20]_inst 
       (.I(PC_out_OBUF[20]),
        .O(PC_out[20]));
  OBUF \PC_out_OBUF[21]_inst 
       (.I(PC_out_OBUF[21]),
        .O(PC_out[21]));
  OBUF \PC_out_OBUF[22]_inst 
       (.I(PC_out_OBUF[22]),
        .O(PC_out[22]));
  OBUF \PC_out_OBUF[23]_inst 
       (.I(PC_out_OBUF[23]),
        .O(PC_out[23]));
  OBUF \PC_out_OBUF[24]_inst 
       (.I(PC_out_OBUF[24]),
        .O(PC_out[24]));
  OBUF \PC_out_OBUF[25]_inst 
       (.I(PC_out_OBUF[25]),
        .O(PC_out[25]));
  OBUF \PC_out_OBUF[26]_inst 
       (.I(PC_out_OBUF[26]),
        .O(PC_out[26]));
  OBUF \PC_out_OBUF[27]_inst 
       (.I(PC_out_OBUF[27]),
        .O(PC_out[27]));
  OBUF \PC_out_OBUF[28]_inst 
       (.I(PC_out_OBUF[28]),
        .O(PC_out[28]));
  OBUF \PC_out_OBUF[29]_inst 
       (.I(PC_out_OBUF[29]),
        .O(PC_out[29]));
  OBUF \PC_out_OBUF[2]_inst 
       (.I(PC_out_OBUF[2]),
        .O(PC_out[2]));
  OBUF \PC_out_OBUF[30]_inst 
       (.I(PC_out_OBUF[30]),
        .O(PC_out[30]));
  OBUF \PC_out_OBUF[31]_inst 
       (.I(PC_out_OBUF[31]),
        .O(PC_out[31]));
  OBUF \PC_out_OBUF[3]_inst 
       (.I(PC_out_OBUF[3]),
        .O(PC_out[3]));
  OBUF \PC_out_OBUF[4]_inst 
       (.I(PC_out_OBUF[4]),
        .O(PC_out[4]));
  OBUF \PC_out_OBUF[5]_inst 
       (.I(PC_out_OBUF[5]),
        .O(PC_out[5]));
  OBUF \PC_out_OBUF[6]_inst 
       (.I(PC_out_OBUF[6]),
        .O(PC_out[6]));
  OBUF \PC_out_OBUF[7]_inst 
       (.I(PC_out_OBUF[7]),
        .O(PC_out[7]));
  OBUF \PC_out_OBUF[8]_inst 
       (.I(PC_out_OBUF[8]),
        .O(PC_out[8]));
  OBUF \PC_out_OBUF[9]_inst 
       (.I(PC_out_OBUF[9]),
        .O(PC_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[0]),
        .Q(PC_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[10]),
        .Q(PC_out_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[11]),
        .Q(PC_out_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[12]),
        .Q(PC_out_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[13]),
        .Q(PC_out_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[14]),
        .Q(PC_out_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[15]),
        .Q(PC_out_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[16]),
        .Q(PC_out_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[17]),
        .Q(PC_out_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[18]),
        .Q(PC_out_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[19]),
        .Q(PC_out_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[1]),
        .Q(PC_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[20]),
        .Q(PC_out_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[21]),
        .Q(PC_out_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[22]),
        .Q(PC_out_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[23]),
        .Q(PC_out_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[24]),
        .Q(PC_out_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[25]),
        .Q(PC_out_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[26]),
        .Q(PC_out_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[27]),
        .Q(PC_out_OBUF[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[28]),
        .Q(PC_out_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[29]),
        .Q(PC_out_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[2]),
        .Q(PC_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[30]),
        .Q(PC_out_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[31]),
        .Q(PC_out_OBUF[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[3]),
        .Q(PC_out_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[4]),
        .Q(PC_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[5]),
        .Q(PC_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[6]),
        .Q(PC_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[7]),
        .Q(PC_out_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[8]),
        .Q(PC_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PC_in_IBUF[9]),
        .Q(PC_out_OBUF[9]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
