-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "02/28/2023 14:15:34"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
-- sko	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incr_i	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state.s0~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|state.s1~q\ : std_logic;
SIGNAL \inst|state.s2~q\ : std_logic;
SIGNAL \inst|i[1]~0_combout\ : std_logic;
SIGNAL \sno~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|i[0]~1_combout\ : std_logic;
SIGNAL \inst|sko~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst2|RB~2_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \inst2|RB~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst2|RB~0_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|q[0]~4_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|RR[0]~9\ : std_logic;
SIGNAL \inst2|RR[1]~10_combout\ : std_logic;
SIGNAL \inst2|q[1]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|RR[1]~11\ : std_logic;
SIGNAL \inst2|RR[2]~12_combout\ : std_logic;
SIGNAL \inst2|q[2]~2_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|RR[2]~13\ : std_logic;
SIGNAL \inst2|RR[3]~14_combout\ : std_logic;
SIGNAL \inst2|q[3]~1_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
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
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst|incr_i~0_combout\ : std_logic;
SIGNAL \inst|next_state_out[0]~0_combout\ : std_logic;
SIGNAL \inst|y[5]~0_combout\ : std_logic;
SIGNAL \inst|y[4]~1_combout\ : std_logic;
SIGNAL \inst|i\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|RR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|RB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|RA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sno~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_next_state_out[0]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.s1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
\inst|ALT_INV_next_state_out[0]~0_combout\ <= NOT \inst|next_state_out[0]~0_combout\;
\inst|ALT_INV_state.s1~q\ <= NOT \inst|state.s1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y24_N9
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

-- Location: IOOBUF_X33_Y12_N9
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

-- Location: IOOBUF_X33_Y22_N2
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

-- Location: IOOBUF_X33_Y24_N2
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

-- Location: IOOBUF_X33_Y11_N9
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

-- Location: IOOBUF_X24_Y31_N9
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

-- Location: IOOBUF_X33_Y28_N9
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

-- Location: IOOBUF_X14_Y31_N9
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

-- Location: IOOBUF_X20_Y31_N2
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

-- Location: IOOBUF_X33_Y27_N2
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

-- Location: IOOBUF_X33_Y27_N9
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

-- Location: IOOBUF_X33_Y11_N2
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

-- Location: IOOBUF_X33_Y12_N2
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

-- Location: IOOBUF_X33_Y15_N2
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

-- Location: IOOBUF_X29_Y31_N9
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X26_Y31_N9
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

-- Location: IOOBUF_X26_Y31_N2
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

-- Location: IOOBUF_X33_Y15_N9
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X29_Y31_N2
\y[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
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

-- Location: IOOBUF_X31_Y31_N9
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

-- Location: IOOBUF_X33_Y22_N9
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

-- Location: IOOBUF_X33_Y25_N9
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: LCCOMB_X30_Y21_N0
\inst|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\inst|sko~0_combout\ & ((\sno~input_o\) # (\inst|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sno~input_o\,
	datac => \inst|state.s0~q\,
	datad => \inst|sko~0_combout\,
	combout => \inst|Selector0~0_combout\);

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

-- Location: FF_X30_Y21_N1
\inst|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s0~q\);

-- Location: LCCOMB_X32_Y21_N20
\inst|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\sno~input_o\ & !\inst|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sno~input_o\,
	datad => \inst|state.s0~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y21_N26
\inst|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\) # ((\inst|state.s2~q\ & ((\inst|i\(0)) # (!\inst|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s2~q\,
	datab => \inst|i\(0),
	datac => \inst|i\(1),
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: FF_X30_Y21_N27
\inst|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector1~1_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s1~q\);

-- Location: FF_X29_Y21_N3
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

-- Location: LCCOMB_X29_Y21_N0
\inst|i[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|i[1]~0_combout\ = (\inst|i\(1)) # ((!\inst|i\(0) & \inst|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(0),
	datac => \inst|i\(1),
	datad => \inst|state.s2~q\,
	combout => \inst|i[1]~0_combout\);

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

-- Location: FF_X29_Y21_N1
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

-- Location: LCCOMB_X29_Y21_N24
\inst|i[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|i[0]~1_combout\ = (\inst|i\(0) & ((!\inst|state.s2~q\))) # (!\inst|i\(0) & (!\inst|i\(1) & \inst|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(1),
	datac => \inst|i\(0),
	datad => \inst|state.s2~q\,
	combout => \inst|i[0]~1_combout\);

-- Location: FF_X29_Y21_N25
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

-- Location: LCCOMB_X29_Y21_N14
\inst|sko~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|sko~0_combout\ = (!\inst|i\(0) & (\inst|i\(1) & \inst|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(0),
	datac => \inst|i\(1),
	datad => \inst|state.s2~q\,
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

-- Location: FF_X31_Y21_N9
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

-- Location: IOIBUF_X33_Y10_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X31_Y21_N31
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

-- Location: IOIBUF_X33_Y28_N1
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X32_Y21_N30
\inst2|RB~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RB~2_combout\ = (\b[0]~input_o\ & (\sno~input_o\ & !\inst|state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datac => \sno~input_o\,
	datad => \inst|state.s0~q\,
	combout => \inst2|RB~2_combout\);

-- Location: FF_X31_Y21_N3
\inst2|RB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|RB~2_combout\,
	sload => VCC,
	ena => \inst|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RB\(0));

-- Location: IOIBUF_X33_Y25_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X32_Y21_N0
\inst2|RB~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RB~1_combout\ = (\inst|state.s0~q\ & (\inst2|RB\(0))) # (!\inst|state.s0~q\ & ((\sno~input_o\ & ((\b[1]~input_o\))) # (!\sno~input_o\ & (\inst2|RB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datab => \inst2|RB\(0),
	datac => \sno~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst2|RB~1_combout\);

-- Location: FF_X31_Y21_N1
\inst2|RB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|RB~1_combout\,
	sload => VCC,
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

-- Location: LCCOMB_X32_Y21_N28
\inst2|RB~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RB~0_combout\ = (\sno~input_o\ & ((\inst|state.s0~q\ & (\inst2|RB\(1))) # (!\inst|state.s0~q\ & ((\b[2]~input_o\))))) # (!\sno~input_o\ & (\inst2|RB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(1),
	datab => \b[2]~input_o\,
	datac => \sno~input_o\,
	datad => \inst|state.s0~q\,
	combout => \inst2|RB~0_combout\);

-- Location: FF_X32_Y21_N29
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

-- Location: LCCOMB_X31_Y21_N30
\inst2|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RA\(0) & !\inst2|RB\(2))) # (!\inst2|RB\(3) & (\inst2|RA\(0) & \inst2|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datab => \inst2|RB\(3),
	datac => \inst2|RA\(0),
	datad => \inst2|RB\(2),
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y21_N2
\inst|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|state.s1~q\) # ((\sno~input_o\ & !\inst|state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sno~input_o\,
	datac => \inst|state.s1~q\,
	datad => \inst|state.s0~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y21_N6
\inst2|q[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[0]~4_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(0)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(0),
	datac => \inst2|RR\(0),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[0]~4_combout\);

-- Location: LCCOMB_X31_Y21_N12
\inst2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst2|Mux7~0_combout\ & (\inst2|q[0]~4_combout\ $ (VCC))) # (!\inst2|Mux7~0_combout\ & (\inst2|q[0]~4_combout\ & VCC))
-- \inst2|Add0~1\ = CARRY((\inst2|Mux7~0_combout\ & \inst2|q[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~0_combout\,
	datab => \inst2|q[0]~4_combout\,
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: IOIBUF_X33_Y14_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X31_Y21_N7
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

-- Location: LCCOMB_X31_Y21_N6
\inst2|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RA\(3) & !\inst2|RB\(2))) # (!\inst2|RB\(3) & (\inst2|RA\(3) & \inst2|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datab => \inst2|RB\(3),
	datac => \inst2|RA\(3),
	datad => \inst2|RB\(2),
	combout => \inst2|Mux0~0_combout\);

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

-- Location: FF_X31_Y21_N11
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

-- Location: LCCOMB_X31_Y21_N10
\inst2|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RA\(2) & !\inst2|RB\(2))) # (!\inst2|RB\(3) & (\inst2|RA\(2) & \inst2|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datab => \inst2|RB\(3),
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

-- Location: FF_X32_Y21_N3
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

-- Location: LCCOMB_X32_Y21_N2
\inst2|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst|state.s1~q\ & ((\inst2|RB\(3) & (!\inst2|RB\(2) & !\inst2|RA\(1))) # (!\inst2|RB\(3) & (\inst2|RB\(2) & \inst2|RA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datab => \inst2|RB\(2),
	datac => \inst2|RA\(1),
	datad => \inst|state.s1~q\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y21_N14
\inst2|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|Mux6~0_combout\ & ((\inst2|q[1]~3_combout\ & (\inst2|Add0~1\ & VCC)) # (!\inst2|q[1]~3_combout\ & (!\inst2|Add0~1\)))) # (!\inst2|Mux6~0_combout\ & ((\inst2|q[1]~3_combout\ & (!\inst2|Add0~1\)) # (!\inst2|q[1]~3_combout\ & 
-- ((\inst2|Add0~1\) # (GND)))))
-- \inst2|Add0~3\ = CARRY((\inst2|Mux6~0_combout\ & (!\inst2|q[1]~3_combout\ & !\inst2|Add0~1\)) # (!\inst2|Mux6~0_combout\ & ((!\inst2|Add0~1\) # (!\inst2|q[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~0_combout\,
	datab => \inst2|q[1]~3_combout\,
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X30_Y21_N10
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

-- Location: LCCOMB_X30_Y21_N12
\inst2|RR[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[1]~10_combout\ = (\inst2|Add0~2_combout\ & (!\inst2|RR[0]~9\)) # (!\inst2|Add0~2_combout\ & ((\inst2|RR[0]~9\) # (GND)))
-- \inst2|RR[1]~11\ = CARRY((!\inst2|RR[0]~9\) # (!\inst2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~2_combout\,
	datad => VCC,
	cin => \inst2|RR[0]~9\,
	combout => \inst2|RR[1]~10_combout\,
	cout => \inst2|RR[1]~11\);

-- Location: FF_X30_Y21_N13
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(1));

-- Location: LCCOMB_X30_Y21_N30
\inst2|q[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[1]~3_combout\ = (\inst|Selector2~0_combout\ & (\inst2|RR\(1))) # (!\inst|Selector2~0_combout\ & ((\inst2|RB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RR\(1),
	datac => \inst2|RB\(1),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[1]~3_combout\);

-- Location: LCCOMB_X31_Y21_N16
\inst2|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = ((\inst2|Mux5~0_combout\ $ (\inst2|q[2]~2_combout\ $ (!\inst2|Add0~3\)))) # (GND)
-- \inst2|Add0~5\ = CARRY((\inst2|Mux5~0_combout\ & ((\inst2|q[2]~2_combout\) # (!\inst2|Add0~3\))) # (!\inst2|Mux5~0_combout\ & (\inst2|q[2]~2_combout\ & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~0_combout\,
	datab => \inst2|q[2]~2_combout\,
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X30_Y21_N14
\inst2|RR[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[2]~12_combout\ = (\inst2|Add0~4_combout\ & (\inst2|RR[1]~11\ $ (GND))) # (!\inst2|Add0~4_combout\ & (!\inst2|RR[1]~11\ & VCC))
-- \inst2|RR[2]~13\ = CARRY((\inst2|Add0~4_combout\ & !\inst2|RR[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|RR[1]~11\,
	combout => \inst2|RR[2]~12_combout\,
	cout => \inst2|RR[2]~13\);

-- Location: FF_X30_Y21_N15
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(2));

-- Location: LCCOMB_X30_Y21_N28
\inst2|q[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[2]~2_combout\ = (\inst|Selector2~0_combout\ & (\inst2|RR\(2))) # (!\inst|Selector2~0_combout\ & ((\inst2|RB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RR\(2),
	datac => \inst2|RB\(2),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[2]~2_combout\);

-- Location: LCCOMB_X31_Y21_N18
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

-- Location: LCCOMB_X30_Y21_N16
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

-- Location: FF_X30_Y21_N17
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(3));

-- Location: LCCOMB_X31_Y21_N4
\inst2|q[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[3]~1_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(3)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datac => \inst2|RR\(3),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[3]~1_combout\);

-- Location: LCCOMB_X31_Y21_N20
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

-- Location: LCCOMB_X30_Y21_N18
\inst2|RR[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[4]~16_combout\ = (\inst2|Add0~8_combout\ & (\inst2|RR[3]~15\ $ (GND))) # (!\inst2|Add0~8_combout\ & (!\inst2|RR[3]~15\ & VCC))
-- \inst2|RR[4]~17\ = CARRY((\inst2|Add0~8_combout\ & !\inst2|RR[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|RR[3]~15\,
	combout => \inst2|RR[4]~16_combout\,
	cout => \inst2|RR[4]~17\);

-- Location: FF_X30_Y21_N19
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(4));

-- Location: LCCOMB_X30_Y21_N4
\inst2|q[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[4]~0_combout\ = (\inst|Selector2~0_combout\ & (\inst2|RR\(4))) # (!\inst|Selector2~0_combout\ & ((\inst2|RB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RR\(4),
	datac => \inst2|RB\(3),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[4]~0_combout\);

-- Location: LCCOMB_X31_Y21_N22
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

-- Location: LCCOMB_X30_Y21_N20
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

-- Location: FF_X30_Y21_N21
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(5));

-- Location: LCCOMB_X31_Y21_N8
\inst2|q[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[5]~7_combout\ = (\inst|Selector2~0_combout\ & (\inst2|RR\(5))) # (!\inst|Selector2~0_combout\ & ((\inst2|RB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RR\(5),
	datac => \inst2|RB\(3),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[5]~7_combout\);

-- Location: LCCOMB_X31_Y21_N24
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

-- Location: LCCOMB_X30_Y21_N22
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

-- Location: FF_X30_Y21_N23
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(6));

-- Location: LCCOMB_X31_Y21_N0
\inst2|q[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[6]~6_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(6)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datab => \inst2|RR\(6),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[6]~6_combout\);

-- Location: LCCOMB_X31_Y21_N26
\inst2|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|Mux0~0_combout\ & ((\inst2|q[7]~5_combout\ & (\inst2|Add0~13\ & VCC)) # (!\inst2|q[7]~5_combout\ & (!\inst2|Add0~13\)))) # (!\inst2|Mux0~0_combout\ & ((\inst2|q[7]~5_combout\ & (!\inst2|Add0~13\)) # 
-- (!\inst2|q[7]~5_combout\ & ((\inst2|Add0~13\) # (GND)))))
-- \inst2|Add0~15\ = CARRY((\inst2|Mux0~0_combout\ & (!\inst2|q[7]~5_combout\ & !\inst2|Add0~13\)) # (!\inst2|Mux0~0_combout\ & ((!\inst2|Add0~13\) # (!\inst2|q[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|q[7]~5_combout\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X30_Y21_N24
\inst2|RR[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|RR[7]~22_combout\ = \inst2|RR[6]~21\ $ (\inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add0~14_combout\,
	cin => \inst2|RR[6]~21\,
	combout => \inst2|RR[7]~22_combout\);

-- Location: FF_X30_Y21_N25
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(7));

-- Location: LCCOMB_X31_Y21_N2
\inst2|q[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|q[7]~5_combout\ = (\inst|Selector2~0_combout\ & ((\inst2|RR\(7)))) # (!\inst|Selector2~0_combout\ & (\inst2|RB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RB\(3),
	datab => \inst2|RR\(7),
	datad => \inst|Selector2~0_combout\,
	combout => \inst2|q[7]~5_combout\);

-- Location: LCCOMB_X31_Y21_N28
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

-- Location: FF_X30_Y21_N11
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
	ena => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|RR\(0));

-- Location: LCCOMB_X30_Y21_N8
\inst2|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|RR\(0) & (\inst2|RR\(2) & (\inst2|RR\(3) & \inst2|RR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RR\(0),
	datab => \inst2|RR\(2),
	datac => \inst2|RR\(3),
	datad => \inst2|RR\(1),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst2|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|Equal1~0_combout\ & \inst2|RR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal1~0_combout\,
	datad => \inst2|RR\(4),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y21_N28
\inst|incr_i~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|incr_i~0_combout\ = (\inst|state.s2~q\ & ((\inst|i\(0)) # (!\inst|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|i\(0),
	datac => \inst|i\(1),
	datad => \inst|state.s2~q\,
	combout => \inst|incr_i~0_combout\);

-- Location: LCCOMB_X32_Y21_N26
\inst|next_state_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next_state_out[0]~0_combout\ = (\inst|sko~0_combout\) # ((\inst|state.s1~q\) # ((!\inst|state.s0~q\ & !\sno~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datab => \inst|sko~0_combout\,
	datac => \sno~input_o\,
	datad => \inst|state.s1~q\,
	combout => \inst|next_state_out[0]~0_combout\);

-- Location: LCCOMB_X32_Y22_N4
\inst|y[5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|y[5]~0_combout\ = (\inst2|RB\(3) & (\inst|state.s1~q\ & !\inst2|RB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RB\(3),
	datac => \inst|state.s1~q\,
	datad => \inst2|RB\(2),
	combout => \inst|y[5]~0_combout\);

-- Location: LCCOMB_X32_Y22_N18
\inst|y[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|y[4]~1_combout\ = (!\inst2|RB\(3) & (\inst|state.s1~q\ & \inst2|RB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|RB\(3),
	datac => \inst|state.s1~q\,
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


