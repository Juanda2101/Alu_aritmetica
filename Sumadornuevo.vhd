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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Wed Dec 21 12:26:53 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Sumadornuevo IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		CIN :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		CARRY :  OUT  STD_LOGIC
	);
END Sumadornuevo;

ARCHITECTURE bdf_type OF Sumadornuevo IS 

COMPONENT f_a
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 Suma : OUT STD_LOGIC;
		 Carry : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : f_a
PORT MAP(A => A0,
		 B => B0,
		 Cin => CIN,
		 Suma => S0,
		 Carry => SYNTHESIZED_WIRE_0);


b2v_inst1 : f_a
PORT MAP(A => A1,
		 B => B1,
		 Cin => SYNTHESIZED_WIRE_0,
		 Suma => S1,
		 Carry => SYNTHESIZED_WIRE_1);


b2v_inst2 : f_a
PORT MAP(A => A2,
		 B => B2,
		 Cin => SYNTHESIZED_WIRE_1,
		 Suma => S2,
		 Carry => SYNTHESIZED_WIRE_2);


b2v_inst3 : f_a
PORT MAP(A => A3,
		 B => B3,
		 Cin => SYNTHESIZED_WIRE_2,
		 Suma => S3,
		 Carry => CARRY);


END bdf_type;