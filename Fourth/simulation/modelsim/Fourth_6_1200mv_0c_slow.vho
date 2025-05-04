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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/03/2023 10:12:25"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_vhdl IS
    PORT (
	sko : OUT std_logic;
	clk : IN std_logic;
	set : IN std_logic;
	sno : IN std_logic;
	f : OUT std_logic_vector(2 DOWNTO 0);
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	incr_i : OUT std_logic;
	next_state_out : OUT std_logic_vector(1 DOWNTO 0);
	pr : OUT std_logic_vector(1 DOWNTO 0);
	rr : OUT std_logic_vector(7 DOWNTO 0);
	s_out : OUT std_logic_vector(1 DOWNTO 0);
	y : OUT std_logic_vector(10 DOWNTO 1)
	);
END alu_vhdl;

-- Design Ports Information
-- sko	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incr_i	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sko : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_f : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_incr_i : std_logic;
SIGNAL ww_next_state_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(10 DOWNTO 1);
SIGNAL \sno~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \incr_i~output_o\ : std_logic;
SIGNAL \next_state_out[1]~output_o\ : std_logic;
SIGNAL \next_state_out[0]~output_o\ : std_logic;
SIGNAL \pr[1]~output_o\ : std_logic;
SIGNAL \pr[0]~output_o\ : std_logic;
SIGNAL \rr[7]~output_o\ : std_logic;
SIGNAL \rr[6]~output_o\ : std_logic;
SIGNAL \rr[5]~output_o\ : std_logic;
SIGNAL \rr[4]~output_o\ : std_logic;
SIGNAL \rr[3]~output_o\ : std_logic;
SIGNAL \rr[2]~output_o\ : std_logic;
SIGNAL \rr[1]~output_o\ : std_logic;
SIGNAL \rr[0]~output_o\ : std_logic;
SIGNAL \s_out[1]~output_o\ : std_logic;
SIGNAL \s_out[0]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sno~input_o\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|state.s0~0_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state.s0~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|state.s1~feeder_combout\ : std_logic;
SIGNAL \inst|state.s1~q\ : std_logic;
SIGNAL \inst|state.s2~q\ : std_logic;
SIGNAL \inst|i[0]~1_combout\ : std_logic;
SIGNAL \sno~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|i[1]~0_combout\ : std_logic;
SIGNAL \inst|sko~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst2|RB~2_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \inst2|RB~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst2|RB~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|q[3]~1_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|RR[0]~9\ : std_logic;
SIGNAL \inst2|RR[1]~11\ : std_logic;
SIGNAL \inst2|RR[2]~13\ : std_logic;
SIGNAL \inst2|RR[3]~15\ : std_logic;
SIGNAL \inst2|RR[4]~16_combout\ : std_logic;
SIGNAL \inst2|q[4]~0_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|RR[4]~17\ : std_logic;
SIGNAL \inst2|RR[5]~18_combout\ : std_logic;
SIGNAL \inst2|q[5]~7_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|RR[5]~19\ : std_logic;
SIGNAL \inst2|RR[6]~20_combout\ : std_logic;
SIGNAL \inst2|q[6]~6_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|RR[6]~21\ : std_logic;
SIGNAL \inst2|RR[7]~22_combout\ : std_logic;
SIGNAL \inst2|q[7]~5_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|RR[0]~8_combout\ : std_logic;
SIGNAL \inst2|q[0]~4_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|RR[1]~10_combout\ : std_logic;
SIGNAL \inst2|q[1]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|RR[2]~12_combout\ : std_logic;
SIGNAL \inst2|q[2]~2_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|RR[3]~14_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst|incr_i~0_combout\ : std_logic;
SIGNAL \inst|next_state_out[0]~0_combout\ : std_logic;
SIGNAL \inst|y[5]~0_combout\ : std_logic;
SIGNAL \inst|y[4]~1_combout\ : std_logic;
SIGNAL \inst2|RA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|RR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|i\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|RB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sno~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_next_state_out[0]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.s1~q\ : std_logic;

BEGIN

sko <= ww_sko;
ww_clk <= clk;
ww_set <= set;
ww_sno <= sno;
f <= ww_f;
ww_a <= a;
ww_b <= b;
incr_i <= ww_incr_i;
next_state_out <= ww_next_state_out;
pr <= ww_pr;
rr <= ww_rr;
s_out <= ww_s_out;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sno~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sno~input_o\);

\set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_set~inputclkctrl_outclk\ <= NOT \set~inputclkctrl_outclk\;
\ALT_INV_sno~inputclkctrl_outclk\ <= NOT \sno~inputclkctrl_outclk\;
\inst|ALT_INV_Selector0~0_combout\ <= NOT \inst|Selector0~0_combout\;
\inst|ALT_INV_next_state_out[0]~0_combout\ <= NOT \inst|next_state_out[0]~0_combout\;
\inst|ALT_INV_state.s1~q\ <= NOT \inst|state.s1~q\;

-- Location: IOOBUF_X29_Y31_N9
\sko~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sko~0_combout\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\f[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \f[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\f[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RB\(2),
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\f[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RB\(3),
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\incr_i~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|incr_i~0_combout\,
	devoe => ww_devoe,
	o => \incr_i~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\next_state_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state.s1~q\,
	devoe => ww_devoe,
	o => \next_state_out[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\next_state_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_next_state_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \next_state_out[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\pr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pr[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\pr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pr[0]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\rr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(7),
	devoe => ww_devoe,
	o => \rr[7]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\rr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(6),
	devoe => ww_devoe,
	o => \rr[6]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\rr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(5),
	devoe => ww_devoe,
	o => \rr[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\rr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(4),
	devoe => ww_devoe,
	o => \rr[4]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\rr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(3),
	devoe => ww_devoe,
	o => \rr[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\rr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(2),
	devoe => ww_devoe,
	o => \rr[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\rr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(1),
	devoe => ww_devoe,
	o => \rr[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\rr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|RR\(0),
	devoe => ww_devoe,
	o => \rr[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\s_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state.s2~q\,
	devoe => ww_devoe,
	o => \s_out[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\s_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state.s1~q\,
	devoe => ww_devoe,
	o => \s_out[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\y[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\y[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\y[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\y[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Selector0~0_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\y[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state.s1~q\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\y[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y[5]~0_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\y[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y[4]~1_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector1~1_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X16_Y0_N1
\sno~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sno,
	o => \sno~input_o\);

-- Location: LCCOMB_X30_Y29_N16
\inst|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|sko~0_combout\) # ((!\sno~input_o\ & !\inst|state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sno~input_o\,
	datac => \inst|sko~0_combout\,
	datad => \inst|state.s0~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y29_N6
\inst|state.s0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|state.s0~0_combout\ = !\inst|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector0~0_combout\,
	combout => \inst|state.s0~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\set~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: CLKCTRL_G19
\set~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \set~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \set~inputclkctrl_outclk\);

-- Location: FF_X30_Y29_N7
\inst|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|state.s0~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s0~q\);

-- Location: LCCOMB_X30_Y29_N22
\inst|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (!\inst|state.s0~q\ & \sno~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datad => \sno~input_o\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y29_N30
\inst|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\) # ((\inst|state.s2~q\ & ((\inst|i\(0)) # (!\inst|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(1),
	datab => \inst|i\(0),
	datac => \inst|Selector1~0_combout\,
	datad => \inst|state.s2~q\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X30_Y29_N4
\inst|state.s1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|state.s1~feeder_combout\ = \inst|Selector1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~1_combout\,
	combout => \inst|state.s1~feeder_combout\);

-- Location: FF_X30_Y29_N5
\inst|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|state.s1~feeder_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s1~q\);

-- Location: FF_X30_Y29_N21
\inst|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|state.s1~q\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s2~q\);

-- Location: LCCOMB_X29_Y29_N6
\inst|i[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|i[0]~1_combout\ = (\inst|state.s2~q\ & (!\inst|i\(1) & !\inst|i\(0))) # (!\inst|state.s2~q\ & ((\inst|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s2~q\,
	datab => \inst|i\(1),
	datac => \inst|i\(0),
	combout => \inst|i[0]~1_combout\);

-- Location: CLKCTRL_G18
\sno~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sno~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sno~inputclkctrl_outclk\);

-- Location: FF_X29_Y29_N7
\inst|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|i[0]~1_combout\,
	clrn => \ALT_INV_sno~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(0));

-- Location: LCCOMB_X29_Y29_N8
\inst|i[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|i[1]~0_combout\ = (\inst|i\(1)) # ((!\inst|i\(0) & \inst|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(0),
	datac => \inst|i\(1),
	datad => \inst|state.s2~q\,
	combout => \inst|i[1]~0_combout\);

-- Location: FF_X29_Y29_N9
\inst|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|i[1]~0_combout\,
	clrn => \ALT_INV_sno~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(1));

-- Location: LCCOMB_X30_Y29_N18
\inst|sko~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|sko~0_combout\ = (\inst|i\(1) & (\inst|state.s2~q\ & !\inst|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(1),
	datab => \inst|state.s2~q\,
	datac => \inst|i\(0),
	combout => \inst|sko~0_combout\);

-- Location: IOIBUF_X33_Y16_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: FF_X31_Y29_N5
\inst2|RB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[3]~input_o\,
	sload => VCC,
	ena => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RB\(3));

-- Location: IOIBUF_X24_Y31_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X31_Y29_N31
\inst2|RA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	ena => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RA\(3));

-- Location: IOIBUF_X26_Y31_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X30_Y29_N14
\inst2|RB~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RB~2_combout\ = (!\inst|state.s0~q\ & (\sno~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datab => \sno~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst2|RB~2_combout\);

-- Location: FF_X30_Y29_N15
\inst2|RB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RB~2_combout\,
	ena => \inst|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RB\(0));

-- Location: IOIBUF_X22_Y31_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X30_Y29_N26
\inst2|RB~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RB~1_combout\ = (\sno~input_o\ & ((\inst|state.s0~q\ & (\inst2|RB\(0))) # (!\inst|state.s0~q\ & ((\b[1]~input_o\))))) # (!\sno~input_o\ & (\inst2|RB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(0),
	datab => \sno~input_o\,
	datac => \inst|state.s0~q\,
	datad => \b[1]~input_o\,
	combout => \inst2|RB~1_combout\);

-- Location: FF_X30_Y29_N27
\inst2|RB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RB~1_combout\,
	ena => \inst|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RB\(1));

-- Location: IOIBUF_X33_Y16_N8
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X32_Y29_N28
\inst2|RB~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RB~0_combout\ = (\inst|state.s0~q\ & (\inst2|RB\(1))) # (!\inst|state.s0~q\ & ((\sno~input_o\ & ((\b[2]~input_o\))) # (!\sno~input_o\ & (\inst2|RB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(1),
	datab => \inst|state.s0~q\,
	datac => \sno~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst2|RB~0_combout\);

-- Location: FF_X32_Y29_N29
\inst2|RB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RB~0_combout\,
	ena => \inst|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RB\(2));

-- Location: LCCOMB_X31_Y29_N30
\inst2|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RA\(3) & !\inst2|RB\(2))) # (!\inst2|RB\(3) & (\inst2|RA\(3) & \inst2|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datab => \inst|state.s1~q\,
	datac => \inst2|RA\(3),
	datad => \inst2|RB\(2),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y29_N20
\inst|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|state.s1~q\) # ((\sno~input_o\ & !\inst|state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sno~input_o\,
	datac => \inst|state.s1~q\,
	datad => \inst|state.s0~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X31_Y29_N4
\inst2|q[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[3]~1_combout\ = (\inst|Selector2~0_combout\ & (\inst2|RR\(3))) # (!\inst|Selector2~0_combout\ & ((\inst2|RB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RR\(3),
	datac => \inst2|RB\(3),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[3]~1_combout\);

-- Location: IOIBUF_X31_Y31_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X31_Y29_N1
\inst2|RA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	ena => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RA\(2));

-- Location: LCCOMB_X31_Y29_N0
\inst2|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RA\(2) & !\inst2|RB\(2))) # (!\inst2|RB\(3) & (\inst2|RA\(2) & \inst2|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datab => \inst|state.s1~q\,
	datac => \inst2|RA\(2),
	datad => \inst2|RB\(2),
	combout => \inst2|Mux5~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X31_Y29_N11
\inst2|RA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	ena => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RA\(1));

-- Location: LCCOMB_X31_Y29_N10
\inst2|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RA\(1) & !\inst2|RB\(2))) # (!\inst2|RB\(3) & (\inst2|RA\(1) & \inst2|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datab => \inst|state.s1~q\,
	datac => \inst2|RA\(1),
	datad => \inst2|RB\(2),
	combout => \inst2|Mux6~0_combout\);

-- Location: IOIBUF_X33_Y22_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X31_Y29_N9
\inst2|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	sload => VCC,
	ena => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RA\(0));

-- Location: LCCOMB_X31_Y29_N8
\inst2|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RA\(0) & !\inst2|RB\(2))) # (!\inst2|RB\(3) & (\inst2|RA\(0) & \inst2|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datab => \inst|state.s1~q\,
	datac => \inst2|RA\(0),
	datad => \inst2|RB\(2),
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y29_N12
\inst2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst2|q[0]~4_combout\ & (\inst2|Mux7~0_combout\ $ (VCC))) # (!\inst2|q[0]~4_combout\ & (\inst2|Mux7~0_combout\ & VCC))
-- \inst2|Add0~1\ = CARRY((\inst2|q[0]~4_combout\ & \inst2|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q[0]~4_combout\,
	datab => \inst2|Mux7~0_combout\,
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X31_Y29_N18
\inst2|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|Mux0~0_combout\ & ((\inst2|q[3]~1_combout\ & (\inst2|Add0~5\ & VCC)) # (!\inst2|q[3]~1_combout\ & (!\inst2|Add0~5\)))) # (!\inst2|Mux0~0_combout\ & ((\inst2|q[3]~1_combout\ & (!\inst2|Add0~5\)) # (!\inst2|q[3]~1_combout\ & 
-- ((\inst2|Add0~5\) # (GND)))))
-- \inst2|Add0~7\ = CARRY((\inst2|Mux0~0_combout\ & (!\inst2|q[3]~1_combout\ & !\inst2|Add0~5\)) # (!\inst2|Mux0~0_combout\ & ((!\inst2|Add0~5\) # (!\inst2|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|q[3]~1_combout\,
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X31_Y29_N20
\inst2|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = ((\inst2|Mux0~0_combout\ $ (\inst2|q[4]~0_combout\ $ (!\inst2|Add0~7\)))) # (GND)
-- \inst2|Add0~9\ = CARRY((\inst2|Mux0~0_combout\ & ((\inst2|q[4]~0_combout\) # (!\inst2|Add0~7\))) # (!\inst2|Mux0~0_combout\ & (\inst2|q[4]~0_combout\ & !\inst2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|q[4]~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X32_Y29_N10
\inst2|RR[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[0]~8_combout\ = (\inst2|Add0~0_combout\ & (\inst2|Add0~16_combout\ $ (VCC))) # (!\inst2|Add0~0_combout\ & (\inst2|Add0~16_combout\ & VCC))
-- \inst2|RR[0]~9\ = CARRY((\inst2|Add0~0_combout\ & \inst2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst2|Add0~16_combout\,
	datad => VCC,
	combout => \inst2|RR[0]~8_combout\,
	cout => \inst2|RR[0]~9\);

-- Location: LCCOMB_X32_Y29_N12
\inst2|RR[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[1]~10_combout\ = (\inst2|Add0~2_combout\ & (!\inst2|RR[0]~9\)) # (!\inst2|Add0~2_combout\ & ((\inst2|RR[0]~9\) # (GND)))
-- \inst2|RR[1]~11\ = CARRY((!\inst2|RR[0]~9\) # (!\inst2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datad => VCC,
	cin => \inst2|RR[0]~9\,
	combout => \inst2|RR[1]~10_combout\,
	cout => \inst2|RR[1]~11\);

-- Location: LCCOMB_X32_Y29_N14
\inst2|RR[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[2]~12_combout\ = (\inst2|Add0~4_combout\ & (\inst2|RR[1]~11\ $ (GND))) # (!\inst2|Add0~4_combout\ & (!\inst2|RR[1]~11\ & VCC))
-- \inst2|RR[2]~13\ = CARRY((\inst2|Add0~4_combout\ & !\inst2|RR[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|RR[1]~11\,
	combout => \inst2|RR[2]~12_combout\,
	cout => \inst2|RR[2]~13\);

-- Location: LCCOMB_X32_Y29_N16
\inst2|RR[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[3]~14_combout\ = (\inst2|Add0~6_combout\ & (!\inst2|RR[2]~13\)) # (!\inst2|Add0~6_combout\ & ((\inst2|RR[2]~13\) # (GND)))
-- \inst2|RR[3]~15\ = CARRY((!\inst2|RR[2]~13\) # (!\inst2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|RR[2]~13\,
	combout => \inst2|RR[3]~14_combout\,
	cout => \inst2|RR[3]~15\);

-- Location: LCCOMB_X32_Y29_N18
\inst2|RR[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[4]~16_combout\ = (\inst2|Add0~8_combout\ & (\inst2|RR[3]~15\ $ (GND))) # (!\inst2|Add0~8_combout\ & (!\inst2|RR[3]~15\ & VCC))
-- \inst2|RR[4]~17\ = CARRY((\inst2|Add0~8_combout\ & !\inst2|RR[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|RR[3]~15\,
	combout => \inst2|RR[4]~16_combout\,
	cout => \inst2|RR[4]~17\);

-- Location: FF_X32_Y29_N19
\inst2|RR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[4]~16_combout\,
	asdata => \inst2|RR\(3),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(4));

-- Location: LCCOMB_X30_Y29_N28
\inst2|q[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[4]~0_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(4)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datac => \inst2|RR\(4),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[4]~0_combout\);

-- Location: LCCOMB_X31_Y29_N22
\inst2|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|q[5]~7_combout\ & ((\inst2|Mux0~0_combout\ & (\inst2|Add0~9\ & VCC)) # (!\inst2|Mux0~0_combout\ & (!\inst2|Add0~9\)))) # (!\inst2|q[5]~7_combout\ & ((\inst2|Mux0~0_combout\ & (!\inst2|Add0~9\)) # (!\inst2|Mux0~0_combout\ 
-- & ((\inst2|Add0~9\) # (GND)))))
-- \inst2|Add0~11\ = CARRY((\inst2|q[5]~7_combout\ & (!\inst2|Mux0~0_combout\ & !\inst2|Add0~9\)) # (!\inst2|q[5]~7_combout\ & ((!\inst2|Add0~9\) # (!\inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q[5]~7_combout\,
	datab => \inst2|Mux0~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X32_Y29_N20
\inst2|RR[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[5]~18_combout\ = (\inst2|Add0~10_combout\ & (!\inst2|RR[4]~17\)) # (!\inst2|Add0~10_combout\ & ((\inst2|RR[4]~17\) # (GND)))
-- \inst2|RR[5]~19\ = CARRY((!\inst2|RR[4]~17\) # (!\inst2|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~10_combout\,
	datad => VCC,
	cin => \inst2|RR[4]~17\,
	combout => \inst2|RR[5]~18_combout\,
	cout => \inst2|RR[5]~19\);

-- Location: FF_X32_Y29_N21
\inst2|RR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[5]~18_combout\,
	asdata => \inst2|RR\(4),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(5));

-- Location: LCCOMB_X31_Y29_N6
\inst2|q[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[5]~7_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(5)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RB\(3),
	datac => \inst2|RR\(5),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[5]~7_combout\);

-- Location: LCCOMB_X31_Y29_N24
\inst2|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = ((\inst2|Mux0~0_combout\ $ (\inst2|q[6]~6_combout\ $ (!\inst2|Add0~11\)))) # (GND)
-- \inst2|Add0~13\ = CARRY((\inst2|Mux0~0_combout\ & ((\inst2|q[6]~6_combout\) # (!\inst2|Add0~11\))) # (!\inst2|Mux0~0_combout\ & (\inst2|q[6]~6_combout\ & !\inst2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|q[6]~6_combout\,
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X32_Y29_N22
\inst2|RR[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[6]~20_combout\ = (\inst2|Add0~12_combout\ & (\inst2|RR[5]~19\ $ (GND))) # (!\inst2|Add0~12_combout\ & (!\inst2|RR[5]~19\ & VCC))
-- \inst2|RR[6]~21\ = CARRY((\inst2|Add0~12_combout\ & !\inst2|RR[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~12_combout\,
	datad => VCC,
	cin => \inst2|RR[5]~19\,
	combout => \inst2|RR[6]~20_combout\,
	cout => \inst2|RR[6]~21\);

-- Location: FF_X32_Y29_N23
\inst2|RR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[6]~20_combout\,
	asdata => \inst2|RR\(5),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(6));

-- Location: LCCOMB_X31_Y29_N2
\inst2|q[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[6]~6_combout\ = (\inst|Selector2~0_combout\ & (\inst2|RR\(6))) # (!\inst|Selector2~0_combout\ & ((\inst2|RB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RR\(6),
	datac => \inst2|RB\(3),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[6]~6_combout\);

-- Location: LCCOMB_X31_Y29_N26
\inst2|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|q[7]~5_combout\ & ((\inst2|Mux0~0_combout\ & (\inst2|Add0~13\ & VCC)) # (!\inst2|Mux0~0_combout\ & (!\inst2|Add0~13\)))) # (!\inst2|q[7]~5_combout\ & ((\inst2|Mux0~0_combout\ & (!\inst2|Add0~13\)) # 
-- (!\inst2|Mux0~0_combout\ & ((\inst2|Add0~13\) # (GND)))))
-- \inst2|Add0~15\ = CARRY((\inst2|q[7]~5_combout\ & (!\inst2|Mux0~0_combout\ & !\inst2|Add0~13\)) # (!\inst2|q[7]~5_combout\ & ((!\inst2|Add0~13\) # (!\inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q[7]~5_combout\,
	datab => \inst2|Mux0~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X32_Y29_N24
\inst2|RR[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[7]~22_combout\ = \inst2|Add0~14_combout\ $ (\inst2|RR[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	cin => \inst2|RR[6]~21\,
	combout => \inst2|RR[7]~22_combout\);

-- Location: FF_X32_Y29_N25
\inst2|RR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[7]~22_combout\,
	asdata => \inst2|RR\(6),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(7));

-- Location: LCCOMB_X30_Y29_N10
\inst2|q[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[7]~5_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(7)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datac => \inst2|RR\(7),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[7]~5_combout\);

-- Location: LCCOMB_X31_Y29_N28
\inst2|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = !\inst2|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\);

-- Location: FF_X32_Y29_N11
\inst2|RR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[0]~8_combout\,
	asdata => \inst2|RR\(7),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(0));

-- Location: LCCOMB_X30_Y29_N12
\inst2|q[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[0]~4_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(0)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RB\(0),
	datac => \inst2|RR\(0),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[0]~4_combout\);

-- Location: LCCOMB_X31_Y29_N14
\inst2|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|q[1]~3_combout\ & ((\inst2|Mux6~0_combout\ & (\inst2|Add0~1\ & VCC)) # (!\inst2|Mux6~0_combout\ & (!\inst2|Add0~1\)))) # (!\inst2|q[1]~3_combout\ & ((\inst2|Mux6~0_combout\ & (!\inst2|Add0~1\)) # (!\inst2|Mux6~0_combout\ & 
-- ((\inst2|Add0~1\) # (GND)))))
-- \inst2|Add0~3\ = CARRY((\inst2|q[1]~3_combout\ & (!\inst2|Mux6~0_combout\ & !\inst2|Add0~1\)) # (!\inst2|q[1]~3_combout\ & ((!\inst2|Add0~1\) # (!\inst2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q[1]~3_combout\,
	datab => \inst2|Mux6~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X32_Y29_N13
\inst2|RR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[1]~10_combout\,
	asdata => \inst2|RR\(0),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(1));

-- Location: LCCOMB_X30_Y29_N8
\inst2|q[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[1]~3_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(1)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(1),
	datac => \inst2|RR\(1),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[1]~3_combout\);

-- Location: LCCOMB_X31_Y29_N16
\inst2|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = ((\inst2|q[2]~2_combout\ $ (\inst2|Mux5~0_combout\ $ (!\inst2|Add0~3\)))) # (GND)
-- \inst2|Add0~5\ = CARRY((\inst2|q[2]~2_combout\ & ((\inst2|Mux5~0_combout\) # (!\inst2|Add0~3\))) # (!\inst2|q[2]~2_combout\ & (\inst2|Mux5~0_combout\ & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|q[2]~2_combout\,
	datab => \inst2|Mux5~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X32_Y29_N15
\inst2|RR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[2]~12_combout\,
	asdata => \inst2|RR\(1),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(2));

-- Location: LCCOMB_X32_Y29_N2
\inst2|q[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[2]~2_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(2)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RB\(2),
	datac => \inst2|RR\(2),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[2]~2_combout\);

-- Location: FF_X32_Y29_N17
\inst2|RR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|RR[3]~14_combout\,
	asdata => \inst2|RR\(2),
	sclr => \inst|Selector1~0_combout\,
	sload => \inst|ALT_INV_state.s1~q\,
	ena => \inst|ALT_INV_Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(3));

-- Location: LCCOMB_X32_Y29_N30
\inst2|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|RR\(3) & (\inst2|RR\(1) & (\inst2|RR\(2) & \inst2|RR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RR\(3),
	datab => \inst2|RR\(1),
	datac => \inst2|RR\(2),
	datad => \inst2|RR\(0),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y29_N6
\inst2|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|Equal1~0_combout\ & \inst2|RR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~0_combout\,
	datac => \inst2|RR\(4),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y29_N24
\inst|incr_i~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|incr_i~0_combout\ = (\inst|state.s2~q\ & ((\inst|i\(0)) # (!\inst|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(0),
	datac => \inst|i\(1),
	datad => \inst|state.s2~q\,
	combout => \inst|incr_i~0_combout\);

-- Location: LCCOMB_X30_Y29_N24
\inst|next_state_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next_state_out[0]~0_combout\ = (\inst|state.s1~q\) # ((\inst|sko~0_combout\) # ((!\inst|state.s0~q\ & !\sno~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datab => \sno~input_o\,
	datac => \inst|state.s1~q\,
	datad => \inst|sko~0_combout\,
	combout => \inst|next_state_out[0]~0_combout\);

-- Location: LCCOMB_X32_Y29_N4
\inst|y[5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|y[5]~0_combout\ = (\inst|state.s1~q\ & (\inst2|RB\(3) & !\inst2|RB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datac => \inst2|RB\(3),
	datad => \inst2|RB\(2),
	combout => \inst|y[5]~0_combout\);

-- Location: LCCOMB_X32_Y29_N26
\inst|y[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|y[4]~1_combout\ = (\inst|state.s1~q\ & (!\inst2|RB\(3) & \inst2|RB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datac => \inst2|RB\(3),
	datad => \inst2|RB\(2),
	combout => \inst|y[4]~1_combout\);

ww_sko <= \sko~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(0) <= \f[0]~output_o\;

ww_incr_i <= \incr_i~output_o\;

ww_next_state_out(1) <= \next_state_out[1]~output_o\;

ww_next_state_out(0) <= \next_state_out[0]~output_o\;

ww_pr(1) <= \pr[1]~output_o\;

ww_pr(0) <= \pr[0]~output_o\;

ww_rr(7) <= \rr[7]~output_o\;

ww_rr(6) <= \rr[6]~output_o\;

ww_rr(5) <= \rr[5]~output_o\;

ww_rr(4) <= \rr[4]~output_o\;

ww_rr(3) <= \rr[3]~output_o\;

ww_rr(2) <= \rr[2]~output_o\;

ww_rr(1) <= \rr[1]~output_o\;

ww_rr(0) <= \rr[0]~output_o\;

ww_s_out(1) <= \s_out[1]~output_o\;

ww_s_out(0) <= \s_out[0]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(1) <= \y[1]~output_o\;
END structure;


