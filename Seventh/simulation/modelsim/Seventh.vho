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

-- DATE "11/20/2023 08:40:04"

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

ENTITY 	ctrl_un_BO IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	set : IN std_logic;
	cop : IN std_logic;
	sno : IN std_logic;
	rr : BUFFER std_logic_vector(7 DOWNTO 0);
	pr : OUT std_logic_vector(1 DOWNTO 0);
	sko : OUT std_logic
	);
END ctrl_un_BO;

-- Design Ports Information
-- rr[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sko	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cop	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ctrl_un_BO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_cop : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_rr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sko : std_logic;
SIGNAL \sno~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rr[0]~output_o\ : std_logic;
SIGNAL \rr[1]~output_o\ : std_logic;
SIGNAL \rr[2]~output_o\ : std_logic;
SIGNAL \rr[3]~output_o\ : std_logic;
SIGNAL \rr[4]~output_o\ : std_logic;
SIGNAL \rr[5]~output_o\ : std_logic;
SIGNAL \rr[6]~output_o\ : std_logic;
SIGNAL \rr[7]~output_o\ : std_logic;
SIGNAL \pr[0]~output_o\ : std_logic;
SIGNAL \pr[1]~output_o\ : std_logic;
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cop~input_o\ : std_logic;
SIGNAL \sno~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \incr_i~0_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \state.s1~feeder_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \i[1]~0_combout\ : std_logic;
SIGNAL \sno~inputclkctrl_outclk\ : std_logic;
SIGNAL \i[0]~1_combout\ : std_logic;
SIGNAL \q[2]~6_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \y[4]~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \q[0]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \rr[1]~13\ : std_logic;
SIGNAL \rr[2]~15\ : std_logic;
SIGNAL \rr[3]~16_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \rr[4]~10_combout\ : std_logic;
SIGNAL \rr[4]~11_combout\ : std_logic;
SIGNAL \rr[3]~reg0_q\ : std_logic;
SIGNAL \q[3]~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \rr[3]~17\ : std_logic;
SIGNAL \rr[4]~18_combout\ : std_logic;
SIGNAL \rr[4]~reg0_q\ : std_logic;
SIGNAL \q[4]~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \rr[4]~19\ : std_logic;
SIGNAL \rr[5]~20_combout\ : std_logic;
SIGNAL \rr[5]~reg0_q\ : std_logic;
SIGNAL \q[5]~3_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \rr[5]~21\ : std_logic;
SIGNAL \rr[6]~22_combout\ : std_logic;
SIGNAL \rr[6]~reg0_q\ : std_logic;
SIGNAL \q[6]~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \rr[6]~23\ : std_logic;
SIGNAL \rr[7]~24_combout\ : std_logic;
SIGNAL \rr[7]~reg0_q\ : std_logic;
SIGNAL \q[7]~1_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \rr[0]~9\ : std_logic;
SIGNAL \rr[1]~12_combout\ : std_logic;
SIGNAL \rr[1]~reg0_q\ : std_logic;
SIGNAL \q[1]~7_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \rr[2]~14_combout\ : std_logic;
SIGNAL \rr[2]~reg0_q\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \RB~1_combout\ : std_logic;
SIGNAL \RB~2_combout\ : std_logic;
SIGNAL \RB~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \rr[0]~8_combout\ : std_logic;
SIGNAL \rr[0]~reg0_q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \pr[0]~reg0_q\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \priznak[1]~0_combout\ : std_logic;
SIGNAL \pr[1]~reg0_q\ : std_logic;
SIGNAL i : std_logic_vector(1 DOWNTO 0);
SIGNAL RB : std_logic_vector(3 DOWNTO 0);
SIGNAL RA : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sno~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_clk <= clk;
ww_set <= set;
ww_cop <= cop;
ww_sno <= sno;
rr <= ww_rr;
pr <= ww_pr;
sko <= ww_sko;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sno~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sno~input_o\);

\set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_set~inputclkctrl_outclk\ <= NOT \set~inputclkctrl_outclk\;
\ALT_INV_sno~inputclkctrl_outclk\ <= NOT \sno~inputclkctrl_outclk\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;

-- Location: IOOBUF_X26_Y0_N9
\rr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[0]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\rr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[1]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\rr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[2]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[2]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\rr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[3]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\rr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[4]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\rr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[5]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\rr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[6]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\rr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rr[7]~reg0_q\,
	devoe => ww_devoe,
	o => \rr[7]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\pr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pr[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\pr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pr[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\sko~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \sko~output_o\);

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

-- Location: IOIBUF_X33_Y16_N8
\cop~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cop,
	o => \cop~input_o\);

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

-- Location: IOIBUF_X33_Y16_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X25_Y15_N24
\incr_i~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \incr_i~0_combout\ = (\state.s2~q\ & ((i(0)) # (!i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(0),
	datad => \state.s2~q\,
	combout => \incr_i~0_combout\);

-- Location: LCCOMB_X26_Y15_N4
\Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\incr_i~0_combout\ & ((\cop~input_o\) # ((\sno~input_o\ & !\state.s0~q\)))) # (!\incr_i~0_combout\ & (((\sno~input_o\ & !\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incr_i~0_combout\,
	datab => \cop~input_o\,
	datac => \sno~input_o\,
	datad => \state.s0~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X25_Y15_N4
\state.s1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s1~feeder_combout\ = \Selector1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~3_combout\,
	combout => \state.s1~feeder_combout\);

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

-- Location: FF_X25_Y15_N5
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.s1~feeder_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: FF_X25_Y15_N7
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.s1~q\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X25_Y15_N30
\i[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i[1]~0_combout\ = (i(1)) # ((\cop~input_o\ & (!i(0) & \state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => i(0),
	datac => i(1),
	datad => \state.s2~q\,
	combout => \i[1]~0_combout\);

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

-- Location: FF_X25_Y15_N31
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[1]~0_combout\,
	clrn => \ALT_INV_sno~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X25_Y15_N14
\i[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i[0]~1_combout\ = (\cop~input_o\ & ((i(0) & ((!\state.s2~q\))) # (!i(0) & (!i(1) & \state.s2~q\)))) # (!\cop~input_o\ & (((i(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => i(1),
	datac => i(0),
	datad => \state.s2~q\,
	combout => \i[0]~1_combout\);

-- Location: FF_X25_Y15_N15
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[0]~1_combout\,
	clrn => \ALT_INV_sno~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X24_Y15_N8
\q[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[2]~6_combout\ = (\cop~input_o\ & ((\state.s1~q\ & (\rr[2]~reg0_q\)) # (!\state.s1~q\ & ((RB(2)))))) # (!\cop~input_o\ & (((RB(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rr[2]~reg0_q\,
	datab => \cop~input_o\,
	datac => RB(2),
	datad => \state.s1~q\,
	combout => \q[2]~6_combout\);

-- Location: IOIBUF_X24_Y0_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X25_Y15_N6
\Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\sno~input_o\ & !\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sno~input_o\,
	datad => \state.s0~q\,
	combout => \Selector1~2_combout\);

-- Location: FF_X24_Y15_N31
\RB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[3]~input_o\,
	sload => VCC,
	ena => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(3));

-- Location: LCCOMB_X24_Y15_N0
\y[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y[4]~0_combout\ = (\state.s1~q\ & (((RB(2) & !RB(3))) # (!\cop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => RB(2),
	datac => RB(3),
	datad => \state.s1~q\,
	combout => \y[4]~0_combout\);

-- Location: IOIBUF_X24_Y0_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X24_Y15_N3
\RA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	ena => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RA(2));

-- Location: LCCOMB_X24_Y15_N2
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (RA(2) & ((\y[4]~0_combout\))) # (!RA(2) & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \y[4]~0_combout\,
	datac => RA(2),
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X33_Y11_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X24_Y15_N11
\RA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	ena => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RA(1));

-- Location: LCCOMB_X24_Y15_N10
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (RA(1) & ((\y[4]~0_combout\))) # (!RA(1) & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => RA(1),
	datad => \y[4]~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X25_Y15_N28
\q[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[0]~0_combout\ = (\cop~input_o\ & ((\state.s1~q\ & ((\rr[0]~reg0_q\))) # (!\state.s1~q\ & (RB(0))))) # (!\cop~input_o\ & (((RB(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \state.s1~q\,
	datac => RB(0),
	datad => \rr[0]~reg0_q\,
	combout => \q[0]~0_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mux7~0_combout\ & (\q[0]~0_combout\ $ (VCC))) # (!\Mux7~0_combout\ & (\q[0]~0_combout\ & VCC))
-- \Add1~1\ = CARRY((\Mux7~0_combout\ & \q[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \q[0]~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y15_N14
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mux6~1_combout\ & ((\q[1]~7_combout\ & (\Add1~1\ & VCC)) # (!\q[1]~7_combout\ & (!\Add1~1\)))) # (!\Mux6~1_combout\ & ((\q[1]~7_combout\ & (!\Add1~1\)) # (!\q[1]~7_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\Mux6~1_combout\ & (!\q[1]~7_combout\ & !\Add1~1\)) # (!\Mux6~1_combout\ & ((!\Add1~1\) # (!\q[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \q[1]~7_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: IOIBUF_X33_Y10_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X24_Y15_N5
\RA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	ena => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RA(3));

-- Location: LCCOMB_X24_Y15_N4
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (RA(3) & ((\y[4]~0_combout\))) # (!RA(3) & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \y[4]~0_combout\,
	datac => RA(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\q[2]~6_combout\ $ (\Mux5~0_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\q[2]~6_combout\ & ((\Mux5~0_combout\) # (!\Add1~3\))) # (!\q[2]~6_combout\ & (\Mux5~0_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~6_combout\,
	datab => \Mux5~0_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y15_N18
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\q[3]~5_combout\ & ((\Mux0~0_combout\ & (\Add1~5\ & VCC)) # (!\Mux0~0_combout\ & (!\Add1~5\)))) # (!\q[3]~5_combout\ & ((\Mux0~0_combout\ & (!\Add1~5\)) # (!\Mux0~0_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\q[3]~5_combout\ & (!\Mux0~0_combout\ & !\Add1~5\)) # (!\q[3]~5_combout\ & ((!\Add1~5\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~5_combout\,
	datab => \Mux0~0_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y15_N12
\rr[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[1]~12_combout\ = (\Add1~2_combout\ & (!\rr[0]~9\)) # (!\Add1~2_combout\ & ((\rr[0]~9\) # (GND)))
-- \rr[1]~13\ = CARRY((!\rr[0]~9\) # (!\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \rr[0]~9\,
	combout => \rr[1]~12_combout\,
	cout => \rr[1]~13\);

-- Location: LCCOMB_X23_Y15_N14
\rr[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[2]~14_combout\ = (\Add1~4_combout\ & (\rr[1]~13\ $ (GND))) # (!\Add1~4_combout\ & (!\rr[1]~13\ & VCC))
-- \rr[2]~15\ = CARRY((\Add1~4_combout\ & !\rr[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \rr[1]~13\,
	combout => \rr[2]~14_combout\,
	cout => \rr[2]~15\);

-- Location: LCCOMB_X23_Y15_N16
\rr[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[3]~16_combout\ = (\Add1~6_combout\ & (!\rr[2]~15\)) # (!\Add1~6_combout\ & ((\rr[2]~15\) # (GND)))
-- \rr[3]~17\ = CARRY((!\rr[2]~15\) # (!\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \rr[2]~15\,
	combout => \rr[3]~16_combout\,
	cout => \rr[3]~17\);

-- Location: LCCOMB_X23_Y15_N28
\Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\rr[1]~reg0_q\ & (\rr[3]~reg0_q\ & (\rr[0]~reg0_q\ & \rr[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rr[1]~reg0_q\,
	datab => \rr[3]~reg0_q\,
	datac => \rr[0]~reg0_q\,
	datad => \rr[4]~reg0_q\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X25_Y15_N22
\Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\cop~input_o\ & (\rr[2]~reg0_q\ & (\incr_i~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \rr[2]~reg0_q\,
	datac => \incr_i~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~2_combout\) # ((\sno~input_o\ & !\state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sno~input_o\,
	datac => \Selector3~2_combout\,
	datad => \state.s0~q\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X23_Y15_N30
\rr[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[4]~10_combout\ = (\incr_i~0_combout\ & ((\cop~input_o\) # ((\Equal4~0_combout\ & \rr[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \Equal4~0_combout\,
	datac => \rr[2]~reg0_q\,
	datad => \incr_i~0_combout\,
	combout => \rr[4]~10_combout\);

-- Location: LCCOMB_X23_Y15_N8
\rr[4]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[4]~11_combout\ = (\state.s1~q\) # ((\Selector1~2_combout\) # ((\rr[4]~10_combout\) # (\Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Selector1~2_combout\,
	datac => \rr[4]~10_combout\,
	datad => \Selector3~2_combout\,
	combout => \rr[4]~11_combout\);

-- Location: FF_X23_Y15_N17
\rr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[3]~16_combout\,
	asdata => \rr[2]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[3]~reg0_q\);

-- Location: LCCOMB_X23_Y15_N26
\q[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[3]~5_combout\ = (\cop~input_o\ & ((\state.s1~q\ & (\rr[3]~reg0_q\)) # (!\state.s1~q\ & ((RB(3)))))) # (!\cop~input_o\ & (((RB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \rr[3]~reg0_q\,
	datac => RB(3),
	datad => \state.s1~q\,
	combout => \q[3]~5_combout\);

-- Location: LCCOMB_X24_Y15_N20
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\q[4]~4_combout\ $ (\Mux0~0_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\q[4]~4_combout\ & ((\Mux0~0_combout\) # (!\Add1~7\))) # (!\q[4]~4_combout\ & (\Mux0~0_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[4]~4_combout\,
	datab => \Mux0~0_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y15_N18
\rr[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[4]~18_combout\ = (\Add1~8_combout\ & (\rr[3]~17\ $ (GND))) # (!\Add1~8_combout\ & (!\rr[3]~17\ & VCC))
-- \rr[4]~19\ = CARRY((\Add1~8_combout\ & !\rr[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => VCC,
	cin => \rr[3]~17\,
	combout => \rr[4]~18_combout\,
	cout => \rr[4]~19\);

-- Location: FF_X23_Y15_N19
\rr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[4]~18_combout\,
	asdata => \rr[3]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[4]~reg0_q\);

-- Location: LCCOMB_X23_Y15_N2
\q[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[4]~4_combout\ = (\cop~input_o\ & ((\state.s1~q\ & (\rr[4]~reg0_q\)) # (!\state.s1~q\ & ((RB(3)))))) # (!\cop~input_o\ & (((RB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \rr[4]~reg0_q\,
	datac => RB(3),
	datad => \state.s1~q\,
	combout => \q[4]~4_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\q[5]~3_combout\ & ((\Mux0~0_combout\ & (\Add1~9\ & VCC)) # (!\Mux0~0_combout\ & (!\Add1~9\)))) # (!\q[5]~3_combout\ & ((\Mux0~0_combout\ & (!\Add1~9\)) # (!\Mux0~0_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\q[5]~3_combout\ & (!\Mux0~0_combout\ & !\Add1~9\)) # (!\q[5]~3_combout\ & ((!\Add1~9\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~3_combout\,
	datab => \Mux0~0_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X23_Y15_N20
\rr[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[5]~20_combout\ = (\Add1~10_combout\ & (!\rr[4]~19\)) # (!\Add1~10_combout\ & ((\rr[4]~19\) # (GND)))
-- \rr[5]~21\ = CARRY((!\rr[4]~19\) # (!\Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \rr[4]~19\,
	combout => \rr[5]~20_combout\,
	cout => \rr[5]~21\);

-- Location: FF_X23_Y15_N21
\rr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[5]~20_combout\,
	asdata => \rr[4]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[5]~reg0_q\);

-- Location: LCCOMB_X23_Y15_N0
\q[5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[5]~3_combout\ = (\cop~input_o\ & ((\state.s1~q\ & (\rr[5]~reg0_q\)) # (!\state.s1~q\ & ((RB(3)))))) # (!\cop~input_o\ & (((RB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \rr[5]~reg0_q\,
	datac => RB(3),
	datad => \state.s1~q\,
	combout => \q[5]~3_combout\);

-- Location: LCCOMB_X24_Y15_N24
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mux0~0_combout\ $ (\q[6]~2_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mux0~0_combout\ & ((\q[6]~2_combout\) # (!\Add1~11\))) # (!\Mux0~0_combout\ & (\q[6]~2_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \q[6]~2_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X23_Y15_N22
\rr[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[6]~22_combout\ = (\Add1~12_combout\ & (\rr[5]~21\ $ (GND))) # (!\Add1~12_combout\ & (!\rr[5]~21\ & VCC))
-- \rr[6]~23\ = CARRY((\Add1~12_combout\ & !\rr[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \rr[5]~21\,
	combout => \rr[6]~22_combout\,
	cout => \rr[6]~23\);

-- Location: FF_X23_Y15_N23
\rr[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[6]~22_combout\,
	asdata => \rr[5]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[6]~reg0_q\);

-- Location: LCCOMB_X23_Y15_N6
\q[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[6]~2_combout\ = (\cop~input_o\ & ((\state.s1~q\ & (\rr[6]~reg0_q\)) # (!\state.s1~q\ & ((RB(3)))))) # (!\cop~input_o\ & (((RB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rr[6]~reg0_q\,
	datab => \cop~input_o\,
	datac => RB(3),
	datad => \state.s1~q\,
	combout => \q[6]~2_combout\);

-- Location: LCCOMB_X24_Y15_N26
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Mux0~0_combout\ & ((\q[7]~1_combout\ & (\Add1~13\ & VCC)) # (!\q[7]~1_combout\ & (!\Add1~13\)))) # (!\Mux0~0_combout\ & ((\q[7]~1_combout\ & (!\Add1~13\)) # (!\q[7]~1_combout\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\Mux0~0_combout\ & (!\q[7]~1_combout\ & !\Add1~13\)) # (!\Mux0~0_combout\ & ((!\Add1~13\) # (!\q[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \q[7]~1_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X23_Y15_N24
\rr[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[7]~24_combout\ = \rr[6]~23\ $ (\Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~14_combout\,
	cin => \rr[6]~23\,
	combout => \rr[7]~24_combout\);

-- Location: FF_X23_Y15_N25
\rr[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[7]~24_combout\,
	asdata => \rr[6]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[7]~reg0_q\);

-- Location: LCCOMB_X23_Y15_N4
\q[7]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[7]~1_combout\ = (\cop~input_o\ & ((\state.s1~q\ & (\rr[7]~reg0_q\)) # (!\state.s1~q\ & ((RB(3)))))) # (!\cop~input_o\ & (((RB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \rr[7]~reg0_q\,
	datac => RB(3),
	datad => \state.s1~q\,
	combout => \q[7]~1_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = !\Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X23_Y15_N10
\rr[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rr[0]~8_combout\ = (\Add1~0_combout\ & (\Add1~16_combout\ $ (VCC))) # (!\Add1~0_combout\ & (\Add1~16_combout\ & VCC))
-- \rr[0]~9\ = CARRY((\Add1~0_combout\ & \Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~16_combout\,
	datad => VCC,
	combout => \rr[0]~8_combout\,
	cout => \rr[0]~9\);

-- Location: FF_X23_Y15_N13
\rr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[1]~12_combout\,
	asdata => \rr[0]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[1]~reg0_q\);

-- Location: LCCOMB_X25_Y15_N26
\q[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[1]~7_combout\ = (\cop~input_o\ & ((\state.s1~q\ & ((\rr[1]~reg0_q\))) # (!\state.s1~q\ & (RB(1))))) # (!\cop~input_o\ & (((RB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \state.s1~q\,
	datac => RB(1),
	datad => \rr[1]~reg0_q\,
	combout => \q[1]~7_combout\);

-- Location: FF_X23_Y15_N15
\rr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[2]~14_combout\,
	asdata => \rr[1]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[2]~reg0_q\);

-- Location: LCCOMB_X25_Y15_N8
\Equal4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\rr[2]~reg0_q\ & \Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rr[2]~reg0_q\,
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\cop~input_o\ & (!i(0) & ((i(1))))) # (!\cop~input_o\ & (((!i(0) & i(1))) # (!\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => i(0),
	datac => \Equal4~1_combout\,
	datad => i(1),
	combout => \Selector0~0_combout\);

-- Location: FF_X25_Y15_N25
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector3~2_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X25_Y15_N20
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\state.s3~q\ & ((!\state.s2~q\) # (!\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.s3~q\,
	datad => \state.s2~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X25_Y15_N18
\Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~1_combout\ & ((\sno~input_o\) # (\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sno~input_o\,
	datac => \state.s0~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X25_Y15_N19
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: IOIBUF_X33_Y22_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X26_Y15_N8
\RB~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RB~1_combout\ = (!\state.s0~q\ & (\sno~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s0~q\,
	datac => \sno~input_o\,
	datad => \b[0]~input_o\,
	combout => \RB~1_combout\);

-- Location: FF_X26_Y15_N9
\RB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RB~1_combout\,
	ena => \Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(0));

-- Location: LCCOMB_X26_Y15_N10
\RB~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RB~2_combout\ = (\sno~input_o\ & ((\state.s0~q\ & ((RB(0)))) # (!\state.s0~q\ & (\b[1]~input_o\)))) # (!\sno~input_o\ & (((RB(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => RB(0),
	datac => \sno~input_o\,
	datad => \state.s0~q\,
	combout => \RB~2_combout\);

-- Location: FF_X26_Y15_N11
\RB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RB~2_combout\,
	ena => \Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(1));

-- Location: LCCOMB_X25_Y15_N12
\RB~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RB~0_combout\ = (\sno~input_o\ & ((\state.s0~q\ & ((RB(1)))) # (!\state.s0~q\ & (\b[2]~input_o\)))) # (!\sno~input_o\ & (((RB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sno~input_o\,
	datab => \b[2]~input_o\,
	datac => RB(1),
	datad => \state.s0~q\,
	combout => \RB~0_combout\);

-- Location: FF_X24_Y15_N9
\RB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RB~0_combout\,
	sload => VCC,
	ena => \Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(2));

-- Location: LCCOMB_X24_Y15_N30
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\cop~input_o\ & (!RB(2) & (RB(3) & \state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => RB(2),
	datac => RB(3),
	datad => \state.s1~q\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X24_Y15_N7
\RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	sload => VCC,
	ena => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RA(0));

-- Location: LCCOMB_X24_Y15_N6
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (RA(0) & ((\y[4]~0_combout\))) # (!RA(0) & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => RA(0),
	datad => \y[4]~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X23_Y15_N11
\rr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rr[0]~8_combout\,
	asdata => \rr[7]~reg0_q\,
	sclr => \Selector3~3_combout\,
	sload => \ALT_INV_state.s1~q\,
	ena => \rr[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rr[0]~reg0_q\);

-- Location: LCCOMB_X26_Y15_N28
\Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\rr[3]~reg0_q\) # (\rr[4]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rr[3]~reg0_q\,
	datad => \rr[4]~reg0_q\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X25_Y15_N16
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s3~q\) # ((!\cop~input_o\ & (\incr_i~0_combout\ & !\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cop~input_o\,
	datab => \incr_i~0_combout\,
	datac => \Equal4~1_combout\,
	datad => \state.s3~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X26_Y15_N29
\pr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal3~0_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr[0]~reg0_q\);

-- Location: LCCOMB_X25_Y15_N2
\Equal3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\rr[1]~reg0_q\ & !\rr[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rr[1]~reg0_q\,
	datad => \rr[0]~reg0_q\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X26_Y15_N6
\priznak[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \priznak[1]~0_combout\ = (\rr[3]~reg0_q\ & (!\rr[4]~reg0_q\)) # (!\rr[3]~reg0_q\ & ((\rr[4]~reg0_q\) # ((\rr[2]~reg0_q\) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rr[3]~reg0_q\,
	datab => \rr[4]~reg0_q\,
	datac => \rr[2]~reg0_q\,
	datad => \Equal3~1_combout\,
	combout => \priznak[1]~0_combout\);

-- Location: FF_X26_Y15_N7
\pr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \priznak[1]~0_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr[1]~reg0_q\);

ww_rr(0) <= \rr[0]~output_o\;

ww_rr(1) <= \rr[1]~output_o\;

ww_rr(2) <= \rr[2]~output_o\;

ww_rr(3) <= \rr[3]~output_o\;

ww_rr(4) <= \rr[4]~output_o\;

ww_rr(5) <= \rr[5]~output_o\;

ww_rr(6) <= \rr[6]~output_o\;

ww_rr(7) <= \rr[7]~output_o\;

ww_pr(0) <= \pr[0]~output_o\;

ww_pr(1) <= \pr[1]~output_o\;

ww_sko <= \sko~output_o\;
END structure;


