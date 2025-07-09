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

-- DATE "07/09/2025 14:33:19"

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

ENTITY 	band_pass_direct_vhdl IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	sig_in : IN std_logic_vector(13 DOWNTO 0);
	sig_out : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END band_pass_direct_vhdl;

-- Design Ports Information
-- sig_out[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[5]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[7]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[10]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[12]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[13]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[0]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[13]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[8]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[9]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[10]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[11]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF band_pass_direct_vhdl IS
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
SIGNAL ww_sig_in : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_sig_out : std_logic_vector(13 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_in[1]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \taps[0][1]~q\ : std_logic;
SIGNAL \sig_in[0]~input_o\ : std_logic;
SIGNAL \taps[0][0]~q\ : std_logic;
SIGNAL \sig_in[13]~input_o\ : std_logic;
SIGNAL \taps[0][13]~q\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \taps[1][1]~feeder_combout\ : std_logic;
SIGNAL \taps[1][1]~q\ : std_logic;
SIGNAL \taps[2][1]~q\ : std_logic;
SIGNAL \taps[1][13]~feeder_combout\ : std_logic;
SIGNAL \taps[1][13]~q\ : std_logic;
SIGNAL \taps[2][13]~feeder_combout\ : std_logic;
SIGNAL \taps[2][13]~q\ : std_logic;
SIGNAL \taps[1][0]~feeder_combout\ : std_logic;
SIGNAL \taps[1][0]~q\ : std_logic;
SIGNAL \taps[2][0]~q\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sig_out[0]~14_combout\ : std_logic;
SIGNAL \sig_out[0]~reg0_q\ : std_logic;
SIGNAL \sig_in[2]~input_o\ : std_logic;
SIGNAL \taps[0][2]~feeder_combout\ : std_logic;
SIGNAL \taps[0][2]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \taps[1][2]~feeder_combout\ : std_logic;
SIGNAL \taps[1][2]~q\ : std_logic;
SIGNAL \taps[2][2]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \sig_out[0]~15\ : std_logic;
SIGNAL \sig_out[1]~16_combout\ : std_logic;
SIGNAL \sig_out[1]~reg0_q\ : std_logic;
SIGNAL \sig_in[3]~input_o\ : std_logic;
SIGNAL \taps[0][3]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \taps[1][3]~feeder_combout\ : std_logic;
SIGNAL \taps[1][3]~q\ : std_logic;
SIGNAL \taps[2][3]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \sig_out[1]~17\ : std_logic;
SIGNAL \sig_out[2]~18_combout\ : std_logic;
SIGNAL \sig_out[2]~reg0_q\ : std_logic;
SIGNAL \sig_in[4]~input_o\ : std_logic;
SIGNAL \taps[0][4]~q\ : std_logic;
SIGNAL \taps[1][4]~feeder_combout\ : std_logic;
SIGNAL \taps[1][4]~q\ : std_logic;
SIGNAL \taps[2][4]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \sig_out[2]~19\ : std_logic;
SIGNAL \sig_out[3]~20_combout\ : std_logic;
SIGNAL \sig_out[3]~reg0_q\ : std_logic;
SIGNAL \sig_in[5]~input_o\ : std_logic;
SIGNAL \taps[0][5]~q\ : std_logic;
SIGNAL \taps[1][5]~q\ : std_logic;
SIGNAL \taps[2][5]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \sig_out[3]~21\ : std_logic;
SIGNAL \sig_out[4]~22_combout\ : std_logic;
SIGNAL \sig_out[4]~reg0_q\ : std_logic;
SIGNAL \sig_in[6]~input_o\ : std_logic;
SIGNAL \taps[0][6]~q\ : std_logic;
SIGNAL \taps[1][6]~feeder_combout\ : std_logic;
SIGNAL \taps[1][6]~q\ : std_logic;
SIGNAL \taps[2][6]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \sig_out[4]~23\ : std_logic;
SIGNAL \sig_out[5]~24_combout\ : std_logic;
SIGNAL \sig_out[5]~reg0_q\ : std_logic;
SIGNAL \sig_in[7]~input_o\ : std_logic;
SIGNAL \taps[0][7]~q\ : std_logic;
SIGNAL \taps[1][7]~feeder_combout\ : std_logic;
SIGNAL \taps[1][7]~q\ : std_logic;
SIGNAL \taps[2][7]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \sig_out[5]~25\ : std_logic;
SIGNAL \sig_out[6]~26_combout\ : std_logic;
SIGNAL \sig_out[6]~reg0_q\ : std_logic;
SIGNAL \sig_in[8]~input_o\ : std_logic;
SIGNAL \taps[0][8]~q\ : std_logic;
SIGNAL \taps[1][8]~feeder_combout\ : std_logic;
SIGNAL \taps[1][8]~q\ : std_logic;
SIGNAL \taps[2][8]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \sig_out[6]~27\ : std_logic;
SIGNAL \sig_out[7]~28_combout\ : std_logic;
SIGNAL \sig_out[7]~reg0_q\ : std_logic;
SIGNAL \sig_in[9]~input_o\ : std_logic;
SIGNAL \taps[0][9]~q\ : std_logic;
SIGNAL \taps[1][9]~q\ : std_logic;
SIGNAL \taps[2][9]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \sig_out[7]~29\ : std_logic;
SIGNAL \sig_out[8]~30_combout\ : std_logic;
SIGNAL \sig_out[8]~reg0_q\ : std_logic;
SIGNAL \sig_in[10]~input_o\ : std_logic;
SIGNAL \taps[0][10]~q\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \taps[1][10]~q\ : std_logic;
SIGNAL \taps[2][10]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \sig_out[8]~31\ : std_logic;
SIGNAL \sig_out[9]~32_combout\ : std_logic;
SIGNAL \sig_out[9]~reg0_q\ : std_logic;
SIGNAL \sig_in[11]~input_o\ : std_logic;
SIGNAL \taps[0][11]~q\ : std_logic;
SIGNAL \taps[1][11]~q\ : std_logic;
SIGNAL \taps[2][11]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \sig_out[9]~33\ : std_logic;
SIGNAL \sig_out[10]~34_combout\ : std_logic;
SIGNAL \sig_out[10]~reg0_q\ : std_logic;
SIGNAL \sig_in[12]~input_o\ : std_logic;
SIGNAL \taps[0][12]~q\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \taps[1][12]~feeder_combout\ : std_logic;
SIGNAL \taps[1][12]~q\ : std_logic;
SIGNAL \taps[2][12]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \sig_out[10]~35\ : std_logic;
SIGNAL \sig_out[11]~36_combout\ : std_logic;
SIGNAL \sig_out[11]~reg0_q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \sig_out[11]~37\ : std_logic;
SIGNAL \sig_out[12]~38_combout\ : std_logic;
SIGNAL \sig_out[12]~reg0_q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \sig_out[12]~39\ : std_logic;
SIGNAL \sig_out[13]~40_combout\ : std_logic;
SIGNAL \sig_out[13]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sig_in <= sig_in;
sig_out <= ww_sig_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X54_Y0_N9
\sig_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[0]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\sig_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\sig_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\sig_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\sig_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\sig_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\sig_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[6]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\sig_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\sig_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\sig_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[9]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\sig_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\sig_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\sig_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\sig_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \sig_out[13]~output_o\);

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

-- Location: IOIBUF_X62_Y0_N15
\sig_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(1),
	o => \sig_in[1]~input_o\);

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

-- Location: FF_X56_Y1_N3
\taps[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][1]~q\);

-- Location: IOIBUF_X49_Y0_N22
\sig_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(0),
	o => \sig_in[0]~input_o\);

-- Location: FF_X56_Y1_N27
\taps[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][0]~q\);

-- Location: IOIBUF_X62_Y0_N22
\sig_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(13),
	o => \sig_in[13]~input_o\);

-- Location: FF_X56_Y1_N1
\taps[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][13]~q\);

-- Location: LCCOMB_X56_Y1_N0
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY((\taps[0][0]~q\ & \taps[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][0]~q\,
	datab => \taps[0][13]~q\,
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X56_Y1_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\taps[0][1]~q\ & (!\Add1~1_cout\)) # (!\taps[0][1]~q\ & ((\Add1~1_cout\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1_cout\) # (!\taps[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[0][1]~q\,
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X53_Y1_N4
\taps[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][1]~feeder_combout\ = \taps[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \taps[0][1]~q\,
	combout => \taps[1][1]~feeder_combout\);

-- Location: FF_X53_Y1_N5
\taps[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][1]~q\);

-- Location: FF_X54_Y1_N3
\taps[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][1]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][1]~q\);

-- Location: LCCOMB_X53_Y1_N12
\taps[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][13]~feeder_combout\ = \taps[0][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \taps[0][13]~q\,
	combout => \taps[1][13]~feeder_combout\);

-- Location: FF_X53_Y1_N13
\taps[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][13]~q\);

-- Location: LCCOMB_X54_Y1_N30
\taps[2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[2][13]~feeder_combout\ = \taps[1][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \taps[1][13]~q\,
	combout => \taps[2][13]~feeder_combout\);

-- Location: FF_X54_Y1_N31
\taps[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[2][13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][13]~q\);

-- Location: LCCOMB_X53_Y1_N6
\taps[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][0]~feeder_combout\ = \taps[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \taps[0][0]~q\,
	combout => \taps[1][0]~feeder_combout\);

-- Location: FF_X53_Y1_N7
\taps[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][0]~q\);

-- Location: FF_X54_Y1_N1
\taps[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][0]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][0]~q\);

-- Location: LCCOMB_X54_Y1_N0
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((\taps[2][13]~q\ & \taps[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \taps[2][13]~q\,
	datab => \taps[2][0]~q\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X54_Y1_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\taps[2][1]~q\ & (!\Add0~1_cout\)) # (!\taps[2][1]~q\ & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!\taps[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][1]~q\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X55_Y1_N4
\sig_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[0]~14_combout\ = (\Add1~2_combout\ & (\Add0~2_combout\ $ (VCC))) # (!\Add1~2_combout\ & ((\Add0~2_combout\) # (GND)))
-- \sig_out[0]~15\ = CARRY((\Add0~2_combout\) # (!\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	combout => \sig_out[0]~14_combout\,
	cout => \sig_out[0]~15\);

-- Location: FF_X55_Y1_N5
\sig_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[0]~14_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[0]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N15
\sig_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(2),
	o => \sig_in[2]~input_o\);

-- Location: LCCOMB_X56_Y1_N30
\taps[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[0][2]~feeder_combout\ = \sig_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[2]~input_o\,
	combout => \taps[0][2]~feeder_combout\);

-- Location: FF_X56_Y1_N31
\taps[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[0][2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][2]~q\);

-- Location: LCCOMB_X56_Y1_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\taps[0][2]~q\ & (\Add1~3\ $ (GND))) # (!\taps[0][2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\taps[0][2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X53_Y1_N14
\taps[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][2]~feeder_combout\ = \taps[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \taps[0][2]~q\,
	combout => \taps[1][2]~feeder_combout\);

-- Location: FF_X53_Y1_N15
\taps[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][2]~q\);

-- Location: FF_X54_Y1_N5
\taps[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][2]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][2]~q\);

-- Location: LCCOMB_X54_Y1_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\taps[2][2]~q\ & (\Add0~3\ $ (GND))) # (!\taps[2][2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\taps[2][2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X55_Y1_N6
\sig_out[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[1]~16_combout\ = (\Add1~4_combout\ & ((\Add0~4_combout\ & (!\sig_out[0]~15\)) # (!\Add0~4_combout\ & ((\sig_out[0]~15\) # (GND))))) # (!\Add1~4_combout\ & ((\Add0~4_combout\ & (\sig_out[0]~15\ & VCC)) # (!\Add0~4_combout\ & (!\sig_out[0]~15\))))
-- \sig_out[1]~17\ = CARRY((\Add1~4_combout\ & ((!\sig_out[0]~15\) # (!\Add0~4_combout\))) # (!\Add1~4_combout\ & (!\Add0~4_combout\ & !\sig_out[0]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \sig_out[0]~15\,
	combout => \sig_out[1]~16_combout\,
	cout => \sig_out[1]~17\);

-- Location: FF_X55_Y1_N7
\sig_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[1]~16_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[1]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N15
\sig_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(3),
	o => \sig_in[3]~input_o\);

-- Location: FF_X56_Y1_N7
\taps[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][3]~q\);

-- Location: LCCOMB_X56_Y1_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\taps[0][3]~q\ & (!\Add1~5\)) # (!\taps[0][3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\taps[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X53_Y1_N0
\taps[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][3]~feeder_combout\ = \taps[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \taps[0][3]~q\,
	combout => \taps[1][3]~feeder_combout\);

-- Location: FF_X53_Y1_N1
\taps[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][3]~q\);

-- Location: FF_X54_Y1_N7
\taps[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][3]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][3]~q\);

-- Location: LCCOMB_X54_Y1_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\taps[2][3]~q\ & (!\Add0~5\)) # (!\taps[2][3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\taps[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[2][3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X55_Y1_N8
\sig_out[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[2]~18_combout\ = ((\Add1~6_combout\ $ (\Add0~6_combout\ $ (\sig_out[1]~17\)))) # (GND)
-- \sig_out[2]~19\ = CARRY((\Add1~6_combout\ & (\Add0~6_combout\ & !\sig_out[1]~17\)) # (!\Add1~6_combout\ & ((\Add0~6_combout\) # (!\sig_out[1]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \sig_out[1]~17\,
	combout => \sig_out[2]~18_combout\,
	cout => \sig_out[2]~19\);

-- Location: FF_X55_Y1_N9
\sig_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[2]~18_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[2]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N1
\sig_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(4),
	o => \sig_in[4]~input_o\);

-- Location: FF_X56_Y1_N9
\taps[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][4]~q\);

-- Location: LCCOMB_X53_Y1_N10
\taps[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][4]~feeder_combout\ = \taps[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \taps[0][4]~q\,
	combout => \taps[1][4]~feeder_combout\);

-- Location: FF_X53_Y1_N11
\taps[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][4]~q\);

-- Location: FF_X54_Y1_N9
\taps[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][4]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][4]~q\);

-- Location: LCCOMB_X54_Y1_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\taps[2][4]~q\ & (\Add0~7\ $ (GND))) # (!\taps[2][4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\taps[2][4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X56_Y1_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\taps[0][4]~q\ & (\Add1~7\ $ (GND))) # (!\taps[0][4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\taps[0][4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[0][4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X55_Y1_N10
\sig_out[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[3]~20_combout\ = (\Add0~8_combout\ & ((\Add1~8_combout\ & (!\sig_out[2]~19\)) # (!\Add1~8_combout\ & (\sig_out[2]~19\ & VCC)))) # (!\Add0~8_combout\ & ((\Add1~8_combout\ & ((\sig_out[2]~19\) # (GND))) # (!\Add1~8_combout\ & (!\sig_out[2]~19\))))
-- \sig_out[3]~21\ = CARRY((\Add0~8_combout\ & (\Add1~8_combout\ & !\sig_out[2]~19\)) # (!\Add0~8_combout\ & ((\Add1~8_combout\) # (!\sig_out[2]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \sig_out[2]~19\,
	combout => \sig_out[3]~20_combout\,
	cout => \sig_out[3]~21\);

-- Location: FF_X55_Y1_N11
\sig_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[3]~20_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[3]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N22
\sig_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(5),
	o => \sig_in[5]~input_o\);

-- Location: FF_X56_Y1_N11
\taps[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][5]~q\);

-- Location: FF_X56_Y1_N5
\taps[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[0][5]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][5]~q\);

-- Location: FF_X54_Y1_N11
\taps[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][5]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][5]~q\);

-- Location: LCCOMB_X54_Y1_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\taps[2][5]~q\ & (!\Add0~9\)) # (!\taps[2][5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\taps[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[2][5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X56_Y1_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\taps[0][5]~q\ & (!\Add1~9\)) # (!\taps[0][5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\taps[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X55_Y1_N12
\sig_out[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[4]~22_combout\ = ((\Add0~10_combout\ $ (\Add1~10_combout\ $ (\sig_out[3]~21\)))) # (GND)
-- \sig_out[4]~23\ = CARRY((\Add0~10_combout\ & ((!\sig_out[3]~21\) # (!\Add1~10_combout\))) # (!\Add0~10_combout\ & (!\Add1~10_combout\ & !\sig_out[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \sig_out[3]~21\,
	combout => \sig_out[4]~22_combout\,
	cout => \sig_out[4]~23\);

-- Location: FF_X55_Y1_N13
\sig_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[4]~22_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[4]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N8
\sig_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(6),
	o => \sig_in[6]~input_o\);

-- Location: FF_X56_Y1_N13
\taps[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][6]~q\);

-- Location: LCCOMB_X55_Y1_N0
\taps[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][6]~feeder_combout\ = \taps[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \taps[0][6]~q\,
	combout => \taps[1][6]~feeder_combout\);

-- Location: FF_X55_Y1_N1
\taps[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][6]~q\);

-- Location: FF_X54_Y1_N13
\taps[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][6]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][6]~q\);

-- Location: LCCOMB_X54_Y1_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\taps[2][6]~q\ & (\Add0~11\ $ (GND))) # (!\taps[2][6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\taps[2][6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[2][6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X56_Y1_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\taps[0][6]~q\ & (\Add1~11\ $ (GND))) # (!\taps[0][6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\taps[0][6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X55_Y1_N14
\sig_out[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[5]~24_combout\ = (\Add0~12_combout\ & ((\Add1~12_combout\ & (!\sig_out[4]~23\)) # (!\Add1~12_combout\ & (\sig_out[4]~23\ & VCC)))) # (!\Add0~12_combout\ & ((\Add1~12_combout\ & ((\sig_out[4]~23\) # (GND))) # (!\Add1~12_combout\ & 
-- (!\sig_out[4]~23\))))
-- \sig_out[5]~25\ = CARRY((\Add0~12_combout\ & (\Add1~12_combout\ & !\sig_out[4]~23\)) # (!\Add0~12_combout\ & ((\Add1~12_combout\) # (!\sig_out[4]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \sig_out[4]~23\,
	combout => \sig_out[5]~24_combout\,
	cout => \sig_out[5]~25\);

-- Location: FF_X55_Y1_N15
\sig_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[5]~24_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[5]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N1
\sig_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(7),
	o => \sig_in[7]~input_o\);

-- Location: FF_X56_Y1_N15
\taps[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][7]~q\);

-- Location: LCCOMB_X55_Y1_N2
\taps[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][7]~feeder_combout\ = \taps[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \taps[0][7]~q\,
	combout => \taps[1][7]~feeder_combout\);

-- Location: FF_X55_Y1_N3
\taps[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][7]~q\);

-- Location: FF_X54_Y1_N15
\taps[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][7]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][7]~q\);

-- Location: LCCOMB_X54_Y1_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\taps[2][7]~q\ & (!\Add0~13\)) # (!\taps[2][7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\taps[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X56_Y1_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\taps[0][7]~q\ & (!\Add1~13\)) # (!\taps[0][7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\taps[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[0][7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X55_Y1_N16
\sig_out[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[6]~26_combout\ = ((\Add0~14_combout\ $ (\Add1~14_combout\ $ (\sig_out[5]~25\)))) # (GND)
-- \sig_out[6]~27\ = CARRY((\Add0~14_combout\ & ((!\sig_out[5]~25\) # (!\Add1~14_combout\))) # (!\Add0~14_combout\ & (!\Add1~14_combout\ & !\sig_out[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \sig_out[5]~25\,
	combout => \sig_out[6]~26_combout\,
	cout => \sig_out[6]~27\);

-- Location: FF_X55_Y1_N17
\sig_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[6]~26_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[6]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N22
\sig_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(8),
	o => \sig_in[8]~input_o\);

-- Location: FF_X56_Y1_N17
\taps[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][8]~q\);

-- Location: LCCOMB_X53_Y1_N16
\taps[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][8]~feeder_combout\ = \taps[0][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \taps[0][8]~q\,
	combout => \taps[1][8]~feeder_combout\);

-- Location: FF_X53_Y1_N17
\taps[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][8]~q\);

-- Location: FF_X54_Y1_N17
\taps[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][8]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][8]~q\);

-- Location: LCCOMB_X54_Y1_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\taps[2][8]~q\ & (\Add0~15\ $ (GND))) # (!\taps[2][8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\taps[2][8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X56_Y1_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\taps[0][8]~q\ & (\Add1~15\ $ (GND))) # (!\taps[0][8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\taps[0][8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[0][8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X55_Y1_N18
\sig_out[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[7]~28_combout\ = (\Add0~16_combout\ & ((\Add1~16_combout\ & (!\sig_out[6]~27\)) # (!\Add1~16_combout\ & (\sig_out[6]~27\ & VCC)))) # (!\Add0~16_combout\ & ((\Add1~16_combout\ & ((\sig_out[6]~27\) # (GND))) # (!\Add1~16_combout\ & 
-- (!\sig_out[6]~27\))))
-- \sig_out[7]~29\ = CARRY((\Add0~16_combout\ & (\Add1~16_combout\ & !\sig_out[6]~27\)) # (!\Add0~16_combout\ & ((\Add1~16_combout\) # (!\sig_out[6]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \sig_out[6]~27\,
	combout => \sig_out[7]~28_combout\,
	cout => \sig_out[7]~29\);

-- Location: FF_X55_Y1_N19
\sig_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[7]~28_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[7]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N15
\sig_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(9),
	o => \sig_in[9]~input_o\);

-- Location: FF_X56_Y1_N19
\taps[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][9]~q\);

-- Location: FF_X54_Y1_N27
\taps[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[0][9]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][9]~q\);

-- Location: FF_X54_Y1_N19
\taps[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][9]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][9]~q\);

-- Location: LCCOMB_X54_Y1_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\taps[2][9]~q\ & (!\Add0~17\)) # (!\taps[2][9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\taps[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X56_Y1_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\taps[0][9]~q\ & (!\Add1~17\)) # (!\taps[0][9]~q\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\taps[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[0][9]~q\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X55_Y1_N20
\sig_out[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[8]~30_combout\ = ((\Add0~18_combout\ $ (\Add1~18_combout\ $ (\sig_out[7]~29\)))) # (GND)
-- \sig_out[8]~31\ = CARRY((\Add0~18_combout\ & ((!\sig_out[7]~29\) # (!\Add1~18_combout\))) # (!\Add0~18_combout\ & (!\Add1~18_combout\ & !\sig_out[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \sig_out[7]~29\,
	combout => \sig_out[8]~30_combout\,
	cout => \sig_out[8]~31\);

-- Location: FF_X55_Y1_N21
\sig_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[8]~30_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[8]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N22
\sig_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(10),
	o => \sig_in[10]~input_o\);

-- Location: FF_X56_Y1_N21
\taps[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][10]~q\);

-- Location: LCCOMB_X56_Y1_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\taps[0][10]~q\ & (\Add1~19\ $ (GND))) # (!\taps[0][10]~q\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\taps[0][10]~q\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[0][10]~q\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X54_Y1_N29
\taps[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[0][10]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][10]~q\);

-- Location: FF_X54_Y1_N21
\taps[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][10]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][10]~q\);

-- Location: LCCOMB_X54_Y1_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\taps[2][10]~q\ & (\Add0~19\ $ (GND))) # (!\taps[2][10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\taps[2][10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X55_Y1_N22
\sig_out[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[9]~32_combout\ = (\Add1~20_combout\ & ((\Add0~20_combout\ & (!\sig_out[8]~31\)) # (!\Add0~20_combout\ & ((\sig_out[8]~31\) # (GND))))) # (!\Add1~20_combout\ & ((\Add0~20_combout\ & (\sig_out[8]~31\ & VCC)) # (!\Add0~20_combout\ & 
-- (!\sig_out[8]~31\))))
-- \sig_out[9]~33\ = CARRY((\Add1~20_combout\ & ((!\sig_out[8]~31\) # (!\Add0~20_combout\))) # (!\Add1~20_combout\ & (!\Add0~20_combout\ & !\sig_out[8]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \sig_out[8]~31\,
	combout => \sig_out[9]~32_combout\,
	cout => \sig_out[9]~33\);

-- Location: FF_X55_Y1_N23
\sig_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[9]~32_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[9]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N8
\sig_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(11),
	o => \sig_in[11]~input_o\);

-- Location: FF_X56_Y1_N23
\taps[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][11]~q\);

-- Location: FF_X56_Y1_N29
\taps[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[0][11]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][11]~q\);

-- Location: FF_X54_Y1_N23
\taps[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][11]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][11]~q\);

-- Location: LCCOMB_X54_Y1_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\taps[2][11]~q\ & (!\Add0~21\)) # (!\taps[2][11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\taps[2][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[2][11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X56_Y1_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\taps[0][11]~q\ & (!\Add1~21\)) # (!\taps[0][11]~q\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\taps[0][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][11]~q\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X55_Y1_N24
\sig_out[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[10]~34_combout\ = ((\Add0~22_combout\ $ (\Add1~22_combout\ $ (\sig_out[9]~33\)))) # (GND)
-- \sig_out[10]~35\ = CARRY((\Add0~22_combout\ & ((!\sig_out[9]~33\) # (!\Add1~22_combout\))) # (!\Add0~22_combout\ & (!\Add1~22_combout\ & !\sig_out[9]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \sig_out[9]~33\,
	combout => \sig_out[10]~34_combout\,
	cout => \sig_out[10]~35\);

-- Location: FF_X55_Y1_N25
\sig_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[10]~34_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[10]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N15
\sig_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(12),
	o => \sig_in[12]~input_o\);

-- Location: FF_X56_Y1_N25
\taps[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig_in[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[0][12]~q\);

-- Location: LCCOMB_X56_Y1_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\taps[0][12]~q\ & (\Add1~23\ $ (GND))) # (!\taps[0][12]~q\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\taps[0][12]~q\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[0][12]~q\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X53_Y1_N22
\taps[1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \taps[1][12]~feeder_combout\ = \taps[0][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \taps[0][12]~q\,
	combout => \taps[1][12]~feeder_combout\);

-- Location: FF_X53_Y1_N23
\taps[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \taps[1][12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[1][12]~q\);

-- Location: FF_X54_Y1_N25
\taps[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \taps[1][12]~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \taps[2][12]~q\);

-- Location: LCCOMB_X54_Y1_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\taps[2][12]~q\ & (\Add0~23\ $ (GND))) # (!\taps[2][12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\taps[2][12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X55_Y1_N26
\sig_out[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[11]~36_combout\ = (\Add1~24_combout\ & ((\Add0~24_combout\ & (!\sig_out[10]~35\)) # (!\Add0~24_combout\ & ((\sig_out[10]~35\) # (GND))))) # (!\Add1~24_combout\ & ((\Add0~24_combout\ & (\sig_out[10]~35\ & VCC)) # (!\Add0~24_combout\ & 
-- (!\sig_out[10]~35\))))
-- \sig_out[11]~37\ = CARRY((\Add1~24_combout\ & ((!\sig_out[10]~35\) # (!\Add0~24_combout\))) # (!\Add1~24_combout\ & (!\Add0~24_combout\ & !\sig_out[10]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \sig_out[10]~35\,
	combout => \sig_out[11]~36_combout\,
	cout => \sig_out[11]~37\);

-- Location: FF_X55_Y1_N27
\sig_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[11]~36_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[11]~reg0_q\);

-- Location: LCCOMB_X54_Y1_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\taps[2][13]~q\ & (!\Add0~25\)) # (!\taps[2][13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\taps[2][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \taps[2][13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X56_Y1_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\taps[0][13]~q\ & (!\Add1~25\)) # (!\taps[0][13]~q\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\taps[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][13]~q\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X55_Y1_N28
\sig_out[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[12]~38_combout\ = ((\Add0~26_combout\ $ (\Add1~26_combout\ $ (\sig_out[11]~37\)))) # (GND)
-- \sig_out[12]~39\ = CARRY((\Add0~26_combout\ & ((!\sig_out[11]~37\) # (!\Add1~26_combout\))) # (!\Add0~26_combout\ & (!\Add1~26_combout\ & !\sig_out[11]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add1~26_combout\,
	datad => VCC,
	cin => \sig_out[11]~37\,
	combout => \sig_out[12]~38_combout\,
	cout => \sig_out[12]~39\);

-- Location: FF_X55_Y1_N29
\sig_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[12]~38_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[12]~reg0_q\);

-- Location: LCCOMB_X54_Y1_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \Add0~27\ $ (!\taps[2][13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \taps[2][13]~q\,
	cin => \Add0~27\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X56_Y1_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = \taps[0][13]~q\ $ (!\Add1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \taps[0][13]~q\,
	cin => \Add1~27\,
	combout => \Add1~28_combout\);

-- Location: LCCOMB_X55_Y1_N30
\sig_out[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_out[13]~40_combout\ = \Add0~28_combout\ $ (\sig_out[12]~39\ $ (!\Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Add1~28_combout\,
	cin => \sig_out[12]~39\,
	combout => \sig_out[13]~40_combout\);

-- Location: FF_X55_Y1_N31
\sig_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig_out[13]~40_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_out[13]~reg0_q\);

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
END structure;


