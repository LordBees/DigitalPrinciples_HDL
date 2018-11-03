-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Fri Oct 13 17:45:28 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \4BITADDER\ IS 
	PORT
	(
		a0 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		b0 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		C_in :  IN  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC;
		Q4 :  OUT  STD_LOGIC
	);
END \4BITADDER\;

ARCHITECTURE bdf_type OF \4BITADDER\ IS 

COMPONENT fulladder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 Cout : OUT STD_LOGIC;
		 Sum : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : fulladder
PORT MAP(A => a0,
		 B => b0,
		 Cin => C_in,
		 Cout => SYNTHESIZED_WIRE_0,
		 Sum => Q0);


b2v_inst1 : fulladder
PORT MAP(A => a1,
		 B => b1,
		 Cin => SYNTHESIZED_WIRE_0,
		 Cout => SYNTHESIZED_WIRE_1,
		 Sum => Q1);


b2v_inst2 : fulladder
PORT MAP(A => a2,
		 B => b2,
		 Cin => SYNTHESIZED_WIRE_1,
		 Cout => SYNTHESIZED_WIRE_2,
		 Sum => Q2);


b2v_inst3 : fulladder
PORT MAP(A => a3,
		 B => b3,
		 Cin => SYNTHESIZED_WIRE_2,
		 Cout => Q4,
		 Sum => Q3);


END bdf_type;