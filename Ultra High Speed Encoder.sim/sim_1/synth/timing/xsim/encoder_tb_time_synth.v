// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Oct 15 18:26:04 2022
// Host        : TreatyLap running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/personal Git/Verilog Projects/Ultra
//               High Speed Encoder/Ultra High Speed Encoder.sim/sim_1/synth/timing/xsim/encoder_tb_time_synth.v}
// Design      : encoder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module encoder
   (clk,
    tc,
    bits);
  input clk;
  input [14:0]tc;
  output [3:0]bits;

  wire [3:0]bits;
  wire \bits[0]_i_2_n_0 ;
  wire \bits[0]_i_3_n_0 ;
  wire \bits[1]_i_2_n_0 ;
  wire [3:0]bits_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]p_13_out;
  wire [14:0]tc;
  wire [14:0]tc_IBUF;

initial begin
 $sdf_annotate("encoder_tb_time_synth.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'hFEFEFFFE)) 
    \bits[0]_i_1 
       (.I0(\bits[0]_i_2_n_0 ),
        .I1(\bits[0]_i_3_n_0 ),
        .I2(tc_IBUF[14]),
        .I3(tc_IBUF[8]),
        .I4(tc_IBUF[9]),
        .O(p_13_out[0]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \bits[0]_i_2 
       (.I0(tc_IBUF[0]),
        .I1(tc_IBUF[1]),
        .I2(tc_IBUF[12]),
        .I3(tc_IBUF[13]),
        .I4(tc_IBUF[11]),
        .I5(tc_IBUF[10]),
        .O(\bits[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \bits[0]_i_3 
       (.I0(tc_IBUF[2]),
        .I1(tc_IBUF[3]),
        .I2(tc_IBUF[4]),
        .I3(tc_IBUF[5]),
        .I4(tc_IBUF[7]),
        .I5(tc_IBUF[6]),
        .O(\bits[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bits[1]_i_1 
       (.I0(\bits[1]_i_2_n_0 ),
        .I1(tc_IBUF[13]),
        .O(p_13_out[1]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \bits[1]_i_2 
       (.I0(tc_IBUF[9]),
        .I1(tc_IBUF[11]),
        .I2(tc_IBUF[1]),
        .I3(tc_IBUF[3]),
        .I4(tc_IBUF[7]),
        .I5(tc_IBUF[5]),
        .O(\bits[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \bits[2]_i_1 
       (.I0(tc_IBUF[7]),
        .I1(tc_IBUF[3]),
        .I2(tc_IBUF[11]),
        .O(p_13_out[2]));
  OBUF \bits_OBUF[0]_inst 
       (.I(bits_OBUF[0]),
        .O(bits[0]));
  OBUF \bits_OBUF[1]_inst 
       (.I(bits_OBUF[1]),
        .O(bits[1]));
  OBUF \bits_OBUF[2]_inst 
       (.I(bits_OBUF[2]),
        .O(bits[2]));
  OBUF \bits_OBUF[3]_inst 
       (.I(bits_OBUF[3]),
        .O(bits[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bits_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_13_out[0]),
        .Q(bits_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bits_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_13_out[1]),
        .Q(bits_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bits_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_13_out[2]),
        .Q(bits_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bits_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tc_IBUF[7]),
        .Q(bits_OBUF[3]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \tc_IBUF[0]_inst 
       (.I(tc[0]),
        .O(tc_IBUF[0]));
  IBUF \tc_IBUF[10]_inst 
       (.I(tc[10]),
        .O(tc_IBUF[10]));
  IBUF \tc_IBUF[11]_inst 
       (.I(tc[11]),
        .O(tc_IBUF[11]));
  IBUF \tc_IBUF[12]_inst 
       (.I(tc[12]),
        .O(tc_IBUF[12]));
  IBUF \tc_IBUF[13]_inst 
       (.I(tc[13]),
        .O(tc_IBUF[13]));
  IBUF \tc_IBUF[14]_inst 
       (.I(tc[14]),
        .O(tc_IBUF[14]));
  IBUF \tc_IBUF[1]_inst 
       (.I(tc[1]),
        .O(tc_IBUF[1]));
  IBUF \tc_IBUF[2]_inst 
       (.I(tc[2]),
        .O(tc_IBUF[2]));
  IBUF \tc_IBUF[3]_inst 
       (.I(tc[3]),
        .O(tc_IBUF[3]));
  IBUF \tc_IBUF[4]_inst 
       (.I(tc[4]),
        .O(tc_IBUF[4]));
  IBUF \tc_IBUF[5]_inst 
       (.I(tc[5]),
        .O(tc_IBUF[5]));
  IBUF \tc_IBUF[6]_inst 
       (.I(tc[6]),
        .O(tc_IBUF[6]));
  IBUF \tc_IBUF[7]_inst 
       (.I(tc[7]),
        .O(tc_IBUF[7]));
  IBUF \tc_IBUF[8]_inst 
       (.I(tc[8]),
        .O(tc_IBUF[8]));
  IBUF \tc_IBUF[9]_inst 
       (.I(tc[9]),
        .O(tc_IBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
