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

-- DATE "11/03/2023 22:23:12"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
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

ENTITY 	alu_new IS
    PORT (
	sko : OUT std_logic;
	clk : IN std_logic;
	set : IN std_logic;
	cop : IN std_logic;
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
END alu_new;

-- Design Ports Information
-- sko	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incr_i	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[4]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cop	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_new IS
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
SIGNAL ww_cop : std_logic;
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
SIGNAL \cop~input_o\ : std_logic;
SIGNAL \sno~input_o\ : std_logic;
SIGNAL \inst1|i[1]~0_combout\ : std_logic;
SIGNAL \sno~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|i[0]~1_combout\ : std_logic;
SIGNAL \inst1|incr_i~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~2_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|state.s0~q\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|state.s1~feeder_combout\ : std_logic;
SIGNAL \inst1|state.s1~q\ : std_logic;
SIGNAL \inst1|state.s2~q\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst|RB~2_combout\ : std_logic;
SIGNAL \inst|RB~1_combout\ : std_logic;
SIGNAL \inst|RB~0_combout\ : std_logic;
SIGNAL \inst|q[2]~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \inst1|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|y[4]~2_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \inst1|y[5]~1_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|RR[0]~9\ : std_logic;
SIGNAL \inst|RR[1]~11\ : std_logic;
SIGNAL \inst|RR[2]~13\ : std_logic;
SIGNAL \inst|RR[3]~15_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~2_combout\ : std_logic;
SIGNAL \inst|RR[0]~14_combout\ : std_logic;
SIGNAL \inst|q[3]~7_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|RR[3]~16\ : std_logic;
SIGNAL \inst|RR[4]~17_combout\ : std_logic;
SIGNAL \inst|q[4]~6_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|RR[4]~18\ : std_logic;
SIGNAL \inst|RR[5]~19_combout\ : std_logic;
SIGNAL \inst|q[5]~5_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|RR[5]~20\ : std_logic;
SIGNAL \inst|RR[6]~21_combout\ : std_logic;
SIGNAL \inst|q[6]~4_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|RR[6]~22\ : std_logic;
SIGNAL \inst|RR[7]~23_combout\ : std_logic;
SIGNAL \inst|q[7]~3_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|RR[0]~8_combout\ : std_logic;
SIGNAL \inst|q[0]~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|RR[1]~10_combout\ : std_logic;
SIGNAL \inst|q[1]~1_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|RR[2]~12_combout\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \inst1|state.s3~q\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|next_state_out[1]~0_combout\ : std_logic;
SIGNAL \inst1|next_state_out[0]~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|pr[1]~0_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|s_out[1]~0_combout\ : std_logic;
SIGNAL \inst1|s_out[0]~1_combout\ : std_logic;
SIGNAL \inst1|y[9]~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~3_combout\ : std_logic;
SIGNAL \inst|RA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|RR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|i\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|RB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|priznak\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|ALT_INV_s_out[0]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_s_out[1]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_next_state_out[0]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_state.s1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_next_state_out[1]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sno~inputclkctrl_outclk\ : std_logic;

BEGIN

sko <= ww_sko;
ww_clk <= clk;
ww_set <= set;
ww_cop <= cop;
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
\inst1|ALT_INV_s_out[0]~1_combout\ <= NOT \inst1|s_out[0]~1_combout\;
\inst1|ALT_INV_s_out[1]~0_combout\ <= NOT \inst1|s_out[1]~0_combout\;
\inst1|ALT_INV_next_state_out[0]~1_combout\ <= NOT \inst1|next_state_out[0]~1_combout\;
\inst1|ALT_INV_state.s1~q\ <= NOT \inst1|state.s1~q\;
\inst1|ALT_INV_next_state_out[1]~0_combout\ <= NOT \inst1|next_state_out[1]~0_combout\;
\inst1|ALT_INV_Selector0~1_combout\ <= NOT \inst1|Selector0~1_combout\;
\ALT_INV_set~inputclkctrl_outclk\ <= NOT \set~inputclkctrl_outclk\;
\ALT_INV_sno~inputclkctrl_outclk\ <= NOT \sno~inputclkctrl_outclk\;

-- Location: IOOBUF_X52_Y28_N9
\sko~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\f[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \f[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\f[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RB\(2),
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\f[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RB\(3),
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\incr_i~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|incr_i~0_combout\,
	devoe => ww_devoe,
	o => \incr_i~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\next_state_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_next_state_out[1]~0_combout\,
	devoe => ww_devoe,
	o => \next_state_out[1]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\next_state_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_next_state_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \next_state_out[0]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\pr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|priznak\(1),
	devoe => ww_devoe,
	o => \pr[1]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\pr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|priznak\(0),
	devoe => ww_devoe,
	o => \pr[0]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\rr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(7),
	devoe => ww_devoe,
	o => \rr[7]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\rr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(6),
	devoe => ww_devoe,
	o => \rr[6]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\rr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(5),
	devoe => ww_devoe,
	o => \rr[5]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\rr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(4),
	devoe => ww_devoe,
	o => \rr[4]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\rr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(3),
	devoe => ww_devoe,
	o => \rr[3]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\rr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(2),
	devoe => ww_devoe,
	o => \rr[2]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\rr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(1),
	devoe => ww_devoe,
	o => \rr[1]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\rr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RR\(0),
	devoe => ww_devoe,
	o => \rr[0]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\s_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s_out[1]~0_combout\,
	devoe => ww_devoe,
	o => \s_out[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\s_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \s_out[0]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\y[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\y[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|y[9]~0_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\y[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector3~0_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\y[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector4~3_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\y[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|state.s1~q\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\y[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|y[5]~1_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\y[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|y[4]~2_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector1~1_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector1~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
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

-- Location: IOIBUF_X52_Y23_N8
\cop~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cop,
	o => \cop~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\sno~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sno,
	o => \sno~input_o\);

-- Location: LCCOMB_X48_Y22_N4
\inst1|i[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|i[1]~0_combout\ = (\inst1|i\(1)) # ((\inst1|state.s2~q\ & !\inst1|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.s2~q\,
	datac => \inst1|i\(1),
	datad => \inst1|i\(0),
	combout => \inst1|i[1]~0_combout\);

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

-- Location: FF_X48_Y22_N5
\inst1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|i[1]~0_combout\,
	clrn => \ALT_INV_sno~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|i\(1));

-- Location: LCCOMB_X48_Y22_N6
\inst1|i[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|i[0]~1_combout\ = (\inst1|state.s2~q\ & (!\inst1|i\(1) & !\inst1|i\(0))) # (!\inst1|state.s2~q\ & ((\inst1|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.s2~q\,
	datab => \inst1|i\(1),
	datac => \inst1|i\(0),
	combout => \inst1|i[0]~1_combout\);

-- Location: FF_X48_Y22_N7
\inst1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|i[0]~1_combout\,
	clrn => \ALT_INV_sno~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|i\(0));

-- Location: LCCOMB_X47_Y22_N24
\inst1|incr_i~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|incr_i~0_combout\ = (\inst1|state.s2~q\ & ((\inst1|i\(0)) # (!\inst1|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(0),
	datab => \inst1|state.s2~q\,
	datad => \inst1|i\(1),
	combout => \inst1|incr_i~0_combout\);

-- Location: LCCOMB_X42_Y22_N20
\inst1|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector0~2_combout\ = (\inst1|Selector0~1_combout\ & ((\sno~input_o\) # (\inst1|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sno~input_o\,
	datac => \inst1|state.s0~q\,
	datad => \inst1|Selector0~1_combout\,
	combout => \inst1|Selector0~2_combout\);

-- Location: IOIBUF_X27_Y0_N22
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

-- Location: FF_X42_Y22_N21
\inst1|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector0~2_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.s0~q\);

-- Location: LCCOMB_X42_Y22_N26
\inst1|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\cop~input_o\ & ((\inst1|incr_i~0_combout\) # ((\sno~input_o\ & !\inst1|state.s0~q\)))) # (!\cop~input_o\ & (\sno~input_o\ & ((!\inst1|state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \sno~input_o\,
	datac => \inst1|incr_i~0_combout\,
	datad => \inst1|state.s0~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: LCCOMB_X44_Y22_N4
\inst1|state.s1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|state.s1~feeder_combout\ = \inst1|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|state.s1~feeder_combout\);

-- Location: FF_X44_Y22_N5
\inst1|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|state.s1~feeder_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.s1~q\);

-- Location: FF_X47_Y22_N17
\inst1|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|state.s1~q\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.s2~q\);

-- Location: IOIBUF_X52_Y18_N8
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X42_Y22_N0
\inst|RB~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RB~2_combout\ = (\b[0]~input_o\ & (\sno~input_o\ & !\inst1|state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \sno~input_o\,
	datad => \inst1|state.s0~q\,
	combout => \inst|RB~2_combout\);

-- Location: FF_X43_Y22_N1
\inst|RB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|RB~2_combout\,
	sload => VCC,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RB\(0));

-- Location: LCCOMB_X42_Y22_N22
\inst|RB~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RB~1_combout\ = (\inst1|state.s0~q\ & (((\inst|RB\(0))))) # (!\inst1|state.s0~q\ & ((\sno~input_o\ & (\b[1]~input_o\)) # (!\sno~input_o\ & ((\inst|RB\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \inst1|state.s0~q\,
	datac => \sno~input_o\,
	datad => \inst|RB\(0),
	combout => \inst|RB~1_combout\);

-- Location: FF_X42_Y22_N23
\inst|RB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RB~1_combout\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RB\(1));

-- Location: LCCOMB_X42_Y22_N6
\inst|RB~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RB~0_combout\ = (\sno~input_o\ & ((\inst1|state.s0~q\ & ((\inst|RB\(1)))) # (!\inst1|state.s0~q\ & (\b[2]~input_o\)))) # (!\sno~input_o\ & (((\inst|RB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \sno~input_o\,
	datac => \inst|RB\(1),
	datad => \inst1|state.s0~q\,
	combout => \inst|RB~0_combout\);

-- Location: FF_X43_Y22_N29
\inst|RB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|RB~0_combout\,
	sload => VCC,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RB\(2));

-- Location: LCCOMB_X44_Y22_N6
\inst|q[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[2]~0_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & (\inst|RR\(2))) # (!\inst1|state.s1~q\ & ((\inst|RB\(2)))))) # (!\cop~input_o\ & (((\inst|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst|RR\(2),
	datac => \inst1|state.s1~q\,
	datad => \inst|RB\(2),
	combout => \inst|q[2]~0_combout\);

-- Location: IOIBUF_X52_Y15_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X42_Y22_N28
\inst1|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector1~1_combout\ = (\sno~input_o\ & !\inst1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sno~input_o\,
	datad => \inst1|state.s0~q\,
	combout => \inst1|Selector1~1_combout\);

-- Location: FF_X43_Y22_N7
\inst|RB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[3]~input_o\,
	sload => VCC,
	ena => \inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RB\(3));

-- Location: LCCOMB_X43_Y22_N6
\inst1|y[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|y[4]~2_combout\ = (\inst1|state.s1~q\ & (((\inst|RB\(2) & !\inst|RB\(3))) # (!\cop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RB\(2),
	datab => \cop~input_o\,
	datac => \inst|RB\(3),
	datad => \inst1|state.s1~q\,
	combout => \inst1|y[4]~2_combout\);

-- Location: IOIBUF_X52_Y11_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X43_Y22_N5
\inst|RA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	ena => \inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RA\(2));

-- Location: LCCOMB_X43_Y22_N28
\inst1|y[5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|y[5]~1_combout\ = (\cop~input_o\ & (\inst|RB\(3) & (!\inst|RB\(2) & \inst1|state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst|RB\(3),
	datac => \inst|RB\(2),
	datad => \inst1|state.s1~q\,
	combout => \inst1|y[5]~1_combout\);

-- Location: LCCOMB_X43_Y22_N4
\inst|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst1|y[4]~2_combout\ & (\inst|RA\(2))) # (!\inst1|y[4]~2_combout\ & (!\inst|RA\(2) & \inst1|y[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|y[4]~2_combout\,
	datac => \inst|RA\(2),
	datad => \inst1|y[5]~1_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: IOIBUF_X52_Y31_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X43_Y22_N3
\inst|RA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	ena => \inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RA\(1));

-- Location: LCCOMB_X43_Y22_N2
\inst|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|RA\(1) & ((\inst1|y[4]~2_combout\))) # (!\inst|RA\(1) & (\inst1|y[5]~1_combout\ & !\inst1|y[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|y[5]~1_combout\,
	datac => \inst|RA\(1),
	datad => \inst1|y[4]~2_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: IOIBUF_X52_Y15_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X43_Y22_N31
\inst|RA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	ena => \inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RA\(3));

-- Location: LCCOMB_X43_Y22_N30
\inst|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst1|y[4]~2_combout\ & (\inst|RA\(3))) # (!\inst1|y[4]~2_combout\ & (!\inst|RA\(3) & \inst1|y[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|y[4]~2_combout\,
	datac => \inst|RA\(3),
	datad => \inst1|y[5]~1_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y22_N14
\inst|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\inst|q[2]~0_combout\ $ (\inst|Mux5~0_combout\ $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\inst|q[2]~0_combout\ & ((\inst|Mux5~0_combout\) # (!\inst|Add0~3\))) # (!\inst|q[2]~0_combout\ & (\inst|Mux5~0_combout\ & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q[2]~0_combout\,
	datab => \inst|Mux5~0_combout\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X43_Y22_N16
\inst|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|Mux0~0_combout\ & ((\inst|q[3]~7_combout\ & (\inst|Add0~5\ & VCC)) # (!\inst|q[3]~7_combout\ & (!\inst|Add0~5\)))) # (!\inst|Mux0~0_combout\ & ((\inst|q[3]~7_combout\ & (!\inst|Add0~5\)) # (!\inst|q[3]~7_combout\ & 
-- ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst|Mux0~0_combout\ & (!\inst|q[3]~7_combout\ & !\inst|Add0~5\)) # (!\inst|Mux0~0_combout\ & ((!\inst|Add0~5\) # (!\inst|q[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|q[3]~7_combout\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: IOIBUF_X43_Y41_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X43_Y22_N9
\inst|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	sload => VCC,
	ena => \inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RA\(0));

-- Location: LCCOMB_X43_Y22_N8
\inst|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|RA\(0) & ((\inst1|y[4]~2_combout\))) # (!\inst|RA\(0) & (\inst1|y[5]~1_combout\ & !\inst1|y[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|y[5]~1_combout\,
	datac => \inst|RA\(0),
	datad => \inst1|y[4]~2_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X43_Y22_N10
\inst|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|q[0]~2_combout\ & (\inst|Mux7~0_combout\ $ (VCC))) # (!\inst|q[0]~2_combout\ & (\inst|Mux7~0_combout\ & VCC))
-- \inst|Add0~1\ = CARRY((\inst|q[0]~2_combout\ & \inst|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q[0]~2_combout\,
	datab => \inst|Mux7~0_combout\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X44_Y22_N16
\inst|RR[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[0]~8_combout\ = (\inst|Add0~16_combout\ & (\inst|Add0~0_combout\ $ (VCC))) # (!\inst|Add0~16_combout\ & (\inst|Add0~0_combout\ & VCC))
-- \inst|RR[0]~9\ = CARRY((\inst|Add0~16_combout\ & \inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~16_combout\,
	datab => \inst|Add0~0_combout\,
	datad => VCC,
	combout => \inst|RR[0]~8_combout\,
	cout => \inst|RR[0]~9\);

-- Location: LCCOMB_X44_Y22_N18
\inst|RR[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[1]~10_combout\ = (\inst|Add0~2_combout\ & (!\inst|RR[0]~9\)) # (!\inst|Add0~2_combout\ & ((\inst|RR[0]~9\) # (GND)))
-- \inst|RR[1]~11\ = CARRY((!\inst|RR[0]~9\) # (!\inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datad => VCC,
	cin => \inst|RR[0]~9\,
	combout => \inst|RR[1]~10_combout\,
	cout => \inst|RR[1]~11\);

-- Location: LCCOMB_X44_Y22_N20
\inst|RR[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[2]~12_combout\ = (\inst|Add0~4_combout\ & (\inst|RR[1]~11\ $ (GND))) # (!\inst|Add0~4_combout\ & (!\inst|RR[1]~11\ & VCC))
-- \inst|RR[2]~13\ = CARRY((\inst|Add0~4_combout\ & !\inst|RR[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datad => VCC,
	cin => \inst|RR[1]~11\,
	combout => \inst|RR[2]~12_combout\,
	cout => \inst|RR[2]~13\);

-- Location: LCCOMB_X44_Y22_N22
\inst|RR[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[3]~15_combout\ = (\inst|Add0~6_combout\ & (!\inst|RR[2]~13\)) # (!\inst|Add0~6_combout\ & ((\inst|RR[2]~13\) # (GND)))
-- \inst|RR[3]~16\ = CARRY((!\inst|RR[2]~13\) # (!\inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|RR[2]~13\,
	combout => \inst|RR[3]~15_combout\,
	cout => \inst|RR[3]~16\);

-- Location: LCCOMB_X47_Y22_N30
\inst|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|RR\(1) & (\inst|RR\(4) & (\inst|RR\(3) & \inst|RR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RR\(1),
	datab => \inst|RR\(4),
	datac => \inst|RR\(3),
	datad => \inst|RR\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y22_N20
\inst|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|Equal1~0_combout\ & \inst|RR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~0_combout\,
	datad => \inst|RR\(2),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X47_Y22_N10
\inst1|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|Selector1~1_combout\) # ((\inst1|incr_i~0_combout\ & (!\cop~input_o\ & \inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|incr_i~0_combout\,
	datab => \cop~input_o\,
	datac => \inst1|Selector1~1_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: LCCOMB_X47_Y22_N12
\inst1|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector4~2_combout\ = (\inst1|incr_i~0_combout\ & ((\cop~input_o\) # ((\inst|RR\(2) & \inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RR\(2),
	datab => \cop~input_o\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst1|incr_i~0_combout\,
	combout => \inst1|Selector4~2_combout\);

-- Location: LCCOMB_X44_Y22_N2
\inst|RR[0]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[0]~14_combout\ = (\inst1|Selector4~2_combout\) # ((\inst1|Selector1~1_combout\) # ((\inst1|state.s1~q\) # (\inst1|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector4~2_combout\,
	datab => \inst1|Selector1~1_combout\,
	datac => \inst1|state.s1~q\,
	datad => \inst1|Selector3~1_combout\,
	combout => \inst|RR[0]~14_combout\);

-- Location: FF_X44_Y22_N23
\inst|RR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[3]~15_combout\,
	asdata => \inst|RR\(2),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(3));

-- Location: LCCOMB_X44_Y22_N12
\inst|q[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[3]~7_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & (\inst|RR\(3))) # (!\inst1|state.s1~q\ & ((\inst|RB\(3)))))) # (!\cop~input_o\ & (((\inst|RB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst1|state.s1~q\,
	datac => \inst|RR\(3),
	datad => \inst|RB\(3),
	combout => \inst|q[3]~7_combout\);

-- Location: LCCOMB_X43_Y22_N18
\inst|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst|Mux0~0_combout\ $ (\inst|q[4]~6_combout\ $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst|Mux0~0_combout\ & ((\inst|q[4]~6_combout\) # (!\inst|Add0~7\))) # (!\inst|Mux0~0_combout\ & (\inst|q[4]~6_combout\ & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|q[4]~6_combout\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X44_Y22_N24
\inst|RR[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[4]~17_combout\ = (\inst|Add0~8_combout\ & (\inst|RR[3]~16\ $ (GND))) # (!\inst|Add0~8_combout\ & (!\inst|RR[3]~16\ & VCC))
-- \inst|RR[4]~18\ = CARRY((\inst|Add0~8_combout\ & !\inst|RR[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~8_combout\,
	datad => VCC,
	cin => \inst|RR[3]~16\,
	combout => \inst|RR[4]~17_combout\,
	cout => \inst|RR[4]~18\);

-- Location: FF_X44_Y22_N25
\inst|RR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[4]~17_combout\,
	asdata => \inst|RR\(3),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(4));

-- Location: LCCOMB_X44_Y22_N10
\inst|q[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[4]~6_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & (\inst|RR\(4))) # (!\inst1|state.s1~q\ & ((\inst|RB\(3)))))) # (!\cop~input_o\ & (((\inst|RB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst|RR\(4),
	datac => \inst1|state.s1~q\,
	datad => \inst|RB\(3),
	combout => \inst|q[4]~6_combout\);

-- Location: LCCOMB_X43_Y22_N20
\inst|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|Mux0~0_combout\ & ((\inst|q[5]~5_combout\ & (\inst|Add0~9\ & VCC)) # (!\inst|q[5]~5_combout\ & (!\inst|Add0~9\)))) # (!\inst|Mux0~0_combout\ & ((\inst|q[5]~5_combout\ & (!\inst|Add0~9\)) # (!\inst|q[5]~5_combout\ & 
-- ((\inst|Add0~9\) # (GND)))))
-- \inst|Add0~11\ = CARRY((\inst|Mux0~0_combout\ & (!\inst|q[5]~5_combout\ & !\inst|Add0~9\)) # (!\inst|Mux0~0_combout\ & ((!\inst|Add0~9\) # (!\inst|q[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|q[5]~5_combout\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X44_Y22_N26
\inst|RR[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[5]~19_combout\ = (\inst|Add0~10_combout\ & (!\inst|RR[4]~18\)) # (!\inst|Add0~10_combout\ & ((\inst|RR[4]~18\) # (GND)))
-- \inst|RR[5]~20\ = CARRY((!\inst|RR[4]~18\) # (!\inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~10_combout\,
	datad => VCC,
	cin => \inst|RR[4]~18\,
	combout => \inst|RR[5]~19_combout\,
	cout => \inst|RR[5]~20\);

-- Location: FF_X44_Y22_N27
\inst|RR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[5]~19_combout\,
	asdata => \inst|RR\(4),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(5));

-- Location: LCCOMB_X44_Y22_N14
\inst|q[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[5]~5_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & (\inst|RR\(5))) # (!\inst1|state.s1~q\ & ((\inst|RB\(3)))))) # (!\cop~input_o\ & (((\inst|RB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst1|state.s1~q\,
	datac => \inst|RR\(5),
	datad => \inst|RB\(3),
	combout => \inst|q[5]~5_combout\);

-- Location: LCCOMB_X43_Y22_N22
\inst|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = ((\inst|Mux0~0_combout\ $ (\inst|q[6]~4_combout\ $ (!\inst|Add0~11\)))) # (GND)
-- \inst|Add0~13\ = CARRY((\inst|Mux0~0_combout\ & ((\inst|q[6]~4_combout\) # (!\inst|Add0~11\))) # (!\inst|Mux0~0_combout\ & (\inst|q[6]~4_combout\ & !\inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|q[6]~4_combout\,
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X44_Y22_N28
\inst|RR[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[6]~21_combout\ = (\inst|Add0~12_combout\ & (\inst|RR[5]~20\ $ (GND))) # (!\inst|Add0~12_combout\ & (!\inst|RR[5]~20\ & VCC))
-- \inst|RR[6]~22\ = CARRY((\inst|Add0~12_combout\ & !\inst|RR[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~12_combout\,
	datad => VCC,
	cin => \inst|RR[5]~20\,
	combout => \inst|RR[6]~21_combout\,
	cout => \inst|RR[6]~22\);

-- Location: FF_X44_Y22_N29
\inst|RR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[6]~21_combout\,
	asdata => \inst|RR\(5),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(6));

-- Location: LCCOMB_X44_Y22_N0
\inst|q[6]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[6]~4_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & (\inst|RR\(6))) # (!\inst1|state.s1~q\ & ((\inst|RB\(3)))))) # (!\cop~input_o\ & (((\inst|RB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst|RR\(6),
	datac => \inst1|state.s1~q\,
	datad => \inst|RB\(3),
	combout => \inst|q[6]~4_combout\);

-- Location: LCCOMB_X43_Y22_N24
\inst|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|Mux0~0_combout\ & ((\inst|q[7]~3_combout\ & (\inst|Add0~13\ & VCC)) # (!\inst|q[7]~3_combout\ & (!\inst|Add0~13\)))) # (!\inst|Mux0~0_combout\ & ((\inst|q[7]~3_combout\ & (!\inst|Add0~13\)) # (!\inst|q[7]~3_combout\ & 
-- ((\inst|Add0~13\) # (GND)))))
-- \inst|Add0~15\ = CARRY((\inst|Mux0~0_combout\ & (!\inst|q[7]~3_combout\ & !\inst|Add0~13\)) # (!\inst|Mux0~0_combout\ & ((!\inst|Add0~13\) # (!\inst|q[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|q[7]~3_combout\,
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X44_Y22_N30
\inst|RR[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|RR[7]~23_combout\ = \inst|RR[6]~22\ $ (\inst|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add0~14_combout\,
	cin => \inst|RR[6]~22\,
	combout => \inst|RR[7]~23_combout\);

-- Location: FF_X44_Y22_N31
\inst|RR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[7]~23_combout\,
	asdata => \inst|RR\(6),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(7));

-- Location: LCCOMB_X44_Y22_N8
\inst|q[7]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[7]~3_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & (\inst|RR\(7))) # (!\inst1|state.s1~q\ & ((\inst|RB\(3)))))) # (!\cop~input_o\ & (((\inst|RB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst1|state.s1~q\,
	datac => \inst|RR\(7),
	datad => \inst|RB\(3),
	combout => \inst|q[7]~3_combout\);

-- Location: LCCOMB_X43_Y22_N26
\inst|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = !\inst|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\);

-- Location: FF_X44_Y22_N17
\inst|RR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[0]~8_combout\,
	asdata => \inst|RR\(7),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(0));

-- Location: LCCOMB_X43_Y22_N0
\inst|q[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[0]~2_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & (\inst|RR\(0))) # (!\inst1|state.s1~q\ & ((\inst|RB\(0)))))) # (!\cop~input_o\ & (((\inst|RB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \inst|RR\(0),
	datac => \inst|RB\(0),
	datad => \inst1|state.s1~q\,
	combout => \inst|q[0]~2_combout\);

-- Location: LCCOMB_X43_Y22_N12
\inst|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|q[1]~1_combout\ & ((\inst|Mux6~0_combout\ & (\inst|Add0~1\ & VCC)) # (!\inst|Mux6~0_combout\ & (!\inst|Add0~1\)))) # (!\inst|q[1]~1_combout\ & ((\inst|Mux6~0_combout\ & (!\inst|Add0~1\)) # (!\inst|Mux6~0_combout\ & 
-- ((\inst|Add0~1\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\inst|q[1]~1_combout\ & (!\inst|Mux6~0_combout\ & !\inst|Add0~1\)) # (!\inst|q[1]~1_combout\ & ((!\inst|Add0~1\) # (!\inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q[1]~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X44_Y22_N19
\inst|RR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[1]~10_combout\,
	asdata => \inst|RR\(0),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(1));

-- Location: LCCOMB_X42_Y22_N16
\inst|q[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|q[1]~1_combout\ = (\cop~input_o\ & ((\inst1|state.s1~q\ & ((\inst|RR\(1)))) # (!\inst1|state.s1~q\ & (\inst|RB\(1))))) # (!\cop~input_o\ & (\inst|RB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RB\(1),
	datab => \cop~input_o\,
	datac => \inst|RR\(1),
	datad => \inst1|state.s1~q\,
	combout => \inst|q[1]~1_combout\);

-- Location: FF_X44_Y22_N21
\inst|RR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RR[2]~12_combout\,
	asdata => \inst|RR\(1),
	sclr => \inst1|Selector3~0_combout\,
	sload => \inst1|ALT_INV_state.s1~q\,
	ena => \inst|RR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RR\(2));

-- Location: LCCOMB_X47_Y22_N26
\inst1|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = (\inst|RR\(2) & (!\cop~input_o\ & (\inst|Equal1~0_combout\ & \inst1|incr_i~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RR\(2),
	datab => \cop~input_o\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst1|incr_i~0_combout\,
	combout => \inst1|Selector3~1_combout\);

-- Location: FF_X47_Y22_N25
\inst1|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector3~1_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.s3~q\);

-- Location: LCCOMB_X47_Y22_N2
\inst1|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|i\(0) & (!\cop~input_o\ & ((!\inst|Equal1~1_combout\)))) # (!\inst1|i\(0) & ((\inst1|i\(1)) # ((!\cop~input_o\ & !\inst|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(0),
	datab => \cop~input_o\,
	datac => \inst1|i\(1),
	datad => \inst|Equal1~1_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: LCCOMB_X47_Y22_N18
\inst1|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = (!\inst1|state.s3~q\ & ((!\inst1|Selector0~0_combout\) # (!\inst1|state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.s2~q\,
	datac => \inst1|state.s3~q\,
	datad => \inst1|Selector0~0_combout\,
	combout => \inst1|Selector0~1_combout\);

-- Location: LCCOMB_X42_Y22_N12
\inst1|next_state_out[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|next_state_out[1]~0_combout\ = (\inst1|Selector1~0_combout\) # (((!\inst1|state.s0~q\ & !\sno~input_o\)) # (!\inst1|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector1~0_combout\,
	datab => \inst1|state.s0~q\,
	datac => \sno~input_o\,
	datad => \inst1|Selector0~1_combout\,
	combout => \inst1|next_state_out[1]~0_combout\);

-- Location: LCCOMB_X42_Y22_N10
\inst1|next_state_out[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|next_state_out[0]~1_combout\ = (\inst1|state.s1~q\) # (((!\inst1|state.s0~q\ & !\sno~input_o\)) # (!\inst1|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.s1~q\,
	datab => \inst1|state.s0~q\,
	datac => \sno~input_o\,
	datad => \inst1|Selector0~1_combout\,
	combout => \inst1|next_state_out[0]~1_combout\);

-- Location: LCCOMB_X47_Y22_N8
\inst|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|RR\(1) & !\inst|RR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|RR\(1),
	datad => \inst|RR\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y22_N28
\inst|pr[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|pr[1]~0_combout\ = (\inst|RR\(4) & (((!\inst|RR\(3))))) # (!\inst|RR\(4) & ((\inst|RR\(2)) # ((\inst|RR\(3)) # (!\inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RR\(2),
	datab => \inst|RR\(4),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|RR\(3),
	combout => \inst|pr[1]~0_combout\);

-- Location: LCCOMB_X47_Y22_N4
\inst1|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|state.s3~q\) # ((!\cop~input_o\ & (\inst1|incr_i~0_combout\ & !\inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.s3~q\,
	datab => \cop~input_o\,
	datac => \inst1|incr_i~0_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X47_Y22_N29
\inst|priznak[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr[1]~0_combout\,
	ena => \inst1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|priznak\(1));

-- Location: LCCOMB_X47_Y22_N6
\inst|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|RR\(3)) # (\inst|RR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|RR\(3),
	datad => \inst|RR\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: FF_X47_Y22_N7
\inst|priznak[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal0~1_combout\,
	ena => \inst1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|priznak\(0));

-- Location: LCCOMB_X51_Y22_N20
\inst1|s_out[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_out[1]~0_combout\ = (\inst1|state.s1~q\) # (!\inst1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.s1~q\,
	datad => \inst1|state.s0~q\,
	combout => \inst1|s_out[1]~0_combout\);

-- Location: LCCOMB_X48_Y22_N20
\inst1|s_out[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_out[0]~1_combout\ = (\inst1|state.s2~q\) # (!\inst1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.s2~q\,
	datac => \inst1|state.s0~q\,
	combout => \inst1|s_out[0]~1_combout\);

-- Location: LCCOMB_X51_Y22_N18
\inst1|y[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|y[9]~0_combout\ = (\inst1|state.s1~q\ & \cop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.s1~q\,
	datad => \cop~input_o\,
	combout => \inst1|y[9]~0_combout\);

-- Location: LCCOMB_X42_Y22_N18
\inst1|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector4~3_combout\ = (\inst1|Selector4~2_combout\) # ((\inst1|state.s1~q\) # ((!\inst1|state.s0~q\ & \sno~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector4~2_combout\,
	datab => \inst1|state.s0~q\,
	datac => \sno~input_o\,
	datad => \inst1|state.s1~q\,
	combout => \inst1|Selector4~3_combout\);

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


