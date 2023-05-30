-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "05/31/2023 00:32:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	lcd_demo3 IS
    PORT (
	btn : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	sw : IN std_logic_vector(3 DOWNTO 0);
	lcd_on : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	lcd_rs : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic
	);
END lcd_demo3;

-- Design Ports Information
-- btn[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_on	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lcd_demo3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_btn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mdly[4]~27_combout\ : std_logic;
SIGNAL \mdly[6]~31_combout\ : std_logic;
SIGNAL \mdly[12]~43_combout\ : std_logic;
SIGNAL \mdly[16]~52\ : std_logic;
SIGNAL \mdly[17]~53_combout\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \mlcd_st.000001~2_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
SIGNAL \btn[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \lcd_on~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \lut_index[1]~7_combout\ : std_logic;
SIGNAL \btn[0]~input_o\ : std_logic;
SIGNAL \mlcd_st~18_combout\ : std_logic;
SIGNAL \mlcd_st~19_combout\ : std_logic;
SIGNAL \mlcd_st.000001~3_combout\ : std_logic;
SIGNAL \mlcd_st.000001~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \mlcd_start~q\ : std_logic;
SIGNAL \u0|prestart~q\ : std_logic;
SIGNAL \u0|odone~0_combout\ : std_logic;
SIGNAL \u0|state.00~0_combout\ : std_logic;
SIGNAL \u0|state.00~q\ : std_logic;
SIGNAL \u0|state.01~0_combout\ : std_logic;
SIGNAL \u0|state.01~q\ : std_logic;
SIGNAL \u0|cont~0_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|state.10~q\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|state~14_combout\ : std_logic;
SIGNAL \u0|state.11~q\ : std_logic;
SIGNAL \u0|mstart~0_combout\ : std_logic;
SIGNAL \u0|mstart~q\ : std_logic;
SIGNAL \u0|odone~1_combout\ : std_logic;
SIGNAL \u0|odone~q\ : std_logic;
SIGNAL \mdly[0]~18_combout\ : std_logic;
SIGNAL \mdly[17]~22_combout\ : std_logic;
SIGNAL \mdly[0]~19\ : std_logic;
SIGNAL \mdly[1]~20_combout\ : std_logic;
SIGNAL \mdly[1]~21\ : std_logic;
SIGNAL \mdly[2]~23_combout\ : std_logic;
SIGNAL \mdly[2]~24\ : std_logic;
SIGNAL \mdly[3]~25_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \mdly[3]~26\ : std_logic;
SIGNAL \mdly[4]~28\ : std_logic;
SIGNAL \mdly[5]~29_combout\ : std_logic;
SIGNAL \mdly[5]~30\ : std_logic;
SIGNAL \mdly[6]~32\ : std_logic;
SIGNAL \mdly[7]~33_combout\ : std_logic;
SIGNAL \mdly[7]~34\ : std_logic;
SIGNAL \mdly[8]~35_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \mdly[8]~36\ : std_logic;
SIGNAL \mdly[9]~37_combout\ : std_logic;
SIGNAL \mdly[9]~38\ : std_logic;
SIGNAL \mdly[10]~39_combout\ : std_logic;
SIGNAL \mdly[10]~40\ : std_logic;
SIGNAL \mdly[11]~41_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \mdly[11]~42\ : std_logic;
SIGNAL \mdly[12]~44\ : std_logic;
SIGNAL \mdly[13]~45_combout\ : std_logic;
SIGNAL \mdly[13]~46\ : std_logic;
SIGNAL \mdly[14]~47_combout\ : std_logic;
SIGNAL \mdly[14]~48\ : std_logic;
SIGNAL \mdly[15]~49_combout\ : std_logic;
SIGNAL \mdly[15]~50\ : std_logic;
SIGNAL \mdly[16]~51_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \mlcd_st.000010~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mlcd_st.000011~q\ : std_logic;
SIGNAL \lut_index[7]~17_combout\ : std_logic;
SIGNAL \lut_index[1]~8\ : std_logic;
SIGNAL \lut_index[2]~9_combout\ : std_logic;
SIGNAL \lut_index[2]~10\ : std_logic;
SIGNAL \lut_index[3]~12\ : std_logic;
SIGNAL \lut_index[4]~13_combout\ : std_logic;
SIGNAL \lut_index[4]~14\ : std_logic;
SIGNAL \lut_index[5]~15_combout\ : std_logic;
SIGNAL \lut_index[5]~16\ : std_logic;
SIGNAL \lut_index[6]~19_combout\ : std_logic;
SIGNAL \lut_index[6]~20\ : std_logic;
SIGNAL \lut_index[7]~21_combout\ : std_logic;
SIGNAL \lut_index[3]~11_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \lut_index[0]~18_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~2_combout\ : std_logic;
SIGNAL \WideOr8~3_combout\ : std_logic;
SIGNAL \mlcd_st.000000~0_combout\ : std_logic;
SIGNAL \mlcd_st.000000~q\ : std_logic;
SIGNAL \mlcd_data[0]~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr7~2_combout\ : std_logic;
SIGNAL \WideOr7~3_combout\ : std_logic;
SIGNAL \WideOr7~7_combout\ : std_logic;
SIGNAL \WideOr7~4_combout\ : std_logic;
SIGNAL \WideOr7~5_combout\ : std_logic;
SIGNAL \WideOr7~6_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~2_combout\ : std_logic;
SIGNAL \WideOr6~3_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~3_combout\ : std_logic;
SIGNAL \WideOr4~4_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr3~2_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \mlcd_rs~q\ : std_logic;
SIGNAL \u0|Selector3~0_combout\ : std_logic;
SIGNAL \u0|lcd_en~q\ : std_logic;
SIGNAL \u0|cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL lut_index : std_logic_vector(7 DOWNTO 0);
SIGNAL mdly : std_logic_vector(17 DOWNTO 0);
SIGNAL mlcd_data : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_btn <= btn;
ww_clk <= clk;
ww_sw <= sw;
lcd_on <= ww_lcd_on;
lcd_data <= ww_lcd_data;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X76_Y47_N23
\mdly[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[4]~27_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(4));

-- Location: FF_X76_Y47_N27
\mdly[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[6]~31_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(6));

-- Location: FF_X76_Y46_N7
\mdly[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[12]~43_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(12));

-- Location: FF_X76_Y46_N17
\mdly[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[17]~53_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(17));

-- Location: LCCOMB_X76_Y47_N22
\mdly[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[4]~27_combout\ = (mdly(4) & (\mdly[3]~26\ $ (GND))) # (!mdly(4) & (!\mdly[3]~26\ & VCC))
-- \mdly[4]~28\ = CARRY((mdly(4) & !\mdly[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(4),
	datad => VCC,
	cin => \mdly[3]~26\,
	combout => \mdly[4]~27_combout\,
	cout => \mdly[4]~28\);

-- Location: LCCOMB_X76_Y47_N26
\mdly[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[6]~31_combout\ = (mdly(6) & (\mdly[5]~30\ $ (GND))) # (!mdly(6) & (!\mdly[5]~30\ & VCC))
-- \mdly[6]~32\ = CARRY((mdly(6) & !\mdly[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(6),
	datad => VCC,
	cin => \mdly[5]~30\,
	combout => \mdly[6]~31_combout\,
	cout => \mdly[6]~32\);

-- Location: LCCOMB_X76_Y46_N6
\mdly[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[12]~43_combout\ = (mdly(12) & (\mdly[11]~42\ $ (GND))) # (!mdly(12) & (!\mdly[11]~42\ & VCC))
-- \mdly[12]~44\ = CARRY((mdly(12) & !\mdly[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(12),
	datad => VCC,
	cin => \mdly[11]~42\,
	combout => \mdly[12]~43_combout\,
	cout => \mdly[12]~44\);

-- Location: LCCOMB_X76_Y46_N14
\mdly[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[16]~51_combout\ = (mdly(16) & (\mdly[15]~50\ $ (GND))) # (!mdly(16) & (!\mdly[15]~50\ & VCC))
-- \mdly[16]~52\ = CARRY((mdly(16) & !\mdly[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(16),
	datad => VCC,
	cin => \mdly[15]~50\,
	combout => \mdly[16]~51_combout\,
	cout => \mdly[16]~52\);

-- Location: LCCOMB_X76_Y46_N16
\mdly[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~53_combout\ = \mdly[16]~52\ $ (mdly(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => mdly(17),
	cin => \mdly[16]~52\,
	combout => \mdly[17]~53_combout\);

-- Location: LCCOMB_X73_Y47_N26
\WideOr8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~1_combout\ = (lut_index(3) & ((lut_index(2)) # (lut_index(1) $ (!lut_index(4))))) # (!lut_index(3) & (((lut_index(1) & lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => lut_index(3),
	datad => lut_index(4),
	combout => \WideOr8~1_combout\);

-- Location: LCCOMB_X73_Y47_N2
\WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = (lut_index(1) & (lut_index(3) $ (((lut_index(0) & !lut_index(2)))))) # (!lut_index(1) & (!lut_index(2) & ((lut_index(0)) # (lut_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(0),
	datac => lut_index(3),
	datad => lut_index(2),
	combout => \WideOr6~1_combout\);

-- Location: LCCOMB_X73_Y47_N30
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (lut_index(3) & (((!lut_index(4)) # (!lut_index(1))) # (!lut_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(3),
	datac => lut_index(1),
	datad => lut_index(4),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X76_Y46_N30
\mlcd_st.000001~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000001~2_combout\ = (!\mlcd_st.000011~q\ & (!\mlcd_st.000010~q\ & !\mlcd_st.000001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000011~q\,
	datac => \mlcd_st.000010~q\,
	datad => \mlcd_st.000001~q\,
	combout => \mlcd_st.000001~2_combout\);

-- Location: LCCOMB_X74_Y46_N6
\u0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (\u0|cont\(3) & \u0|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X75_Y47_N30
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (lut_index(0) & ((lut_index(1) & ((lut_index(3)))) # (!lut_index(1) & (!lut_index(2) & !lut_index(3))))) # (!lut_index(0) & (((!lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(2),
	datac => lut_index(0),
	datad => lut_index(3),
	combout => \WideOr5~0_combout\);

-- Location: IOOBUF_X79_Y73_N2
\lcd_on~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lcd_on~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(0),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(1),
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(2),
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(3),
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(4),
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(5),
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(6),
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mlcd_data(7),
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mlcd_rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|lcd_en~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOIBUF_X115_Y37_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X75_Y47_N4
\lut_index[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[1]~7_combout\ = (lut_index(0) & (lut_index(1) $ (VCC))) # (!lut_index(0) & (lut_index(1) & VCC))
-- \lut_index[1]~8\ = CARRY((lut_index(0) & lut_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datad => VCC,
	combout => \lut_index[1]~7_combout\,
	cout => \lut_index[1]~8\);

-- Location: IOIBUF_X115_Y40_N8
\btn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(0),
	o => \btn[0]~input_o\);

-- Location: LCCOMB_X76_Y46_N28
\mlcd_st~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~18_combout\ = (!\u0|odone~q\ & \mlcd_st.000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|odone~q\,
	datad => \mlcd_st.000001~q\,
	combout => \mlcd_st~18_combout\);

-- Location: LCCOMB_X76_Y47_N12
\mlcd_st~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~19_combout\ = (\mlcd_st~18_combout\) # (((!\LessThan1~5_combout\ & \mlcd_st.000010~q\)) # (!\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => \mlcd_st.000010~q\,
	datac => \mlcd_st~18_combout\,
	datad => \LessThan0~1_combout\,
	combout => \mlcd_st~19_combout\);

-- Location: LCCOMB_X76_Y47_N2
\mlcd_st.000001~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000001~3_combout\ = (\mlcd_st.000001~q\ & (((\mlcd_st~19_combout\)))) # (!\mlcd_st.000001~q\ & (!\mlcd_st.000011~q\ & (!\mlcd_st.000010~q\ & !\mlcd_st~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000011~q\,
	datab => \mlcd_st.000010~q\,
	datac => \mlcd_st.000001~q\,
	datad => \mlcd_st~19_combout\,
	combout => \mlcd_st.000001~3_combout\);

-- Location: FF_X76_Y47_N3
\mlcd_st.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mlcd_st.000001~3_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000001~q\);

-- Location: LCCOMB_X76_Y46_N20
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\mlcd_st.000001~2_combout\) # ((\mlcd_start~q\ & ((!\mlcd_st.000001~q\) # (!\u0|odone~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000001~2_combout\,
	datab => \u0|odone~q\,
	datac => \mlcd_start~q\,
	datad => \mlcd_st.000001~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X76_Y46_N21
mlcd_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_start~q\);

-- Location: FF_X75_Y46_N9
\u0|prestart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mlcd_start~q\,
	clrn => \btn[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|prestart~q\);

-- Location: LCCOMB_X75_Y46_N8
\u0|odone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|odone~0_combout\ = (\u0|odone~q\ & ((\u0|prestart~q\) # (!\mlcd_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_start~q\,
	datac => \u0|prestart~q\,
	datad => \u0|odone~q\,
	combout => \u0|odone~0_combout\);

-- Location: LCCOMB_X75_Y46_N10
\u0|state.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state.00~0_combout\ = !\u0|state.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|state.11~q\,
	combout => \u0|state.00~0_combout\);

-- Location: FF_X75_Y46_N11
\u0|state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|state.00~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.00~q\);

-- Location: LCCOMB_X75_Y46_N24
\u0|state.01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state.01~0_combout\ = !\u0|state.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|state.00~q\,
	combout => \u0|state.01~0_combout\);

-- Location: FF_X75_Y46_N25
\u0|state.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|state.01~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.01~q\);

-- Location: LCCOMB_X74_Y46_N28
\u0|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cont~0_combout\ = (\u0|state.01~q\) # (!\u0|state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|state.00~q\,
	datad => \u0|state.01~q\,
	combout => \u0|cont~0_combout\);

-- Location: LCCOMB_X74_Y46_N14
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = (\u0|LessThan0~1_combout\ & (\u0|cont\(0) & VCC)) # (!\u0|LessThan0~1_combout\ & (\u0|cont\(0) $ (VCC)))
-- \u0|Add0~1\ = CARRY((!\u0|LessThan0~1_combout\ & \u0|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~1_combout\,
	datab => \u0|cont\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X74_Y46_N4
\u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector8~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~0_combout\) # ((\u0|cont~0_combout\ & \u0|cont\(0))))) # (!\u0|state.10~q\ & (\u0|cont~0_combout\ & (\u0|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|cont~0_combout\,
	datac => \u0|cont\(0),
	datad => \u0|Add0~0_combout\,
	combout => \u0|Selector8~0_combout\);

-- Location: FF_X74_Y46_N5
\u0|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|Selector8~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(0));

-- Location: LCCOMB_X74_Y46_N16
\u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|cont\(1) & (!\u0|Add0~1\)) # (!\u0|cont\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|cont\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: LCCOMB_X74_Y46_N10
\u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector7~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~2_combout\) # ((\u0|cont~0_combout\ & \u0|cont\(1))))) # (!\u0|state.10~q\ & (\u0|cont~0_combout\ & (\u0|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|cont~0_combout\,
	datac => \u0|cont\(1),
	datad => \u0|Add0~2_combout\,
	combout => \u0|Selector7~0_combout\);

-- Location: FF_X74_Y46_N11
\u0|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|Selector7~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(1));

-- Location: LCCOMB_X74_Y46_N18
\u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|cont\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|cont\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|cont\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: LCCOMB_X74_Y46_N0
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~4_combout\) # ((\u0|cont~0_combout\ & \u0|cont\(2))))) # (!\u0|state.10~q\ & (\u0|cont~0_combout\ & (\u0|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|cont~0_combout\,
	datac => \u0|cont\(2),
	datad => \u0|Add0~4_combout\,
	combout => \u0|Selector6~0_combout\);

-- Location: FF_X74_Y46_N1
\u0|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|Selector6~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(2));

-- Location: LCCOMB_X74_Y46_N20
\u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|cont\(3) & (!\u0|Add0~5\)) # (!\u0|cont\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: LCCOMB_X74_Y46_N22
\u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = \u0|Add0~7\ $ (!\u0|cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|cont\(4),
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\);

-- Location: LCCOMB_X74_Y46_N30
\u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~8_combout\) # ((\u0|cont~0_combout\ & \u0|cont\(4))))) # (!\u0|state.10~q\ & (\u0|cont~0_combout\ & (\u0|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|cont~0_combout\,
	datac => \u0|cont\(4),
	datad => \u0|Add0~8_combout\,
	combout => \u0|Selector4~0_combout\);

-- Location: FF_X74_Y46_N31
\u0|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|Selector4~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(4));

-- Location: LCCOMB_X74_Y46_N24
\u0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (\u0|cont\(4) & ((\u0|cont\(0)) # ((\u0|cont\(2)) # (\u0|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(0),
	datab => \u0|cont\(2),
	datac => \u0|cont\(4),
	datad => \u0|cont\(1),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X74_Y46_N26
\u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|state.01~q\) # ((\u0|state.10~q\ & ((!\u0|LessThan0~0_combout\) # (!\u0|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datab => \u0|LessThan0~0_combout\,
	datac => \u0|state.10~q\,
	datad => \u0|state.01~q\,
	combout => \u0|Selector2~0_combout\);

-- Location: FF_X74_Y46_N27
\u0|state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|Selector2~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.10~q\);

-- Location: LCCOMB_X74_Y46_N12
\u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~6_combout\) # ((\u0|cont~0_combout\ & \u0|cont\(3))))) # (!\u0|state.10~q\ & (\u0|cont~0_combout\ & (\u0|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|cont~0_combout\,
	datac => \u0|cont\(3),
	datad => \u0|Add0~6_combout\,
	combout => \u0|Selector5~0_combout\);

-- Location: FF_X74_Y46_N13
\u0|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|Selector5~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(3));

-- Location: LCCOMB_X74_Y46_N2
\u0|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state~14_combout\ = (\u0|LessThan0~0_combout\ & (\u0|state.10~q\ & \u0|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|LessThan0~0_combout\,
	datac => \u0|state.10~q\,
	datad => \u0|cont\(3),
	combout => \u0|state~14_combout\);

-- Location: FF_X74_Y46_N3
\u0|state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|state~14_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.11~q\);

-- Location: LCCOMB_X75_Y46_N12
\u0|mstart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|mstart~0_combout\ = (\u0|mstart~q\ & (((!\u0|state.11~q\)))) # (!\u0|mstart~q\ & (\mlcd_start~q\ & (!\u0|prestart~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_start~q\,
	datab => \u0|prestart~q\,
	datac => \u0|mstart~q\,
	datad => \u0|state.11~q\,
	combout => \u0|mstart~0_combout\);

-- Location: FF_X75_Y46_N13
\u0|mstart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|mstart~0_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|mstart~q\);

-- Location: LCCOMB_X75_Y46_N22
\u0|odone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|odone~1_combout\ = (\u0|odone~0_combout\) # ((\u0|state.11~q\ & \u0|mstart~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.11~q\,
	datac => \u0|odone~0_combout\,
	datad => \u0|mstart~q\,
	combout => \u0|odone~1_combout\);

-- Location: FF_X75_Y46_N23
\u0|odone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|odone~1_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|odone~q\);

-- Location: LCCOMB_X76_Y47_N14
\mdly[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[0]~18_combout\ = mdly(0) $ (VCC)
-- \mdly[0]~19\ = CARRY(mdly(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mdly(0),
	datad => VCC,
	combout => \mdly[0]~18_combout\,
	cout => \mdly[0]~19\);

-- Location: LCCOMB_X75_Y47_N28
\mdly[17]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~22_combout\ = (\mlcd_st.000010~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000010~q\,
	datad => \LessThan0~1_combout\,
	combout => \mdly[17]~22_combout\);

-- Location: FF_X76_Y47_N15
\mdly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[0]~18_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(0));

-- Location: LCCOMB_X76_Y47_N16
\mdly[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[1]~20_combout\ = (mdly(1) & (!\mdly[0]~19\)) # (!mdly(1) & ((\mdly[0]~19\) # (GND)))
-- \mdly[1]~21\ = CARRY((!\mdly[0]~19\) # (!mdly(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(1),
	datad => VCC,
	cin => \mdly[0]~19\,
	combout => \mdly[1]~20_combout\,
	cout => \mdly[1]~21\);

-- Location: FF_X76_Y47_N17
\mdly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[1]~20_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(1));

-- Location: LCCOMB_X76_Y47_N18
\mdly[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[2]~23_combout\ = (mdly(2) & (\mdly[1]~21\ $ (GND))) # (!mdly(2) & (!\mdly[1]~21\ & VCC))
-- \mdly[2]~24\ = CARRY((mdly(2) & !\mdly[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(2),
	datad => VCC,
	cin => \mdly[1]~21\,
	combout => \mdly[2]~23_combout\,
	cout => \mdly[2]~24\);

-- Location: FF_X76_Y47_N19
\mdly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[2]~23_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(2));

-- Location: LCCOMB_X76_Y47_N20
\mdly[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[3]~25_combout\ = (mdly(3) & (!\mdly[2]~24\)) # (!mdly(3) & ((\mdly[2]~24\) # (GND)))
-- \mdly[3]~26\ = CARRY((!\mdly[2]~24\) # (!mdly(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(3),
	datad => VCC,
	cin => \mdly[2]~24\,
	combout => \mdly[3]~25_combout\,
	cout => \mdly[3]~26\);

-- Location: FF_X76_Y47_N21
\mdly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[3]~25_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(3));

-- Location: LCCOMB_X76_Y47_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!mdly(1)) # (!mdly(3))) # (!mdly(2))) # (!mdly(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(4),
	datab => mdly(2),
	datac => mdly(3),
	datad => mdly(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X76_Y47_N24
\mdly[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[5]~29_combout\ = (mdly(5) & (!\mdly[4]~28\)) # (!mdly(5) & ((\mdly[4]~28\) # (GND)))
-- \mdly[5]~30\ = CARRY((!\mdly[4]~28\) # (!mdly(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(5),
	datad => VCC,
	cin => \mdly[4]~28\,
	combout => \mdly[5]~29_combout\,
	cout => \mdly[5]~30\);

-- Location: FF_X76_Y47_N25
\mdly[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[5]~29_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(5));

-- Location: LCCOMB_X76_Y47_N28
\mdly[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[7]~33_combout\ = (mdly(7) & (!\mdly[6]~32\)) # (!mdly(7) & ((\mdly[6]~32\) # (GND)))
-- \mdly[7]~34\ = CARRY((!\mdly[6]~32\) # (!mdly(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(7),
	datad => VCC,
	cin => \mdly[6]~32\,
	combout => \mdly[7]~33_combout\,
	cout => \mdly[7]~34\);

-- Location: FF_X76_Y47_N29
\mdly[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[7]~33_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(7));

-- Location: LCCOMB_X76_Y47_N30
\mdly[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[8]~35_combout\ = (mdly(8) & (\mdly[7]~34\ $ (GND))) # (!mdly(8) & (!\mdly[7]~34\ & VCC))
-- \mdly[8]~36\ = CARRY((mdly(8) & !\mdly[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(8),
	datad => VCC,
	cin => \mdly[7]~34\,
	combout => \mdly[8]~35_combout\,
	cout => \mdly[8]~36\);

-- Location: FF_X76_Y47_N31
\mdly[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[8]~35_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(8));

-- Location: LCCOMB_X76_Y47_N6
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!mdly(5)) # (!mdly(8))) # (!mdly(7))) # (!mdly(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(6),
	datab => mdly(7),
	datac => mdly(8),
	datad => mdly(5),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X76_Y47_N8
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\) # (\LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X76_Y46_N0
\mdly[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[9]~37_combout\ = (mdly(9) & (!\mdly[8]~36\)) # (!mdly(9) & ((\mdly[8]~36\) # (GND)))
-- \mdly[9]~38\ = CARRY((!\mdly[8]~36\) # (!mdly(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(9),
	datad => VCC,
	cin => \mdly[8]~36\,
	combout => \mdly[9]~37_combout\,
	cout => \mdly[9]~38\);

-- Location: FF_X76_Y46_N1
\mdly[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[9]~37_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(9));

-- Location: LCCOMB_X76_Y46_N2
\mdly[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[10]~39_combout\ = (mdly(10) & (\mdly[9]~38\ $ (GND))) # (!mdly(10) & (!\mdly[9]~38\ & VCC))
-- \mdly[10]~40\ = CARRY((mdly(10) & !\mdly[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(10),
	datad => VCC,
	cin => \mdly[9]~38\,
	combout => \mdly[10]~39_combout\,
	cout => \mdly[10]~40\);

-- Location: FF_X76_Y46_N3
\mdly[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[10]~39_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(10));

-- Location: LCCOMB_X76_Y46_N4
\mdly[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[11]~41_combout\ = (mdly(11) & (!\mdly[10]~40\)) # (!mdly(11) & ((\mdly[10]~40\) # (GND)))
-- \mdly[11]~42\ = CARRY((!\mdly[10]~40\) # (!mdly(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(11),
	datad => VCC,
	cin => \mdly[10]~40\,
	combout => \mdly[11]~41_combout\,
	cout => \mdly[11]~42\);

-- Location: FF_X76_Y46_N5
\mdly[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[11]~41_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(11));

-- Location: LCCOMB_X76_Y46_N24
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!mdly(9)) # (!mdly(11))) # (!mdly(10))) # (!mdly(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(12),
	datab => mdly(10),
	datac => mdly(11),
	datad => mdly(9),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X76_Y46_N8
\mdly[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[13]~45_combout\ = (mdly(13) & (!\mdly[12]~44\)) # (!mdly(13) & ((\mdly[12]~44\) # (GND)))
-- \mdly[13]~46\ = CARRY((!\mdly[12]~44\) # (!mdly(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(13),
	datad => VCC,
	cin => \mdly[12]~44\,
	combout => \mdly[13]~45_combout\,
	cout => \mdly[13]~46\);

-- Location: FF_X76_Y46_N9
\mdly[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[13]~45_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(13));

-- Location: LCCOMB_X76_Y46_N10
\mdly[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[14]~47_combout\ = (mdly(14) & (\mdly[13]~46\ $ (GND))) # (!mdly(14) & (!\mdly[13]~46\ & VCC))
-- \mdly[14]~48\ = CARRY((mdly(14) & !\mdly[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(14),
	datad => VCC,
	cin => \mdly[13]~46\,
	combout => \mdly[14]~47_combout\,
	cout => \mdly[14]~48\);

-- Location: FF_X76_Y46_N11
\mdly[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[14]~47_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(14));

-- Location: LCCOMB_X76_Y46_N12
\mdly[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[15]~49_combout\ = (mdly(15) & (!\mdly[14]~48\)) # (!mdly(15) & ((\mdly[14]~48\) # (GND)))
-- \mdly[15]~50\ = CARRY((!\mdly[14]~48\) # (!mdly(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(15),
	datad => VCC,
	cin => \mdly[14]~48\,
	combout => \mdly[15]~49_combout\,
	cout => \mdly[15]~50\);

-- Location: FF_X76_Y46_N13
\mdly[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[15]~49_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(15));

-- Location: FF_X76_Y46_N15
\mdly[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[16]~51_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(16));

-- Location: LCCOMB_X76_Y46_N18
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!mdly(15)) # (!mdly(16))) # (!mdly(13))) # (!mdly(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(14),
	datab => mdly(13),
	datac => mdly(16),
	datad => mdly(15),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X76_Y47_N10
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (mdly(17) & (!\LessThan1~2_combout\ & (!\LessThan1~3_combout\ & !\LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(17),
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X76_Y46_N22
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\mlcd_st.000001~q\ & ((\u0|odone~q\) # ((\mlcd_st.000010~q\ & !\LessThan1~5_combout\)))) # (!\mlcd_st.000001~q\ & (((\mlcd_st.000010~q\ & !\LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000001~q\,
	datab => \u0|odone~q\,
	datac => \mlcd_st.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X76_Y46_N23
\mlcd_st.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000010~q\);

-- Location: LCCOMB_X76_Y46_N26
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\mlcd_st.000010~q\ & \LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mlcd_st.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X76_Y46_N27
\mlcd_st.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000011~q\);

-- Location: LCCOMB_X75_Y47_N26
\lut_index[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~17_combout\ = (\mlcd_st.000011~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000011~q\,
	datac => \LessThan0~1_combout\,
	combout => \lut_index[7]~17_combout\);

-- Location: FF_X75_Y47_N5
\lut_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[1]~7_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(1));

-- Location: LCCOMB_X75_Y47_N6
\lut_index[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[2]~9_combout\ = (lut_index(2) & (!\lut_index[1]~8\)) # (!lut_index(2) & ((\lut_index[1]~8\) # (GND)))
-- \lut_index[2]~10\ = CARRY((!\lut_index[1]~8\) # (!lut_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(2),
	datad => VCC,
	cin => \lut_index[1]~8\,
	combout => \lut_index[2]~9_combout\,
	cout => \lut_index[2]~10\);

-- Location: FF_X75_Y47_N7
\lut_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[2]~9_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(2));

-- Location: LCCOMB_X75_Y47_N8
\lut_index[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[3]~11_combout\ = (lut_index(3) & (\lut_index[2]~10\ $ (GND))) # (!lut_index(3) & (!\lut_index[2]~10\ & VCC))
-- \lut_index[3]~12\ = CARRY((lut_index(3) & !\lut_index[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datad => VCC,
	cin => \lut_index[2]~10\,
	combout => \lut_index[3]~11_combout\,
	cout => \lut_index[3]~12\);

-- Location: LCCOMB_X75_Y47_N10
\lut_index[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[4]~13_combout\ = (lut_index(4) & (!\lut_index[3]~12\)) # (!lut_index(4) & ((\lut_index[3]~12\) # (GND)))
-- \lut_index[4]~14\ = CARRY((!\lut_index[3]~12\) # (!lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(4),
	datad => VCC,
	cin => \lut_index[3]~12\,
	combout => \lut_index[4]~13_combout\,
	cout => \lut_index[4]~14\);

-- Location: FF_X75_Y47_N11
\lut_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[4]~13_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(4));

-- Location: LCCOMB_X75_Y47_N12
\lut_index[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[5]~15_combout\ = (lut_index(5) & (\lut_index[4]~14\ $ (GND))) # (!lut_index(5) & (!\lut_index[4]~14\ & VCC))
-- \lut_index[5]~16\ = CARRY((lut_index(5) & !\lut_index[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(5),
	datad => VCC,
	cin => \lut_index[4]~14\,
	combout => \lut_index[5]~15_combout\,
	cout => \lut_index[5]~16\);

-- Location: FF_X75_Y47_N13
\lut_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[5]~15_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(5));

-- Location: LCCOMB_X75_Y47_N14
\lut_index[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[6]~19_combout\ = (lut_index(6) & (!\lut_index[5]~16\)) # (!lut_index(6) & ((\lut_index[5]~16\) # (GND)))
-- \lut_index[6]~20\ = CARRY((!\lut_index[5]~16\) # (!lut_index(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(6),
	datad => VCC,
	cin => \lut_index[5]~16\,
	combout => \lut_index[6]~19_combout\,
	cout => \lut_index[6]~20\);

-- Location: FF_X75_Y47_N15
\lut_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[6]~19_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(6));

-- Location: LCCOMB_X75_Y47_N16
\lut_index[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~21_combout\ = lut_index(7) $ (!\lut_index[6]~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(7),
	cin => \lut_index[6]~20\,
	combout => \lut_index[7]~21_combout\);

-- Location: FF_X75_Y47_N17
\lut_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[7]~21_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(7));

-- Location: FF_X75_Y47_N9
\lut_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[3]~11_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(3));

-- Location: LCCOMB_X75_Y47_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!lut_index(4) & (!lut_index(3) & ((!lut_index(2)) # (!lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(3),
	datac => lut_index(1),
	datad => lut_index(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y47_N18
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!lut_index(7) & (!lut_index(6) & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(7),
	datac => lut_index(6),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y47_N0
\lut_index[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[0]~18_combout\ = lut_index(0) $ (((\mlcd_st.000011~q\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000011~q\,
	datac => lut_index(0),
	datad => \LessThan0~1_combout\,
	combout => \lut_index[0]~18_combout\);

-- Location: FF_X74_Y47_N1
\lut_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[0]~18_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(0));

-- Location: LCCOMB_X73_Y47_N0
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (lut_index(3) & (lut_index(2) $ ((lut_index(1))))) # (!lut_index(3) & (lut_index(2) & ((!lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(3),
	datac => lut_index(1),
	datad => lut_index(4),
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X73_Y47_N6
\WideOr8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~2_combout\ = (\WideOr8~1_combout\ & (!lut_index(5) & (\WideOr8~0_combout\ $ (lut_index(0))))) # (!\WideOr8~1_combout\ & ((\WideOr8~0_combout\ & (lut_index(0) $ (lut_index(5)))) # (!\WideOr8~0_combout\ & (lut_index(0) & lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~1_combout\,
	datab => \WideOr8~0_combout\,
	datac => lut_index(0),
	datad => lut_index(5),
	combout => \WideOr8~2_combout\);

-- Location: LCCOMB_X73_Y47_N10
\WideOr8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~3_combout\ = (\WideOr8~1_combout\ & (((\WideOr8~2_combout\)))) # (!\WideOr8~1_combout\ & ((lut_index(0) & (lut_index(1) & \WideOr8~2_combout\)) # (!lut_index(0) & (lut_index(1) $ (\WideOr8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~1_combout\,
	datab => lut_index(0),
	datac => lut_index(1),
	datad => \WideOr8~2_combout\,
	combout => \WideOr8~3_combout\);

-- Location: LCCOMB_X76_Y47_N0
\mlcd_st.000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000000~0_combout\ = (\mlcd_st~19_combout\ & ((\mlcd_st.000000~q\))) # (!\mlcd_st~19_combout\ & (!\mlcd_st.000011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000011~q\,
	datac => \mlcd_st.000000~q\,
	datad => \mlcd_st~19_combout\,
	combout => \mlcd_st.000000~0_combout\);

-- Location: FF_X76_Y47_N1
\mlcd_st.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mlcd_st.000000~0_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000000~q\);

-- Location: LCCOMB_X75_Y47_N20
\mlcd_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[0]~0_combout\ = (!\mlcd_st.000000~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mlcd_st.000000~q\,
	datad => \LessThan0~1_combout\,
	combout => \mlcd_data[0]~0_combout\);

-- Location: FF_X73_Y47_N11
\mlcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr8~3_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(0));

-- Location: LCCOMB_X74_Y47_N10
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (lut_index(0) & (!lut_index(5) & !lut_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(0),
	datac => lut_index(5),
	datad => lut_index(2),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X74_Y47_N28
\WideOr7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~2_combout\ = (lut_index(1) & (lut_index(3) & (lut_index(4) & \WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(3),
	datac => lut_index(4),
	datad => \WideOr4~0_combout\,
	combout => \WideOr7~2_combout\);

-- Location: LCCOMB_X73_Y47_N28
\WideOr7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~3_combout\ = (lut_index(1) & (lut_index(0) $ (lut_index(3) $ (lut_index(2))))) # (!lut_index(1) & (lut_index(0) & (lut_index(3) & !lut_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(0),
	datac => lut_index(3),
	datad => lut_index(2),
	combout => \WideOr7~3_combout\);

-- Location: LCCOMB_X74_Y47_N26
\WideOr7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~7_combout\ = (!lut_index(4) & (!lut_index(5) & \WideOr7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(4),
	datac => lut_index(5),
	datad => \WideOr7~3_combout\,
	combout => \WideOr7~7_combout\);

-- Location: LCCOMB_X73_Y47_N14
\WideOr7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~4_combout\ = (!lut_index(4) & (!lut_index(0) & (!lut_index(3) & lut_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(0),
	datac => lut_index(3),
	datad => lut_index(5),
	combout => \WideOr7~4_combout\);

-- Location: LCCOMB_X74_Y47_N6
\WideOr7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~5_combout\ = (!lut_index(1) & \WideOr7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datad => \WideOr7~4_combout\,
	combout => \WideOr7~5_combout\);

-- Location: LCCOMB_X74_Y47_N8
\WideOr7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~6_combout\ = (\WideOr7~2_combout\) # ((\WideOr7~7_combout\) # ((!lut_index(2) & \WideOr7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \WideOr7~2_combout\,
	datac => \WideOr7~7_combout\,
	datad => \WideOr7~5_combout\,
	combout => \WideOr7~6_combout\);

-- Location: FF_X74_Y47_N9
\mlcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr7~6_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(1));

-- Location: LCCOMB_X73_Y47_N8
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (lut_index(3) & ((lut_index(1)) # ((!lut_index(0))))) # (!lut_index(3) & ((lut_index(2) & (lut_index(1))) # (!lut_index(2) & ((lut_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(0),
	datac => lut_index(3),
	datad => lut_index(2),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X74_Y47_N20
\WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~2_combout\ = (lut_index(4) & (\WideOr6~1_combout\)) # (!lut_index(4) & ((\WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr6~1_combout\,
	datac => lut_index(4),
	datad => \WideOr6~0_combout\,
	combout => \WideOr6~2_combout\);

-- Location: LCCOMB_X74_Y47_N2
\WideOr6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~3_combout\ = (lut_index(2) & ((\WideOr7~5_combout\) # ((\WideOr6~2_combout\ & !lut_index(5))))) # (!lut_index(2) & (\WideOr6~2_combout\ & (!lut_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \WideOr6~2_combout\,
	datac => lut_index(5),
	datad => \WideOr7~5_combout\,
	combout => \WideOr6~3_combout\);

-- Location: FF_X74_Y47_N3
\mlcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr6~3_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(2));

-- Location: LCCOMB_X75_Y47_N0
\WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (\WideOr5~0_combout\ & ((lut_index(4) & (lut_index(1) $ (lut_index(3)))) # (!lut_index(4) & ((lut_index(3)) # (!lut_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => lut_index(4),
	datac => lut_index(1),
	datad => lut_index(3),
	combout => \WideOr5~1_combout\);

-- Location: FF_X75_Y47_N1
\mlcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr5~1_combout\,
	clrn => \btn[0]~input_o\,
	sclr => lut_index(5),
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(3));

-- Location: LCCOMB_X75_Y47_N22
\WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (lut_index(2) & ((lut_index(0)) # (lut_index(1) $ (!lut_index(5))))) # (!lut_index(2) & (!lut_index(5) & ((lut_index(0)) # (lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => lut_index(1),
	datad => lut_index(5),
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X73_Y47_N20
\WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (lut_index(2) & (!lut_index(0) & (lut_index(1) & !lut_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(0),
	datac => lut_index(1),
	datad => lut_index(5),
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X74_Y47_N16
\WideOr4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~3_combout\ = (lut_index(4) & (((lut_index(3))))) # (!lut_index(4) & ((lut_index(3) & ((\WideOr4~1_combout\))) # (!lut_index(3) & (!\WideOr4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => \WideOr4~2_combout\,
	datac => lut_index(3),
	datad => \WideOr4~1_combout\,
	combout => \WideOr4~3_combout\);

-- Location: LCCOMB_X74_Y47_N12
\WideOr4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~4_combout\ = (lut_index(4) & (\WideOr4~0_combout\ & ((\WideOr4~3_combout\) # (!lut_index(1))))) # (!lut_index(4) & (((\WideOr4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr4~3_combout\,
	datac => lut_index(4),
	datad => lut_index(1),
	combout => \WideOr4~4_combout\);

-- Location: FF_X74_Y47_N13
\mlcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr4~4_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(4));

-- Location: LCCOMB_X73_Y47_N16
\WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (lut_index(2) & ((lut_index(0) $ (!lut_index(4))))) # (!lut_index(2) & (!lut_index(4) & ((lut_index(1)) # (lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => lut_index(4),
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X73_Y47_N4
\WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~2_combout\ = (\WideOr3~0_combout\) # ((lut_index(5)) # ((!\WideOr3~1_combout\ & !lut_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~0_combout\,
	datab => \WideOr3~1_combout\,
	datac => lut_index(3),
	datad => lut_index(5),
	combout => \WideOr3~2_combout\);

-- Location: FF_X73_Y47_N5
\mlcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr3~2_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(5));

-- Location: LCCOMB_X73_Y47_N12
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (lut_index(3) & (((lut_index(1)) # (!lut_index(2))))) # (!lut_index(3) & (lut_index(1) & (lut_index(4) $ (lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(3),
	datac => lut_index(1),
	datad => lut_index(2),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X73_Y47_N24
\WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\WideOr2~0_combout\) # ((lut_index(3) & ((!lut_index(0)))) # (!lut_index(3) & (lut_index(4) & lut_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(3),
	datac => lut_index(0),
	datad => \WideOr2~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: FF_X73_Y47_N25
\mlcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr2~1_combout\,
	clrn => \btn[0]~input_o\,
	sclr => lut_index(5),
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(6));

-- Location: LCCOMB_X75_Y47_N24
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (lut_index(2) & (!lut_index(5) & (lut_index(0) $ (!lut_index(4))))) # (!lut_index(2) & (lut_index(0) & (lut_index(5) & !lut_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => lut_index(5),
	datad => lut_index(4),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X74_Y47_N22
\WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (!lut_index(1) & (!lut_index(3) & \WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datac => lut_index(3),
	datad => \WideOr1~0_combout\,
	combout => \WideOr1~1_combout\);

-- Location: FF_X74_Y47_N23
\mlcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr1~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(7));

-- Location: LCCOMB_X73_Y47_N18
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (lut_index(2) & ((lut_index(1)) # (lut_index(0) $ (lut_index(4))))) # (!lut_index(2) & (((lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => lut_index(4),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X73_Y47_N22
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (lut_index(5)) # ((lut_index(3)) # (\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(5),
	datac => lut_index(3),
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: FF_X73_Y47_N23
mlcd_rs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr0~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_rs~q\);

-- Location: LCCOMB_X74_Y46_N8
\u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector3~0_combout\ = (\u0|state.01~q\) # ((\u0|lcd_en~q\ & ((\u0|state.10~q\) # (!\u0|state.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|state.00~q\,
	datac => \u0|lcd_en~q\,
	datad => \u0|state.01~q\,
	combout => \u0|Selector3~0_combout\);

-- Location: FF_X74_Y46_N9
\u0|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|Selector3~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|lcd_en~q\);

-- Location: IOIBUF_X115_Y53_N15
\btn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(1),
	o => \btn[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\btn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(2),
	o => \btn[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\btn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(3),
	o => \btn[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

ww_lcd_on <= \lcd_on~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;
END structure;


