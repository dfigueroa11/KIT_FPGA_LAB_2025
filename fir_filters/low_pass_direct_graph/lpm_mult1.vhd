-- megafunction wizard: %LPM_MULT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_mult 

-- ============================================================
-- File Name: lpm_mult1.vhd
-- Megafunction Name(s):
-- 			lpm_mult
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.0 Build 162 10/23/2013 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_mult1 IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
	);
END lpm_mult1;


ARCHITECTURE SYN OF lpm_mult1 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (13 DOWNTO 0);
	SIGNAL sub_wire1_bv	: BIT_VECTOR (2 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (2 DOWNTO 0);



	COMPONENT lpm_mult
	GENERIC (
		lpm_hint		: STRING;
		lpm_representation		: STRING;
		lpm_type		: STRING;
		lpm_widtha		: NATURAL;
		lpm_widthb		: NATURAL;
		lpm_widthp		: NATURAL
	);
	PORT (
			dataa	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire1_bv(2 DOWNTO 0) <= "010";
	sub_wire1    <= To_stdlogicvector(sub_wire1_bv);
	result    <= sub_wire0(13 DOWNTO 0);

	lpm_mult_component : lpm_mult
	GENERIC MAP (
		lpm_hint => "INPUT_B_IS_CONSTANT=YES,MAXIMIZE_SPEED=5",
		lpm_representation => "SIGNED",
		lpm_type => "LPM_MULT",
		lpm_widtha => 14,
		lpm_widthb => 3,
		lpm_widthp => 14
	)
	PORT MAP (
		dataa => dataa,
		datab => sub_wire1,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: AutoSizeResult NUMERIC "0"
-- Retrieval info: PRIVATE: B_isConstant NUMERIC "1"
-- Retrieval info: PRIVATE: ConstantB NUMERIC "2"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SignedMult NUMERIC "1"
-- Retrieval info: PRIVATE: USE_MULT NUMERIC "1"
-- Retrieval info: PRIVATE: ValidConstant NUMERIC "1"
-- Retrieval info: PRIVATE: WidthA NUMERIC "14"
-- Retrieval info: PRIVATE: WidthB NUMERIC "3"
-- Retrieval info: PRIVATE: WidthP NUMERIC "14"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: PRIVATE: optimize NUMERIC "0"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_HINT STRING "INPUT_B_IS_CONSTANT=YES,MAXIMIZE_SPEED=5"
-- Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
-- Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "14"
-- Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "3"
-- Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "14"
-- Retrieval info: USED_PORT: dataa 0 0 14 0 INPUT NODEFVAL "dataa[13..0]"
-- Retrieval info: USED_PORT: result 0 0 14 0 OUTPUT NODEFVAL "result[13..0]"
-- Retrieval info: CONNECT: @dataa 0 0 14 0 dataa 0 0 14 0
-- Retrieval info: CONNECT: @datab 0 0 3 0 2 0 0 3 0
-- Retrieval info: CONNECT: result 0 0 14 0 @result 0 0 14 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mult1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mult1.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mult1.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mult1.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mult1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
