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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/20/2023 21:06:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu_sm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_sm_vhd_vec_tst IS
END alu_sm_vhd_vec_tst;
ARCHITECTURE alu_sm_arch OF alu_sm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL f1 : STD_LOGIC;
SIGNAL f2 : STD_LOGIC;
SIGNAL f3 : STD_LOGIC;
SIGNAL pr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL set : STD_LOGIC;
SIGNAL sko : STD_LOGIC;
SIGNAL sno : STD_LOGIC;
SIGNAL y : STD_LOGIC_VECTOR(10 DOWNTO 1);
COMPONENT alu_sm
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	f1 : OUT STD_LOGIC;
	f2 : OUT STD_LOGIC;
	f3 : OUT STD_LOGIC;
	pr : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	set : IN STD_LOGIC;
	sko : OUT STD_LOGIC;
	sno : IN STD_LOGIC;
	y : OUT STD_LOGIC_VECTOR(10 DOWNTO 1)
	);
END COMPONENT;
BEGIN
	i1 : alu_sm
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	clk => clk,
	f1 => f1,
	f2 => f2,
	f3 => f3,
	pr => pr,
	rr => rr,
	set => set,
	sko => sko,
	sno => sno,
	y => y
	);
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
	WAIT FOR 80000 ps;
	a(3) <= '1';
	WAIT FOR 10000 ps;
	a(3) <= '0';
	WAIT FOR 60000 ps;
	a(3) <= '1';
	WAIT FOR 10000 ps;
	a(3) <= '0';
	WAIT FOR 220000 ps;
	a(3) <= '1';
	WAIT FOR 10000 ps;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
	WAIT FOR 10000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
	WAIT FOR 60000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
	WAIT FOR 60000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
	WAIT FOR 60000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
	WAIT FOR 120000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
	WAIT FOR 290000 ps;
	a(1) <= '1';
	WAIT FOR 10000 ps;
	a(1) <= '0';
	WAIT FOR 20000 ps;
	a(1) <= '1';
	WAIT FOR 10000 ps;
	a(1) <= '0';
	WAIT FOR 50000 ps;
	a(1) <= '1';
	WAIT FOR 10000 ps;
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
	WAIT FOR 10000 ps;
	a(0) <= '1';
	WAIT FOR 10000 ps;
	a(0) <= '0';
	WAIT FOR 60000 ps;
	a(0) <= '1';
	WAIT FOR 10000 ps;
	a(0) <= '0';
	WAIT FOR 60000 ps;
	a(0) <= '1';
	WAIT FOR 10000 ps;
	a(0) <= '0';
	WAIT FOR 60000 ps;
	a(0) <= '1';
	WAIT FOR 10000 ps;
	a(0) <= '0';
	WAIT FOR 120000 ps;
	a(0) <= '1';
	WAIT FOR 10000 ps;
	a(0) <= '0';
WAIT;
END PROCESS t_prcs_a_0;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
	WAIT FOR 150000 ps;
	b(3) <= '1';
	WAIT FOR 10000 ps;
	b(3) <= '0';
	WAIT FOR 60000 ps;
	b(3) <= '1';
	WAIT FOR 10000 ps;
	b(3) <= '0';
	WAIT FOR 90000 ps;
	b(3) <= '1';
	WAIT FOR 10000 ps;
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 380000 ps;
	b(2) <= '1';
	WAIT FOR 10000 ps;
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
	WAIT FOR 10000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 60000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 60000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 60000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 60000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 50000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '0';
	WAIT FOR 10000 ps;
	b(0) <= '1';
	WAIT FOR 10000 ps;
	b(0) <= '0';
	WAIT FOR 60000 ps;
	b(0) <= '1';
	WAIT FOR 10000 ps;
	b(0) <= '0';
	WAIT FOR 60000 ps;
	b(0) <= '1';
	WAIT FOR 10000 ps;
	b(0) <= '0';
	WAIT FOR 60000 ps;
	b(0) <= '1';
	WAIT FOR 10000 ps;
	b(0) <= '0';
	WAIT FOR 60000 ps;
	b(0) <= '1';
	WAIT FOR 10000 ps;
	b(0) <= '0';
	WAIT FOR 50000 ps;
	b(0) <= '1';
	WAIT FOR 10000 ps;
	b(0) <= '0';
	WAIT FOR 20000 ps;
	b(0) <= '1';
	WAIT FOR 10000 ps;
	b(0) <= '0';
WAIT;
END PROCESS t_prcs_b_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- sno
t_prcs_sno: PROCESS
BEGIN
	sno <= '0';
	WAIT FOR 10000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
	WAIT FOR 60000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
	WAIT FOR 60000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
	WAIT FOR 60000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
	WAIT FOR 60000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
	WAIT FOR 20000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
	WAIT FOR 20000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
	WAIT FOR 20000 ps;
	sno <= '1';
	WAIT FOR 10000 ps;
	sno <= '0';
WAIT;
END PROCESS t_prcs_sno;

-- set
t_prcs_set: PROCESS
BEGIN
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
WAIT;
END PROCESS t_prcs_set;
END alu_sm_arch;
