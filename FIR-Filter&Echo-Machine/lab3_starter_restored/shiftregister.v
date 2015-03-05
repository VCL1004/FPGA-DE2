// megafunction wizard: %Shift register (RAM-based)%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTSHIFT_TAPS 

// ============================================================
// File Name: shiftregister.v
// Megafunction Name(s):
// 			ALTSHIFT_TAPS
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 12.1 Build 177 11/07/2012 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2012 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module shiftregister (
	clock,
	shiftin,
	shiftout,
	taps);

	input	  clock;
	input	[15:0]  shiftin;
	output	[15:0]  shiftout;
	output	[511:0]  taps;

	wire [15:0] sub_wire0;
	wire [511:0] sub_wire1;
	wire [15:0] shiftout = sub_wire0[15:0];
	wire [511:0] taps = sub_wire1[511:0];

	altshift_taps	ALTSHIFT_TAPS_component (
				.clock (clock),
				.shiftin (shiftin),
				.shiftout (sub_wire0),
				.taps (sub_wire1)
				// synopsys translate_off
				,
				.aclr (),
				.clken ()
				// synopsys translate_on
				);
	defparam
		ALTSHIFT_TAPS_component.intended_device_family = "Cyclone II",
		ALTSHIFT_TAPS_component.lpm_hint = "RAM_BLOCK_TYPE=M4K",
		ALTSHIFT_TAPS_component.lpm_type = "altshift_taps",
		ALTSHIFT_TAPS_component.number_of_taps = 16,
		ALTSHIFT_TAPS_component.tap_distance = 4,
		ALTSHIFT_TAPS_component.width = 16;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "0"
// Retrieval info: PRIVATE: CLKEN NUMERIC "0"
// Retrieval info: PRIVATE: GROUP_TAPS NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: NUMBER_OF_TAPS NUMERIC "32"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: TAP_DISTANCE NUMERIC "8"
// Retrieval info: PRIVATE: WIDTH NUMERIC "16"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: CONSTANT: LPM_HINT STRING "RAM_BLOCK_TYPE=M4K"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altshift_taps"
// Retrieval info: CONSTANT: NUMBER_OF_TAPS NUMERIC "32"
// Retrieval info: CONSTANT: TAP_DISTANCE NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH NUMERIC "16"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: shiftin 0 0 16 0 INPUT NODEFVAL "shiftin[15..0]"
// Retrieval info: USED_PORT: shiftout 0 0 16 0 OUTPUT NODEFVAL "shiftout[15..0]"
// Retrieval info: USED_PORT: taps 0 0 512 0 OUTPUT NODEFVAL "taps[511..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @shiftin 0 0 16 0 shiftin 0 0 16 0
// Retrieval info: CONNECT: shiftout 0 0 16 0 @shiftout 0 0 16 0
// Retrieval info: CONNECT: taps 0 0 512 0 @taps 0 0 512 0
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftregister.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftregister.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftregister.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftregister.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftregister_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftregister_bb.v TRUE
// Retrieval info: LIB_FILE: altera_mf
