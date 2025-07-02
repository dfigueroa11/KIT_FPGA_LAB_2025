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

-- DATE "07/02/2025 17:28:03"

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

ENTITY 	high_pass_transposed_graph IS
    PORT (
	sig_out : OUT std_logic_vector(13 DOWNTO 0);
	sig_in : IN std_logic_vector(13 DOWNTO 0);
	rst : IN std_logic;
	clk : IN std_logic
	);
END high_pass_transposed_graph;

-- Design Ports Information
-- sig_out[13]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[12]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[11]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[10]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[9]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[7]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[6]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[5]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[3]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[1]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_out[0]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[11]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[10]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[9]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[8]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[7]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[4]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[3]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_in[2]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF high_pass_transposed_graph IS
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
SIGNAL ww_sig_in : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
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
SIGNAL \sig_in[12]~input_o\ : std_logic;
SIGNAL \sig_in[11]~input_o\ : std_logic;
SIGNAL \sig_in[10]~input_o\ : std_logic;
SIGNAL \sig_in[9]~input_o\ : std_logic;
SIGNAL \sig_in[8]~input_o\ : std_logic;
SIGNAL \sig_in[7]~input_o\ : std_logic;
SIGNAL \inst4[5]~feeder_combout\ : std_logic;
SIGNAL \inst4[4]~feeder_combout\ : std_logic;
SIGNAL \sig_in[6]~input_o\ : std_logic;
SIGNAL \sig_in[5]~input_o\ : std_logic;
SIGNAL \sig_in[4]~input_o\ : std_logic;
SIGNAL \inst4[1]~feeder_combout\ : std_logic;
SIGNAL \sig_in[3]~input_o\ : std_logic;
SIGNAL \sig_in[2]~input_o\ : std_logic;
SIGNAL \inst4[0]~feeder_combout\ : std_logic;
SIGNAL \inst5[0]~14\ : std_logic;
SIGNAL \inst5[1]~16\ : std_logic;
SIGNAL \inst5[2]~18\ : std_logic;
SIGNAL \inst5[3]~20\ : std_logic;
SIGNAL \inst5[4]~22\ : std_logic;
SIGNAL \inst5[5]~24\ : std_logic;
SIGNAL \inst5[6]~26\ : std_logic;
SIGNAL \inst5[7]~28\ : std_logic;
SIGNAL \inst5[8]~30\ : std_logic;
SIGNAL \inst5[9]~32\ : std_logic;
SIGNAL \inst5[10]~34\ : std_logic;
SIGNAL \inst5[11]~36\ : std_logic;
SIGNAL \inst5[12]~37_combout\ : std_logic;
SIGNAL \inst5[11]~35_combout\ : std_logic;
SIGNAL \inst5[10]~33_combout\ : std_logic;
SIGNAL \inst5[9]~31_combout\ : std_logic;
SIGNAL \inst5[8]~29_combout\ : std_logic;
SIGNAL \inst5[7]~27_combout\ : std_logic;
SIGNAL \inst5[6]~25_combout\ : std_logic;
SIGNAL \inst5[5]~23_combout\ : std_logic;
SIGNAL \inst5[4]~21_combout\ : std_logic;
SIGNAL \inst5[3]~19_combout\ : std_logic;
SIGNAL \inst5[2]~17_combout\ : std_logic;
SIGNAL \inst5[1]~15_combout\ : std_logic;
SIGNAL \inst5[0]~13_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL inst4 : std_logic_vector(13 DOWNTO 0);
SIGNAL inst5 : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

sig_out <= ww_sig_out;
ww_sig_in <= sig_in;
ww_rst <= rst;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X115_Y26_N23
\sig_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\,
	devoe => ww_devoe,
	o => \sig_out[13]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\sig_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	devoe => ww_devoe,
	o => \sig_out[12]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\sig_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	devoe => ww_devoe,
	o => \sig_out[11]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\sig_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	devoe => ww_devoe,
	o => \sig_out[10]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\sig_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	devoe => ww_devoe,
	o => \sig_out[9]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\sig_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	devoe => ww_devoe,
	o => \sig_out[8]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\sig_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	devoe => ww_devoe,
	o => \sig_out[7]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\sig_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	devoe => ww_devoe,
	o => \sig_out[6]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\sig_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	devoe => ww_devoe,
	o => \sig_out[5]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\sig_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	devoe => ww_devoe,
	o => \sig_out[4]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\sig_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	devoe => ww_devoe,
	o => \sig_out[3]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\sig_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	devoe => ww_devoe,
	o => \sig_out[2]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\sig_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	devoe => ww_devoe,
	o => \sig_out[1]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\sig_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
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

-- Location: IOIBUF_X115_Y30_N1
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

-- Location: FF_X114_Y30_N5
\inst4[10]\ : dffeas
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
	q => inst4(10));

-- Location: IOIBUF_X115_Y35_N15
\sig_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(12),
	o => \sig_in[12]~input_o\);

-- Location: FF_X114_Y30_N21
\inst4[9]\ : dffeas
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
	q => inst4(9));

-- Location: IOIBUF_X115_Y30_N8
\sig_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(11),
	o => \sig_in[11]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\sig_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(10),
	o => \sig_in[10]~input_o\);

-- Location: FF_X114_Y30_N17
\inst4[8]\ : dffeas
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
	q => inst4(8));

-- Location: FF_X114_Y30_N3
\inst4[7]\ : dffeas
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
	q => inst4(7));

-- Location: IOIBUF_X115_Y28_N1
\sig_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(9),
	o => \sig_in[9]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\sig_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(8),
	o => \sig_in[8]~input_o\);

-- Location: FF_X114_Y30_N9
\inst4[6]\ : dffeas
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
	q => inst4(6));

-- Location: IOIBUF_X115_Y31_N1
\sig_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(7),
	o => \sig_in[7]~input_o\);

-- Location: LCCOMB_X114_Y30_N0
\inst4[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4[5]~feeder_combout\ = \sig_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[8]~input_o\,
	combout => \inst4[5]~feeder_combout\);

-- Location: FF_X114_Y30_N1
\inst4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(5));

-- Location: LCCOMB_X114_Y30_N30
\inst4[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4[4]~feeder_combout\ = \sig_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[7]~input_o\,
	combout => \inst4[4]~feeder_combout\);

-- Location: FF_X114_Y30_N31
\inst4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(4));

-- Location: IOIBUF_X115_Y32_N8
\sig_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(6),
	o => \sig_in[6]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\sig_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(5),
	o => \sig_in[5]~input_o\);

-- Location: FF_X113_Y30_N1
\inst4[3]\ : dffeas
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
	q => inst4(3));

-- Location: IOIBUF_X115_Y29_N8
\sig_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(4),
	o => \sig_in[4]~input_o\);

-- Location: FF_X113_Y30_N9
\inst4[2]\ : dffeas
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
	q => inst4(2));

-- Location: LCCOMB_X113_Y30_N30
\inst4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4[1]~feeder_combout\ = \sig_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[4]~input_o\,
	combout => \inst4[1]~feeder_combout\);

-- Location: FF_X113_Y30_N31
\inst4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(1));

-- Location: IOIBUF_X115_Y32_N1
\sig_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(3),
	o => \sig_in[3]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\sig_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(2),
	o => \sig_in[2]~input_o\);

-- Location: LCCOMB_X113_Y30_N2
\inst4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4[0]~feeder_combout\ = \sig_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_in[3]~input_o\,
	combout => \inst4[0]~feeder_combout\);

-- Location: FF_X113_Y30_N3
\inst4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(0));

-- Location: LCCOMB_X113_Y30_N4
\inst5[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[0]~13_combout\ = (\sig_in[2]~input_o\ & (inst4(0) $ (VCC))) # (!\sig_in[2]~input_o\ & ((inst4(0)) # (GND)))
-- \inst5[0]~14\ = CARRY((inst4(0)) # (!\sig_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[2]~input_o\,
	datab => inst4(0),
	datad => VCC,
	combout => \inst5[0]~13_combout\,
	cout => \inst5[0]~14\);

-- Location: LCCOMB_X113_Y30_N6
\inst5[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[1]~15_combout\ = (inst4(1) & ((\sig_in[3]~input_o\ & (!\inst5[0]~14\)) # (!\sig_in[3]~input_o\ & (\inst5[0]~14\ & VCC)))) # (!inst4(1) & ((\sig_in[3]~input_o\ & ((\inst5[0]~14\) # (GND))) # (!\sig_in[3]~input_o\ & (!\inst5[0]~14\))))
-- \inst5[1]~16\ = CARRY((inst4(1) & (\sig_in[3]~input_o\ & !\inst5[0]~14\)) # (!inst4(1) & ((\sig_in[3]~input_o\) # (!\inst5[0]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst4(1),
	datab => \sig_in[3]~input_o\,
	datad => VCC,
	cin => \inst5[0]~14\,
	combout => \inst5[1]~15_combout\,
	cout => \inst5[1]~16\);

-- Location: LCCOMB_X113_Y30_N8
\inst5[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[2]~17_combout\ = ((\sig_in[4]~input_o\ $ (inst4(2) $ (\inst5[1]~16\)))) # (GND)
-- \inst5[2]~18\ = CARRY((\sig_in[4]~input_o\ & (inst4(2) & !\inst5[1]~16\)) # (!\sig_in[4]~input_o\ & ((inst4(2)) # (!\inst5[1]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[4]~input_o\,
	datab => inst4(2),
	datad => VCC,
	cin => \inst5[1]~16\,
	combout => \inst5[2]~17_combout\,
	cout => \inst5[2]~18\);

-- Location: LCCOMB_X113_Y30_N10
\inst5[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[3]~19_combout\ = (\sig_in[5]~input_o\ & ((inst4(3) & (!\inst5[2]~18\)) # (!inst4(3) & ((\inst5[2]~18\) # (GND))))) # (!\sig_in[5]~input_o\ & ((inst4(3) & (\inst5[2]~18\ & VCC)) # (!inst4(3) & (!\inst5[2]~18\))))
-- \inst5[3]~20\ = CARRY((\sig_in[5]~input_o\ & ((!\inst5[2]~18\) # (!inst4(3)))) # (!\sig_in[5]~input_o\ & (!inst4(3) & !\inst5[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[5]~input_o\,
	datab => inst4(3),
	datad => VCC,
	cin => \inst5[2]~18\,
	combout => \inst5[3]~19_combout\,
	cout => \inst5[3]~20\);

-- Location: LCCOMB_X113_Y30_N12
\inst5[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[4]~21_combout\ = ((inst4(4) $ (\sig_in[6]~input_o\ $ (\inst5[3]~20\)))) # (GND)
-- \inst5[4]~22\ = CARRY((inst4(4) & ((!\inst5[3]~20\) # (!\sig_in[6]~input_o\))) # (!inst4(4) & (!\sig_in[6]~input_o\ & !\inst5[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst4(4),
	datab => \sig_in[6]~input_o\,
	datad => VCC,
	cin => \inst5[3]~20\,
	combout => \inst5[4]~21_combout\,
	cout => \inst5[4]~22\);

-- Location: LCCOMB_X113_Y30_N14
\inst5[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[5]~23_combout\ = (\sig_in[7]~input_o\ & ((inst4(5) & (!\inst5[4]~22\)) # (!inst4(5) & ((\inst5[4]~22\) # (GND))))) # (!\sig_in[7]~input_o\ & ((inst4(5) & (\inst5[4]~22\ & VCC)) # (!inst4(5) & (!\inst5[4]~22\))))
-- \inst5[5]~24\ = CARRY((\sig_in[7]~input_o\ & ((!\inst5[4]~22\) # (!inst4(5)))) # (!\sig_in[7]~input_o\ & (!inst4(5) & !\inst5[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[7]~input_o\,
	datab => inst4(5),
	datad => VCC,
	cin => \inst5[4]~22\,
	combout => \inst5[5]~23_combout\,
	cout => \inst5[5]~24\);

-- Location: LCCOMB_X113_Y30_N16
\inst5[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[6]~25_combout\ = ((\sig_in[8]~input_o\ $ (inst4(6) $ (\inst5[5]~24\)))) # (GND)
-- \inst5[6]~26\ = CARRY((\sig_in[8]~input_o\ & (inst4(6) & !\inst5[5]~24\)) # (!\sig_in[8]~input_o\ & ((inst4(6)) # (!\inst5[5]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[8]~input_o\,
	datab => inst4(6),
	datad => VCC,
	cin => \inst5[5]~24\,
	combout => \inst5[6]~25_combout\,
	cout => \inst5[6]~26\);

-- Location: LCCOMB_X113_Y30_N18
\inst5[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[7]~27_combout\ = (inst4(7) & ((\sig_in[9]~input_o\ & (!\inst5[6]~26\)) # (!\sig_in[9]~input_o\ & (\inst5[6]~26\ & VCC)))) # (!inst4(7) & ((\sig_in[9]~input_o\ & ((\inst5[6]~26\) # (GND))) # (!\sig_in[9]~input_o\ & (!\inst5[6]~26\))))
-- \inst5[7]~28\ = CARRY((inst4(7) & (\sig_in[9]~input_o\ & !\inst5[6]~26\)) # (!inst4(7) & ((\sig_in[9]~input_o\) # (!\inst5[6]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst4(7),
	datab => \sig_in[9]~input_o\,
	datad => VCC,
	cin => \inst5[6]~26\,
	combout => \inst5[7]~27_combout\,
	cout => \inst5[7]~28\);

-- Location: LCCOMB_X113_Y30_N20
\inst5[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[8]~29_combout\ = ((\sig_in[10]~input_o\ $ (inst4(8) $ (\inst5[7]~28\)))) # (GND)
-- \inst5[8]~30\ = CARRY((\sig_in[10]~input_o\ & (inst4(8) & !\inst5[7]~28\)) # (!\sig_in[10]~input_o\ & ((inst4(8)) # (!\inst5[7]~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[10]~input_o\,
	datab => inst4(8),
	datad => VCC,
	cin => \inst5[7]~28\,
	combout => \inst5[8]~29_combout\,
	cout => \inst5[8]~30\);

-- Location: LCCOMB_X113_Y30_N22
\inst5[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[9]~31_combout\ = (inst4(9) & ((\sig_in[11]~input_o\ & (!\inst5[8]~30\)) # (!\sig_in[11]~input_o\ & (\inst5[8]~30\ & VCC)))) # (!inst4(9) & ((\sig_in[11]~input_o\ & ((\inst5[8]~30\) # (GND))) # (!\sig_in[11]~input_o\ & (!\inst5[8]~30\))))
-- \inst5[9]~32\ = CARRY((inst4(9) & (\sig_in[11]~input_o\ & !\inst5[8]~30\)) # (!inst4(9) & ((\sig_in[11]~input_o\) # (!\inst5[8]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst4(9),
	datab => \sig_in[11]~input_o\,
	datad => VCC,
	cin => \inst5[8]~30\,
	combout => \inst5[9]~31_combout\,
	cout => \inst5[9]~32\);

-- Location: LCCOMB_X113_Y30_N24
\inst5[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[10]~33_combout\ = ((inst4(10) $ (\sig_in[12]~input_o\ $ (\inst5[9]~32\)))) # (GND)
-- \inst5[10]~34\ = CARRY((inst4(10) & ((!\inst5[9]~32\) # (!\sig_in[12]~input_o\))) # (!inst4(10) & (!\sig_in[12]~input_o\ & !\inst5[9]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst4(10),
	datab => \sig_in[12]~input_o\,
	datad => VCC,
	cin => \inst5[9]~32\,
	combout => \inst5[10]~33_combout\,
	cout => \inst5[10]~34\);

-- Location: LCCOMB_X113_Y30_N26
\inst5[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[11]~35_combout\ = (inst4(10) & ((\sig_in[13]~input_o\ & (!\inst5[10]~34\)) # (!\sig_in[13]~input_o\ & (\inst5[10]~34\ & VCC)))) # (!inst4(10) & ((\sig_in[13]~input_o\ & ((\inst5[10]~34\) # (GND))) # (!\sig_in[13]~input_o\ & (!\inst5[10]~34\))))
-- \inst5[11]~36\ = CARRY((inst4(10) & (\sig_in[13]~input_o\ & !\inst5[10]~34\)) # (!inst4(10) & ((\sig_in[13]~input_o\) # (!\inst5[10]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst4(10),
	datab => \sig_in[13]~input_o\,
	datad => VCC,
	cin => \inst5[10]~34\,
	combout => \inst5[11]~35_combout\,
	cout => \inst5[11]~36\);

-- Location: LCCOMB_X113_Y30_N28
\inst5[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5[12]~37_combout\ = \sig_in[13]~input_o\ $ (\inst5[11]~36\ $ (inst4(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[13]~input_o\,
	datad => inst4(10),
	cin => \inst5[11]~36\,
	combout => \inst5[12]~37_combout\);

-- Location: FF_X113_Y30_N29
\inst5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[12]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(12));

-- Location: FF_X113_Y30_N27
\inst5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[11]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(11));

-- Location: FF_X113_Y30_N25
\inst5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[10]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(10));

-- Location: FF_X113_Y30_N23
\inst5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[9]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(9));

-- Location: FF_X113_Y30_N21
\inst5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[8]~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(8));

-- Location: FF_X113_Y30_N19
\inst5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[7]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(7));

-- Location: FF_X113_Y30_N17
\inst5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[6]~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(6));

-- Location: FF_X113_Y30_N15
\inst5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[5]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(5));

-- Location: FF_X113_Y30_N13
\inst5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[4]~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(4));

-- Location: FF_X113_Y30_N11
\inst5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[3]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(3));

-- Location: FF_X114_Y30_N19
\inst5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5[2]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(2));

-- Location: FF_X113_Y30_N7
\inst5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[1]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(1));

-- Location: FF_X113_Y30_N5
\inst5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5[0]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst5(0));

-- Location: LCCOMB_X114_Y30_N2
\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\sig_in[3]~input_o\ & (inst5(0) $ (VCC))) # (!\sig_in[3]~input_o\ & (inst5(0) & VCC))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\sig_in[3]~input_o\ & inst5(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[3]~input_o\,
	datab => inst5(0),
	datad => VCC,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X114_Y30_N4
\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\sig_in[4]~input_o\ & ((inst5(1) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)) # (!inst5(1) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\)))) # 
-- (!\sig_in[4]~input_o\ & ((inst5(1) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!inst5(1) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\sig_in[4]~input_o\ & (!inst5(1) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\sig_in[4]~input_o\ & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # 
-- (!inst5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[4]~input_o\,
	datab => inst5(1),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X114_Y30_N6
\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\sig_in[5]~input_o\ $ (inst5(2) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\sig_in[5]~input_o\ & ((inst5(2)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\))) # (!\sig_in[5]~input_o\ & (inst5(2) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[5]~input_o\,
	datab => inst5(2),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X114_Y30_N8
\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (inst5(3) & ((\sig_in[6]~input_o\ & (\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\ & VCC)) # (!\sig_in[6]~input_o\ & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\)))) # (!inst5(3) & ((\sig_in[6]~input_o\ & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # (!\sig_in[6]~input_o\ & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # 
-- (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((inst5(3) & (!\sig_in[6]~input_o\ & !\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # (!inst5(3) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # 
-- (!\sig_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst5(3),
	datab => \sig_in[6]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X114_Y30_N10
\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = ((\sig_in[7]~input_o\ $ (inst5(4) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\ = CARRY((\sig_in[7]~input_o\ & ((inst5(4)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\))) # (!\sig_in[7]~input_o\ & (inst5(4) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[7]~input_o\,
	datab => inst5(4),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X114_Y30_N12
\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ = (\sig_in[8]~input_o\ & ((inst5(5) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\ & VCC)) # (!inst5(5) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\)))) # 
-- (!\sig_in[8]~input_o\ & ((inst5(5) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\)) # (!inst5(5) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\ = CARRY((\sig_in[8]~input_o\ & (!inst5(5) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\)) # (!\sig_in[8]~input_o\ & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # 
-- (!inst5(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[8]~input_o\,
	datab => inst5(5),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X114_Y30_N14
\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ = ((inst5(6) $ (\sig_in[9]~input_o\ $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\ = CARRY((inst5(6) & ((\sig_in[9]~input_o\) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\))) # (!inst5(6) & (\sig_in[9]~input_o\ & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst5(6),
	datab => \sig_in[9]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X114_Y30_N16
\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ = (\sig_in[10]~input_o\ & ((inst5(7) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\ & VCC)) # (!inst5(7) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\)))) # 
-- (!\sig_in[10]~input_o\ & ((inst5(7) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\)) # (!inst5(7) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\ = CARRY((\sig_in[10]~input_o\ & (!inst5(7) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\)) # (!\sig_in[10]~input_o\ & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\) # 
-- (!inst5(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[10]~input_o\,
	datab => inst5(7),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\);

-- Location: LCCOMB_X114_Y30_N18
\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ = ((inst5(8) $ (\sig_in[11]~input_o\ $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\ = CARRY((inst5(8) & ((\sig_in[11]~input_o\) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\))) # (!inst5(8) & (\sig_in[11]~input_o\ & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst5(8),
	datab => \sig_in[11]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\);

-- Location: LCCOMB_X114_Y30_N20
\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ = (inst5(9) & ((\sig_in[12]~input_o\ & (\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\ & VCC)) # (!\sig_in[12]~input_o\ & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\)))) # (!inst5(9) & ((\sig_in[12]~input_o\ & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # (!\sig_in[12]~input_o\ & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\) # 
-- (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\ = CARRY((inst5(9) & (!\sig_in[12]~input_o\ & !\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # (!inst5(9) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\) # 
-- (!\sig_in[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst5(9),
	datab => \sig_in[12]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\);

-- Location: LCCOMB_X114_Y30_N22
\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ = ((inst5(10) $ (\sig_in[13]~input_o\ $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\ = CARRY((inst5(10) & ((\sig_in[13]~input_o\) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\))) # (!inst5(10) & (\sig_in[13]~input_o\ & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst5(10),
	datab => \sig_in[13]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\);

-- Location: LCCOMB_X114_Y30_N24
\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ = (inst5(11) & ((\sig_in[13]~input_o\ & (\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\ & VCC)) # (!\sig_in[13]~input_o\ & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\)))) # (!inst5(11) & ((\sig_in[13]~input_o\ & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\)) # (!\sig_in[13]~input_o\ & 
-- ((\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\ = CARRY((inst5(11) & (!\sig_in[13]~input_o\ & !\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\)) # (!inst5(11) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\) # 
-- (!\sig_in[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst5(11),
	datab => \sig_in[13]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\);

-- Location: LCCOMB_X114_Y30_N26
\inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ = ((\sig_in[13]~input_o\ $ (inst5(12) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\ = CARRY((\sig_in[13]~input_o\ & ((inst5(12)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\))) # (!\sig_in[13]~input_o\ & (inst5(12) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sig_in[13]~input_o\,
	datab => inst5(12),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\);

-- Location: LCCOMB_X114_Y30_N28
\inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ = inst5(12) $ (\inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\ $ (\sig_in[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => inst5(12),
	datad => \sig_in[13]~input_o\,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\);

-- Location: IOIBUF_X13_Y0_N22
\sig_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_in(1),
	o => \sig_in[1]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
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


