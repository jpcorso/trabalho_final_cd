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

-- DATE "04/03/2023 15:25:51"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador_top IS
    PORT (
	Carry : OUT std_logic;
	D : IN std_logic;
	E : IN std_logic;
	\out\ : OUT std_logic_vector(7 DOWNTO 0);
	C : IN std_logic
	);
END contador_top;

-- Design Ports Information
-- Carry	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[7]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[4]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Carry : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL \ww_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL \C~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \out[7]~output_o\ : std_logic;
SIGNAL \out[6]~output_o\ : std_logic;
SIGNAL \out[5]~output_o\ : std_logic;
SIGNAL \out[4]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \C~inputclkctrl_outclk\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst24~0_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst30~0_combout\ : std_logic;
SIGNAL \inst30~1_combout\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst36~0_combout\ : std_logic;

BEGIN

Carry <= ww_Carry;
ww_D <= D;
ww_E <= E;
\out\ <= \ww_out\;
ww_C <= C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C~input_o\);

-- Location: IOOBUF_X0_Y6_N2
\Carry~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36~0_combout\,
	devoe => ww_devoe,
	o => \Carry~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \out[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \out[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \out[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \out[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: CLKCTRL_G4
\C~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\E~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: LCCOMB_X1_Y5_N22
\inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = \inst~q\ $ (\E~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	datad => \E~input_o\,
	combout => \inst~0_combout\);

-- Location: FF_X1_Y5_N23
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X1_Y5_N24
\inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = \inst1~q\ $ (((\E~input_o\ & (\inst~q\ $ (\D~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datab => \D~input_o\,
	datac => \inst1~q\,
	datad => \E~input_o\,
	combout => \inst1~0_combout\);

-- Location: FF_X1_Y5_N25
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X1_Y5_N14
\inst18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\E~input_o\ & ((\D~input_o\ & (!\inst~q\ & !\inst1~q\)) # (!\D~input_o\ & (\inst~q\ & \inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \D~input_o\,
	datac => \inst~q\,
	datad => \inst1~q\,
	combout => \inst18~0_combout\);

-- Location: LCCOMB_X1_Y5_N16
\inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = \inst2~q\ $ (\inst18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2~q\,
	datad => \inst18~0_combout\,
	combout => \inst2~0_combout\);

-- Location: FF_X1_Y5_N17
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X1_Y5_N8
\inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = \inst3~q\ $ (((\inst18~0_combout\ & (\D~input_o\ $ (\inst2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst18~0_combout\,
	combout => \inst3~0_combout\);

-- Location: FF_X1_Y5_N9
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X1_Y5_N0
\inst24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24~0_combout\ = (\inst18~0_combout\ & ((\D~input_o\ & (!\inst2~q\ & !\inst3~q\)) # (!\D~input_o\ & (\inst2~q\ & \inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \inst2~q\,
	datac => \inst18~0_combout\,
	datad => \inst3~q\,
	combout => \inst24~0_combout\);

-- Location: LCCOMB_X1_Y5_N20
\inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = \inst4~q\ $ (\inst24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst24~0_combout\,
	combout => \inst4~0_combout\);

-- Location: FF_X1_Y5_N21
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X1_Y5_N26
\inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = \inst5~q\ $ (((\inst24~0_combout\ & (\D~input_o\ $ (\inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \inst4~q\,
	datac => \inst5~q\,
	datad => \inst24~0_combout\,
	combout => \inst5~0_combout\);

-- Location: FF_X1_Y5_N27
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X1_Y5_N18
\inst30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst30~0_combout\ = (\inst5~q\ & (!\D~input_o\ & (\inst3~q\ & \inst2~q\))) # (!\inst5~q\ & (\D~input_o\ & (!\inst3~q\ & !\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \D~input_o\,
	datac => \inst3~q\,
	datad => \inst2~q\,
	combout => \inst30~0_combout\);

-- Location: LCCOMB_X1_Y5_N28
\inst30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst30~1_combout\ = (\inst18~0_combout\ & (\inst30~0_combout\ & (\inst3~q\ $ (!\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst4~q\,
	datac => \inst18~0_combout\,
	datad => \inst30~0_combout\,
	combout => \inst30~1_combout\);

-- Location: LCCOMB_X1_Y5_N30
\inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = \inst6~q\ $ (\inst30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6~q\,
	datad => \inst30~1_combout\,
	combout => \inst6~0_combout\);

-- Location: FF_X1_Y5_N31
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X1_Y5_N12
\inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = \inst7~q\ $ (((\inst30~1_combout\ & (\inst6~q\ $ (\D~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~q\,
	datab => \D~input_o\,
	datac => \inst7~q\,
	datad => \inst30~1_combout\,
	combout => \inst7~0_combout\);

-- Location: FF_X1_Y5_N13
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputclkctrl_outclk\,
	d => \inst7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X1_Y5_N10
\inst36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst36~0_combout\ = (\inst30~1_combout\ & ((\inst7~q\ & (\inst6~q\ & !\D~input_o\)) # (!\inst7~q\ & (!\inst6~q\ & \D~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~1_combout\,
	datab => \inst7~q\,
	datac => \inst6~q\,
	datad => \D~input_o\,
	combout => \inst36~0_combout\);

ww_Carry <= \Carry~output_o\;

\ww_out\(7) <= \out[7]~output_o\;

\ww_out\(6) <= \out[6]~output_o\;

\ww_out\(5) <= \out[5]~output_o\;

\ww_out\(4) <= \out[4]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(0) <= \out[0]~output_o\;
END structure;


