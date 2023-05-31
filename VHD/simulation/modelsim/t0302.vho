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

-- DATE "05/31/2023 22:55:51"

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
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_on	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \mdly[4]~26_combout\ : std_logic;
SIGNAL \mdly[6]~30_combout\ : std_logic;
SIGNAL \mdly[16]~52\ : std_logic;
SIGNAL \mdly[17]~53_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \Selector12~12_combout\ : std_logic;
SIGNAL \string_data[10][0][0]~q\ : std_logic;
SIGNAL \string_data[10][1][2]~q\ : std_logic;
SIGNAL \Selector12~32_combout\ : std_logic;
SIGNAL \string_data[10][0][2]~q\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector6~8_combout\ : std_logic;
SIGNAL \u0|state.10~q\ : std_logic;
SIGNAL \string_state.00~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \string_state.01~q\ : std_logic;
SIGNAL \string_state.11~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \Selector12~37_combout\ : std_logic;
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
SIGNAL \btn[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
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
SIGNAL \mlcd_st.000001~2_combout\ : std_logic;
SIGNAL \mlcd_st~18_combout\ : std_logic;
SIGNAL \lut_index[3]~14\ : std_logic;
SIGNAL \lut_index[4]~16\ : std_logic;
SIGNAL \lut_index[5]~17_combout\ : std_logic;
SIGNAL \lut_index[5]~18\ : std_logic;
SIGNAL \lut_index[6]~19_combout\ : std_logic;
SIGNAL \lut_index[6]~20\ : std_logic;
SIGNAL \lut_index[7]~21_combout\ : std_logic;
SIGNAL \lut_index[2]~11_combout\ : std_logic;
SIGNAL \lut_index[4]~15_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \mdly[0]~18_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \mdly[17]~38_combout\ : std_logic;
SIGNAL \mdly[0]~19\ : std_logic;
SIGNAL \mdly[1]~20_combout\ : std_logic;
SIGNAL \mdly[1]~21\ : std_logic;
SIGNAL \mdly[2]~22_combout\ : std_logic;
SIGNAL \mdly[2]~23\ : std_logic;
SIGNAL \mdly[3]~24_combout\ : std_logic;
SIGNAL \mdly[3]~25\ : std_logic;
SIGNAL \mdly[4]~27\ : std_logic;
SIGNAL \mdly[5]~28_combout\ : std_logic;
SIGNAL \mdly[5]~29\ : std_logic;
SIGNAL \mdly[6]~31\ : std_logic;
SIGNAL \mdly[7]~32_combout\ : std_logic;
SIGNAL \mdly[7]~33\ : std_logic;
SIGNAL \mdly[8]~35\ : std_logic;
SIGNAL \mdly[9]~36_combout\ : std_logic;
SIGNAL \mdly[9]~37\ : std_logic;
SIGNAL \mdly[10]~40\ : std_logic;
SIGNAL \mdly[11]~41_combout\ : std_logic;
SIGNAL \mdly[10]~39_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \mdly[8]~34_combout\ : std_logic;
SIGNAL \mdly[11]~42\ : std_logic;
SIGNAL \mdly[12]~43_combout\ : std_logic;
SIGNAL \mdly[12]~44\ : std_logic;
SIGNAL \mdly[13]~45_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \mdly[13]~46\ : std_logic;
SIGNAL \mdly[14]~47_combout\ : std_logic;
SIGNAL \mdly[14]~48\ : std_logic;
SIGNAL \mdly[15]~50\ : std_logic;
SIGNAL \mdly[16]~51_combout\ : std_logic;
SIGNAL \mdly[15]~49_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mlcd_st~19_combout\ : std_logic;
SIGNAL \mlcd_st.000001~3_combout\ : std_logic;
SIGNAL \mlcd_st.000001~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \mlcd_start~q\ : std_logic;
SIGNAL \u0|prestart~q\ : std_logic;
SIGNAL \u0|odone~0_combout\ : std_logic;
SIGNAL \u0|state.00~0_combout\ : std_logic;
SIGNAL \u0|mstart~0_combout\ : std_logic;
SIGNAL \u0|mstart~q\ : std_logic;
SIGNAL \u0|state.00~q\ : std_logic;
SIGNAL \u0|state.01~0_combout\ : std_logic;
SIGNAL \u0|state.01~q\ : std_logic;
SIGNAL \u0|cont~0_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|state~14_combout\ : std_logic;
SIGNAL \u0|state.11~q\ : std_logic;
SIGNAL \u0|odone~1_combout\ : std_logic;
SIGNAL \u0|odone~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \mlcd_st.000010~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mlcd_st.000011~q\ : std_logic;
SIGNAL \lut_index[7]~9_combout\ : std_logic;
SIGNAL \lut_index[1]~8\ : std_logic;
SIGNAL \lut_index[2]~12\ : std_logic;
SIGNAL \lut_index[3]~13_combout\ : std_logic;
SIGNAL \lut_index[0]~10_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \string_data[1][0][0]~0_combout\ : std_logic;
SIGNAL \string_data[1][0][0]~q\ : std_logic;
SIGNAL \Selector12~24_combout\ : std_logic;
SIGNAL \Selector12~22_combout\ : std_logic;
SIGNAL \Selector12~23_combout\ : std_logic;
SIGNAL \Selector12~25_combout\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \Selector12~13_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \string_state.10~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \string_data[10][1][0]~q\ : std_logic;
SIGNAL \Selector12~19_combout\ : std_logic;
SIGNAL \Selector12~14_combout\ : std_logic;
SIGNAL \Selector12~15_combout\ : std_logic;
SIGNAL \Selector12~18_combout\ : std_logic;
SIGNAL \Selector12~20_combout\ : std_logic;
SIGNAL \Selector12~21_combout\ : std_logic;
SIGNAL \Selector12~26_combout\ : std_logic;
SIGNAL \mlcd_st.000000~0_combout\ : std_logic;
SIGNAL \mlcd_st.000000~q\ : std_logic;
SIGNAL \mlcd_data[0]~0_combout\ : std_logic;
SIGNAL \Selector12~28_combout\ : std_logic;
SIGNAL \Selector12~29_combout\ : std_logic;
SIGNAL \Selector12~27_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \string_data[10][1][1]~q\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \string_data[10][0][1]~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \Selector11~5_combout\ : std_logic;
SIGNAL \Selector12~35_combout\ : std_logic;
SIGNAL \Selector12~34_combout\ : std_logic;
SIGNAL \Selector12~36_combout\ : std_logic;
SIGNAL \Selector12~31_combout\ : std_logic;
SIGNAL \Selector12~38_combout\ : std_logic;
SIGNAL \Selector12~16_combout\ : std_logic;
SIGNAL \Selector12~17_combout\ : std_logic;
SIGNAL \Selector12~33_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector12~30_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Selector12~40_combout\ : std_logic;
SIGNAL \Selector12~41_combout\ : std_logic;
SIGNAL \Selector12~39_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \Selector6~7_combout\ : std_logic;
SIGNAL \Selector6~6_combout\ : std_logic;
SIGNAL \Selector6~10_combout\ : std_logic;
SIGNAL \Selector6~9_combout\ : std_logic;
SIGNAL \lut_data~0_combout\ : std_logic;
SIGNAL \lut_data~1_combout\ : std_logic;
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

-- Location: FF_X69_Y32_N23
\mdly[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[4]~26_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(4));

-- Location: FF_X69_Y31_N17
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(17));

-- Location: FF_X69_Y32_N27
\mdly[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[6]~30_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(6));

-- Location: LCCOMB_X69_Y32_N22
\mdly[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[4]~26_combout\ = (mdly(4) & (\mdly[3]~25\ $ (GND))) # (!mdly(4) & (!\mdly[3]~25\ & VCC))
-- \mdly[4]~27\ = CARRY((mdly(4) & !\mdly[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(4),
	datad => VCC,
	cin => \mdly[3]~25\,
	combout => \mdly[4]~26_combout\,
	cout => \mdly[4]~27\);

-- Location: LCCOMB_X69_Y32_N26
\mdly[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[6]~30_combout\ = (mdly(6) & (\mdly[5]~29\ $ (GND))) # (!mdly(6) & (!\mdly[5]~29\ & VCC))
-- \mdly[6]~31\ = CARRY((mdly(6) & !\mdly[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(6),
	datad => VCC,
	cin => \mdly[5]~29\,
	combout => \mdly[6]~30_combout\,
	cout => \mdly[6]~31\);

-- Location: LCCOMB_X69_Y31_N14
\mdly[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[16]~51_combout\ = (mdly(16) & (\mdly[15]~50\ $ (GND))) # (!mdly(16) & (!\mdly[15]~50\ & VCC))
-- \mdly[16]~52\ = CARRY((mdly(16) & !\mdly[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(16),
	datad => VCC,
	cin => \mdly[15]~50\,
	combout => \mdly[16]~51_combout\,
	cout => \mdly[16]~52\);

-- Location: LCCOMB_X69_Y31_N16
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

-- Location: LCCOMB_X73_Y32_N16
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

-- Location: LCCOMB_X73_Y32_N18
\u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = \u0|cont\(4) $ (!\u0|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(4),
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\);

-- Location: LCCOMB_X67_Y32_N24
\Selector12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~12_combout\ = (lut_index(4) & (!lut_index(0) & (lut_index(1) & !\string_data[1][0][0]~q\))) # (!lut_index(4) & (lut_index(0) & ((\string_data[1][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(0),
	datac => lut_index(1),
	datad => \string_data[1][0][0]~q\,
	combout => \Selector12~12_combout\);

-- Location: FF_X69_Y31_N21
\string_data[10][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[10][0][0]~q\);

-- Location: FF_X69_Y31_N19
\string_data[10][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[10][1][2]~q\);

-- Location: LCCOMB_X67_Y32_N30
\Selector12~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~32_combout\ = (lut_index(5) & ((lut_index(0) & (!\string_data[1][0][0]~q\)) # (!lut_index(0) & ((\string_data[10][1][2]~q\))))) # (!lut_index(5) & (((lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => \string_data[1][0][0]~q\,
	datac => lut_index(0),
	datad => \string_data[10][1][2]~q\,
	combout => \Selector12~32_combout\);

-- Location: FF_X69_Y31_N29
\string_data[10][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[10][0][2]~q\);

-- Location: LCCOMB_X68_Y32_N10
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (!lut_index(0) & (\Selector12~16_combout\ & (lut_index(3) $ (\string_data[1][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(0),
	datac => \Selector12~16_combout\,
	datad => \string_data[1][0][0]~q\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X65_Y32_N30
\Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~8_combout\ = ((lut_index(0) & (lut_index(1) $ (!lut_index(4)))) # (!lut_index(0) & ((lut_index(1)) # (lut_index(4))))) # (!lut_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => lut_index(2),
	datad => lut_index(4),
	combout => \Selector6~8_combout\);

-- Location: FF_X73_Y32_N27
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

-- Location: FF_X70_Y31_N3
\string_state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.00~q\);

-- Location: LCCOMB_X69_Y31_N20
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\sw[3]~input_o\ & ((\string_state.10~q\) # (!\string_state.00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.00~q\,
	datab => \string_state.10~q\,
	datac => \sw[3]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X69_Y32_N6
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!mdly(5)) # (!mdly(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mdly(6),
	datad => mdly(5),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X68_Y32_N26
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((\LessThan1~3_combout\) # (!mdly(17))) # (!mdly(7))) # (!mdly(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(3),
	datab => mdly(7),
	datac => mdly(17),
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: FF_X70_Y31_N21
\string_state.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.01~q\);

-- Location: FF_X70_Y31_N7
\string_state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.11~q\);

-- Location: LCCOMB_X69_Y31_N18
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\string_state.11~q\ & \sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.11~q\,
	datac => \sw[3]~input_o\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X69_Y31_N28
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\string_state.11~q\ & !\sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.11~q\,
	datac => \sw[3]~input_o\,
	combout => \Selector16~0_combout\);

-- Location: FF_X73_Y32_N23
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

-- Location: LCCOMB_X73_Y32_N26
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

-- Location: LCCOMB_X70_Y31_N2
\Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (\sw[1]~input_o\) # (\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X70_Y31_N20
\Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (!\sw[1]~input_o\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X70_Y31_N6
\Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (\sw[1]~input_o\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Decoder1~3_combout\);

-- Location: LCCOMB_X73_Y32_N30
\u0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (\u0|cont\(3) & \u0|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|cont\(3),
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y32_N22
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

-- Location: LCCOMB_X67_Y32_N20
\Selector12~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~37_combout\ = (!lut_index(5) & (!lut_index(7) & (!lut_index(6) & \Selector12~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(7),
	datac => lut_index(6),
	datad => \Selector12~12_combout\,
	combout => \Selector12~37_combout\);

-- Location: IOOBUF_X115_Y65_N16
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X115_Y32_N9
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

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X115_Y32_N2
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

-- Location: LCCOMB_X67_Y32_N4
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

-- Location: LCCOMB_X70_Y32_N4
\mlcd_st.000001~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000001~2_combout\ = (!\mlcd_st.000001~q\ & (!\mlcd_st.000011~q\ & !\mlcd_st.000010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000001~q\,
	datab => \mlcd_st.000011~q\,
	datad => \mlcd_st.000010~q\,
	combout => \mlcd_st.000001~2_combout\);

-- Location: LCCOMB_X70_Y32_N22
\mlcd_st~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~18_combout\ = (\mlcd_st.000001~q\ & !\u0|odone~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000001~q\,
	datad => \u0|odone~q\,
	combout => \mlcd_st~18_combout\);

-- Location: LCCOMB_X67_Y32_N8
\lut_index[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[3]~13_combout\ = (lut_index(3) & (\lut_index[2]~12\ $ (GND))) # (!lut_index(3) & (!\lut_index[2]~12\ & VCC))
-- \lut_index[3]~14\ = CARRY((lut_index(3) & !\lut_index[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(3),
	datad => VCC,
	cin => \lut_index[2]~12\,
	combout => \lut_index[3]~13_combout\,
	cout => \lut_index[3]~14\);

-- Location: LCCOMB_X67_Y32_N10
\lut_index[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[4]~15_combout\ = (lut_index(4) & (!\lut_index[3]~14\)) # (!lut_index(4) & ((\lut_index[3]~14\) # (GND)))
-- \lut_index[4]~16\ = CARRY((!\lut_index[3]~14\) # (!lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datad => VCC,
	cin => \lut_index[3]~14\,
	combout => \lut_index[4]~15_combout\,
	cout => \lut_index[4]~16\);

-- Location: LCCOMB_X67_Y32_N12
\lut_index[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[5]~17_combout\ = (lut_index(5) & (\lut_index[4]~16\ $ (GND))) # (!lut_index(5) & (!\lut_index[4]~16\ & VCC))
-- \lut_index[5]~18\ = CARRY((lut_index(5) & !\lut_index[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datad => VCC,
	cin => \lut_index[4]~16\,
	combout => \lut_index[5]~17_combout\,
	cout => \lut_index[5]~18\);

-- Location: FF_X67_Y32_N13
\lut_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[5]~17_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(5));

-- Location: LCCOMB_X67_Y32_N14
\lut_index[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[6]~19_combout\ = (lut_index(6) & (!\lut_index[5]~18\)) # (!lut_index(6) & ((\lut_index[5]~18\) # (GND)))
-- \lut_index[6]~20\ = CARRY((!\lut_index[5]~18\) # (!lut_index(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(6),
	datad => VCC,
	cin => \lut_index[5]~18\,
	combout => \lut_index[6]~19_combout\,
	cout => \lut_index[6]~20\);

-- Location: FF_X67_Y32_N15
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
	ena => \lut_index[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(6));

-- Location: LCCOMB_X67_Y32_N16
\lut_index[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~21_combout\ = \lut_index[6]~20\ $ (!lut_index(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => lut_index(7),
	cin => \lut_index[6]~20\,
	combout => \lut_index[7]~21_combout\);

-- Location: FF_X67_Y32_N17
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
	ena => \lut_index[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(7));

-- Location: LCCOMB_X67_Y32_N6
\lut_index[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[2]~11_combout\ = (lut_index(2) & (!\lut_index[1]~8\)) # (!lut_index(2) & ((\lut_index[1]~8\) # (GND)))
-- \lut_index[2]~12\ = CARRY((!\lut_index[1]~8\) # (!lut_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datad => VCC,
	cin => \lut_index[1]~8\,
	combout => \lut_index[2]~11_combout\,
	cout => \lut_index[2]~12\);

-- Location: FF_X67_Y32_N7
\lut_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[2]~11_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(2));

-- Location: FF_X67_Y32_N11
\lut_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[4]~15_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(4));

-- Location: LCCOMB_X68_Y32_N20
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!lut_index(3) & (!lut_index(4) & ((!lut_index(1)) # (!lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(2),
	datac => lut_index(1),
	datad => lut_index(4),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X68_Y32_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!lut_index(6) & (!lut_index(7) & ((\LessThan0~2_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datab => lut_index(5),
	datac => lut_index(7),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X69_Y32_N14
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

-- Location: LCCOMB_X66_Y32_N6
\Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (!lut_index(6) & !lut_index(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(6),
	datad => lut_index(7),
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X70_Y32_N30
\mdly[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~38_combout\ = (\mlcd_st.000010~q\ & (\Selector6~4_combout\ & ((\LessThan0~2_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => \mlcd_st.000010~q\,
	datac => \LessThan0~2_combout\,
	datad => \Selector6~4_combout\,
	combout => \mdly[17]~38_combout\);

-- Location: FF_X69_Y32_N15
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(0));

-- Location: LCCOMB_X69_Y32_N16
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

-- Location: FF_X69_Y32_N17
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(1));

-- Location: LCCOMB_X69_Y32_N18
\mdly[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[2]~22_combout\ = (mdly(2) & (\mdly[1]~21\ $ (GND))) # (!mdly(2) & (!\mdly[1]~21\ & VCC))
-- \mdly[2]~23\ = CARRY((mdly(2) & !\mdly[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(2),
	datad => VCC,
	cin => \mdly[1]~21\,
	combout => \mdly[2]~22_combout\,
	cout => \mdly[2]~23\);

-- Location: FF_X69_Y32_N19
\mdly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[2]~22_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(2));

-- Location: LCCOMB_X69_Y32_N20
\mdly[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[3]~24_combout\ = (mdly(3) & (!\mdly[2]~23\)) # (!mdly(3) & ((\mdly[2]~23\) # (GND)))
-- \mdly[3]~25\ = CARRY((!\mdly[2]~23\) # (!mdly(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(3),
	datad => VCC,
	cin => \mdly[2]~23\,
	combout => \mdly[3]~24_combout\,
	cout => \mdly[3]~25\);

-- Location: FF_X69_Y32_N21
\mdly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[3]~24_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(3));

-- Location: LCCOMB_X69_Y32_N24
\mdly[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[5]~28_combout\ = (mdly(5) & (!\mdly[4]~27\)) # (!mdly(5) & ((\mdly[4]~27\) # (GND)))
-- \mdly[5]~29\ = CARRY((!\mdly[4]~27\) # (!mdly(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(5),
	datad => VCC,
	cin => \mdly[4]~27\,
	combout => \mdly[5]~28_combout\,
	cout => \mdly[5]~29\);

-- Location: FF_X69_Y32_N25
\mdly[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[5]~28_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(5));

-- Location: LCCOMB_X69_Y32_N28
\mdly[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[7]~32_combout\ = (mdly(7) & (!\mdly[6]~31\)) # (!mdly(7) & ((\mdly[6]~31\) # (GND)))
-- \mdly[7]~33\ = CARRY((!\mdly[6]~31\) # (!mdly(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(7),
	datad => VCC,
	cin => \mdly[6]~31\,
	combout => \mdly[7]~32_combout\,
	cout => \mdly[7]~33\);

-- Location: FF_X69_Y32_N29
\mdly[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[7]~32_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(7));

-- Location: LCCOMB_X69_Y32_N30
\mdly[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[8]~34_combout\ = (mdly(8) & (\mdly[7]~33\ $ (GND))) # (!mdly(8) & (!\mdly[7]~33\ & VCC))
-- \mdly[8]~35\ = CARRY((mdly(8) & !\mdly[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(8),
	datad => VCC,
	cin => \mdly[7]~33\,
	combout => \mdly[8]~34_combout\,
	cout => \mdly[8]~35\);

-- Location: LCCOMB_X69_Y31_N0
\mdly[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[9]~36_combout\ = (mdly(9) & (!\mdly[8]~35\)) # (!mdly(9) & ((\mdly[8]~35\) # (GND)))
-- \mdly[9]~37\ = CARRY((!\mdly[8]~35\) # (!mdly(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(9),
	datad => VCC,
	cin => \mdly[8]~35\,
	combout => \mdly[9]~36_combout\,
	cout => \mdly[9]~37\);

-- Location: FF_X69_Y31_N1
\mdly[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[9]~36_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(9));

-- Location: LCCOMB_X69_Y31_N2
\mdly[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[10]~39_combout\ = (mdly(10) & (\mdly[9]~37\ $ (GND))) # (!mdly(10) & (!\mdly[9]~37\ & VCC))
-- \mdly[10]~40\ = CARRY((mdly(10) & !\mdly[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(10),
	datad => VCC,
	cin => \mdly[9]~37\,
	combout => \mdly[10]~39_combout\,
	cout => \mdly[10]~40\);

-- Location: LCCOMB_X69_Y31_N4
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

-- Location: FF_X69_Y31_N5
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(11));

-- Location: FF_X69_Y31_N3
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(10));

-- Location: LCCOMB_X69_Y31_N22
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!mdly(10)) # (!mdly(11))) # (!mdly(9))) # (!mdly(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(12),
	datab => mdly(9),
	datac => mdly(11),
	datad => mdly(10),
	combout => \LessThan1~0_combout\);

-- Location: FF_X69_Y32_N31
\mdly[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdly[8]~34_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(8));

-- Location: LCCOMB_X69_Y31_N6
\mdly[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[12]~43_combout\ = (mdly(12) & (\mdly[11]~42\ $ (GND))) # (!mdly(12) & (!\mdly[11]~42\ & VCC))
-- \mdly[12]~44\ = CARRY((mdly(12) & !\mdly[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(12),
	datad => VCC,
	cin => \mdly[11]~42\,
	combout => \mdly[12]~43_combout\,
	cout => \mdly[12]~44\);

-- Location: FF_X69_Y31_N7
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(12));

-- Location: LCCOMB_X69_Y31_N8
\mdly[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[13]~45_combout\ = (mdly(13) & (!\mdly[12]~44\)) # (!mdly(13) & ((\mdly[12]~44\) # (GND)))
-- \mdly[13]~46\ = CARRY((!\mdly[12]~44\) # (!mdly(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(13),
	datad => VCC,
	cin => \mdly[12]~44\,
	combout => \mdly[13]~45_combout\,
	cout => \mdly[13]~46\);

-- Location: FF_X69_Y31_N9
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(13));

-- Location: LCCOMB_X69_Y32_N12
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!mdly(13)) # (!mdly(8))) # (!mdly(2))) # (!mdly(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(4),
	datab => mdly(2),
	datac => mdly(8),
	datad => mdly(13),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X69_Y31_N10
\mdly[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[14]~47_combout\ = (mdly(14) & (\mdly[13]~46\ $ (GND))) # (!mdly(14) & (!\mdly[13]~46\ & VCC))
-- \mdly[14]~48\ = CARRY((mdly(14) & !\mdly[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(14),
	datad => VCC,
	cin => \mdly[13]~46\,
	combout => \mdly[14]~47_combout\,
	cout => \mdly[14]~48\);

-- Location: FF_X69_Y31_N11
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(14));

-- Location: LCCOMB_X69_Y31_N12
\mdly[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[15]~49_combout\ = (mdly(15) & (!\mdly[14]~48\)) # (!mdly(15) & ((\mdly[14]~48\) # (GND)))
-- \mdly[15]~50\ = CARRY((!\mdly[14]~48\) # (!mdly(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(15),
	datad => VCC,
	cin => \mdly[14]~48\,
	combout => \mdly[15]~49_combout\,
	cout => \mdly[15]~50\);

-- Location: FF_X69_Y31_N15
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(16));

-- Location: FF_X69_Y31_N13
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
	ena => \mdly[17]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(15));

-- Location: LCCOMB_X69_Y32_N2
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!mdly(15)) # (!mdly(16))) # (!mdly(14))) # (!mdly(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(1),
	datab => mdly(14),
	datac => mdly(16),
	datad => mdly(15),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X68_Y32_N28
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!\LessThan1~4_combout\ & (!\LessThan1~0_combout\ & (!\LessThan1~2_combout\ & !\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X68_Y32_N14
\mlcd_st~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~19_combout\ = (\mlcd_st~18_combout\) # (((\mlcd_st.000010~q\ & !\LessThan1~5_combout\)) # (!\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000010~q\,
	datab => \mlcd_st~18_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan1~5_combout\,
	combout => \mlcd_st~19_combout\);

-- Location: LCCOMB_X70_Y32_N12
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

-- Location: FF_X70_Y32_N13
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

-- Location: LCCOMB_X70_Y32_N26
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\mlcd_st.000001~2_combout\) # ((\mlcd_start~q\ & ((!\mlcd_st.000001~q\) # (!\u0|odone~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|odone~q\,
	datab => \mlcd_st.000001~2_combout\,
	datac => \mlcd_start~q\,
	datad => \mlcd_st.000001~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X70_Y32_N27
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
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_start~q\);

-- Location: FF_X72_Y32_N25
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

-- Location: LCCOMB_X72_Y32_N24
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

-- Location: LCCOMB_X72_Y32_N26
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

-- Location: LCCOMB_X72_Y32_N12
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

-- Location: FF_X72_Y32_N13
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

-- Location: FF_X72_Y32_N27
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

-- Location: LCCOMB_X72_Y32_N8
\u0|state.01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state.01~0_combout\ = !\u0|state.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|state.00~q\,
	combout => \u0|state.01~0_combout\);

-- Location: FF_X72_Y32_N9
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

-- Location: LCCOMB_X73_Y32_N20
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

-- Location: LCCOMB_X73_Y32_N10
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

-- Location: LCCOMB_X73_Y32_N6
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

-- Location: FF_X73_Y32_N7
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

-- Location: LCCOMB_X73_Y32_N12
\u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|cont\(1) & (!\u0|Add0~1\)) # (!\u0|cont\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: LCCOMB_X73_Y32_N14
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

-- Location: LCCOMB_X73_Y32_N28
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

-- Location: FF_X73_Y32_N29
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

-- Location: LCCOMB_X73_Y32_N0
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~4_combout\) # ((\u0|cont\(2) & \u0|cont~0_combout\)))) # (!\u0|state.10~q\ & (((\u0|cont\(2) & \u0|cont~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|Add0~4_combout\,
	datac => \u0|cont\(2),
	datad => \u0|cont~0_combout\,
	combout => \u0|Selector6~0_combout\);

-- Location: FF_X73_Y32_N1
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

-- Location: LCCOMB_X73_Y32_N4
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

-- Location: FF_X73_Y32_N5
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

-- Location: LCCOMB_X73_Y32_N24
\u0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (\u0|cont\(4) & ((\u0|cont\(2)) # ((\u0|cont\(1)) # (\u0|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(4),
	datab => \u0|cont\(2),
	datac => \u0|cont\(1),
	datad => \u0|cont\(0),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X73_Y32_N2
\u0|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state~14_combout\ = (\u0|state.10~q\ & (\u0|cont\(3) & \u0|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datac => \u0|cont\(3),
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|state~14_combout\);

-- Location: FF_X73_Y32_N3
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

-- Location: LCCOMB_X72_Y32_N6
\u0|odone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|odone~1_combout\ = (\u0|odone~0_combout\) # ((\u0|mstart~q\ & \u0|state.11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|mstart~q\,
	datac => \u0|odone~0_combout\,
	datad => \u0|state.11~q\,
	combout => \u0|odone~1_combout\);

-- Location: FF_X72_Y32_N7
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

-- Location: LCCOMB_X70_Y32_N0
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

-- Location: FF_X70_Y32_N1
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
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000010~q\);

-- Location: LCCOMB_X70_Y32_N16
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\mlcd_st.000010~q\ & \LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X70_Y32_N17
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
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000011~q\);

-- Location: LCCOMB_X70_Y32_N2
\lut_index[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~9_combout\ = (\mlcd_st.000011~q\ & (\Selector6~4_combout\ & ((\LessThan0~2_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => \mlcd_st.000011~q\,
	datac => \LessThan0~2_combout\,
	datad => \Selector6~4_combout\,
	combout => \lut_index[7]~9_combout\);

-- Location: FF_X67_Y32_N5
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
	ena => \lut_index[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(1));

-- Location: FF_X67_Y32_N9
\lut_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[3]~13_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(3));

-- Location: LCCOMB_X70_Y32_N8
\lut_index[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[0]~10_combout\ = lut_index(0) $ (((\LessThan0~3_combout\ & \mlcd_st.000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => lut_index(0),
	datad => \mlcd_st.000011~q\,
	combout => \lut_index[0]~10_combout\);

-- Location: FF_X70_Y32_N9
\lut_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_index[0]~10_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(0));

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

-- Location: LCCOMB_X70_Y30_N24
\string_data[1][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data[1][0][0]~0_combout\ = !\sw[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[3]~input_o\,
	combout => \string_data[1][0][0]~0_combout\);

-- Location: FF_X66_Y32_N21
\string_data[1][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \string_data[1][0][0]~0_combout\,
	sload => VCC,
	ena => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[1][0][0]~q\);

-- Location: LCCOMB_X67_Y32_N18
\Selector12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~24_combout\ = (lut_index(4) & (!\string_data[1][0][0]~q\ & (lut_index(1) $ (!lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => \string_data[1][0][0]~q\,
	combout => \Selector12~24_combout\);

-- Location: LCCOMB_X70_Y32_N10
\Selector12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~22_combout\ = (lut_index(1) & (!lut_index(4) & !lut_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(1),
	datac => lut_index(4),
	datad => lut_index(5),
	combout => \Selector12~22_combout\);

-- Location: LCCOMB_X70_Y32_N28
\Selector12~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~23_combout\ = (\Selector12~22_combout\ & ((lut_index(0) & (\string_data[10][0][0]~q\)) # (!lut_index(0) & ((\string_data[1][0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[10][0][0]~q\,
	datab => lut_index(0),
	datac => \string_data[1][0][0]~q\,
	datad => \Selector12~22_combout\,
	combout => \Selector12~23_combout\);

-- Location: LCCOMB_X70_Y32_N14
\Selector12~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~25_combout\ = (\Selector12~23_combout\) # ((\Selector6~4_combout\ & (!lut_index(5) & \Selector12~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~4_combout\,
	datab => lut_index(5),
	datac => \Selector12~24_combout\,
	datad => \Selector12~23_combout\,
	combout => \Selector12~25_combout\);

-- Location: LCCOMB_X66_Y32_N16
\Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = (!lut_index(5) & (\Selector6~4_combout\ & (\string_data[1][0][0]~q\ $ (lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[1][0][0]~q\,
	datab => lut_index(5),
	datac => lut_index(4),
	datad => \Selector6~4_combout\,
	combout => \Selector6~5_combout\);

-- Location: LCCOMB_X66_Y32_N2
\Selector12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~13_combout\ = (lut_index(1) & (\Selector6~5_combout\ & (lut_index(0) $ (!lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(0),
	datac => lut_index(4),
	datad => \Selector6~5_combout\,
	combout => \Selector12~13_combout\);

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

-- Location: LCCOMB_X70_Y31_N24
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (\sw[1]~input_o\ & !\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Decoder1~0_combout\);

-- Location: FF_X70_Y31_N25
\string_state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.10~q\);

-- Location: LCCOMB_X69_Y31_N26
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\sw[3]~input_o\ & ((\string_state.10~q\) # (!\string_state.00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.00~q\,
	datab => \string_state.10~q\,
	datac => \sw[3]~input_o\,
	combout => \Selector15~0_combout\);

-- Location: FF_X69_Y31_N27
\string_data[10][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[10][1][0]~q\);

-- Location: LCCOMB_X67_Y32_N26
\Selector12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~19_combout\ = (lut_index(5) & ((lut_index(0) & ((!\string_data[1][0][0]~q\))) # (!lut_index(0) & (\string_data[10][1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(0),
	datac => \string_data[10][1][0]~q\,
	datad => \string_data[1][0][0]~q\,
	combout => \Selector12~19_combout\);

-- Location: LCCOMB_X66_Y32_N20
\Selector12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~14_combout\ = (lut_index(6)) # ((lut_index(7)) # ((lut_index(5) & \string_data[1][0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datab => lut_index(5),
	datac => \string_data[1][0][0]~q\,
	datad => lut_index(7),
	combout => \Selector12~14_combout\);

-- Location: LCCOMB_X66_Y32_N4
\Selector12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~15_combout\ = (lut_index(1) & (!lut_index(4) & (!lut_index(0) & !\Selector12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(4),
	datac => lut_index(0),
	datad => \Selector12~14_combout\,
	combout => \Selector12~15_combout\);

-- Location: LCCOMB_X67_Y31_N0
\Selector12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~18_combout\ = (!lut_index(4) & !lut_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(4),
	datad => lut_index(1),
	combout => \Selector12~18_combout\);

-- Location: LCCOMB_X66_Y32_N10
\Selector12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~20_combout\ = (\Selector12~17_combout\) # ((\Selector12~15_combout\) # ((\Selector12~19_combout\ & \Selector12~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~17_combout\,
	datab => \Selector12~19_combout\,
	datac => \Selector12~15_combout\,
	datad => \Selector12~18_combout\,
	combout => \Selector12~20_combout\);

-- Location: LCCOMB_X66_Y32_N28
\Selector12~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~21_combout\ = (lut_index(2) & ((\Selector12~13_combout\) # ((lut_index(3))))) # (!lut_index(2) & (((!lut_index(3) & \Selector12~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \Selector12~13_combout\,
	datac => lut_index(3),
	datad => \Selector12~20_combout\,
	combout => \Selector12~21_combout\);

-- Location: LCCOMB_X66_Y32_N0
\Selector12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~26_combout\ = (lut_index(3) & ((\Selector12~21_combout\ & ((\Selector12~25_combout\))) # (!\Selector12~21_combout\ & (\Selector12~37_combout\)))) # (!lut_index(3) & (((\Selector12~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~37_combout\,
	datab => lut_index(3),
	datac => \Selector12~25_combout\,
	datad => \Selector12~21_combout\,
	combout => \Selector12~26_combout\);

-- Location: LCCOMB_X70_Y32_N24
\mlcd_st.000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000000~0_combout\ = (\mlcd_st~19_combout\ & ((\mlcd_st.000000~q\))) # (!\mlcd_st~19_combout\ & (!\mlcd_st.000011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000011~q\,
	datac => \mlcd_st.000000~q\,
	datad => \mlcd_st~19_combout\,
	combout => \mlcd_st.000000~0_combout\);

-- Location: FF_X70_Y32_N25
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

-- Location: LCCOMB_X70_Y32_N18
\mlcd_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[0]~0_combout\ = (!\mlcd_st.000000~q\ & (\Selector6~4_combout\ & ((\LessThan0~2_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => \mlcd_st.000000~q\,
	datac => \LessThan0~2_combout\,
	datad => \Selector6~4_combout\,
	combout => \mlcd_data[0]~0_combout\);

-- Location: FF_X66_Y32_N1
\mlcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~26_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(0));

-- Location: LCCOMB_X66_Y32_N24
\Selector12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~28_combout\ = (!lut_index(6) & ((lut_index(5) & (!\string_data[1][0][0]~q\ & !lut_index(0))) # (!lut_index(5) & ((lut_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[1][0][0]~q\,
	datab => lut_index(5),
	datac => lut_index(0),
	datad => lut_index(6),
	combout => \Selector12~28_combout\);

-- Location: LCCOMB_X66_Y32_N18
\Selector12~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~29_combout\ = (lut_index(1) & (!lut_index(7) & (!lut_index(4) & \Selector12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(7),
	datac => lut_index(4),
	datad => \Selector12~28_combout\,
	combout => \Selector12~29_combout\);

-- Location: LCCOMB_X66_Y32_N14
\Selector12~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~27_combout\ = (\string_data[1][0][0]~q\ & (!lut_index(5) & (lut_index(0) & \Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[1][0][0]~q\,
	datab => lut_index(5),
	datac => lut_index(0),
	datad => \Selector6~4_combout\,
	combout => \Selector12~27_combout\);

-- Location: LCCOMB_X69_Y31_N24
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\sw[3]~input_o\ & ((\string_state.01~q\) # (\string_state.10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.01~q\,
	datab => \string_state.10~q\,
	datac => \sw[3]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: FF_X69_Y31_N25
\string_data[10][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[10][1][1]~q\);

-- Location: LCCOMB_X65_Y32_N28
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (!lut_index(0) & (!lut_index(6) & (\string_data[10][1][1]~q\ & lut_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(6),
	datac => \string_data[10][1][1]~q\,
	datad => lut_index(5),
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X65_Y32_N14
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (!lut_index(1) & ((lut_index(4) & (\Selector12~27_combout\)) # (!lut_index(4) & ((\Selector11~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => \Selector12~27_combout\,
	datad => \Selector11~2_combout\,
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X69_Y31_N30
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\sw[3]~input_o\ & ((\string_state.01~q\) # (\string_state.10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.01~q\,
	datab => \string_state.10~q\,
	datac => \sw[3]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: FF_X69_Y31_N31
\string_data[10][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[10][0][1]~q\);

-- Location: LCCOMB_X65_Y32_N24
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!lut_index(4) & (lut_index(1) & (\string_data[10][0][1]~q\ & !lut_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => \string_data[10][0][1]~q\,
	datad => lut_index(5),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X65_Y32_N10
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (lut_index(0) & (!lut_index(6) & (lut_index(2) & \Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(6),
	datac => lut_index(2),
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X65_Y32_N6
\Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (lut_index(3) & (((\Selector11~1_combout\)))) # (!lut_index(3) & ((\Selector12~29_combout\) # ((\Selector11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => \Selector12~29_combout\,
	datac => \Selector11~3_combout\,
	datad => \Selector11~1_combout\,
	combout => \Selector11~4_combout\);

-- Location: LCCOMB_X65_Y32_N16
\Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~5_combout\ = (lut_index(3) & ((\Selector11~4_combout\) # ((\Selector12~13_combout\ & !lut_index(2))))) # (!lut_index(3) & (((!lut_index(2) & \Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~13_combout\,
	datab => lut_index(3),
	datac => lut_index(2),
	datad => \Selector11~4_combout\,
	combout => \Selector11~5_combout\);

-- Location: FF_X65_Y32_N17
\mlcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~5_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(1));

-- Location: LCCOMB_X67_Y32_N0
\Selector12~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~35_combout\ = (lut_index(4) & (lut_index(1) & ((!\string_data[1][0][0]~q\)))) # (!lut_index(4) & (!lut_index(1) & (lut_index(0) & \string_data[1][0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => \string_data[1][0][0]~q\,
	combout => \Selector12~35_combout\);

-- Location: LCCOMB_X70_Y32_N20
\Selector12~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~34_combout\ = (\Selector12~22_combout\ & ((lut_index(0) & (\string_data[10][0][2]~q\)) # (!lut_index(0) & ((\string_data[1][0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[10][0][2]~q\,
	datab => lut_index(0),
	datac => \string_data[1][0][0]~q\,
	datad => \Selector12~22_combout\,
	combout => \Selector12~34_combout\);

-- Location: LCCOMB_X70_Y32_N6
\Selector12~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~36_combout\ = (\Selector12~34_combout\) # ((\Selector6~4_combout\ & (!lut_index(5) & \Selector12~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~4_combout\,
	datab => lut_index(5),
	datac => \Selector12~35_combout\,
	datad => \Selector12~34_combout\,
	combout => \Selector12~36_combout\);

-- Location: LCCOMB_X67_Y32_N28
\Selector12~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~31_combout\ = (lut_index(4) & (!\string_data[1][0][0]~q\ & ((!lut_index(0)) # (!lut_index(1))))) # (!lut_index(4) & (!lut_index(1) & ((\string_data[1][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => \string_data[1][0][0]~q\,
	combout => \Selector12~31_combout\);

-- Location: LCCOMB_X67_Y32_N22
\Selector12~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~38_combout\ = (!lut_index(5) & (!lut_index(7) & (!lut_index(6) & \Selector12~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(7),
	datac => lut_index(6),
	datad => \Selector12~31_combout\,
	combout => \Selector12~38_combout\);

-- Location: LCCOMB_X66_Y32_N30
\Selector12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~16_combout\ = (!lut_index(6) & (lut_index(4) & (!lut_index(5) & !lut_index(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datab => lut_index(4),
	datac => lut_index(5),
	datad => lut_index(7),
	combout => \Selector12~16_combout\);

-- Location: LCCOMB_X66_Y32_N8
\Selector12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~17_combout\ = (\string_data[1][0][0]~q\ & (\Selector12~16_combout\ & !lut_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[1][0][0]~q\,
	datac => \Selector12~16_combout\,
	datad => lut_index(1),
	combout => \Selector12~17_combout\);

-- Location: LCCOMB_X66_Y32_N12
\Selector12~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~33_combout\ = (\Selector12~29_combout\) # ((\Selector12~17_combout\) # ((\Selector12~32_combout\ & \Selector12~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~32_combout\,
	datab => \Selector12~29_combout\,
	datac => \Selector12~17_combout\,
	datad => \Selector12~18_combout\,
	combout => \Selector12~33_combout\);

-- Location: LCCOMB_X66_Y32_N22
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (lut_index(2) & (((lut_index(3))))) # (!lut_index(2) & ((lut_index(3) & (\Selector12~38_combout\)) # (!lut_index(3) & ((\Selector12~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \Selector12~38_combout\,
	datac => lut_index(3),
	datad => \Selector12~33_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X68_Y32_N22
\Selector12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~30_combout\ = (!lut_index(4) & (lut_index(1) & \Selector12~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datac => lut_index(1),
	datad => \Selector12~27_combout\,
	combout => \Selector12~30_combout\);

-- Location: LCCOMB_X66_Y32_N26
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (lut_index(2) & ((\Selector10~0_combout\ & (\Selector12~36_combout\)) # (!\Selector10~0_combout\ & ((\Selector12~30_combout\))))) # (!lut_index(2) & (((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \Selector12~36_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector12~30_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X66_Y32_N27
\mlcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(2));

-- Location: LCCOMB_X67_Y32_N2
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ((lut_index(0) & !\string_data[1][0][0]~q\)) # (!lut_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datac => lut_index(0),
	datad => \string_data[1][0][0]~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X68_Y32_N0
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (!lut_index(3) & (!lut_index(4) & (\Selector6~4_combout\ & \Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(4),
	datac => \Selector6~4_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X68_Y32_N12
\Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (!lut_index(1) & (!lut_index(2) & ((\Selector9~2_combout\) # (\Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~2_combout\,
	datab => lut_index(1),
	datac => lut_index(2),
	datad => \Selector9~1_combout\,
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X68_Y32_N24
\Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (\Selector9~3_combout\) # ((!lut_index(3) & (lut_index(2) & \Selector12~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(2),
	datac => \Selector12~30_combout\,
	datad => \Selector9~3_combout\,
	combout => \Selector9~4_combout\);

-- Location: FF_X68_Y32_N25
\mlcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~4_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(3));

-- Location: LCCOMB_X68_Y32_N4
\Selector12~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~40_combout\ = (lut_index(4) & (\string_data[1][0][0]~q\ & (lut_index(1) $ (lut_index(0))))) # (!lut_index(4) & ((lut_index(1) & ((!\string_data[1][0][0]~q\))) # (!lut_index(1) & (!lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => \string_data[1][0][0]~q\,
	combout => \Selector12~40_combout\);

-- Location: LCCOMB_X68_Y32_N30
\Selector12~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~41_combout\ = (\Selector12~40_combout\ & ((\string_data[1][0][0]~q\ & ((!lut_index(5)))) # (!\string_data[1][0][0]~q\ & ((lut_index(5)) # (!lut_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[1][0][0]~q\,
	datab => lut_index(1),
	datac => \Selector12~40_combout\,
	datad => lut_index(5),
	combout => \Selector12~41_combout\);

-- Location: LCCOMB_X68_Y32_N2
\Selector12~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~39_combout\ = (!lut_index(7) & (\Selector12~41_combout\ & !lut_index(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(7),
	datac => \Selector12~41_combout\,
	datad => lut_index(6),
	combout => \Selector12~39_combout\);

-- Location: LCCOMB_X68_Y32_N6
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!lut_index(2) & (\Selector6~5_combout\ & (lut_index(4) $ (!lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(0),
	datac => lut_index(2),
	datad => \Selector6~5_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X68_Y32_N16
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (lut_index(3) & ((\Selector8~0_combout\) # ((lut_index(2) & \Selector12~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(2),
	datac => \Selector12~30_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X68_Y32_N18
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\Selector8~1_combout\) # ((!lut_index(3) & (\Selector12~39_combout\ & !lut_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => \Selector12~39_combout\,
	datac => lut_index(2),
	datad => \Selector8~1_combout\,
	combout => \Selector8~2_combout\);

-- Location: FF_X68_Y32_N19
\mlcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~2_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(4));

-- Location: LCCOMB_X65_Y32_N8
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (lut_index(2) & (!lut_index(1) & (lut_index(0) $ (!lut_index(4))))) # (!lut_index(2) & (!lut_index(4) & ((lut_index(0)) # (lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => lut_index(1),
	datad => lut_index(4),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X65_Y32_N2
\WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (lut_index(3)) # ((lut_index(5)) # (!\WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datac => \WideOr4~0_combout\,
	datad => lut_index(5),
	combout => \WideOr4~1_combout\);

-- Location: FF_X65_Y32_N3
\mlcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr4~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(5));

-- Location: LCCOMB_X65_Y32_N4
\Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~7_combout\ = (lut_index(4) & (lut_index(0) & ((!\string_data[1][0][0]~q\) # (!lut_index(1))))) # (!lut_index(4) & (((lut_index(1) & \string_data[1][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => \string_data[1][0][0]~q\,
	datad => lut_index(4),
	combout => \Selector6~7_combout\);

-- Location: LCCOMB_X65_Y32_N18
\Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~6_combout\ = (!lut_index(3) & (lut_index(2) & !lut_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datac => lut_index(2),
	datad => lut_index(5),
	combout => \Selector6~6_combout\);

-- Location: LCCOMB_X65_Y32_N20
\Selector6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~10_combout\ = (!lut_index(6) & (!lut_index(7) & (\Selector6~7_combout\ & \Selector6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datab => lut_index(7),
	datac => \Selector6~7_combout\,
	datad => \Selector6~6_combout\,
	combout => \Selector6~10_combout\);

-- Location: LCCOMB_X69_Y32_N8
\Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~9_combout\ = (\Selector6~10_combout\) # ((\Selector6~8_combout\ & (lut_index(3) & \Selector6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~8_combout\,
	datab => lut_index(3),
	datac => \Selector6~5_combout\,
	datad => \Selector6~10_combout\,
	combout => \Selector6~9_combout\);

-- Location: FF_X69_Y32_N9
\mlcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~9_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(6));

-- Location: LCCOMB_X65_Y32_N0
\lut_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~0_combout\ = (lut_index(2) & (!lut_index(1) & (lut_index(0) $ (!lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => lut_index(1),
	datad => lut_index(4),
	combout => \lut_data~0_combout\);

-- Location: LCCOMB_X65_Y32_N12
\lut_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~1_combout\ = (!lut_index(5) & (\lut_data~0_combout\ & !lut_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => \lut_data~0_combout\,
	datad => lut_index(3),
	combout => \lut_data~1_combout\);

-- Location: FF_X65_Y32_N13
\mlcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lut_data~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(7));

-- Location: LCCOMB_X65_Y32_N26
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (lut_index(2) & ((lut_index(1)) # (lut_index(0) $ (lut_index(4))))) # (!lut_index(2) & (((lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => lut_index(1),
	datad => lut_index(4),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X65_Y32_N22
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (lut_index(3)) # ((\WideOr0~0_combout\) # (lut_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datac => \WideOr0~0_combout\,
	datad => lut_index(5),
	combout => \WideOr0~1_combout\);

-- Location: FF_X65_Y32_N23
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

-- Location: LCCOMB_X73_Y32_N8
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

-- Location: FF_X73_Y32_N9
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


