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

-- DATE "07/02/2025 16:39:17"

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

ENTITY 	low_pass_direct_graph IS
    PORT (
	sig_out : OUT std_logic_vector(13 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	sig_in : IN std_logic_vector(13 DOWNTO 0)
	);
END low_pass_direct_graph;

-- Design Ports Information
-- sig_out[13]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[11]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[10]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[9]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[8]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[3]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[13]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[11]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[10]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[9]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[8]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF low_pass_direct_graph IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sig_out : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sig_in : std_logic_vector(13 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sig_in[1]~input_o\ : std_logic;
SIGNAL \sig_in[0]~input_o\ : std_logic;
SIGNAL \sig_out[13]~output_o\ : std_logic;
SIGNAL \sig_out[12]~output_o\ : std_logic;
SIGNAL \sig_out[11]~output_o\ : std_logic;
SIGNAL \sig_out[10]~output_o\ : std_logic;
SIGNAL \sig_out[9]~output_o\ : std_logic;
SIGNAL \sig_out[8]~output_o\ : std_logic;
SIGNAL \sig_out[7]~output_o\ : std_logic;
SIGNAL \sig_out[6]~output_o\ : std_logic;
SIGNAL \sig_out[5]~output_o\ : std_logic;
SIGNAL \sig_out[4]~output_o\ : std_logic;
SIGNAL \sig_out[3]~output_o\ : std_logic;
SIGNAL \sig_out[2]~output_o\ : std_logic;
SIGNAL \sig_out[1]~output_o\ : std_logic;
SIGNAL \sig_out[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_in[13]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst~q\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst2|inst~q\ : std_logic;
SIGNAL \sig_in[12]~input_o\ : std_logic;
SIGNAL \inst5|inst1~q\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \sig_in[11]~input_o\ : std_logic;
SIGNAL \inst5|inst2~feeder_combout\ : std_logic;
SIGNAL \inst5|inst2~q\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \sig_in[10]~input_o\ : std_logic;
SIGNAL \inst5|inst3~q\ : std_logic;
SIGNAL \inst|inst3~feeder_combout\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \sig_in[9]~input_o\ : std_logic;
SIGNAL \inst5|inst4~feeder_combout\ : std_logic;
SIGNAL \inst5|inst4~q\ : std_logic;
SIGNAL \inst|inst4~feeder_combout\ : std_logic;
SIGNAL \inst|inst4~q\ : std_logic;
SIGNAL \sig_in[8]~input_o\ : std_logic;
SIGNAL \inst5|inst5~q\ : std_logic;
SIGNAL \inst|inst5~q\ : std_logic;
SIGNAL \sig_in[7]~input_o\ : std_logic;
SIGNAL \inst5|inst6~q\ : std_logic;
SIGNAL \inst|inst6~q\ : std_logic;
SIGNAL \sig_in[6]~input_o\ : std_logic;
SIGNAL \inst5|inst7~q\ : std_logic;
SIGNAL \inst|inst7~q\ : std_logic;
SIGNAL \sig_in[5]~input_o\ : std_logic;
SIGNAL \inst5|inst8~feeder_combout\ : std_logic;
SIGNAL \inst5|inst8~q\ : std_logic;
SIGNAL \inst|inst8~feeder_combout\ : std_logic;
SIGNAL \inst|inst8~q\ : std_logic;
SIGNAL \sig_in[4]~input_o\ : std_logic;
SIGNAL \inst5|inst9~q\ : std_logic;
SIGNAL \inst|inst9~q\ : std_logic;
SIGNAL \sig_in[3]~input_o\ : std_logic;
SIGNAL \inst5|inst10~q\ : std_logic;
SIGNAL \inst|inst10~feeder_combout\ : std_logic;
SIGNAL \inst|inst10~q\ : std_logic;
SIGNAL \sig_in[2]~input_o\ : std_logic;
SIGNAL \inst5|inst11~feeder_combout\ : std_logic;
SIGNAL \inst5|inst11~q\ : std_logic;
SIGNAL \inst|inst11~q\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst2|inst1~q\ : std_logic;
SIGNAL \inst2|inst2~q\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|inst3~q\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|inst4~feeder_combout\ : std_logic;
SIGNAL \inst2|inst4~q\ : std_logic;
SIGNAL \inst2|inst5~q\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|inst6~q\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|inst7~q\ : std_logic;
SIGNAL \inst2|inst8~feeder_combout\ : std_logic;
SIGNAL \inst2|inst8~q\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|inst9~q\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst4|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|inst10~q\ : std_logic;
SIGNAL \inst9|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst9|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst9|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst9|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst9|auto_generated|result[4]~9\ : std_logic;
SIGNAL \inst9|auto_generated|result[5]~11\ : std_logic;
SIGNAL \inst9|auto_generated|result[6]~13\ : std_logic;
SIGNAL \inst9|auto_generated|result[7]~15\ : std_logic;
SIGNAL \inst9|auto_generated|result[8]~17\ : std_logic;
SIGNAL \inst9|auto_generated|result[9]~19\ : std_logic;
SIGNAL \inst9|auto_generated|result[10]~21\ : std_logic;
SIGNAL \inst9|auto_generated|result[11]~23\ : std_logic;
SIGNAL \inst9|auto_generated|result[12]~25\ : std_logic;
SIGNAL \inst9|auto_generated|result[13]~26_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[12]~24_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[11]~22_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[10]~20_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[9]~18_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[8]~16_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst9|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

sig_out <= ww_sig_out;
ww_clk <= clk;
ww_rst <= rst;
ww_sig_in <= sig_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y44_N9
\sig_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[13]~26_combout\,
	devoe => ww_devoe,
	o => \sig_out[13]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\sig_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[12]~24_combout\,
	devoe => ww_devoe,
	o => \sig_out[12]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\sig_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[11]~22_combout\,
	devoe => ww_devoe,
	o => \sig_out[11]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\sig_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[10]~20_combout\,
	devoe => ww_devoe,
	o => \sig_out[10]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\sig_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[9]~18_combout\,
	devoe => ww_devoe,
	o => \sig_out[9]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\sig_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[8]~16_combout\,
	devoe => ww_devoe,
	o => \sig_out[8]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\sig_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[7]~14_combout\,
	devoe => ww_devoe,
	o => \sig_out[7]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\sig_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[6]~12_combout\,
	devoe => ww_devoe,
	o => \sig_out[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\sig_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[5]~10_combout\,
	devoe => ww_devoe,
	o => \sig_out[5]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\sig_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[4]~8_combout\,
	devoe => ww_devoe,
	o => \sig_out[4]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\sig_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[3]~6_combout\,
	devoe => ww_devoe,
	o => \sig_out[3]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\sig_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[2]~4_combout\,
	devoe => ww_devoe,
	o => \sig_out[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\sig_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[1]~2_combout\,
	devoe => ww_devoe,
	o => \sig_out[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\sig_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|auto_generated|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \sig_out[0]~output_o\);

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

-- Location: IOIBUF_X0_Y43_N15
\sig_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(13),
	o => \sig_in[13]~input_o\);

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

-- Location: FF_X2_Y46_N29
\inst5|inst\ : dffeas
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
	q => \inst5|inst~q\);

-- Location: FF_X2_Y46_N31
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: FF_X2_Y46_N27
\inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst~q\);

-- Location: IOIBUF_X0_Y45_N22
\sig_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(12),
	o => \sig_in[12]~input_o\);

-- Location: FF_X1_Y46_N15
\inst5|inst1\ : dffeas
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
	q => \inst5|inst1~q\);

-- Location: FF_X1_Y46_N23
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst1~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: IOIBUF_X0_Y53_N8
\sig_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(11),
	o => \sig_in[11]~input_o\);

-- Location: LCCOMB_X2_Y46_N0
\inst5|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst2~feeder_combout\ = \sig_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[11]~input_o\,
	combout => \inst5|inst2~feeder_combout\);

-- Location: FF_X2_Y46_N1
\inst5|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2~q\);

-- Location: FF_X2_Y46_N23
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst2~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: IOIBUF_X0_Y52_N15
\sig_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(10),
	o => \sig_in[10]~input_o\);

-- Location: FF_X2_Y46_N25
\inst5|inst3\ : dffeas
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
	q => \inst5|inst3~q\);

-- Location: LCCOMB_X2_Y46_N2
\inst|inst3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3~feeder_combout\ = \inst5|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst3~q\,
	combout => \inst|inst3~feeder_combout\);

-- Location: FF_X2_Y46_N3
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: IOIBUF_X0_Y52_N22
\sig_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(9),
	o => \sig_in[9]~input_o\);

-- Location: LCCOMB_X3_Y46_N18
\inst5|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4~feeder_combout\ = \sig_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[9]~input_o\,
	combout => \inst5|inst4~feeder_combout\);

-- Location: FF_X3_Y46_N19
\inst5|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst4~q\);

-- Location: LCCOMB_X3_Y46_N12
\inst|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~feeder_combout\ = \inst5|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst4~q\,
	combout => \inst|inst4~feeder_combout\);

-- Location: FF_X3_Y46_N13
\inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~q\);

-- Location: IOIBUF_X0_Y52_N1
\sig_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(8),
	o => \sig_in[8]~input_o\);

-- Location: FF_X2_Y46_N21
\inst5|inst5\ : dffeas
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
	q => \inst5|inst5~q\);

-- Location: FF_X2_Y46_N17
\inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst5~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~q\);

-- Location: IOIBUF_X0_Y50_N15
\sig_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(7),
	o => \sig_in[7]~input_o\);

-- Location: FF_X1_Y46_N7
\inst5|inst6\ : dffeas
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
	q => \inst5|inst6~q\);

-- Location: FF_X1_Y46_N25
\inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst6~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6~q\);

-- Location: IOIBUF_X0_Y49_N1
\sig_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(6),
	o => \sig_in[6]~input_o\);

-- Location: FF_X1_Y46_N27
\inst5|inst7\ : dffeas
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
	q => \inst5|inst7~q\);

-- Location: FF_X1_Y46_N19
\inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst7~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7~q\);

-- Location: IOIBUF_X0_Y53_N1
\sig_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(5),
	o => \sig_in[5]~input_o\);

-- Location: LCCOMB_X3_Y46_N6
\inst5|inst8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8~feeder_combout\ = \sig_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[5]~input_o\,
	combout => \inst5|inst8~feeder_combout\);

-- Location: FF_X3_Y46_N7
\inst5|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst8~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8~q\);

-- Location: LCCOMB_X3_Y46_N0
\inst|inst8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8~feeder_combout\ = \inst5|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst8~q\,
	combout => \inst|inst8~feeder_combout\);

-- Location: FF_X3_Y46_N1
\inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst8~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8~q\);

-- Location: IOIBUF_X0_Y51_N15
\sig_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(4),
	o => \sig_in[4]~input_o\);

-- Location: FF_X2_Y46_N5
\inst5|inst9\ : dffeas
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
	q => \inst5|inst9~q\);

-- Location: FF_X2_Y46_N9
\inst|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst9~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst9~q\);

-- Location: IOIBUF_X0_Y46_N22
\sig_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(3),
	o => \sig_in[3]~input_o\);

-- Location: FF_X1_Y46_N29
\inst5|inst10\ : dffeas
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
	q => \inst5|inst10~q\);

-- Location: LCCOMB_X1_Y46_N0
\inst|inst10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~feeder_combout\ = \inst5|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst10~q\,
	combout => \inst|inst10~feeder_combout\);

-- Location: FF_X1_Y46_N1
\inst|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst10~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10~q\);

-- Location: IOIBUF_X0_Y44_N1
\sig_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(2),
	o => \sig_in[2]~input_o\);

-- Location: LCCOMB_X1_Y46_N30
\inst5|inst11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst11~feeder_combout\ = \sig_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[2]~input_o\,
	combout => \inst5|inst11~feeder_combout\);

-- Location: FF_X1_Y46_N31
\inst5|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst11~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst11~q\);

-- Location: FF_X1_Y46_N5
\inst|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|inst11~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11~q\);

-- Location: LCCOMB_X2_Y46_N4
\inst4|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~0_combout\ = (\inst5|inst10~q\ & (\inst|inst11~q\ $ (VCC))) # (!\inst5|inst10~q\ & (\inst|inst11~q\ & VCC))
-- \inst4|auto_generated|op_1~1\ = CARRY((\inst5|inst10~q\ & \inst|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst10~q\,
	datab => \inst|inst11~q\,
	datad => VCC,
	combout => \inst4|auto_generated|op_1~0_combout\,
	cout => \inst4|auto_generated|op_1~1\);

-- Location: LCCOMB_X2_Y46_N6
\inst4|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~2_combout\ = (\inst5|inst9~q\ & ((\inst|inst10~q\ & (\inst4|auto_generated|op_1~1\ & VCC)) # (!\inst|inst10~q\ & (!\inst4|auto_generated|op_1~1\)))) # (!\inst5|inst9~q\ & ((\inst|inst10~q\ & (!\inst4|auto_generated|op_1~1\)) # 
-- (!\inst|inst10~q\ & ((\inst4|auto_generated|op_1~1\) # (GND)))))
-- \inst4|auto_generated|op_1~3\ = CARRY((\inst5|inst9~q\ & (!\inst|inst10~q\ & !\inst4|auto_generated|op_1~1\)) # (!\inst5|inst9~q\ & ((!\inst4|auto_generated|op_1~1\) # (!\inst|inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst9~q\,
	datab => \inst|inst10~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~1\,
	combout => \inst4|auto_generated|op_1~2_combout\,
	cout => \inst4|auto_generated|op_1~3\);

-- Location: LCCOMB_X2_Y46_N8
\inst4|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~4_combout\ = ((\inst|inst9~q\ $ (\inst5|inst8~q\ $ (!\inst4|auto_generated|op_1~3\)))) # (GND)
-- \inst4|auto_generated|op_1~5\ = CARRY((\inst|inst9~q\ & ((\inst5|inst8~q\) # (!\inst4|auto_generated|op_1~3\))) # (!\inst|inst9~q\ & (\inst5|inst8~q\ & !\inst4|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~q\,
	datab => \inst5|inst8~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~3\,
	combout => \inst4|auto_generated|op_1~4_combout\,
	cout => \inst4|auto_generated|op_1~5\);

-- Location: LCCOMB_X2_Y46_N10
\inst4|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~6_combout\ = (\inst5|inst7~q\ & ((\inst|inst8~q\ & (\inst4|auto_generated|op_1~5\ & VCC)) # (!\inst|inst8~q\ & (!\inst4|auto_generated|op_1~5\)))) # (!\inst5|inst7~q\ & ((\inst|inst8~q\ & (!\inst4|auto_generated|op_1~5\)) # 
-- (!\inst|inst8~q\ & ((\inst4|auto_generated|op_1~5\) # (GND)))))
-- \inst4|auto_generated|op_1~7\ = CARRY((\inst5|inst7~q\ & (!\inst|inst8~q\ & !\inst4|auto_generated|op_1~5\)) # (!\inst5|inst7~q\ & ((!\inst4|auto_generated|op_1~5\) # (!\inst|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7~q\,
	datab => \inst|inst8~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~5\,
	combout => \inst4|auto_generated|op_1~6_combout\,
	cout => \inst4|auto_generated|op_1~7\);

-- Location: LCCOMB_X2_Y46_N12
\inst4|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~8_combout\ = ((\inst5|inst6~q\ $ (\inst|inst7~q\ $ (!\inst4|auto_generated|op_1~7\)))) # (GND)
-- \inst4|auto_generated|op_1~9\ = CARRY((\inst5|inst6~q\ & ((\inst|inst7~q\) # (!\inst4|auto_generated|op_1~7\))) # (!\inst5|inst6~q\ & (\inst|inst7~q\ & !\inst4|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6~q\,
	datab => \inst|inst7~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~7\,
	combout => \inst4|auto_generated|op_1~8_combout\,
	cout => \inst4|auto_generated|op_1~9\);

-- Location: LCCOMB_X2_Y46_N14
\inst4|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~10_combout\ = (\inst|inst6~q\ & ((\inst5|inst5~q\ & (\inst4|auto_generated|op_1~9\ & VCC)) # (!\inst5|inst5~q\ & (!\inst4|auto_generated|op_1~9\)))) # (!\inst|inst6~q\ & ((\inst5|inst5~q\ & (!\inst4|auto_generated|op_1~9\)) # 
-- (!\inst5|inst5~q\ & ((\inst4|auto_generated|op_1~9\) # (GND)))))
-- \inst4|auto_generated|op_1~11\ = CARRY((\inst|inst6~q\ & (!\inst5|inst5~q\ & !\inst4|auto_generated|op_1~9\)) # (!\inst|inst6~q\ & ((!\inst4|auto_generated|op_1~9\) # (!\inst5|inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~q\,
	datab => \inst5|inst5~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~9\,
	combout => \inst4|auto_generated|op_1~10_combout\,
	cout => \inst4|auto_generated|op_1~11\);

-- Location: LCCOMB_X2_Y46_N16
\inst4|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~12_combout\ = ((\inst|inst5~q\ $ (\inst5|inst4~q\ $ (!\inst4|auto_generated|op_1~11\)))) # (GND)
-- \inst4|auto_generated|op_1~13\ = CARRY((\inst|inst5~q\ & ((\inst5|inst4~q\) # (!\inst4|auto_generated|op_1~11\))) # (!\inst|inst5~q\ & (\inst5|inst4~q\ & !\inst4|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst5|inst4~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~11\,
	combout => \inst4|auto_generated|op_1~12_combout\,
	cout => \inst4|auto_generated|op_1~13\);

-- Location: LCCOMB_X2_Y46_N18
\inst4|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~14_combout\ = (\inst|inst4~q\ & ((\inst5|inst3~q\ & (\inst4|auto_generated|op_1~13\ & VCC)) # (!\inst5|inst3~q\ & (!\inst4|auto_generated|op_1~13\)))) # (!\inst|inst4~q\ & ((\inst5|inst3~q\ & (!\inst4|auto_generated|op_1~13\)) # 
-- (!\inst5|inst3~q\ & ((\inst4|auto_generated|op_1~13\) # (GND)))))
-- \inst4|auto_generated|op_1~15\ = CARRY((\inst|inst4~q\ & (!\inst5|inst3~q\ & !\inst4|auto_generated|op_1~13\)) # (!\inst|inst4~q\ & ((!\inst4|auto_generated|op_1~13\) # (!\inst5|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~q\,
	datab => \inst5|inst3~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~13\,
	combout => \inst4|auto_generated|op_1~14_combout\,
	cout => \inst4|auto_generated|op_1~15\);

-- Location: LCCOMB_X2_Y46_N20
\inst4|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~16_combout\ = ((\inst|inst3~q\ $ (\inst5|inst2~q\ $ (!\inst4|auto_generated|op_1~15\)))) # (GND)
-- \inst4|auto_generated|op_1~17\ = CARRY((\inst|inst3~q\ & ((\inst5|inst2~q\) # (!\inst4|auto_generated|op_1~15\))) # (!\inst|inst3~q\ & (\inst5|inst2~q\ & !\inst4|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst5|inst2~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~15\,
	combout => \inst4|auto_generated|op_1~16_combout\,
	cout => \inst4|auto_generated|op_1~17\);

-- Location: LCCOMB_X2_Y46_N22
\inst4|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~18_combout\ = (\inst5|inst1~q\ & ((\inst|inst2~q\ & (\inst4|auto_generated|op_1~17\ & VCC)) # (!\inst|inst2~q\ & (!\inst4|auto_generated|op_1~17\)))) # (!\inst5|inst1~q\ & ((\inst|inst2~q\ & (!\inst4|auto_generated|op_1~17\)) # 
-- (!\inst|inst2~q\ & ((\inst4|auto_generated|op_1~17\) # (GND)))))
-- \inst4|auto_generated|op_1~19\ = CARRY((\inst5|inst1~q\ & (!\inst|inst2~q\ & !\inst4|auto_generated|op_1~17\)) # (!\inst5|inst1~q\ & ((!\inst4|auto_generated|op_1~17\) # (!\inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1~q\,
	datab => \inst|inst2~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~17\,
	combout => \inst4|auto_generated|op_1~18_combout\,
	cout => \inst4|auto_generated|op_1~19\);

-- Location: LCCOMB_X2_Y46_N24
\inst4|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~20_combout\ = ((\inst5|inst~q\ $ (\inst|inst1~q\ $ (!\inst4|auto_generated|op_1~19\)))) # (GND)
-- \inst4|auto_generated|op_1~21\ = CARRY((\inst5|inst~q\ & ((\inst|inst1~q\) # (!\inst4|auto_generated|op_1~19\))) # (!\inst5|inst~q\ & (\inst|inst1~q\ & !\inst4|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst~q\,
	datab => \inst|inst1~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~19\,
	combout => \inst4|auto_generated|op_1~20_combout\,
	cout => \inst4|auto_generated|op_1~21\);

-- Location: LCCOMB_X2_Y46_N26
\inst4|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~22_combout\ = (\inst|inst~q\ & ((\inst5|inst~q\ & (\inst4|auto_generated|op_1~21\ & VCC)) # (!\inst5|inst~q\ & (!\inst4|auto_generated|op_1~21\)))) # (!\inst|inst~q\ & ((\inst5|inst~q\ & (!\inst4|auto_generated|op_1~21\)) # 
-- (!\inst5|inst~q\ & ((\inst4|auto_generated|op_1~21\) # (GND)))))
-- \inst4|auto_generated|op_1~23\ = CARRY((\inst|inst~q\ & (!\inst5|inst~q\ & !\inst4|auto_generated|op_1~21\)) # (!\inst|inst~q\ & ((!\inst4|auto_generated|op_1~21\) # (!\inst5|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst5|inst~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~21\,
	combout => \inst4|auto_generated|op_1~22_combout\,
	cout => \inst4|auto_generated|op_1~23\);

-- Location: LCCOMB_X2_Y46_N28
\inst4|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~24_combout\ = ((\inst|inst~q\ $ (\inst5|inst~q\ $ (!\inst4|auto_generated|op_1~23\)))) # (GND)
-- \inst4|auto_generated|op_1~25\ = CARRY((\inst|inst~q\ & ((\inst5|inst~q\) # (!\inst4|auto_generated|op_1~23\))) # (!\inst|inst~q\ & (\inst5|inst~q\ & !\inst4|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst5|inst~q\,
	datad => VCC,
	cin => \inst4|auto_generated|op_1~23\,
	combout => \inst4|auto_generated|op_1~24_combout\,
	cout => \inst4|auto_generated|op_1~25\);

-- Location: LCCOMB_X2_Y46_N30
\inst4|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|op_1~26_combout\ = \inst|inst~q\ $ (\inst4|auto_generated|op_1~25\ $ (\inst5|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datad => \inst5|inst~q\,
	cin => \inst4|auto_generated|op_1~25\,
	combout => \inst4|auto_generated|op_1~26_combout\);

-- Location: FF_X1_Y46_N21
\inst2|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst1~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1~q\);

-- Location: FF_X2_Y46_N11
\inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2~q\);

-- Location: FF_X2_Y46_N7
\inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3~q\);

-- Location: LCCOMB_X3_Y46_N24
\inst2|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4~feeder_combout\ = \inst|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4~q\,
	combout => \inst2|inst4~feeder_combout\);

-- Location: FF_X3_Y46_N25
\inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4~q\);

-- Location: FF_X2_Y46_N13
\inst2|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst5~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5~q\);

-- Location: FF_X1_Y46_N11
\inst2|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst6~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6~q\);

-- Location: FF_X1_Y46_N9
\inst2|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst7~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7~q\);

-- Location: LCCOMB_X3_Y46_N14
\inst2|inst8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst8~feeder_combout\ = \inst|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst8~q\,
	combout => \inst2|inst8~feeder_combout\);

-- Location: FF_X3_Y46_N15
\inst2|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst8~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8~q\);

-- Location: FF_X2_Y46_N19
\inst2|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst9~q\);

-- Location: FF_X1_Y46_N3
\inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst10~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10~q\);

-- Location: LCCOMB_X1_Y46_N2
\inst9|auto_generated|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[0]~0_combout\ = (\inst4|auto_generated|op_1~0_combout\ & (\inst2|inst10~q\ $ (VCC))) # (!\inst4|auto_generated|op_1~0_combout\ & (\inst2|inst10~q\ & VCC))
-- \inst9|auto_generated|result[0]~1\ = CARRY((\inst4|auto_generated|op_1~0_combout\ & \inst2|inst10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|op_1~0_combout\,
	datab => \inst2|inst10~q\,
	datad => VCC,
	combout => \inst9|auto_generated|result[0]~0_combout\,
	cout => \inst9|auto_generated|result[0]~1\);

-- Location: LCCOMB_X1_Y46_N4
\inst9|auto_generated|result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[1]~2_combout\ = (\inst2|inst9~q\ & ((\inst4|auto_generated|op_1~2_combout\ & (\inst9|auto_generated|result[0]~1\ & VCC)) # (!\inst4|auto_generated|op_1~2_combout\ & (!\inst9|auto_generated|result[0]~1\)))) # (!\inst2|inst9~q\ 
-- & ((\inst4|auto_generated|op_1~2_combout\ & (!\inst9|auto_generated|result[0]~1\)) # (!\inst4|auto_generated|op_1~2_combout\ & ((\inst9|auto_generated|result[0]~1\) # (GND)))))
-- \inst9|auto_generated|result[1]~3\ = CARRY((\inst2|inst9~q\ & (!\inst4|auto_generated|op_1~2_combout\ & !\inst9|auto_generated|result[0]~1\)) # (!\inst2|inst9~q\ & ((!\inst9|auto_generated|result[0]~1\) # (!\inst4|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9~q\,
	datab => \inst4|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[0]~1\,
	combout => \inst9|auto_generated|result[1]~2_combout\,
	cout => \inst9|auto_generated|result[1]~3\);

-- Location: LCCOMB_X1_Y46_N6
\inst9|auto_generated|result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[2]~4_combout\ = ((\inst2|inst8~q\ $ (\inst4|auto_generated|op_1~4_combout\ $ (!\inst9|auto_generated|result[1]~3\)))) # (GND)
-- \inst9|auto_generated|result[2]~5\ = CARRY((\inst2|inst8~q\ & ((\inst4|auto_generated|op_1~4_combout\) # (!\inst9|auto_generated|result[1]~3\))) # (!\inst2|inst8~q\ & (\inst4|auto_generated|op_1~4_combout\ & !\inst9|auto_generated|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst8~q\,
	datab => \inst4|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[1]~3\,
	combout => \inst9|auto_generated|result[2]~4_combout\,
	cout => \inst9|auto_generated|result[2]~5\);

-- Location: LCCOMB_X1_Y46_N8
\inst9|auto_generated|result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[3]~6_combout\ = (\inst4|auto_generated|op_1~6_combout\ & ((\inst2|inst7~q\ & (\inst9|auto_generated|result[2]~5\ & VCC)) # (!\inst2|inst7~q\ & (!\inst9|auto_generated|result[2]~5\)))) # (!\inst4|auto_generated|op_1~6_combout\ 
-- & ((\inst2|inst7~q\ & (!\inst9|auto_generated|result[2]~5\)) # (!\inst2|inst7~q\ & ((\inst9|auto_generated|result[2]~5\) # (GND)))))
-- \inst9|auto_generated|result[3]~7\ = CARRY((\inst4|auto_generated|op_1~6_combout\ & (!\inst2|inst7~q\ & !\inst9|auto_generated|result[2]~5\)) # (!\inst4|auto_generated|op_1~6_combout\ & ((!\inst9|auto_generated|result[2]~5\) # (!\inst2|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|op_1~6_combout\,
	datab => \inst2|inst7~q\,
	datad => VCC,
	cin => \inst9|auto_generated|result[2]~5\,
	combout => \inst9|auto_generated|result[3]~6_combout\,
	cout => \inst9|auto_generated|result[3]~7\);

-- Location: LCCOMB_X1_Y46_N10
\inst9|auto_generated|result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[4]~8_combout\ = ((\inst2|inst6~q\ $ (\inst4|auto_generated|op_1~8_combout\ $ (!\inst9|auto_generated|result[3]~7\)))) # (GND)
-- \inst9|auto_generated|result[4]~9\ = CARRY((\inst2|inst6~q\ & ((\inst4|auto_generated|op_1~8_combout\) # (!\inst9|auto_generated|result[3]~7\))) # (!\inst2|inst6~q\ & (\inst4|auto_generated|op_1~8_combout\ & !\inst9|auto_generated|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6~q\,
	datab => \inst4|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[3]~7\,
	combout => \inst9|auto_generated|result[4]~8_combout\,
	cout => \inst9|auto_generated|result[4]~9\);

-- Location: LCCOMB_X1_Y46_N12
\inst9|auto_generated|result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[5]~10_combout\ = (\inst2|inst5~q\ & ((\inst4|auto_generated|op_1~10_combout\ & (\inst9|auto_generated|result[4]~9\ & VCC)) # (!\inst4|auto_generated|op_1~10_combout\ & (!\inst9|auto_generated|result[4]~9\)))) # 
-- (!\inst2|inst5~q\ & ((\inst4|auto_generated|op_1~10_combout\ & (!\inst9|auto_generated|result[4]~9\)) # (!\inst4|auto_generated|op_1~10_combout\ & ((\inst9|auto_generated|result[4]~9\) # (GND)))))
-- \inst9|auto_generated|result[5]~11\ = CARRY((\inst2|inst5~q\ & (!\inst4|auto_generated|op_1~10_combout\ & !\inst9|auto_generated|result[4]~9\)) # (!\inst2|inst5~q\ & ((!\inst9|auto_generated|result[4]~9\) # (!\inst4|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5~q\,
	datab => \inst4|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[4]~9\,
	combout => \inst9|auto_generated|result[5]~10_combout\,
	cout => \inst9|auto_generated|result[5]~11\);

-- Location: LCCOMB_X1_Y46_N14
\inst9|auto_generated|result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[6]~12_combout\ = ((\inst4|auto_generated|op_1~12_combout\ $ (\inst2|inst4~q\ $ (!\inst9|auto_generated|result[5]~11\)))) # (GND)
-- \inst9|auto_generated|result[6]~13\ = CARRY((\inst4|auto_generated|op_1~12_combout\ & ((\inst2|inst4~q\) # (!\inst9|auto_generated|result[5]~11\))) # (!\inst4|auto_generated|op_1~12_combout\ & (\inst2|inst4~q\ & !\inst9|auto_generated|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|op_1~12_combout\,
	datab => \inst2|inst4~q\,
	datad => VCC,
	cin => \inst9|auto_generated|result[5]~11\,
	combout => \inst9|auto_generated|result[6]~12_combout\,
	cout => \inst9|auto_generated|result[6]~13\);

-- Location: LCCOMB_X1_Y46_N16
\inst9|auto_generated|result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[7]~14_combout\ = (\inst2|inst3~q\ & ((\inst4|auto_generated|op_1~14_combout\ & (\inst9|auto_generated|result[6]~13\ & VCC)) # (!\inst4|auto_generated|op_1~14_combout\ & (!\inst9|auto_generated|result[6]~13\)))) # 
-- (!\inst2|inst3~q\ & ((\inst4|auto_generated|op_1~14_combout\ & (!\inst9|auto_generated|result[6]~13\)) # (!\inst4|auto_generated|op_1~14_combout\ & ((\inst9|auto_generated|result[6]~13\) # (GND)))))
-- \inst9|auto_generated|result[7]~15\ = CARRY((\inst2|inst3~q\ & (!\inst4|auto_generated|op_1~14_combout\ & !\inst9|auto_generated|result[6]~13\)) # (!\inst2|inst3~q\ & ((!\inst9|auto_generated|result[6]~13\) # (!\inst4|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3~q\,
	datab => \inst4|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[6]~13\,
	combout => \inst9|auto_generated|result[7]~14_combout\,
	cout => \inst9|auto_generated|result[7]~15\);

-- Location: LCCOMB_X1_Y46_N18
\inst9|auto_generated|result[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[8]~16_combout\ = ((\inst2|inst2~q\ $ (\inst4|auto_generated|op_1~16_combout\ $ (!\inst9|auto_generated|result[7]~15\)))) # (GND)
-- \inst9|auto_generated|result[8]~17\ = CARRY((\inst2|inst2~q\ & ((\inst4|auto_generated|op_1~16_combout\) # (!\inst9|auto_generated|result[7]~15\))) # (!\inst2|inst2~q\ & (\inst4|auto_generated|op_1~16_combout\ & !\inst9|auto_generated|result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2~q\,
	datab => \inst4|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[7]~15\,
	combout => \inst9|auto_generated|result[8]~16_combout\,
	cout => \inst9|auto_generated|result[8]~17\);

-- Location: LCCOMB_X1_Y46_N20
\inst9|auto_generated|result[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[9]~18_combout\ = (\inst4|auto_generated|op_1~18_combout\ & ((\inst2|inst1~q\ & (\inst9|auto_generated|result[8]~17\ & VCC)) # (!\inst2|inst1~q\ & (!\inst9|auto_generated|result[8]~17\)))) # 
-- (!\inst4|auto_generated|op_1~18_combout\ & ((\inst2|inst1~q\ & (!\inst9|auto_generated|result[8]~17\)) # (!\inst2|inst1~q\ & ((\inst9|auto_generated|result[8]~17\) # (GND)))))
-- \inst9|auto_generated|result[9]~19\ = CARRY((\inst4|auto_generated|op_1~18_combout\ & (!\inst2|inst1~q\ & !\inst9|auto_generated|result[8]~17\)) # (!\inst4|auto_generated|op_1~18_combout\ & ((!\inst9|auto_generated|result[8]~17\) # (!\inst2|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|op_1~18_combout\,
	datab => \inst2|inst1~q\,
	datad => VCC,
	cin => \inst9|auto_generated|result[8]~17\,
	combout => \inst9|auto_generated|result[9]~18_combout\,
	cout => \inst9|auto_generated|result[9]~19\);

-- Location: LCCOMB_X1_Y46_N22
\inst9|auto_generated|result[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[10]~20_combout\ = ((\inst2|inst~q\ $ (\inst4|auto_generated|op_1~20_combout\ $ (!\inst9|auto_generated|result[9]~19\)))) # (GND)
-- \inst9|auto_generated|result[10]~21\ = CARRY((\inst2|inst~q\ & ((\inst4|auto_generated|op_1~20_combout\) # (!\inst9|auto_generated|result[9]~19\))) # (!\inst2|inst~q\ & (\inst4|auto_generated|op_1~20_combout\ & !\inst9|auto_generated|result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~q\,
	datab => \inst4|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[9]~19\,
	combout => \inst9|auto_generated|result[10]~20_combout\,
	cout => \inst9|auto_generated|result[10]~21\);

-- Location: LCCOMB_X1_Y46_N24
\inst9|auto_generated|result[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[11]~22_combout\ = (\inst2|inst~q\ & ((\inst4|auto_generated|op_1~22_combout\ & (\inst9|auto_generated|result[10]~21\ & VCC)) # (!\inst4|auto_generated|op_1~22_combout\ & (!\inst9|auto_generated|result[10]~21\)))) # 
-- (!\inst2|inst~q\ & ((\inst4|auto_generated|op_1~22_combout\ & (!\inst9|auto_generated|result[10]~21\)) # (!\inst4|auto_generated|op_1~22_combout\ & ((\inst9|auto_generated|result[10]~21\) # (GND)))))
-- \inst9|auto_generated|result[11]~23\ = CARRY((\inst2|inst~q\ & (!\inst4|auto_generated|op_1~22_combout\ & !\inst9|auto_generated|result[10]~21\)) # (!\inst2|inst~q\ & ((!\inst9|auto_generated|result[10]~21\) # (!\inst4|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~q\,
	datab => \inst4|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[10]~21\,
	combout => \inst9|auto_generated|result[11]~22_combout\,
	cout => \inst9|auto_generated|result[11]~23\);

-- Location: LCCOMB_X1_Y46_N26
\inst9|auto_generated|result[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[12]~24_combout\ = ((\inst2|inst~q\ $ (\inst4|auto_generated|op_1~24_combout\ $ (!\inst9|auto_generated|result[11]~23\)))) # (GND)
-- \inst9|auto_generated|result[12]~25\ = CARRY((\inst2|inst~q\ & ((\inst4|auto_generated|op_1~24_combout\) # (!\inst9|auto_generated|result[11]~23\))) # (!\inst2|inst~q\ & (\inst4|auto_generated|op_1~24_combout\ & !\inst9|auto_generated|result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~q\,
	datab => \inst4|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst9|auto_generated|result[11]~23\,
	combout => \inst9|auto_generated|result[12]~24_combout\,
	cout => \inst9|auto_generated|result[12]~25\);

-- Location: LCCOMB_X1_Y46_N28
\inst9|auto_generated|result[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|auto_generated|result[13]~26_combout\ = \inst2|inst~q\ $ (\inst9|auto_generated|result[12]~25\ $ (\inst4|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~q\,
	datad => \inst4|auto_generated|op_1~26_combout\,
	cin => \inst9|auto_generated|result[12]~25\,
	combout => \inst9|auto_generated|result[13]~26_combout\);

-- Location: IOIBUF_X0_Y4_N22
\sig_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(1),
	o => \sig_in[1]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\sig_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(0),
	o => \sig_in[0]~input_o\);

ww_sig_out(13) <= \sig_out[13]~output_o\;

ww_sig_out(12) <= \sig_out[12]~output_o\;

ww_sig_out(11) <= \sig_out[11]~output_o\;

ww_sig_out(10) <= \sig_out[10]~output_o\;

ww_sig_out(9) <= \sig_out[9]~output_o\;

ww_sig_out(8) <= \sig_out[8]~output_o\;

ww_sig_out(7) <= \sig_out[7]~output_o\;

ww_sig_out(6) <= \sig_out[6]~output_o\;

ww_sig_out(5) <= \sig_out[5]~output_o\;

ww_sig_out(4) <= \sig_out[4]~output_o\;

ww_sig_out(3) <= \sig_out[3]~output_o\;

ww_sig_out(2) <= \sig_out[2]~output_o\;

ww_sig_out(1) <= \sig_out[1]~output_o\;

ww_sig_out(0) <= \sig_out[0]~output_o\;
END structure;


