-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "03/23/2023 09:48:26"

-- 
-- Device: Altera EP4CE115F23I8L Package FBGA484
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

ENTITY 	HW11 IS
    PORT (
	\OUT\ : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic
	);
END HW11;

-- Design Ports Information
-- OUT[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HW11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT[7]~output_o\ : std_logic;
SIGNAL \OUT[6]~output_o\ : std_logic;
SIGNAL \OUT[5]~output_o\ : std_logic;
SIGNAL \OUT[4]~output_o\ : std_logic;
SIGNAL \OUT[3]~output_o\ : std_logic;
SIGNAL \OUT[2]~output_o\ : std_logic;
SIGNAL \OUT[1]~output_o\ : std_logic;
SIGNAL \OUT[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1~q\ : std_logic;
SIGNAL \inst1|inst2~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2~q\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst3~q\ : std_logic;
SIGNAL \inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst|seg_num~0_combout\ : std_logic;
SIGNAL \inst|seg_num~1_combout\ : std_logic;
SIGNAL \inst|seg_num~2_combout\ : std_logic;
SIGNAL \inst|seg_num~3_combout\ : std_logic;
SIGNAL \inst|seg_num~4_combout\ : std_logic;
SIGNAL \inst|seg_num~5_combout\ : std_logic;
SIGNAL \inst|seg_num~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_seg_num~6_combout\ : std_logic;

BEGIN

\OUT\ <= \ww_OUT\;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_seg_num~6_combout\ <= NOT \inst|seg_num~6_combout\;

-- Location: IOOBUF_X0_Y69_N9
\OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|seg_num~0_combout\,
	devoe => ww_devoe,
	o => \OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|seg_num~1_combout\,
	devoe => ww_devoe,
	o => \OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|seg_num~2_combout\,
	devoe => ww_devoe,
	o => \OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|seg_num~3_combout\,
	devoe => ww_devoe,
	o => \OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|seg_num~4_combout\,
	devoe => ww_devoe,
	o => \OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|seg_num~5_combout\,
	devoe => ww_devoe,
	o => \OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y69_N2
\OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_seg_num~6_combout\,
	devoe => ww_devoe,
	o => \OUT[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OUT[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y68_N28
\inst1|inst1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1~feeder_combout\ = \inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst~q\,
	combout => \inst1|inst1~feeder_combout\);

-- Location: FF_X1_Y68_N29
\inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1~q\);

-- Location: LCCOMB_X1_Y68_N2
\inst1|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2~feeder_combout\ = \inst1|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst1~q\,
	combout => \inst1|inst2~feeder_combout\);

-- Location: FF_X1_Y68_N3
\inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2~q\);

-- Location: LCCOMB_X1_Y68_N0
\inst1|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = (\inst1|inst3~q\ & (!\inst1|inst1~q\)) # (!\inst1|inst3~q\ & ((!\inst1|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1~q\,
	datac => \inst1|inst3~q\,
	datad => \inst1|inst2~q\,
	combout => \inst1|inst3~0_combout\);

-- Location: FF_X1_Y68_N1
\inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~q\);

-- Location: LCCOMB_X1_Y68_N6
\inst1|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~feeder_combout\ = \inst1|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst3~q\,
	combout => \inst1|inst~feeder_combout\);

-- Location: FF_X1_Y68_N7
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X1_Y68_N24
\inst|seg_num~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|seg_num~0_combout\ = (\inst1|inst1~q\ & ((\inst1|inst2~q\ $ (!\inst1|inst3~q\)))) # (!\inst1|inst1~q\ & (\inst1|inst3~q\ & (\inst1|inst~q\ $ (!\inst1|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst1~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst3~q\,
	combout => \inst|seg_num~0_combout\);

-- Location: LCCOMB_X1_Y68_N30
\inst|seg_num~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|seg_num~1_combout\ = (\inst1|inst~q\ & ((\inst1|inst3~q\ & ((\inst1|inst2~q\))) # (!\inst1|inst3~q\ & (\inst1|inst1~q\)))) # (!\inst1|inst~q\ & (\inst1|inst1~q\ & (\inst1|inst2~q\ $ (\inst1|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst1~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst3~q\,
	combout => \inst|seg_num~1_combout\);

-- Location: LCCOMB_X1_Y68_N16
\inst|seg_num~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|seg_num~2_combout\ = (\inst1|inst1~q\ & (\inst1|inst2~q\ & ((\inst1|inst~q\) # (!\inst1|inst3~q\)))) # (!\inst1|inst1~q\ & (\inst1|inst~q\ & (!\inst1|inst2~q\ & !\inst1|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst1~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst3~q\,
	combout => \inst|seg_num~2_combout\);

-- Location: LCCOMB_X1_Y68_N26
\inst|seg_num~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|seg_num~3_combout\ = (\inst1|inst3~q\ & (\inst1|inst~q\ $ ((!\inst1|inst1~q\)))) # (!\inst1|inst3~q\ & ((\inst1|inst~q\ & (!\inst1|inst1~q\ & \inst1|inst2~q\)) # (!\inst1|inst~q\ & (\inst1|inst1~q\ & !\inst1|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst1~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst3~q\,
	combout => \inst|seg_num~3_combout\);

-- Location: LCCOMB_X1_Y68_N20
\inst|seg_num~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|seg_num~4_combout\ = (\inst1|inst~q\ & (\inst1|inst3~q\ & ((\inst1|inst1~q\) # (!\inst1|inst2~q\)))) # (!\inst1|inst~q\ & ((\inst1|inst1~q\ & (!\inst1|inst2~q\)) # (!\inst1|inst1~q\ & ((\inst1|inst3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst1~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst3~q\,
	combout => \inst|seg_num~4_combout\);

-- Location: LCCOMB_X1_Y68_N10
\inst|seg_num~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|seg_num~5_combout\ = (\inst1|inst~q\ & ((\inst1|inst1~q\ & ((\inst1|inst3~q\))) # (!\inst1|inst1~q\ & (!\inst1|inst2~q\)))) # (!\inst1|inst~q\ & (\inst1|inst3~q\ & (\inst1|inst1~q\ $ (!\inst1|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst1~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst3~q\,
	combout => \inst|seg_num~5_combout\);

-- Location: LCCOMB_X1_Y68_N12
\inst|seg_num~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|seg_num~6_combout\ = (\inst1|inst~q\ & (((!\inst1|inst3~q\)) # (!\inst1|inst1~q\))) # (!\inst1|inst~q\ & ((\inst1|inst1~q\ & ((\inst1|inst3~q\) # (!\inst1|inst2~q\))) # (!\inst1|inst1~q\ & (\inst1|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst1~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst3~q\,
	combout => \inst|seg_num~6_combout\);

\ww_OUT\(7) <= \OUT[7]~output_o\;

\ww_OUT\(6) <= \OUT[6]~output_o\;

\ww_OUT\(5) <= \OUT[5]~output_o\;

\ww_OUT\(4) <= \OUT[4]~output_o\;

\ww_OUT\(3) <= \OUT[3]~output_o\;

\ww_OUT\(2) <= \OUT[2]~output_o\;

\ww_OUT\(1) <= \OUT[1]~output_o\;

\ww_OUT\(0) <= \OUT[0]~output_o\;
END structure;


