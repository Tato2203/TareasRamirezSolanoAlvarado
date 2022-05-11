// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed May 11 09:15:16 2022
// Host        : Tatos-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/usuario/Desktop/GIT/Proyecto_prueba2/Proyecto_prueba2.sim/sim_1/synth/func/xsim/ALU_suma_TB_func_synth.v
// Design      : ALU_suma
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module ALU_suma
   (PC_reg_out,
    Next_PC);
  input [31:0]PC_reg_out;
  output [31:0]Next_PC;

  wire [31:0]Next_PC;
  wire [31:0]Next_PC_OBUF;
  wire \Next_PC_OBUF[12]_inst_i_1_n_0 ;
  wire \Next_PC_OBUF[12]_inst_i_1_n_1 ;
  wire \Next_PC_OBUF[12]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[12]_inst_i_1_n_3 ;
  wire \Next_PC_OBUF[16]_inst_i_1_n_0 ;
  wire \Next_PC_OBUF[16]_inst_i_1_n_1 ;
  wire \Next_PC_OBUF[16]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[16]_inst_i_1_n_3 ;
  wire \Next_PC_OBUF[20]_inst_i_1_n_0 ;
  wire \Next_PC_OBUF[20]_inst_i_1_n_1 ;
  wire \Next_PC_OBUF[20]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[20]_inst_i_1_n_3 ;
  wire \Next_PC_OBUF[24]_inst_i_1_n_0 ;
  wire \Next_PC_OBUF[24]_inst_i_1_n_1 ;
  wire \Next_PC_OBUF[24]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[24]_inst_i_1_n_3 ;
  wire \Next_PC_OBUF[28]_inst_i_1_n_0 ;
  wire \Next_PC_OBUF[28]_inst_i_1_n_1 ;
  wire \Next_PC_OBUF[28]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[28]_inst_i_1_n_3 ;
  wire \Next_PC_OBUF[31]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[31]_inst_i_1_n_3 ;
  wire \Next_PC_OBUF[4]_inst_i_1_n_0 ;
  wire \Next_PC_OBUF[4]_inst_i_1_n_1 ;
  wire \Next_PC_OBUF[4]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[4]_inst_i_1_n_3 ;
  wire \Next_PC_OBUF[4]_inst_i_2_n_0 ;
  wire \Next_PC_OBUF[8]_inst_i_1_n_0 ;
  wire \Next_PC_OBUF[8]_inst_i_1_n_1 ;
  wire \Next_PC_OBUF[8]_inst_i_1_n_2 ;
  wire \Next_PC_OBUF[8]_inst_i_1_n_3 ;
  wire [31:0]PC_reg_out;
  wire [31:1]PC_reg_out_IBUF;
  wire [3:2]\NLW_Next_PC_OBUF[31]_inst_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Next_PC_OBUF[31]_inst_i_1_O_UNCONNECTED ;

  OBUF \Next_PC_OBUF[0]_inst 
       (.I(Next_PC_OBUF[0]),
        .O(Next_PC[0]));
  OBUF \Next_PC_OBUF[10]_inst 
       (.I(Next_PC_OBUF[10]),
        .O(Next_PC[10]));
  OBUF \Next_PC_OBUF[11]_inst 
       (.I(Next_PC_OBUF[11]),
        .O(Next_PC[11]));
  OBUF \Next_PC_OBUF[12]_inst 
       (.I(Next_PC_OBUF[12]),
        .O(Next_PC[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[12]_inst_i_1 
       (.CI(\Next_PC_OBUF[8]_inst_i_1_n_0 ),
        .CO({\Next_PC_OBUF[12]_inst_i_1_n_0 ,\Next_PC_OBUF[12]_inst_i_1_n_1 ,\Next_PC_OBUF[12]_inst_i_1_n_2 ,\Next_PC_OBUF[12]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Next_PC_OBUF[12:9]),
        .S(PC_reg_out_IBUF[12:9]));
  OBUF \Next_PC_OBUF[13]_inst 
       (.I(Next_PC_OBUF[13]),
        .O(Next_PC[13]));
  OBUF \Next_PC_OBUF[14]_inst 
       (.I(Next_PC_OBUF[14]),
        .O(Next_PC[14]));
  OBUF \Next_PC_OBUF[15]_inst 
       (.I(Next_PC_OBUF[15]),
        .O(Next_PC[15]));
  OBUF \Next_PC_OBUF[16]_inst 
       (.I(Next_PC_OBUF[16]),
        .O(Next_PC[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[16]_inst_i_1 
       (.CI(\Next_PC_OBUF[12]_inst_i_1_n_0 ),
        .CO({\Next_PC_OBUF[16]_inst_i_1_n_0 ,\Next_PC_OBUF[16]_inst_i_1_n_1 ,\Next_PC_OBUF[16]_inst_i_1_n_2 ,\Next_PC_OBUF[16]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Next_PC_OBUF[16:13]),
        .S(PC_reg_out_IBUF[16:13]));
  OBUF \Next_PC_OBUF[17]_inst 
       (.I(Next_PC_OBUF[17]),
        .O(Next_PC[17]));
  OBUF \Next_PC_OBUF[18]_inst 
       (.I(Next_PC_OBUF[18]),
        .O(Next_PC[18]));
  OBUF \Next_PC_OBUF[19]_inst 
       (.I(Next_PC_OBUF[19]),
        .O(Next_PC[19]));
  OBUF \Next_PC_OBUF[1]_inst 
       (.I(Next_PC_OBUF[1]),
        .O(Next_PC[1]));
  OBUF \Next_PC_OBUF[20]_inst 
       (.I(Next_PC_OBUF[20]),
        .O(Next_PC[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[20]_inst_i_1 
       (.CI(\Next_PC_OBUF[16]_inst_i_1_n_0 ),
        .CO({\Next_PC_OBUF[20]_inst_i_1_n_0 ,\Next_PC_OBUF[20]_inst_i_1_n_1 ,\Next_PC_OBUF[20]_inst_i_1_n_2 ,\Next_PC_OBUF[20]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Next_PC_OBUF[20:17]),
        .S(PC_reg_out_IBUF[20:17]));
  OBUF \Next_PC_OBUF[21]_inst 
       (.I(Next_PC_OBUF[21]),
        .O(Next_PC[21]));
  OBUF \Next_PC_OBUF[22]_inst 
       (.I(Next_PC_OBUF[22]),
        .O(Next_PC[22]));
  OBUF \Next_PC_OBUF[23]_inst 
       (.I(Next_PC_OBUF[23]),
        .O(Next_PC[23]));
  OBUF \Next_PC_OBUF[24]_inst 
       (.I(Next_PC_OBUF[24]),
        .O(Next_PC[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[24]_inst_i_1 
       (.CI(\Next_PC_OBUF[20]_inst_i_1_n_0 ),
        .CO({\Next_PC_OBUF[24]_inst_i_1_n_0 ,\Next_PC_OBUF[24]_inst_i_1_n_1 ,\Next_PC_OBUF[24]_inst_i_1_n_2 ,\Next_PC_OBUF[24]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Next_PC_OBUF[24:21]),
        .S(PC_reg_out_IBUF[24:21]));
  OBUF \Next_PC_OBUF[25]_inst 
       (.I(Next_PC_OBUF[25]),
        .O(Next_PC[25]));
  OBUF \Next_PC_OBUF[26]_inst 
       (.I(Next_PC_OBUF[26]),
        .O(Next_PC[26]));
  OBUF \Next_PC_OBUF[27]_inst 
       (.I(Next_PC_OBUF[27]),
        .O(Next_PC[27]));
  OBUF \Next_PC_OBUF[28]_inst 
       (.I(Next_PC_OBUF[28]),
        .O(Next_PC[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[28]_inst_i_1 
       (.CI(\Next_PC_OBUF[24]_inst_i_1_n_0 ),
        .CO({\Next_PC_OBUF[28]_inst_i_1_n_0 ,\Next_PC_OBUF[28]_inst_i_1_n_1 ,\Next_PC_OBUF[28]_inst_i_1_n_2 ,\Next_PC_OBUF[28]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Next_PC_OBUF[28:25]),
        .S(PC_reg_out_IBUF[28:25]));
  OBUF \Next_PC_OBUF[29]_inst 
       (.I(Next_PC_OBUF[29]),
        .O(Next_PC[29]));
  OBUF \Next_PC_OBUF[2]_inst 
       (.I(Next_PC_OBUF[2]),
        .O(Next_PC[2]));
  OBUF \Next_PC_OBUF[30]_inst 
       (.I(Next_PC_OBUF[30]),
        .O(Next_PC[30]));
  OBUF \Next_PC_OBUF[31]_inst 
       (.I(Next_PC_OBUF[31]),
        .O(Next_PC[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[31]_inst_i_1 
       (.CI(\Next_PC_OBUF[28]_inst_i_1_n_0 ),
        .CO({\NLW_Next_PC_OBUF[31]_inst_i_1_CO_UNCONNECTED [3:2],\Next_PC_OBUF[31]_inst_i_1_n_2 ,\Next_PC_OBUF[31]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Next_PC_OBUF[31]_inst_i_1_O_UNCONNECTED [3],Next_PC_OBUF[31:29]}),
        .S({1'b0,PC_reg_out_IBUF[31:29]}));
  OBUF \Next_PC_OBUF[3]_inst 
       (.I(Next_PC_OBUF[3]),
        .O(Next_PC[3]));
  OBUF \Next_PC_OBUF[4]_inst 
       (.I(Next_PC_OBUF[4]),
        .O(Next_PC[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[4]_inst_i_1 
       (.CI(1'b0),
        .CO({\Next_PC_OBUF[4]_inst_i_1_n_0 ,\Next_PC_OBUF[4]_inst_i_1_n_1 ,\Next_PC_OBUF[4]_inst_i_1_n_2 ,\Next_PC_OBUF[4]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PC_reg_out_IBUF[2],1'b0}),
        .O(Next_PC_OBUF[4:1]),
        .S({PC_reg_out_IBUF[4:3],\Next_PC_OBUF[4]_inst_i_2_n_0 ,PC_reg_out_IBUF[1]}));
  LUT1 #(
    .INIT(2'h1)) 
    \Next_PC_OBUF[4]_inst_i_2 
       (.I0(PC_reg_out_IBUF[2]),
        .O(\Next_PC_OBUF[4]_inst_i_2_n_0 ));
  OBUF \Next_PC_OBUF[5]_inst 
       (.I(Next_PC_OBUF[5]),
        .O(Next_PC[5]));
  OBUF \Next_PC_OBUF[6]_inst 
       (.I(Next_PC_OBUF[6]),
        .O(Next_PC[6]));
  OBUF \Next_PC_OBUF[7]_inst 
       (.I(Next_PC_OBUF[7]),
        .O(Next_PC[7]));
  OBUF \Next_PC_OBUF[8]_inst 
       (.I(Next_PC_OBUF[8]),
        .O(Next_PC[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Next_PC_OBUF[8]_inst_i_1 
       (.CI(\Next_PC_OBUF[4]_inst_i_1_n_0 ),
        .CO({\Next_PC_OBUF[8]_inst_i_1_n_0 ,\Next_PC_OBUF[8]_inst_i_1_n_1 ,\Next_PC_OBUF[8]_inst_i_1_n_2 ,\Next_PC_OBUF[8]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Next_PC_OBUF[8:5]),
        .S(PC_reg_out_IBUF[8:5]));
  OBUF \Next_PC_OBUF[9]_inst 
       (.I(Next_PC_OBUF[9]),
        .O(Next_PC[9]));
  IBUF \PC_reg_out_IBUF[0]_inst 
       (.I(PC_reg_out[0]),
        .O(Next_PC_OBUF[0]));
  IBUF \PC_reg_out_IBUF[10]_inst 
       (.I(PC_reg_out[10]),
        .O(PC_reg_out_IBUF[10]));
  IBUF \PC_reg_out_IBUF[11]_inst 
       (.I(PC_reg_out[11]),
        .O(PC_reg_out_IBUF[11]));
  IBUF \PC_reg_out_IBUF[12]_inst 
       (.I(PC_reg_out[12]),
        .O(PC_reg_out_IBUF[12]));
  IBUF \PC_reg_out_IBUF[13]_inst 
       (.I(PC_reg_out[13]),
        .O(PC_reg_out_IBUF[13]));
  IBUF \PC_reg_out_IBUF[14]_inst 
       (.I(PC_reg_out[14]),
        .O(PC_reg_out_IBUF[14]));
  IBUF \PC_reg_out_IBUF[15]_inst 
       (.I(PC_reg_out[15]),
        .O(PC_reg_out_IBUF[15]));
  IBUF \PC_reg_out_IBUF[16]_inst 
       (.I(PC_reg_out[16]),
        .O(PC_reg_out_IBUF[16]));
  IBUF \PC_reg_out_IBUF[17]_inst 
       (.I(PC_reg_out[17]),
        .O(PC_reg_out_IBUF[17]));
  IBUF \PC_reg_out_IBUF[18]_inst 
       (.I(PC_reg_out[18]),
        .O(PC_reg_out_IBUF[18]));
  IBUF \PC_reg_out_IBUF[19]_inst 
       (.I(PC_reg_out[19]),
        .O(PC_reg_out_IBUF[19]));
  IBUF \PC_reg_out_IBUF[1]_inst 
       (.I(PC_reg_out[1]),
        .O(PC_reg_out_IBUF[1]));
  IBUF \PC_reg_out_IBUF[20]_inst 
       (.I(PC_reg_out[20]),
        .O(PC_reg_out_IBUF[20]));
  IBUF \PC_reg_out_IBUF[21]_inst 
       (.I(PC_reg_out[21]),
        .O(PC_reg_out_IBUF[21]));
  IBUF \PC_reg_out_IBUF[22]_inst 
       (.I(PC_reg_out[22]),
        .O(PC_reg_out_IBUF[22]));
  IBUF \PC_reg_out_IBUF[23]_inst 
       (.I(PC_reg_out[23]),
        .O(PC_reg_out_IBUF[23]));
  IBUF \PC_reg_out_IBUF[24]_inst 
       (.I(PC_reg_out[24]),
        .O(PC_reg_out_IBUF[24]));
  IBUF \PC_reg_out_IBUF[25]_inst 
       (.I(PC_reg_out[25]),
        .O(PC_reg_out_IBUF[25]));
  IBUF \PC_reg_out_IBUF[26]_inst 
       (.I(PC_reg_out[26]),
        .O(PC_reg_out_IBUF[26]));
  IBUF \PC_reg_out_IBUF[27]_inst 
       (.I(PC_reg_out[27]),
        .O(PC_reg_out_IBUF[27]));
  IBUF \PC_reg_out_IBUF[28]_inst 
       (.I(PC_reg_out[28]),
        .O(PC_reg_out_IBUF[28]));
  IBUF \PC_reg_out_IBUF[29]_inst 
       (.I(PC_reg_out[29]),
        .O(PC_reg_out_IBUF[29]));
  IBUF \PC_reg_out_IBUF[2]_inst 
       (.I(PC_reg_out[2]),
        .O(PC_reg_out_IBUF[2]));
  IBUF \PC_reg_out_IBUF[30]_inst 
       (.I(PC_reg_out[30]),
        .O(PC_reg_out_IBUF[30]));
  IBUF \PC_reg_out_IBUF[31]_inst 
       (.I(PC_reg_out[31]),
        .O(PC_reg_out_IBUF[31]));
  IBUF \PC_reg_out_IBUF[3]_inst 
       (.I(PC_reg_out[3]),
        .O(PC_reg_out_IBUF[3]));
  IBUF \PC_reg_out_IBUF[4]_inst 
       (.I(PC_reg_out[4]),
        .O(PC_reg_out_IBUF[4]));
  IBUF \PC_reg_out_IBUF[5]_inst 
       (.I(PC_reg_out[5]),
        .O(PC_reg_out_IBUF[5]));
  IBUF \PC_reg_out_IBUF[6]_inst 
       (.I(PC_reg_out[6]),
        .O(PC_reg_out_IBUF[6]));
  IBUF \PC_reg_out_IBUF[7]_inst 
       (.I(PC_reg_out[7]),
        .O(PC_reg_out_IBUF[7]));
  IBUF \PC_reg_out_IBUF[8]_inst 
       (.I(PC_reg_out[8]),
        .O(PC_reg_out_IBUF[8]));
  IBUF \PC_reg_out_IBUF[9]_inst 
       (.I(PC_reg_out[9]),
        .O(PC_reg_out_IBUF[9]));
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
