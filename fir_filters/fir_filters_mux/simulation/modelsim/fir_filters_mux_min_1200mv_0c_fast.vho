-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "07/09/2025 17:26:16"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fir_filters_mux IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	sws : IN std_logic_vector(3 DOWNTO 0);
	sig_in_bp : IN std_logic_vector(13 DOWNTO 0);
	sig_in_bs : IN std_logic_vector(13 DOWNTO 0);
	sig_in_hp : IN std_logic_vector(13 DOWNTO 0);
	sig_in_lp : IN std_logic_vector(13 DOWNTO 0);
	sig_out : OUT std_logic_vector(13 DOWNTO 0);
	clk_adc : OUT std_logic;
	ss_disps : OUT std_logic_vector(20 DOWNTO 0)
	);
END fir_filters_mux;

-- Design Ports Information
-- sig_out[0]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[2]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[3]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[4]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[5]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[7]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[8]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[9]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[10]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[12]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_adc	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[6]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[7]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[10]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[11]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[13]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[14]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[16]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[17]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[18]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[19]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_disps[20]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[1]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[1]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[2]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[2]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[2]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[3]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[3]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[3]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[4]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[4]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[4]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[5]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[5]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[6]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[6]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[7]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[7]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[8]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[8]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[8]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[8]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[9]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[9]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[9]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[9]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[10]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[10]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[10]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[10]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[11]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[11]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[11]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[12]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[12]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[12]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[12]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bs[13]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_hp[13]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_lp[13]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in_bp[13]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sws[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sws[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sws[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sws[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_filters_mux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sws : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sig_in_bp : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_sig_in_bs : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_sig_in_hp : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_sig_in_lp : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_sig_out : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_clk_adc : std_logic;
SIGNAL ww_ss_disps : std_logic_vector(20 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sig_out[0]~output_o\ : std_logic;
SIGNAL \sig_out[1]~output_o\ : std_logic;
SIGNAL \sig_out[2]~output_o\ : std_logic;
SIGNAL \sig_out[3]~output_o\ : std_logic;
SIGNAL \sig_out[4]~output_o\ : std_logic;
SIGNAL \sig_out[5]~output_o\ : std_logic;
SIGNAL \sig_out[6]~output_o\ : std_logic;
SIGNAL \sig_out[7]~output_o\ : std_logic;
SIGNAL \sig_out[8]~output_o\ : std_logic;
SIGNAL \sig_out[9]~output_o\ : std_logic;
SIGNAL \sig_out[10]~output_o\ : std_logic;
SIGNAL \sig_out[11]~output_o\ : std_logic;
SIGNAL \sig_out[12]~output_o\ : std_logic;
SIGNAL \sig_out[13]~output_o\ : std_logic;
SIGNAL \clk_adc~output_o\ : std_logic;
SIGNAL \ss_disps[0]~output_o\ : std_logic;
SIGNAL \ss_disps[1]~output_o\ : std_logic;
SIGNAL \ss_disps[2]~output_o\ : std_logic;
SIGNAL \ss_disps[3]~output_o\ : std_logic;
SIGNAL \ss_disps[4]~output_o\ : std_logic;
SIGNAL \ss_disps[5]~output_o\ : std_logic;
SIGNAL \ss_disps[6]~output_o\ : std_logic;
SIGNAL \ss_disps[7]~output_o\ : std_logic;
SIGNAL \ss_disps[8]~output_o\ : std_logic;
SIGNAL \ss_disps[9]~output_o\ : std_logic;
SIGNAL \ss_disps[10]~output_o\ : std_logic;
SIGNAL \ss_disps[11]~output_o\ : std_logic;
SIGNAL \ss_disps[12]~output_o\ : std_logic;
SIGNAL \ss_disps[13]~output_o\ : std_logic;
SIGNAL \ss_disps[14]~output_o\ : std_logic;
SIGNAL \ss_disps[15]~output_o\ : std_logic;
SIGNAL \ss_disps[16]~output_o\ : std_logic;
SIGNAL \ss_disps[17]~output_o\ : std_logic;
SIGNAL \ss_disps[18]~output_o\ : std_logic;
SIGNAL \ss_disps[19]~output_o\ : std_logic;
SIGNAL \ss_disps[20]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sws[0]~input_o\ : std_logic;
SIGNAL \sws[2]~input_o\ : std_logic;
SIGNAL \sws[3]~input_o\ : std_logic;
SIGNAL \fir_select~14_combout\ : std_logic;
SIGNAL \sws[1]~input_o\ : std_logic;
SIGNAL \fir_select~15_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \fir_select.band_stop~q\ : std_logic;
SIGNAL \fir_select.band_pass~2_combout\ : std_logic;
SIGNAL \fir_select.band_pass~q\ : std_logic;
SIGNAL \sig_out[0]~0_combout\ : std_logic;
SIGNAL \sig_in_hp[0]~input_o\ : std_logic;
SIGNAL \fir_select~16_combout\ : std_logic;
SIGNAL \fir_select~17_combout\ : std_logic;
SIGNAL \fir_select.high_pass~q\ : std_logic;
SIGNAL \sig_out[0]~1_combout\ : std_logic;
SIGNAL \sig_in_lp[0]~input_o\ : std_logic;
SIGNAL \sig_out[0]~2_combout\ : std_logic;
SIGNAL \sig_in_bp[0]~input_o\ : std_logic;
SIGNAL \sig_in_bs[0]~input_o\ : std_logic;
SIGNAL \sig_out[0]~3_combout\ : std_logic;
SIGNAL \sig_in_lp[1]~input_o\ : std_logic;
SIGNAL \sig_in_hp[1]~input_o\ : std_logic;
SIGNAL \sig_out[1]~4_combout\ : std_logic;
SIGNAL \sig_in_bp[1]~input_o\ : std_logic;
SIGNAL \sig_in_bs[1]~input_o\ : std_logic;
SIGNAL \sig_out[1]~5_combout\ : std_logic;
SIGNAL \sig_in_bp[2]~input_o\ : std_logic;
SIGNAL \sig_in_lp[2]~input_o\ : std_logic;
SIGNAL \sig_in_bs[2]~input_o\ : std_logic;
SIGNAL \sig_out[2]~6_combout\ : std_logic;
SIGNAL \sig_in_hp[2]~input_o\ : std_logic;
SIGNAL \sig_out[2]~7_combout\ : std_logic;
SIGNAL \sig_in_hp[3]~input_o\ : std_logic;
SIGNAL \sig_in_lp[3]~input_o\ : std_logic;
SIGNAL \sig_out[3]~8_combout\ : std_logic;
SIGNAL \sig_in_bs[3]~input_o\ : std_logic;
SIGNAL \sig_in_bp[3]~input_o\ : std_logic;
SIGNAL \sig_out[3]~9_combout\ : std_logic;
SIGNAL \sig_in_lp[4]~input_o\ : std_logic;
SIGNAL \sig_in_bs[4]~input_o\ : std_logic;
SIGNAL \sig_out[4]~10_combout\ : std_logic;
SIGNAL \sig_in_hp[4]~input_o\ : std_logic;
SIGNAL \sig_in_bp[4]~input_o\ : std_logic;
SIGNAL \sig_out[4]~11_combout\ : std_logic;
SIGNAL \sig_in_lp[5]~input_o\ : std_logic;
SIGNAL \sig_in_hp[5]~input_o\ : std_logic;
SIGNAL \sig_out[5]~12_combout\ : std_logic;
SIGNAL \sig_in_bs[5]~input_o\ : std_logic;
SIGNAL \sig_in_bp[5]~input_o\ : std_logic;
SIGNAL \sig_out[5]~13_combout\ : std_logic;
SIGNAL \sig_in_bp[6]~input_o\ : std_logic;
SIGNAL \sig_in_bs[6]~input_o\ : std_logic;
SIGNAL \sig_in_lp[6]~input_o\ : std_logic;
SIGNAL \sig_out[6]~14_combout\ : std_logic;
SIGNAL \sig_in_hp[6]~input_o\ : std_logic;
SIGNAL \sig_out[6]~15_combout\ : std_logic;
SIGNAL \sig_in_hp[7]~input_o\ : std_logic;
SIGNAL \sig_in_lp[7]~input_o\ : std_logic;
SIGNAL \sig_out[7]~16_combout\ : std_logic;
SIGNAL \sig_in_bp[7]~input_o\ : std_logic;
SIGNAL \sig_in_bs[7]~input_o\ : std_logic;
SIGNAL \sig_out[7]~17_combout\ : std_logic;
SIGNAL \sig_in_bp[8]~input_o\ : std_logic;
SIGNAL \sig_in_lp[8]~input_o\ : std_logic;
SIGNAL \sig_in_bs[8]~input_o\ : std_logic;
SIGNAL \sig_out[8]~18_combout\ : std_logic;
SIGNAL \sig_in_hp[8]~input_o\ : std_logic;
SIGNAL \sig_out[8]~19_combout\ : std_logic;
SIGNAL \sig_in_bp[9]~input_o\ : std_logic;
SIGNAL \sig_in_hp[9]~input_o\ : std_logic;
SIGNAL \sig_in_lp[9]~input_o\ : std_logic;
SIGNAL \sig_out[9]~20_combout\ : std_logic;
SIGNAL \sig_in_bs[9]~input_o\ : std_logic;
SIGNAL \sig_out[9]~21_combout\ : std_logic;
SIGNAL \sig_in_lp[10]~input_o\ : std_logic;
SIGNAL \sig_in_bs[10]~input_o\ : std_logic;
SIGNAL \sig_out[10]~22_combout\ : std_logic;
SIGNAL \sig_in_bp[10]~input_o\ : std_logic;
SIGNAL \sig_in_hp[10]~input_o\ : std_logic;
SIGNAL \sig_out[10]~23_combout\ : std_logic;
SIGNAL \sig_in_bp[11]~input_o\ : std_logic;
SIGNAL \sig_in_lp[11]~input_o\ : std_logic;
SIGNAL \sig_in_hp[11]~input_o\ : std_logic;
SIGNAL \sig_out[11]~24_combout\ : std_logic;
SIGNAL \sig_in_bs[11]~input_o\ : std_logic;
SIGNAL \sig_out[11]~25_combout\ : std_logic;
SIGNAL \sig_in_lp[12]~input_o\ : std_logic;
SIGNAL \sig_in_bs[12]~input_o\ : std_logic;
SIGNAL \sig_out[12]~26_combout\ : std_logic;
SIGNAL \sig_in_hp[12]~input_o\ : std_logic;
SIGNAL \sig_in_bp[12]~input_o\ : std_logic;
SIGNAL \sig_out[12]~27_combout\ : std_logic;
SIGNAL \sig_in_hp[13]~input_o\ : std_logic;
SIGNAL \sig_in_lp[13]~input_o\ : std_logic;
SIGNAL \sig_out[13]~28_combout\ : std_logic;
SIGNAL \sig_in_bp[13]~input_o\ : std_logic;
SIGNAL \sig_in_bs[13]~input_o\ : std_logic;
SIGNAL \sig_out[13]~29_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \pulse_reg~q\ : std_logic;
SIGNAL \ss_disps[6]~0_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ss_disps[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sig_out[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_fir_select.band_pass~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sws <= sws;
ww_sig_in_bp <= sig_in_bp;
ww_sig_in_bs <= sig_in_bs;
ww_sig_in_hp <= sig_in_hp;
ww_sig_in_lp <= sig_in_lp;
sig_out <= ww_sig_out;
clk_adc <= ww_clk_adc;
ss_disps <= ww_ss_disps;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_ss_disps[6]~0_combout\ <= NOT \ss_disps[6]~0_combout\;
\ALT_INV_sig_out[0]~1_combout\ <= NOT \sig_out[0]~1_combout\;
\ALT_INV_fir_select.band_pass~q\ <= NOT \fir_select.band_pass~q\;

-- Location: IOOBUF_X115_Y27_N9
\sig_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[0]~3_combout\,
	devoe => ww_devoe,
	o => \sig_out[0]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\sig_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \sig_out[1]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\sig_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[2]~7_combout\,
	devoe => ww_devoe,
	o => \sig_out[2]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\sig_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[3]~9_combout\,
	devoe => ww_devoe,
	o => \sig_out[3]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\sig_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[4]~11_combout\,
	devoe => ww_devoe,
	o => \sig_out[4]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\sig_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[5]~13_combout\,
	devoe => ww_devoe,
	o => \sig_out[5]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\sig_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[6]~15_combout\,
	devoe => ww_devoe,
	o => \sig_out[6]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\sig_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[7]~17_combout\,
	devoe => ww_devoe,
	o => \sig_out[7]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\sig_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[8]~19_combout\,
	devoe => ww_devoe,
	o => \sig_out[8]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\sig_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[9]~21_combout\,
	devoe => ww_devoe,
	o => \sig_out[9]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\sig_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[10]~23_combout\,
	devoe => ww_devoe,
	o => \sig_out[10]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\sig_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[11]~25_combout\,
	devoe => ww_devoe,
	o => \sig_out[11]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\sig_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[12]~27_combout\,
	devoe => ww_devoe,
	o => \sig_out[12]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\sig_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[13]~29_combout\,
	devoe => ww_devoe,
	o => \sig_out[13]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\clk_adc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulse_reg~q\,
	devoe => ww_devoe,
	o => \clk_adc~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\ss_disps[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ss_disps[0]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\ss_disps[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_disps[6]~0_combout\,
	devoe => ww_devoe,
	o => \ss_disps[1]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\ss_disps[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_disps[6]~0_combout\,
	devoe => ww_devoe,
	o => \ss_disps[2]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\ss_disps[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss_disps[6]~0_combout\,
	devoe => ww_devoe,
	o => \ss_disps[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\ss_disps[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ss_disps[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ss_disps[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ss_disps[5]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\ss_disps[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_disps[6]~0_combout\,
	devoe => ww_devoe,
	o => \ss_disps[6]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\ss_disps[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ss_disps[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\ss_disps[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_select.band_pass~q\,
	devoe => ww_devoe,
	o => \ss_disps[8]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\ss_disps[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_select.band_pass~q\,
	devoe => ww_devoe,
	o => \ss_disps[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\ss_disps[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_fir_select.band_pass~q\,
	devoe => ww_devoe,
	o => \ss_disps[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\ss_disps[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_select.band_pass~q\,
	devoe => ww_devoe,
	o => \ss_disps[11]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\ss_disps[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_select.band_pass~q\,
	devoe => ww_devoe,
	o => \ss_disps[12]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\ss_disps[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_select.band_pass~q\,
	devoe => ww_devoe,
	o => \ss_disps[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ss_disps[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ss_disps[14]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\ss_disps[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ss_disps[15]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\ss_disps[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ss_disps[16]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\ss_disps[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sig_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \ss_disps[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\ss_disps[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \ss_disps[18]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\ss_disps[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \ss_disps[19]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\ss_disps[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \ss_disps[20]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X87_Y73_N15
\sws[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sws(0),
	o => \sws[0]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\sws[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sws(2),
	o => \sws[2]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\sws[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sws(3),
	o => \sws[3]~input_o\);

-- Location: LCCOMB_X86_Y72_N28
\fir_select~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_select~14_combout\ = (\sws[2]~input_o\ & \sws[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sws[2]~input_o\,
	datac => \sws[3]~input_o\,
	combout => \fir_select~14_combout\);

-- Location: IOIBUF_X87_Y73_N1
\sws[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sws(1),
	o => \sws[1]~input_o\);

-- Location: LCCOMB_X86_Y72_N20
\fir_select~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_select~15_combout\ = (\sws[0]~input_o\ & (((\fir_select~14_combout\ & \fir_select.band_stop~q\)) # (!\sws[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws[0]~input_o\,
	datab => \fir_select~14_combout\,
	datac => \fir_select.band_stop~q\,
	datad => \sws[1]~input_o\,
	combout => \fir_select~15_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X86_Y72_N21
\fir_select.band_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_select~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_select.band_stop~q\);

-- Location: LCCOMB_X86_Y72_N22
\fir_select.band_pass~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_select.band_pass~2_combout\ = (\sws[0]~input_o\ & (((\fir_select.band_pass~q\) # (!\sws[1]~input_o\)) # (!\fir_select~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws[0]~input_o\,
	datab => \fir_select~14_combout\,
	datac => \fir_select.band_pass~q\,
	datad => \sws[1]~input_o\,
	combout => \fir_select.band_pass~2_combout\);

-- Location: FF_X86_Y72_N23
\fir_select.band_pass\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_select.band_pass~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_select.band_pass~q\);

-- Location: LCCOMB_X86_Y72_N16
\sig_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[0]~0_combout\ = (\fir_select.band_stop~q\) # (!\fir_select.band_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_select.band_stop~q\,
	datac => \fir_select.band_pass~q\,
	combout => \sig_out[0]~0_combout\);

-- Location: IOIBUF_X115_Y26_N15
\sig_in_hp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(0),
	o => \sig_in_hp[0]~input_o\);

-- Location: LCCOMB_X86_Y72_N18
\fir_select~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_select~16_combout\ = (\sws[0]~input_o\ & \sws[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sws[0]~input_o\,
	datad => \sws[1]~input_o\,
	combout => \fir_select~16_combout\);

-- Location: LCCOMB_X86_Y72_N26
\fir_select~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_select~17_combout\ = (\fir_select~16_combout\ & (((\sws[3]~input_o\ & \fir_select.high_pass~q\)) # (!\sws[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws[3]~input_o\,
	datab => \sws[2]~input_o\,
	datac => \fir_select.high_pass~q\,
	datad => \fir_select~16_combout\,
	combout => \fir_select~17_combout\);

-- Location: FF_X86_Y72_N27
\fir_select.high_pass\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_select~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_select.high_pass~q\);

-- Location: LCCOMB_X86_Y72_N12
\sig_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[0]~1_combout\ = ((!\fir_select.band_stop~q\ & \fir_select.high_pass~q\)) # (!\fir_select.band_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_select.band_pass~q\,
	datab => \fir_select.band_stop~q\,
	datac => \fir_select.high_pass~q\,
	combout => \sig_out[0]~1_combout\);

-- Location: IOIBUF_X115_Y30_N1
\sig_in_lp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(0),
	o => \sig_in_lp[0]~input_o\);

-- Location: LCCOMB_X114_Y22_N0
\sig_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[0]~2_combout\ = (\sig_out[0]~0_combout\ & (((\sig_out[0]~1_combout\)))) # (!\sig_out[0]~0_combout\ & ((\sig_out[0]~1_combout\ & (\sig_in_hp[0]~input_o\)) # (!\sig_out[0]~1_combout\ & ((\sig_in_lp[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_in_hp[0]~input_o\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_lp[0]~input_o\,
	combout => \sig_out[0]~2_combout\);

-- Location: IOIBUF_X115_Y17_N8
\sig_in_bp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(0),
	o => \sig_in_bp[0]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\sig_in_bs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(0),
	o => \sig_in_bs[0]~input_o\);

-- Location: LCCOMB_X114_Y22_N2
\sig_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[0]~3_combout\ = (\sig_out[0]~0_combout\ & ((\sig_out[0]~2_combout\ & (\sig_in_bp[0]~input_o\)) # (!\sig_out[0]~2_combout\ & ((\sig_in_bs[0]~input_o\))))) # (!\sig_out[0]~0_combout\ & (\sig_out[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_out[0]~2_combout\,
	datac => \sig_in_bp[0]~input_o\,
	datad => \sig_in_bs[0]~input_o\,
	combout => \sig_out[0]~3_combout\);

-- Location: IOIBUF_X115_Y19_N1
\sig_in_lp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(1),
	o => \sig_in_lp[1]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\sig_in_hp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(1),
	o => \sig_in_hp[1]~input_o\);

-- Location: LCCOMB_X114_Y22_N28
\sig_out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[1]~4_combout\ = (\sig_out[0]~0_combout\ & (\sig_out[0]~1_combout\)) # (!\sig_out[0]~0_combout\ & ((\sig_out[0]~1_combout\ & ((\sig_in_hp[1]~input_o\))) # (!\sig_out[0]~1_combout\ & (\sig_in_lp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_out[0]~1_combout\,
	datac => \sig_in_lp[1]~input_o\,
	datad => \sig_in_hp[1]~input_o\,
	combout => \sig_out[1]~4_combout\);

-- Location: IOIBUF_X115_Y19_N8
\sig_in_bp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(1),
	o => \sig_in_bp[1]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\sig_in_bs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(1),
	o => \sig_in_bs[1]~input_o\);

-- Location: LCCOMB_X114_Y22_N18
\sig_out[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[1]~5_combout\ = (\sig_out[0]~0_combout\ & ((\sig_out[1]~4_combout\ & (\sig_in_bp[1]~input_o\)) # (!\sig_out[1]~4_combout\ & ((\sig_in_bs[1]~input_o\))))) # (!\sig_out[0]~0_combout\ & (\sig_out[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_out[1]~4_combout\,
	datac => \sig_in_bp[1]~input_o\,
	datad => \sig_in_bs[1]~input_o\,
	combout => \sig_out[1]~5_combout\);

-- Location: IOIBUF_X115_Y26_N22
\sig_in_bp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(2),
	o => \sig_in_bp[2]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\sig_in_lp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(2),
	o => \sig_in_lp[2]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\sig_in_bs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(2),
	o => \sig_in_bs[2]~input_o\);

-- Location: LCCOMB_X114_Y22_N8
\sig_out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[2]~6_combout\ = (\sig_out[0]~0_combout\ & ((\sig_out[0]~1_combout\) # ((\sig_in_bs[2]~input_o\)))) # (!\sig_out[0]~0_combout\ & (!\sig_out[0]~1_combout\ & (\sig_in_lp[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_out[0]~1_combout\,
	datac => \sig_in_lp[2]~input_o\,
	datad => \sig_in_bs[2]~input_o\,
	combout => \sig_out[2]~6_combout\);

-- Location: IOIBUF_X115_Y29_N8
\sig_in_hp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(2),
	o => \sig_in_hp[2]~input_o\);

-- Location: LCCOMB_X114_Y22_N30
\sig_out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[2]~7_combout\ = (\sig_out[2]~6_combout\ & ((\sig_in_bp[2]~input_o\) # ((!\sig_out[0]~1_combout\)))) # (!\sig_out[2]~6_combout\ & (((\sig_out[0]~1_combout\ & \sig_in_hp[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_bp[2]~input_o\,
	datab => \sig_out[2]~6_combout\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_hp[2]~input_o\,
	combout => \sig_out[2]~7_combout\);

-- Location: IOIBUF_X115_Y52_N1
\sig_in_hp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(3),
	o => \sig_in_hp[3]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\sig_in_lp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(3),
	o => \sig_in_lp[3]~input_o\);

-- Location: LCCOMB_X114_Y52_N12
\sig_out[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[3]~8_combout\ = (\sig_out[0]~1_combout\ & ((\sig_out[0]~0_combout\) # ((\sig_in_hp[3]~input_o\)))) # (!\sig_out[0]~1_combout\ & (!\sig_out[0]~0_combout\ & ((\sig_in_lp[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~1_combout\,
	datab => \sig_out[0]~0_combout\,
	datac => \sig_in_hp[3]~input_o\,
	datad => \sig_in_lp[3]~input_o\,
	combout => \sig_out[3]~8_combout\);

-- Location: IOIBUF_X115_Y50_N1
\sig_in_bs[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(3),
	o => \sig_in_bs[3]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\sig_in_bp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(3),
	o => \sig_in_bp[3]~input_o\);

-- Location: LCCOMB_X114_Y52_N14
\sig_out[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[3]~9_combout\ = (\sig_out[3]~8_combout\ & (((\sig_in_bp[3]~input_o\)) # (!\sig_out[0]~0_combout\))) # (!\sig_out[3]~8_combout\ & (\sig_out[0]~0_combout\ & (\sig_in_bs[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[3]~8_combout\,
	datab => \sig_out[0]~0_combout\,
	datac => \sig_in_bs[3]~input_o\,
	datad => \sig_in_bp[3]~input_o\,
	combout => \sig_out[3]~9_combout\);

-- Location: IOIBUF_X115_Y56_N15
\sig_in_lp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(4),
	o => \sig_in_lp[4]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\sig_in_bs[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(4),
	o => \sig_in_bs[4]~input_o\);

-- Location: LCCOMB_X114_Y52_N4
\sig_out[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[4]~10_combout\ = (\sig_out[0]~0_combout\ & (((\sig_out[0]~1_combout\) # (\sig_in_bs[4]~input_o\)))) # (!\sig_out[0]~0_combout\ & (\sig_in_lp[4]~input_o\ & (!\sig_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_lp[4]~input_o\,
	datab => \sig_out[0]~0_combout\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_bs[4]~input_o\,
	combout => \sig_out[4]~10_combout\);

-- Location: IOIBUF_X115_Y54_N15
\sig_in_hp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(4),
	o => \sig_in_hp[4]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\sig_in_bp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(4),
	o => \sig_in_bp[4]~input_o\);

-- Location: LCCOMB_X114_Y52_N26
\sig_out[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[4]~11_combout\ = (\sig_out[0]~1_combout\ & ((\sig_out[4]~10_combout\ & ((\sig_in_bp[4]~input_o\))) # (!\sig_out[4]~10_combout\ & (\sig_in_hp[4]~input_o\)))) # (!\sig_out[0]~1_combout\ & (\sig_out[4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~1_combout\,
	datab => \sig_out[4]~10_combout\,
	datac => \sig_in_hp[4]~input_o\,
	datad => \sig_in_bp[4]~input_o\,
	combout => \sig_out[4]~11_combout\);

-- Location: IOIBUF_X115_Y27_N1
\sig_in_lp[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(5),
	o => \sig_in_lp[5]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\sig_in_hp[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(5),
	o => \sig_in_hp[5]~input_o\);

-- Location: LCCOMB_X114_Y22_N20
\sig_out[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[5]~12_combout\ = (\sig_out[0]~0_combout\ & (\sig_out[0]~1_combout\)) # (!\sig_out[0]~0_combout\ & ((\sig_out[0]~1_combout\ & ((\sig_in_hp[5]~input_o\))) # (!\sig_out[0]~1_combout\ & (\sig_in_lp[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_out[0]~1_combout\,
	datac => \sig_in_lp[5]~input_o\,
	datad => \sig_in_hp[5]~input_o\,
	combout => \sig_out[5]~12_combout\);

-- Location: IOIBUF_X115_Y22_N1
\sig_in_bs[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(5),
	o => \sig_in_bs[5]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\sig_in_bp[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(5),
	o => \sig_in_bp[5]~input_o\);

-- Location: LCCOMB_X114_Y22_N22
\sig_out[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[5]~13_combout\ = (\sig_out[0]~0_combout\ & ((\sig_out[5]~12_combout\ & ((\sig_in_bp[5]~input_o\))) # (!\sig_out[5]~12_combout\ & (\sig_in_bs[5]~input_o\)))) # (!\sig_out[0]~0_combout\ & (\sig_out[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_out[5]~12_combout\,
	datac => \sig_in_bs[5]~input_o\,
	datad => \sig_in_bp[5]~input_o\,
	combout => \sig_out[5]~13_combout\);

-- Location: IOIBUF_X115_Y22_N22
\sig_in_bp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(6),
	o => \sig_in_bp[6]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\sig_in_bs[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(6),
	o => \sig_in_bs[6]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\sig_in_lp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(6),
	o => \sig_in_lp[6]~input_o\);

-- Location: LCCOMB_X114_Y22_N24
\sig_out[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[6]~14_combout\ = (\sig_out[0]~0_combout\ & ((\sig_in_bs[6]~input_o\) # ((\sig_out[0]~1_combout\)))) # (!\sig_out[0]~0_combout\ & (((!\sig_out[0]~1_combout\ & \sig_in_lp[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_in_bs[6]~input_o\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_lp[6]~input_o\,
	combout => \sig_out[6]~14_combout\);

-- Location: IOIBUF_X115_Y25_N15
\sig_in_hp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(6),
	o => \sig_in_hp[6]~input_o\);

-- Location: LCCOMB_X114_Y22_N26
\sig_out[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[6]~15_combout\ = (\sig_out[6]~14_combout\ & ((\sig_in_bp[6]~input_o\) # ((!\sig_out[0]~1_combout\)))) # (!\sig_out[6]~14_combout\ & (((\sig_out[0]~1_combout\ & \sig_in_hp[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_bp[6]~input_o\,
	datab => \sig_out[6]~14_combout\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_hp[6]~input_o\,
	combout => \sig_out[6]~15_combout\);

-- Location: IOIBUF_X115_Y17_N1
\sig_in_hp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(7),
	o => \sig_in_hp[7]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\sig_in_lp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(7),
	o => \sig_in_lp[7]~input_o\);

-- Location: LCCOMB_X114_Y22_N12
\sig_out[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[7]~16_combout\ = (\sig_out[0]~0_combout\ & (((\sig_out[0]~1_combout\)))) # (!\sig_out[0]~0_combout\ & ((\sig_out[0]~1_combout\ & (\sig_in_hp[7]~input_o\)) # (!\sig_out[0]~1_combout\ & ((\sig_in_lp[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~0_combout\,
	datab => \sig_in_hp[7]~input_o\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_lp[7]~input_o\,
	combout => \sig_out[7]~16_combout\);

-- Location: IOIBUF_X115_Y24_N1
\sig_in_bp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(7),
	o => \sig_in_bp[7]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\sig_in_bs[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(7),
	o => \sig_in_bs[7]~input_o\);

-- Location: LCCOMB_X114_Y22_N10
\sig_out[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[7]~17_combout\ = (\sig_out[7]~16_combout\ & ((\sig_in_bp[7]~input_o\) # ((!\sig_out[0]~0_combout\)))) # (!\sig_out[7]~16_combout\ & (((\sig_out[0]~0_combout\ & \sig_in_bs[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[7]~16_combout\,
	datab => \sig_in_bp[7]~input_o\,
	datac => \sig_out[0]~0_combout\,
	datad => \sig_in_bs[7]~input_o\,
	combout => \sig_out[7]~17_combout\);

-- Location: IOIBUF_X115_Y51_N1
\sig_in_bp[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(8),
	o => \sig_in_bp[8]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\sig_in_lp[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(8),
	o => \sig_in_lp[8]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\sig_in_bs[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(8),
	o => \sig_in_bs[8]~input_o\);

-- Location: LCCOMB_X114_Y52_N0
\sig_out[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[8]~18_combout\ = (\sig_out[0]~0_combout\ & (((\sig_out[0]~1_combout\) # (\sig_in_bs[8]~input_o\)))) # (!\sig_out[0]~0_combout\ & (\sig_in_lp[8]~input_o\ & (!\sig_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_lp[8]~input_o\,
	datab => \sig_out[0]~0_combout\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_bs[8]~input_o\,
	combout => \sig_out[8]~18_combout\);

-- Location: IOIBUF_X115_Y56_N22
\sig_in_hp[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(8),
	o => \sig_in_hp[8]~input_o\);

-- Location: LCCOMB_X114_Y52_N6
\sig_out[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[8]~19_combout\ = (\sig_out[8]~18_combout\ & ((\sig_in_bp[8]~input_o\) # ((!\sig_out[0]~1_combout\)))) # (!\sig_out[8]~18_combout\ & (((\sig_out[0]~1_combout\ & \sig_in_hp[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_bp[8]~input_o\,
	datab => \sig_out[8]~18_combout\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_hp[8]~input_o\,
	combout => \sig_out[8]~19_combout\);

-- Location: IOIBUF_X115_Y49_N8
\sig_in_bp[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(9),
	o => \sig_in_bp[9]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\sig_in_hp[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(9),
	o => \sig_in_hp[9]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\sig_in_lp[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(9),
	o => \sig_in_lp[9]~input_o\);

-- Location: LCCOMB_X114_Y52_N24
\sig_out[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[9]~20_combout\ = (\sig_out[0]~1_combout\ & ((\sig_out[0]~0_combout\) # ((\sig_in_hp[9]~input_o\)))) # (!\sig_out[0]~1_combout\ & (!\sig_out[0]~0_combout\ & ((\sig_in_lp[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~1_combout\,
	datab => \sig_out[0]~0_combout\,
	datac => \sig_in_hp[9]~input_o\,
	datad => \sig_in_lp[9]~input_o\,
	combout => \sig_out[9]~20_combout\);

-- Location: IOIBUF_X115_Y58_N22
\sig_in_bs[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(9),
	o => \sig_in_bs[9]~input_o\);

-- Location: LCCOMB_X114_Y52_N30
\sig_out[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[9]~21_combout\ = (\sig_out[9]~20_combout\ & ((\sig_in_bp[9]~input_o\) # ((!\sig_out[0]~0_combout\)))) # (!\sig_out[9]~20_combout\ & (((\sig_out[0]~0_combout\ & \sig_in_bs[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_bp[9]~input_o\,
	datab => \sig_out[9]~20_combout\,
	datac => \sig_out[0]~0_combout\,
	datad => \sig_in_bs[9]~input_o\,
	combout => \sig_out[9]~21_combout\);

-- Location: IOIBUF_X115_Y59_N15
\sig_in_lp[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(10),
	o => \sig_in_lp[10]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\sig_in_bs[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(10),
	o => \sig_in_bs[10]~input_o\);

-- Location: LCCOMB_X114_Y59_N0
\sig_out[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[10]~22_combout\ = (\sig_out[0]~1_combout\ & (((\sig_out[0]~0_combout\)))) # (!\sig_out[0]~1_combout\ & ((\sig_out[0]~0_combout\ & ((\sig_in_bs[10]~input_o\))) # (!\sig_out[0]~0_combout\ & (\sig_in_lp[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~1_combout\,
	datab => \sig_in_lp[10]~input_o\,
	datac => \sig_out[0]~0_combout\,
	datad => \sig_in_bs[10]~input_o\,
	combout => \sig_out[10]~22_combout\);

-- Location: IOIBUF_X115_Y60_N15
\sig_in_bp[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(10),
	o => \sig_in_bp[10]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\sig_in_hp[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(10),
	o => \sig_in_hp[10]~input_o\);

-- Location: LCCOMB_X114_Y59_N26
\sig_out[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[10]~23_combout\ = (\sig_out[0]~1_combout\ & ((\sig_out[10]~22_combout\ & (\sig_in_bp[10]~input_o\)) # (!\sig_out[10]~22_combout\ & ((\sig_in_hp[10]~input_o\))))) # (!\sig_out[0]~1_combout\ & (\sig_out[10]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~1_combout\,
	datab => \sig_out[10]~22_combout\,
	datac => \sig_in_bp[10]~input_o\,
	datad => \sig_in_hp[10]~input_o\,
	combout => \sig_out[10]~23_combout\);

-- Location: IOIBUF_X83_Y73_N8
\sig_in_bp[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(11),
	o => \sig_in_bp[11]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\sig_in_lp[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(11),
	o => \sig_in_lp[11]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\sig_in_hp[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(11),
	o => \sig_in_hp[11]~input_o\);

-- Location: LCCOMB_X86_Y72_N14
\sig_out[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[11]~24_combout\ = (\sig_out[0]~0_combout\ & (((\sig_out[0]~1_combout\)))) # (!\sig_out[0]~0_combout\ & ((\sig_out[0]~1_combout\ & ((\sig_in_hp[11]~input_o\))) # (!\sig_out[0]~1_combout\ & (\sig_in_lp[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_lp[11]~input_o\,
	datab => \sig_out[0]~0_combout\,
	datac => \sig_out[0]~1_combout\,
	datad => \sig_in_hp[11]~input_o\,
	combout => \sig_out[11]~24_combout\);

-- Location: IOIBUF_X83_Y73_N1
\sig_in_bs[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(11),
	o => \sig_in_bs[11]~input_o\);

-- Location: LCCOMB_X86_Y72_N4
\sig_out[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[11]~25_combout\ = (\sig_out[11]~24_combout\ & ((\sig_in_bp[11]~input_o\) # ((!\sig_out[0]~0_combout\)))) # (!\sig_out[11]~24_combout\ & (((\sig_in_bs[11]~input_o\ & \sig_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_bp[11]~input_o\,
	datab => \sig_out[11]~24_combout\,
	datac => \sig_in_bs[11]~input_o\,
	datad => \sig_out[0]~0_combout\,
	combout => \sig_out[11]~25_combout\);

-- Location: IOIBUF_X115_Y47_N22
\sig_in_lp[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(12),
	o => \sig_in_lp[12]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\sig_in_bs[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(12),
	o => \sig_in_bs[12]~input_o\);

-- Location: LCCOMB_X114_Y52_N28
\sig_out[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[12]~26_combout\ = (\sig_out[0]~1_combout\ & (((\sig_out[0]~0_combout\)))) # (!\sig_out[0]~1_combout\ & ((\sig_out[0]~0_combout\ & ((\sig_in_bs[12]~input_o\))) # (!\sig_out[0]~0_combout\ & (\sig_in_lp[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~1_combout\,
	datab => \sig_in_lp[12]~input_o\,
	datac => \sig_out[0]~0_combout\,
	datad => \sig_in_bs[12]~input_o\,
	combout => \sig_out[12]~26_combout\);

-- Location: IOIBUF_X115_Y48_N8
\sig_in_hp[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(12),
	o => \sig_in_hp[12]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\sig_in_bp[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(12),
	o => \sig_in_bp[12]~input_o\);

-- Location: LCCOMB_X114_Y52_N10
\sig_out[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[12]~27_combout\ = (\sig_out[0]~1_combout\ & ((\sig_out[12]~26_combout\ & ((\sig_in_bp[12]~input_o\))) # (!\sig_out[12]~26_combout\ & (\sig_in_hp[12]~input_o\)))) # (!\sig_out[0]~1_combout\ & (\sig_out[12]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[0]~1_combout\,
	datab => \sig_out[12]~26_combout\,
	datac => \sig_in_hp[12]~input_o\,
	datad => \sig_in_bp[12]~input_o\,
	combout => \sig_out[12]~27_combout\);

-- Location: IOIBUF_X85_Y73_N22
\sig_in_hp[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_hp(13),
	o => \sig_in_hp[13]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\sig_in_lp[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_lp(13),
	o => \sig_in_lp[13]~input_o\);

-- Location: LCCOMB_X86_Y72_N10
\sig_out[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[13]~28_combout\ = (\sig_out[0]~1_combout\ & ((\sig_in_hp[13]~input_o\) # ((\sig_out[0]~0_combout\)))) # (!\sig_out[0]~1_combout\ & (((\sig_in_lp[13]~input_o\ & !\sig_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in_hp[13]~input_o\,
	datab => \sig_out[0]~1_combout\,
	datac => \sig_in_lp[13]~input_o\,
	datad => \sig_out[0]~0_combout\,
	combout => \sig_out[13]~28_combout\);

-- Location: IOIBUF_X85_Y73_N15
\sig_in_bp[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bp(13),
	o => \sig_in_bp[13]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\sig_in_bs[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in_bs(13),
	o => \sig_in_bs[13]~input_o\);

-- Location: LCCOMB_X86_Y72_N24
\sig_out[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[13]~29_combout\ = (\sig_out[13]~28_combout\ & ((\sig_in_bp[13]~input_o\) # ((!\sig_out[0]~0_combout\)))) # (!\sig_out[13]~28_combout\ & (((\sig_in_bs[13]~input_o\ & \sig_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_out[13]~28_combout\,
	datab => \sig_in_bp[13]~input_o\,
	datac => \sig_in_bs[13]~input_o\,
	datad => \sig_out[0]~0_combout\,
	combout => \sig_out[13]~29_combout\);

-- Location: LCCOMB_X96_Y72_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X96_Y72_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt(1) & (!\Add0~1\)) # (!cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X96_Y72_N19
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X96_Y72_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt(2) & (\Add0~3\ $ (GND))) # (!cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X96_Y72_N21
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X96_Y72_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(3) & (!\Add0~5\)) # (!cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X96_Y72_N0
\cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (\Add0~6_combout\ & ((cnt(0)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datac => \Add0~6_combout\,
	datad => \Equal0~0_combout\,
	combout => \cnt~1_combout\);

-- Location: FF_X96_Y72_N1
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X96_Y72_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X96_Y72_N2
\cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\Add0~8_combout\ & ((cnt(0)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => cnt(0),
	datad => \Add0~8_combout\,
	combout => \cnt~0_combout\);

-- Location: FF_X96_Y72_N3
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X96_Y72_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cnt(1) & (cnt(3) & (!cnt(2) & cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(3),
	datac => cnt(2),
	datad => cnt(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X96_Y72_N12
\cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (\Add0~0_combout\ & ((cnt(0)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => cnt(0),
	datad => \Add0~0_combout\,
	combout => \cnt~2_combout\);

-- Location: FF_X96_Y72_N13
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X96_Y72_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt(0) & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(0),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X96_Y72_N5
pulse_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_reg~q\);

-- Location: LCCOMB_X86_Y72_N2
\ss_disps[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_disps[6]~0_combout\ = (\fir_select.band_pass~q\ & ((\fir_select.band_stop~q\) # (\fir_select.high_pass~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_select.band_pass~q\,
	datab => \fir_select.band_stop~q\,
	datac => \fir_select.high_pass~q\,
	combout => \ss_disps[6]~0_combout\);

ww_sig_out(0) <= \sig_out[0]~output_o\;

ww_sig_out(1) <= \sig_out[1]~output_o\;

ww_sig_out(2) <= \sig_out[2]~output_o\;

ww_sig_out(3) <= \sig_out[3]~output_o\;

ww_sig_out(4) <= \sig_out[4]~output_o\;

ww_sig_out(5) <= \sig_out[5]~output_o\;

ww_sig_out(6) <= \sig_out[6]~output_o\;

ww_sig_out(7) <= \sig_out[7]~output_o\;

ww_sig_out(8) <= \sig_out[8]~output_o\;

ww_sig_out(9) <= \sig_out[9]~output_o\;

ww_sig_out(10) <= \sig_out[10]~output_o\;

ww_sig_out(11) <= \sig_out[11]~output_o\;

ww_sig_out(12) <= \sig_out[12]~output_o\;

ww_sig_out(13) <= \sig_out[13]~output_o\;

ww_clk_adc <= \clk_adc~output_o\;

ww_ss_disps(0) <= \ss_disps[0]~output_o\;

ww_ss_disps(1) <= \ss_disps[1]~output_o\;

ww_ss_disps(2) <= \ss_disps[2]~output_o\;

ww_ss_disps(3) <= \ss_disps[3]~output_o\;

ww_ss_disps(4) <= \ss_disps[4]~output_o\;

ww_ss_disps(5) <= \ss_disps[5]~output_o\;

ww_ss_disps(6) <= \ss_disps[6]~output_o\;

ww_ss_disps(7) <= \ss_disps[7]~output_o\;

ww_ss_disps(8) <= \ss_disps[8]~output_o\;

ww_ss_disps(9) <= \ss_disps[9]~output_o\;

ww_ss_disps(10) <= \ss_disps[10]~output_o\;

ww_ss_disps(11) <= \ss_disps[11]~output_o\;

ww_ss_disps(12) <= \ss_disps[12]~output_o\;

ww_ss_disps(13) <= \ss_disps[13]~output_o\;

ww_ss_disps(14) <= \ss_disps[14]~output_o\;

ww_ss_disps(15) <= \ss_disps[15]~output_o\;

ww_ss_disps(16) <= \ss_disps[16]~output_o\;

ww_ss_disps(17) <= \ss_disps[17]~output_o\;

ww_ss_disps(18) <= \ss_disps[18]~output_o\;

ww_ss_disps(19) <= \ss_disps[19]~output_o\;

ww_ss_disps(20) <= \ss_disps[20]~output_o\;
END structure;


