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
-- CREATED		"Tue Dec 20 08:26:38 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Muxcuadruple IS 
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
		S0 :  IN  STD_LOGIC;
		Y0 :  OUT  STD_LOGIC;
		Y1 :  OUT  STD_LOGIC;
		Y2 :  OUT  STD_LOGIC;
		Y3 :  OUT  STD_LOGIC
	);
END Muxcuadruple;

ARCHITECTURE bdf_type OF Muxcuadruple IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 



Y0 <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_18 <= NOT(SYNTHESIZED_WIRE_17);



Y1 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_7 <= A0 AND SYNTHESIZED_WIRE_17;


Y3 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_6 <= B0 AND SYNTHESIZED_WIRE_18;


SYNTHESIZED_WIRE_16 <= A1 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_15 <= B1 AND SYNTHESIZED_WIRE_18;


SYNTHESIZED_WIRE_4 <= A2 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_3 <= B2 AND SYNTHESIZED_WIRE_18;


SYNTHESIZED_WIRE_1 <= A3 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_0 <= B3 AND SYNTHESIZED_WIRE_18;


SYNTHESIZED_WIRE_17 <= NOT(S0);



Y2 <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_16;


END bdf_type;