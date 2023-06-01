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

-- DATE "06/01/2023 09:57:04"

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

ENTITY 	HW20 IS
    PORT (
	btn : IN std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	sw : IN std_logic_vector(3 DOWNTO 0);
	lcd_on : BUFFER std_logic;
	lcd_data : BUFFER std_logic_vector(7 DOWNTO 0);
	lcd_rs : BUFFER std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_en : BUFFER std_logic
	);
END HW20;

-- Design Ports Information
-- btn[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_on	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HW20 IS
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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \lut_index[5]~17\ : std_logic;
SIGNAL \lut_index[6]~18_combout\ : std_logic;
SIGNAL \btn[0]~input_o\ : std_logic;
SIGNAL \lut_index[6]~19\ : std_logic;
SIGNAL \lut_index[7]~20_combout\ : std_logic;
SIGNAL \mlcd_data[0]~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \lut_index[7]~15_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \u0|state.00~0_combout\ : std_logic;
SIGNAL \mlcd_st.000001~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \mlcd_start~q\ : std_logic;
SIGNAL \u0|prestart~q\ : std_logic;
SIGNAL \u0|mstart~0_combout\ : std_logic;
SIGNAL \u0|mstart~q\ : std_logic;
SIGNAL \u0|state.00~q\ : std_logic;
SIGNAL \u0|state.01~0_combout\ : std_logic;
SIGNAL \u0|state.01~q\ : std_logic;
SIGNAL \u0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|Selector2~1_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Selector6~1_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Selector4~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|state.10~q\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~1_combout\ : std_logic;
SIGNAL \u0|state~14_combout\ : std_logic;
SIGNAL \u0|state.11~q\ : std_logic;
SIGNAL \u0|odone~0_combout\ : std_logic;
SIGNAL \u0|odone~1_combout\ : std_logic;
SIGNAL \u0|odone~q\ : std_logic;
SIGNAL \mlcd_st~18_combout\ : std_logic;
SIGNAL \mdly[0]~18_combout\ : std_logic;
SIGNAL \mdly[17]~22_combout\ : std_logic;
SIGNAL \mdly[0]~19\ : std_logic;
SIGNAL \mdly[1]~20_combout\ : std_logic;
SIGNAL \mdly[1]~21\ : std_logic;
SIGNAL \mdly[2]~23_combout\ : std_logic;
SIGNAL \mdly[2]~24\ : std_logic;
SIGNAL \mdly[3]~25_combout\ : std_logic;
SIGNAL \mdly[3]~26\ : std_logic;
SIGNAL \mdly[4]~27_combout\ : std_logic;
SIGNAL \mdly[4]~28\ : std_logic;
SIGNAL \mdly[5]~29_combout\ : std_logic;
SIGNAL \mdly[5]~30\ : std_logic;
SIGNAL \mdly[6]~31_combout\ : std_logic;
SIGNAL \mdly[6]~32\ : std_logic;
SIGNAL \mdly[7]~33_combout\ : std_logic;
SIGNAL \mdly[7]~34\ : std_logic;
SIGNAL \mdly[8]~35_combout\ : std_logic;
SIGNAL \mdly[8]~36\ : std_logic;
SIGNAL \mdly[9]~37_combout\ : std_logic;
SIGNAL \mdly[9]~38\ : std_logic;
SIGNAL \mdly[10]~39_combout\ : std_logic;
SIGNAL \mdly[10]~40\ : std_logic;
SIGNAL \mdly[11]~41_combout\ : std_logic;
SIGNAL \mdly[11]~42\ : std_logic;
SIGNAL \mdly[12]~43_combout\ : std_logic;
SIGNAL \mdly[12]~44\ : std_logic;
SIGNAL \mdly[13]~45_combout\ : std_logic;
SIGNAL \mdly[13]~46\ : std_logic;
SIGNAL \mdly[14]~47_combout\ : std_logic;
SIGNAL \mdly[14]~48\ : std_logic;
SIGNAL \mdly[15]~49_combout\ : std_logic;
SIGNAL \mdly[15]~50\ : std_logic;
SIGNAL \mdly[16]~51_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \mdly[16]~52\ : std_logic;
SIGNAL \mdly[17]~53_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mlcd_st~19_combout\ : std_logic;
SIGNAL \mlcd_st.000001~3_combout\ : std_logic;
SIGNAL \mlcd_st.000001~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \mlcd_st.000010~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mlcd_st.000011~q\ : std_logic;
SIGNAL \lut_index[0]~22_combout\ : std_logic;
SIGNAL \lut_index[1]~7_combout\ : std_logic;
SIGNAL \lut_index[1]~8\ : std_logic;
SIGNAL \lut_index[2]~9_combout\ : std_logic;
SIGNAL \lut_index[2]~10\ : std_logic;
SIGNAL \lut_index[3]~11_combout\ : std_logic;
SIGNAL \lut_index[3]~12\ : std_logic;
SIGNAL \lut_index[4]~13_combout\ : std_logic;
SIGNAL \lut_index[4]~14\ : std_logic;
SIGNAL \lut_index[5]~16_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
SIGNAL \string_state~12_combout\ : std_logic;
SIGNAL \string_state.10~q\ : std_logic;
SIGNAL \string_state~10_combout\ : std_logic;
SIGNAL \string_state~11_combout\ : std_logic;
SIGNAL \string_state.11~q\ : std_logic;
SIGNAL \string_state.00~0_combout\ : std_logic;
SIGNAL \string_state.00~q\ : std_logic;
SIGNAL \string_data~0_combout\ : std_logic;
SIGNAL \string_data[12][0][6]~q\ : std_logic;
SIGNAL \Selector12~31_combout\ : std_logic;
SIGNAL \string_data[14][0][6]~0_combout\ : std_logic;
SIGNAL \string_data[14][0][6]~q\ : std_logic;
SIGNAL \string_data[12][0][4]~q\ : std_logic;
SIGNAL \Selector12~12_combout\ : std_logic;
SIGNAL \Selector12~13_combout\ : std_logic;
SIGNAL \Selector12~8_combout\ : std_logic;
SIGNAL \Selector12~9_combout\ : std_logic;
SIGNAL \Selector12~10_combout\ : std_logic;
SIGNAL \Selector12~6_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \Selector12~7_combout\ : std_logic;
SIGNAL \Selector12~11_combout\ : std_logic;
SIGNAL \Selector12~14_combout\ : std_logic;
SIGNAL \mlcd_st.000000~0_combout\ : std_logic;
SIGNAL \mlcd_st.000000~q\ : std_logic;
SIGNAL \mlcd_data[0]~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector11~5_combout\ : std_logic;
SIGNAL \Selector12~16_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector12~15_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~6_combout\ : std_logic;
SIGNAL \Selector12~18_combout\ : std_logic;
SIGNAL \Selector12~19_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector12~17_combout\ : std_logic;
SIGNAL \string_data~1_combout\ : std_logic;
SIGNAL \string_data[11][0][4]~q\ : std_logic;
SIGNAL \Selector12~20_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector12~21_combout\ : std_logic;
SIGNAL \Selector12~24_combout\ : std_logic;
SIGNAL \Selector12~25_combout\ : std_logic;
SIGNAL \Selector12~22_combout\ : std_logic;
SIGNAL \Selector12~23_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \Selector7~8_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~9_combout\ : std_logic;
SIGNAL \Selector7~10_combout\ : std_logic;
SIGNAL \Selector12~30_combout\ : std_logic;
SIGNAL \Selector12~28_combout\ : std_logic;
SIGNAL \Selector12~29_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Selector12~26_combout\ : std_logic;
SIGNAL \Selector12~27_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \lut_data~0_combout\ : std_logic;
SIGNAL \lut_data~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \mlcd_rs~q\ : std_logic;
SIGNAL \u0|Selector3~0_combout\ : std_logic;
SIGNAL \u0|lcd_en~q\ : std_logic;
SIGNAL lut_index : std_logic_vector(7 DOWNTO 0);
SIGNAL mdly : std_logic_vector(17 DOWNTO 0);
SIGNAL mlcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|cont\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_btn <= btn;
ww_CLK <= CLK;
ww_sw <= sw;
lcd_on <= ww_lcd_on;
lcd_data <= ww_lcd_data;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y58_N16
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

-- Location: IOOBUF_X0_Y52_N16
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X0_Y44_N2
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

-- Location: IOOBUF_X0_Y49_N9
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

-- Location: IOOBUF_X0_Y54_N9
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

-- Location: IOOBUF_X0_Y55_N23
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

-- Location: IOOBUF_X0_Y51_N16
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

-- Location: IOOBUF_X0_Y47_N2
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

-- Location: IOOBUF_X0_Y44_N16
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

-- Location: IOOBUF_X0_Y44_N23
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

-- Location: IOOBUF_X0_Y52_N2
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

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X2_Y44_N12
\lut_index[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[5]~16_combout\ = (lut_index(5) & (\lut_index[4]~14\ $ (GND))) # (!lut_index(5) & (!\lut_index[4]~14\ & VCC))
-- \lut_index[5]~17\ = CARRY((lut_index(5) & !\lut_index[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datad => VCC,
	cin => \lut_index[4]~14\,
	combout => \lut_index[5]~16_combout\,
	cout => \lut_index[5]~17\);

-- Location: LCCOMB_X2_Y44_N14
\lut_index[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[6]~18_combout\ = (lut_index(6) & (!\lut_index[5]~17\)) # (!lut_index(6) & ((\lut_index[5]~17\) # (GND)))
-- \lut_index[6]~19\ = CARRY((!\lut_index[5]~17\) # (!lut_index(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datad => VCC,
	cin => \lut_index[5]~17\,
	combout => \lut_index[6]~18_combout\,
	cout => \lut_index[6]~19\);

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

-- Location: LCCOMB_X2_Y44_N16
\lut_index[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~20_combout\ = \lut_index[6]~19\ $ (!lut_index(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => lut_index(7),
	cin => \lut_index[6]~19\,
	combout => \lut_index[7]~20_combout\);

-- Location: FF_X2_Y44_N17
\lut_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[7]~20_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(7));

-- Location: LCCOMB_X2_Y44_N26
\mlcd_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[0]~0_combout\ = (!lut_index(6) & !lut_index(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(6),
	datad => lut_index(7),
	combout => \mlcd_data[0]~0_combout\);

-- Location: LCCOMB_X2_Y44_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!lut_index(4) & (!lut_index(3) & ((!lut_index(2)) # (!lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => lut_index(3),
	datad => lut_index(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y44_N22
\lut_index[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~15_combout\ = (\mlcd_data[0]~0_combout\ & (\mlcd_st.000011~q\ & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_data[0]~0_combout\,
	datab => lut_index(5),
	datac => \mlcd_st.000011~q\,
	datad => \LessThan0~0_combout\,
	combout => \lut_index[7]~15_combout\);

-- Location: FF_X2_Y44_N15
\lut_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[6]~18_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(6));

-- Location: LCCOMB_X3_Y44_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!lut_index(6) & (!lut_index(7) & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datab => lut_index(7),
	datac => \LessThan0~0_combout\,
	datad => lut_index(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y45_N26
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

-- Location: LCCOMB_X3_Y44_N20
\mlcd_st.000001~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000001~2_combout\ = (!\mlcd_st.000001~q\ & (!\mlcd_st.000011~q\ & !\mlcd_st.000010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000001~q\,
	datab => \mlcd_st.000011~q\,
	datac => \mlcd_st.000010~q\,
	combout => \mlcd_st.000001~2_combout\);

-- Location: LCCOMB_X3_Y44_N2
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\mlcd_st.000001~2_combout\) # ((\mlcd_start~q\ & ((!\u0|odone~q\) # (!\mlcd_st.000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000001~q\,
	datab => \mlcd_st.000001~2_combout\,
	datac => \mlcd_start~q\,
	datad => \u0|odone~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X3_Y44_N3
mlcd_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_start~q\);

-- Location: FF_X2_Y45_N29
\u0|prestart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mlcd_start~q\,
	clrn => \btn[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|prestart~q\);

-- Location: LCCOMB_X2_Y45_N20
\u0|mstart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|mstart~0_combout\ = (\u0|mstart~q\ & (!\u0|state.11~q\)) # (!\u0|mstart~q\ & (((\mlcd_start~q\ & !\u0|prestart~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.11~q\,
	datab => \mlcd_start~q\,
	datac => \u0|mstart~q\,
	datad => \u0|prestart~q\,
	combout => \u0|mstart~0_combout\);

-- Location: FF_X2_Y45_N21
\u0|mstart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|mstart~0_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|mstart~q\);

-- Location: FF_X2_Y45_N27
\u0|state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state.00~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.00~q\);

-- Location: LCCOMB_X2_Y45_N14
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

-- Location: FF_X2_Y45_N15
\u0|state.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state.01~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.01~q\);

-- Location: LCCOMB_X3_Y45_N22
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|state.01~q\) # ((\u0|state~14_combout\) # (!\u0|state.00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.01~q\,
	datac => \u0|state.00~q\,
	datad => \u0|state~14_combout\,
	combout => \u0|Selector6~0_combout\);

-- Location: LCCOMB_X3_Y45_N28
\u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~1_combout\ = (\u0|state.10~q\ & ((!\u0|LessThan0~0_combout\) # (!\u0|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|cont\(3),
	datac => \u0|state.10~q\,
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|Selector2~1_combout\);

-- Location: LCCOMB_X3_Y45_N10
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|cont\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|cont\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X3_Y45_N0
\u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector8~0_combout\ = (\u0|Selector6~0_combout\ & ((\u0|cont\(0)) # ((\u0|Selector2~1_combout\ & \u0|Add0~0_combout\)))) # (!\u0|Selector6~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector6~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|cont\(0),
	datad => \u0|Add0~0_combout\,
	combout => \u0|Selector8~0_combout\);

-- Location: FF_X3_Y45_N1
\u0|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector8~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(0));

-- Location: LCCOMB_X3_Y45_N12
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

-- Location: LCCOMB_X3_Y45_N6
\u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector7~0_combout\ = (\u0|Selector6~0_combout\ & ((\u0|cont\(1)) # ((\u0|Selector2~1_combout\ & \u0|Add0~2_combout\)))) # (!\u0|Selector6~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector6~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|cont\(1),
	datad => \u0|Add0~2_combout\,
	combout => \u0|Selector7~0_combout\);

-- Location: FF_X3_Y45_N7
\u0|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector7~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(1));

-- Location: LCCOMB_X3_Y45_N14
\u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|cont\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|cont\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|cont\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|cont\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: LCCOMB_X3_Y45_N20
\u0|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~1_combout\ = (\u0|Selector6~0_combout\ & ((\u0|cont\(2)) # ((\u0|Add0~4_combout\ & \u0|Selector2~1_combout\)))) # (!\u0|Selector6~0_combout\ & (\u0|Add0~4_combout\ & ((\u0|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector6~0_combout\,
	datab => \u0|Add0~4_combout\,
	datac => \u0|cont\(2),
	datad => \u0|Selector2~1_combout\,
	combout => \u0|Selector6~1_combout\);

-- Location: FF_X3_Y45_N21
\u0|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector6~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(2));

-- Location: LCCOMB_X3_Y45_N26
\u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~0_combout\ = (\u0|cont\(4) & ((\u0|state.01~q\) # (!\u0|state.00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(4),
	datac => \u0|state.00~q\,
	datad => \u0|state.01~q\,
	combout => \u0|Selector4~0_combout\);

-- Location: LCCOMB_X3_Y45_N16
\u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|cont\(3) & (!\u0|Add0~5\)) # (!\u0|cont\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|cont\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: LCCOMB_X3_Y45_N18
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

-- Location: LCCOMB_X3_Y45_N30
\u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~1_combout\ = (\u0|Selector4~0_combout\) # ((\u0|state~14_combout\) # ((\u0|state.10~q\ & \u0|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector4~0_combout\,
	datab => \u0|state~14_combout\,
	datac => \u0|state.10~q\,
	datad => \u0|Add0~8_combout\,
	combout => \u0|Selector4~1_combout\);

-- Location: FF_X3_Y45_N31
\u0|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector4~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(4));

-- Location: LCCOMB_X3_Y45_N24
\u0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (\u0|cont\(4) & ((\u0|cont\(1)) # ((\u0|cont\(2)) # (\u0|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(1),
	datab => \u0|cont\(2),
	datac => \u0|cont\(4),
	datad => \u0|cont\(0),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y45_N16
\u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|state.01~q\) # ((\u0|state.10~q\ & ((!\u0|LessThan0~0_combout\) # (!\u0|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datab => \u0|state.01~q\,
	datac => \u0|state.10~q\,
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|Selector2~0_combout\);

-- Location: FF_X2_Y45_N17
\u0|state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector2~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.10~q\);

-- Location: LCCOMB_X3_Y45_N4
\u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = ((\u0|state.01~q\) # ((\u0|LessThan0~0_combout\ & \u0|state.10~q\))) # (!\u0|state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.00~q\,
	datab => \u0|LessThan0~0_combout\,
	datac => \u0|state.10~q\,
	datad => \u0|state.01~q\,
	combout => \u0|Selector5~0_combout\);

-- Location: LCCOMB_X3_Y45_N8
\u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~1_combout\ = (\u0|state.10~q\ & ((\u0|Add0~6_combout\) # ((\u0|Selector5~0_combout\ & \u0|cont\(3))))) # (!\u0|state.10~q\ & (\u0|Selector5~0_combout\ & (\u0|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|Selector5~0_combout\,
	datac => \u0|cont\(3),
	datad => \u0|Add0~6_combout\,
	combout => \u0|Selector5~1_combout\);

-- Location: FF_X3_Y45_N9
\u0|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector5~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(3));

-- Location: LCCOMB_X3_Y45_N2
\u0|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state~14_combout\ = (\u0|cont\(3) & (\u0|state.10~q\ & \u0|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|cont\(3),
	datac => \u0|state.10~q\,
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|state~14_combout\);

-- Location: FF_X3_Y45_N3
\u0|state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state~14_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.11~q\);

-- Location: LCCOMB_X2_Y45_N28
\u0|odone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|odone~0_combout\ = (\u0|odone~q\ & ((\u0|prestart~q\) # (!\mlcd_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|odone~q\,
	datab => \mlcd_start~q\,
	datac => \u0|prestart~q\,
	combout => \u0|odone~0_combout\);

-- Location: LCCOMB_X2_Y45_N30
\u0|odone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|odone~1_combout\ = (\u0|odone~0_combout\) # ((\u0|state.11~q\ & \u0|mstart~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.11~q\,
	datab => \u0|mstart~q\,
	datad => \u0|odone~0_combout\,
	combout => \u0|odone~1_combout\);

-- Location: FF_X2_Y45_N31
\u0|odone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|odone~1_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|odone~q\);

-- Location: LCCOMB_X3_Y44_N4
\mlcd_st~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~18_combout\ = (\mlcd_st.000001~q\ & !\u0|odone~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mlcd_st.000001~q\,
	datad => \u0|odone~q\,
	combout => \mlcd_st~18_combout\);

-- Location: LCCOMB_X4_Y44_N14
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

-- Location: LCCOMB_X3_Y44_N6
\mdly[17]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~22_combout\ = (\mlcd_st.000010~q\ & (\mlcd_data[0]~0_combout\ & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000010~q\,
	datab => lut_index(5),
	datac => \mlcd_data[0]~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \mdly[17]~22_combout\);

-- Location: FF_X4_Y44_N15
\mdly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[0]~18_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(0));

-- Location: LCCOMB_X4_Y44_N16
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

-- Location: FF_X4_Y44_N17
\mdly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[1]~20_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(1));

-- Location: LCCOMB_X4_Y44_N18
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

-- Location: FF_X4_Y44_N19
\mdly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[2]~23_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(2));

-- Location: LCCOMB_X4_Y44_N20
\mdly[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[3]~25_combout\ = (mdly(3) & (!\mdly[2]~24\)) # (!mdly(3) & ((\mdly[2]~24\) # (GND)))
-- \mdly[3]~26\ = CARRY((!\mdly[2]~24\) # (!mdly(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(3),
	datad => VCC,
	cin => \mdly[2]~24\,
	combout => \mdly[3]~25_combout\,
	cout => \mdly[3]~26\);

-- Location: FF_X4_Y44_N21
\mdly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[3]~25_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(3));

-- Location: LCCOMB_X4_Y44_N22
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

-- Location: FF_X4_Y44_N23
\mdly[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[4]~27_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(4));

-- Location: LCCOMB_X4_Y44_N24
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

-- Location: FF_X4_Y44_N25
\mdly[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[5]~29_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(5));

-- Location: LCCOMB_X4_Y44_N26
\mdly[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[6]~31_combout\ = (mdly(6) & (\mdly[5]~30\ $ (GND))) # (!mdly(6) & (!\mdly[5]~30\ & VCC))
-- \mdly[6]~32\ = CARRY((mdly(6) & !\mdly[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(6),
	datad => VCC,
	cin => \mdly[5]~30\,
	combout => \mdly[6]~31_combout\,
	cout => \mdly[6]~32\);

-- Location: FF_X4_Y44_N27
\mdly[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[6]~31_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(6));

-- Location: LCCOMB_X4_Y44_N28
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

-- Location: FF_X4_Y44_N29
\mdly[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[7]~33_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(7));

-- Location: LCCOMB_X4_Y44_N30
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

-- Location: FF_X4_Y44_N31
\mdly[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[8]~35_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(8));

-- Location: LCCOMB_X4_Y43_N0
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

-- Location: FF_X4_Y43_N1
\mdly[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[9]~37_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(9));

-- Location: LCCOMB_X4_Y43_N2
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

-- Location: FF_X4_Y43_N3
\mdly[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[10]~39_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(10));

-- Location: LCCOMB_X4_Y43_N4
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

-- Location: FF_X4_Y43_N5
\mdly[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[11]~41_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(11));

-- Location: LCCOMB_X4_Y43_N6
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

-- Location: FF_X4_Y43_N7
\mdly[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[12]~43_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(12));

-- Location: LCCOMB_X4_Y43_N8
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

-- Location: FF_X4_Y43_N9
\mdly[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[13]~45_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(13));

-- Location: LCCOMB_X4_Y43_N10
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

-- Location: FF_X4_Y43_N11
\mdly[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[14]~47_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(14));

-- Location: LCCOMB_X4_Y43_N12
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

-- Location: FF_X4_Y43_N13
\mdly[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[15]~49_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(15));

-- Location: LCCOMB_X4_Y43_N14
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

-- Location: FF_X4_Y43_N15
\mdly[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[16]~51_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(16));

-- Location: LCCOMB_X4_Y43_N28
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!mdly(15)) # (!mdly(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mdly(16),
	datad => mdly(15),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X4_Y43_N18
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!mdly(10)) # (!mdly(11))) # (!mdly(9))) # (!mdly(12))

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
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X4_Y43_N30
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ((\LessThan1~3_combout\) # ((\LessThan1~2_combout\) # (!mdly(14)))) # (!mdly(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(13),
	datab => \LessThan1~3_combout\,
	datac => mdly(14),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X4_Y43_N16
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

-- Location: FF_X4_Y43_N17
\mdly[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[17]~53_combout\,
	clrn => \btn[0]~input_o\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(17));

-- Location: LCCOMB_X4_Y44_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!mdly(7)) # (!mdly(8))) # (!mdly(5))) # (!mdly(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(6),
	datab => mdly(5),
	datac => mdly(8),
	datad => mdly(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X4_Y44_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!mdly(3)) # (!mdly(4))) # (!mdly(1))) # (!mdly(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(2),
	datab => mdly(1),
	datac => mdly(4),
	datad => mdly(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y43_N24
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!\LessThan1~4_combout\ & (mdly(17) & (!\LessThan1~1_combout\ & !\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => mdly(17),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X3_Y44_N28
\mlcd_st~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~19_combout\ = ((\mlcd_st~18_combout\) # ((\mlcd_st.000010~q\ & !\LessThan1~5_combout\))) # (!\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \mlcd_st~18_combout\,
	datac => \mlcd_st.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \mlcd_st~19_combout\);

-- Location: LCCOMB_X3_Y44_N30
\mlcd_st.000001~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000001~3_combout\ = (\mlcd_st.000001~q\ & (((\mlcd_st~19_combout\)))) # (!\mlcd_st.000001~q\ & (!\mlcd_st.000010~q\ & (!\mlcd_st.000011~q\ & !\mlcd_st~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000010~q\,
	datab => \mlcd_st.000011~q\,
	datac => \mlcd_st.000001~q\,
	datad => \mlcd_st~19_combout\,
	combout => \mlcd_st.000001~3_combout\);

-- Location: FF_X3_Y44_N31
\mlcd_st.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mlcd_st.000001~3_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000001~q\);

-- Location: LCCOMB_X3_Y44_N26
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

-- Location: FF_X3_Y44_N27
\mlcd_st.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000010~q\);

-- Location: LCCOMB_X3_Y44_N14
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

-- Location: FF_X3_Y44_N15
\mlcd_st.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000011~q\);

-- Location: LCCOMB_X3_Y44_N0
\lut_index[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[0]~22_combout\ = lut_index(0) $ (((\mlcd_st.000011~q\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000011~q\,
	datac => lut_index(0),
	datad => \LessThan0~1_combout\,
	combout => \lut_index[0]~22_combout\);

-- Location: FF_X3_Y44_N1
\lut_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[0]~22_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(0));

-- Location: LCCOMB_X2_Y44_N4
\lut_index[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[1]~7_combout\ = (lut_index(1) & (lut_index(0) $ (VCC))) # (!lut_index(1) & (lut_index(0) & VCC))
-- \lut_index[1]~8\ = CARRY((lut_index(1) & lut_index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(0),
	datad => VCC,
	combout => \lut_index[1]~7_combout\,
	cout => \lut_index[1]~8\);

-- Location: FF_X2_Y44_N5
\lut_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[1]~7_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(1));

-- Location: LCCOMB_X2_Y44_N6
\lut_index[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[2]~9_combout\ = (lut_index(2) & (!\lut_index[1]~8\)) # (!lut_index(2) & ((\lut_index[1]~8\) # (GND)))
-- \lut_index[2]~10\ = CARRY((!\lut_index[1]~8\) # (!lut_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datad => VCC,
	cin => \lut_index[1]~8\,
	combout => \lut_index[2]~9_combout\,
	cout => \lut_index[2]~10\);

-- Location: FF_X2_Y44_N7
\lut_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[2]~9_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(2));

-- Location: LCCOMB_X2_Y44_N8
\lut_index[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[3]~11_combout\ = (lut_index(3) & (\lut_index[2]~10\ $ (GND))) # (!lut_index(3) & (!\lut_index[2]~10\ & VCC))
-- \lut_index[3]~12\ = CARRY((lut_index(3) & !\lut_index[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(3),
	datad => VCC,
	cin => \lut_index[2]~10\,
	combout => \lut_index[3]~11_combout\,
	cout => \lut_index[3]~12\);

-- Location: FF_X2_Y44_N9
\lut_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[3]~11_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(3));

-- Location: LCCOMB_X2_Y44_N10
\lut_index[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[4]~13_combout\ = (lut_index(4) & (!\lut_index[3]~12\)) # (!lut_index(4) & ((\lut_index[3]~12\) # (GND)))
-- \lut_index[4]~14\ = CARRY((!\lut_index[3]~12\) # (!lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datad => VCC,
	cin => \lut_index[3]~12\,
	combout => \lut_index[4]~13_combout\,
	cout => \lut_index[4]~14\);

-- Location: FF_X2_Y44_N11
\lut_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[4]~13_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(4));

-- Location: FF_X2_Y44_N13
\lut_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[5]~16_combout\,
	clrn => \btn[0]~input_o\,
	ena => \lut_index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(5));

-- Location: LCCOMB_X2_Y44_N30
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (!lut_index(5) & (!lut_index(7) & (!lut_index(6) & !lut_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(7),
	datac => lut_index(6),
	datad => lut_index(4),
	combout => \Selector12~2_combout\);

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

-- Location: LCCOMB_X1_Y44_N18
\string_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~12_combout\ = (\btn[0]~input_o\ & ((\string_state.10~q\) # ((!\string_state.11~q\ & !\btn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[0]~input_o\,
	datab => \string_state.11~q\,
	datac => \string_state.10~q\,
	datad => \btn[1]~input_o\,
	combout => \string_state~12_combout\);

-- Location: FF_X1_Y44_N19
\string_state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.10~q\);

-- Location: LCCOMB_X1_Y44_N16
\string_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~10_combout\ = (\btn[1]~input_o\ & ((\btn[2]~input_o\) # ((\string_state.10~q\)))) # (!\btn[1]~input_o\ & (\string_state.11~q\ & ((\btn[2]~input_o\) # (\string_state.10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[1]~input_o\,
	datab => \btn[2]~input_o\,
	datac => \string_state.11~q\,
	datad => \string_state.10~q\,
	combout => \string_state~10_combout\);

-- Location: LCCOMB_X1_Y44_N4
\string_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~11_combout\ = (\btn[0]~input_o\ & ((\string_state.11~q\) # ((!\string_state~10_combout\ & \btn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[0]~input_o\,
	datab => \string_state~10_combout\,
	datac => \string_state.11~q\,
	datad => \btn[1]~input_o\,
	combout => \string_state~11_combout\);

-- Location: FF_X1_Y44_N5
\string_state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.11~q\);

-- Location: LCCOMB_X1_Y43_N2
\string_state.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state.00~0_combout\ = (\btn[0]~input_o\ & ((\string_state.00~q\) # (!\string_state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn[0]~input_o\,
	datac => \string_state.00~q\,
	datad => \string_state~10_combout\,
	combout => \string_state.00~0_combout\);

-- Location: FF_X1_Y43_N3
\string_state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_state.00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.00~q\);

-- Location: LCCOMB_X1_Y44_N30
\string_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data~0_combout\ = (\string_state.11~q\) # (!\string_state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \string_state.11~q\,
	datad => \string_state.00~q\,
	combout => \string_data~0_combout\);

-- Location: FF_X1_Y44_N31
\string_data[12][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[12][0][6]~q\);

-- Location: LCCOMB_X3_Y43_N22
\Selector12~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~31_combout\ = (\Selector12~2_combout\ & ((lut_index(2) & ((!lut_index(0)))) # (!lut_index(2) & (\string_data[12][0][6]~q\ & lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => \string_data[12][0][6]~q\,
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \Selector12~31_combout\);

-- Location: LCCOMB_X1_Y43_N16
\string_data[14][0][6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data[14][0][6]~0_combout\ = !\string_state.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \string_state.00~q\,
	combout => \string_data[14][0][6]~0_combout\);

-- Location: FF_X2_Y43_N15
\string_data[14][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \string_data[14][0][6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[14][0][6]~q\);

-- Location: FF_X2_Y43_N21
\string_data[12][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \string_state.11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[12][0][4]~q\);

-- Location: LCCOMB_X2_Y43_N2
\Selector12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~12_combout\ = (lut_index(2) & ((lut_index(0) & (\string_data[14][0][6]~q\)) # (!lut_index(0) & ((\string_data[12][0][4]~q\))))) # (!lut_index(2) & (((\string_data[12][0][4]~q\ & lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[14][0][6]~q\,
	datab => lut_index(2),
	datac => \string_data[12][0][4]~q\,
	datad => lut_index(0),
	combout => \Selector12~12_combout\);

-- Location: LCCOMB_X2_Y43_N24
\Selector12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~13_combout\ = (\Selector12~12_combout\) # (!\Selector12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector12~2_combout\,
	datad => \Selector12~12_combout\,
	combout => \Selector12~13_combout\);

-- Location: LCCOMB_X2_Y44_N2
\Selector12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~8_combout\ = (!lut_index(2) & (!lut_index(7) & (!lut_index(6) & !lut_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(7),
	datac => lut_index(6),
	datad => lut_index(5),
	combout => \Selector12~8_combout\);

-- Location: LCCOMB_X3_Y43_N8
\Selector12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~9_combout\ = (lut_index(4) & ((lut_index(0) & (\string_data[14][0][6]~q\)) # (!lut_index(0) & ((\string_data[12][0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[14][0][6]~q\,
	datab => \string_data[12][0][4]~q\,
	datac => lut_index(4),
	datad => lut_index(0),
	combout => \Selector12~9_combout\);

-- Location: LCCOMB_X3_Y43_N30
\Selector12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~10_combout\ = (\Selector12~8_combout\ & \Selector12~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector12~8_combout\,
	datad => \Selector12~9_combout\,
	combout => \Selector12~10_combout\);

-- Location: LCCOMB_X3_Y43_N4
\Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~6_combout\ = (!lut_index(0) & ((\string_data[14][0][6]~q\) # (!lut_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[14][0][6]~q\,
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \Selector12~6_combout\);

-- Location: LCCOMB_X3_Y43_N28
\Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (!lut_index(6) & (!lut_index(7) & (!lut_index(5) & \string_data[14][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datab => lut_index(7),
	datac => lut_index(5),
	datad => \string_data[14][0][6]~q\,
	combout => \Selector12~4_combout\);

-- Location: LCCOMB_X3_Y43_N2
\Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = (\Selector12~4_combout\ & (lut_index(4) $ (lut_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datac => lut_index(2),
	datad => \Selector12~4_combout\,
	combout => \Selector12~5_combout\);

-- Location: LCCOMB_X3_Y43_N18
\Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~7_combout\ = (\Selector12~2_combout\ & ((\Selector12~6_combout\) # ((lut_index(0) & \Selector12~5_combout\)))) # (!\Selector12~2_combout\ & (lut_index(0) & ((\Selector12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => lut_index(0),
	datac => \Selector12~6_combout\,
	datad => \Selector12~5_combout\,
	combout => \Selector12~7_combout\);

-- Location: LCCOMB_X3_Y43_N0
\Selector12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~11_combout\ = (lut_index(3) & (lut_index(1))) # (!lut_index(3) & ((lut_index(1) & ((\Selector12~7_combout\))) # (!lut_index(1) & (\Selector12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(1),
	datac => \Selector12~10_combout\,
	datad => \Selector12~7_combout\,
	combout => \Selector12~11_combout\);

-- Location: LCCOMB_X3_Y43_N20
\Selector12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~14_combout\ = (lut_index(3) & ((\Selector12~11_combout\ & ((!\Selector12~13_combout\))) # (!\Selector12~11_combout\ & (\Selector12~31_combout\)))) # (!lut_index(3) & (((\Selector12~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~31_combout\,
	datab => \Selector12~13_combout\,
	datac => lut_index(3),
	datad => \Selector12~11_combout\,
	combout => \Selector12~14_combout\);

-- Location: LCCOMB_X3_Y44_N10
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

-- Location: FF_X3_Y44_N11
\mlcd_st.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mlcd_st.000000~0_combout\,
	clrn => \btn[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000000~q\);

-- Location: LCCOMB_X2_Y44_N24
\mlcd_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[0]~1_combout\ = (!\mlcd_st.000000~q\ & (\mlcd_data[0]~0_combout\ & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => \mlcd_st.000000~q\,
	datac => \mlcd_data[0]~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \mlcd_data[0]~1_combout\);

-- Location: FF_X3_Y43_N21
\mlcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector12~14_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(0));

-- Location: LCCOMB_X2_Y43_N20
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\string_data[12][0][4]~q\ & (lut_index(0) $ (((!lut_index(1) & !lut_index(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(2),
	datac => \string_data[12][0][4]~q\,
	datad => lut_index(0),
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X2_Y43_N14
\Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (!lut_index(0) & ((lut_index(2) & (!\string_data[12][0][6]~q\)) # (!lut_index(2) & ((\string_data[14][0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \string_data[12][0][6]~q\,
	datac => \string_data[14][0][6]~q\,
	datad => lut_index(2),
	combout => \Selector11~4_combout\);

-- Location: LCCOMB_X1_Y43_N24
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\string_data[14][0][6]~q\ & (!lut_index(2) & (lut_index(0) & !lut_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[14][0][6]~q\,
	datab => lut_index(2),
	datac => lut_index(0),
	datad => lut_index(1),
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X2_Y43_N8
\Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~5_combout\ = (\Selector11~2_combout\) # ((\Selector11~3_combout\) # ((lut_index(1) & \Selector11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => \Selector11~2_combout\,
	datac => \Selector11~4_combout\,
	datad => \Selector11~3_combout\,
	combout => \Selector11~5_combout\);

-- Location: LCCOMB_X2_Y43_N12
\Selector12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~16_combout\ = (\Selector12~2_combout\ & lut_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector12~2_combout\,
	datad => lut_index(0),
	combout => \Selector12~16_combout\);

-- Location: LCCOMB_X1_Y43_N6
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!lut_index(3) & lut_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(3),
	datad => lut_index(1),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X2_Y43_N10
\Selector12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~15_combout\ = (!lut_index(0) & (\Selector12~4_combout\ & (lut_index(2) $ (lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(4),
	datac => lut_index(0),
	datad => \Selector12~4_combout\,
	combout => \Selector12~15_combout\);

-- Location: LCCOMB_X2_Y43_N6
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\ & ((\Selector12~15_combout\) # ((\Selector12~16_combout\ & !lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~16_combout\,
	datab => lut_index(2),
	datac => \Selector11~0_combout\,
	datad => \Selector12~15_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X2_Y43_N0
\Selector11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~6_combout\ = (\Selector11~1_combout\) # ((lut_index(3) & (\Selector12~2_combout\ & \Selector11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => \Selector12~2_combout\,
	datac => \Selector11~5_combout\,
	datad => \Selector11~1_combout\,
	combout => \Selector11~6_combout\);

-- Location: FF_X2_Y43_N1
\mlcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector11~6_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(1));

-- Location: LCCOMB_X3_Y44_N22
\Selector12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~18_combout\ = (\Selector12~2_combout\ & ((lut_index(2) & (\string_data[14][0][6]~q\)) # (!lut_index(2) & ((lut_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[14][0][6]~q\,
	datab => lut_index(0),
	datac => lut_index(2),
	datad => \Selector12~2_combout\,
	combout => \Selector12~18_combout\);

-- Location: LCCOMB_X2_Y44_N18
\Selector12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~19_combout\ = (\Selector12~8_combout\ & ((lut_index(4) & ((\string_data[12][0][6]~q\) # (!lut_index(0)))) # (!lut_index(4) & ((lut_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => \string_data[12][0][6]~q\,
	datac => lut_index(0),
	datad => \Selector12~8_combout\,
	combout => \Selector12~19_combout\);

-- Location: LCCOMB_X3_Y44_N24
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (lut_index(3) & (lut_index(1))) # (!lut_index(3) & ((lut_index(1) & (\Selector12~18_combout\)) # (!lut_index(1) & ((\Selector12~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(1),
	datac => \Selector12~18_combout\,
	datad => \Selector12~19_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X3_Y44_N16
\Selector12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~17_combout\ = (lut_index(0) & (!\string_data[14][0][6]~q\ & (!lut_index(2)))) # (!lut_index(0) & (((lut_index(2)) # (\string_data[12][0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[14][0][6]~q\,
	datab => lut_index(0),
	datac => lut_index(2),
	datad => \string_data[12][0][6]~q\,
	combout => \Selector12~17_combout\);

-- Location: LCCOMB_X1_Y44_N28
\string_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data~1_combout\ = (\string_state.10~q\) # (!\string_state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \string_state.10~q\,
	datad => \string_state.00~q\,
	combout => \string_data~1_combout\);

-- Location: FF_X1_Y44_N29
\string_data[11][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[11][0][4]~q\);

-- Location: LCCOMB_X3_Y44_N18
\Selector12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~20_combout\ = (lut_index(0) & ((lut_index(2) & (\string_data[11][0][4]~q\)) # (!lut_index(2) & ((\string_data[14][0][6]~q\))))) # (!lut_index(0) & (((!lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][4]~q\,
	datab => lut_index(0),
	datac => lut_index(2),
	datad => \string_data[14][0][6]~q\,
	combout => \Selector12~20_combout\);

-- Location: LCCOMB_X4_Y44_N12
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (lut_index(3) & (\Selector12~2_combout\ & ((\Selector12~20_combout\) # (!\Selector10~0_combout\)))) # (!lut_index(3) & (((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => \Selector12~20_combout\,
	datac => lut_index(3),
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X4_Y44_N8
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector10~1_combout\ & ((\Selector10~0_combout\) # (\Selector12~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datac => \Selector12~17_combout\,
	datad => \Selector10~1_combout\,
	combout => \Selector10~2_combout\);

-- Location: FF_X4_Y44_N9
\mlcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector10~2_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(2));

-- Location: LCCOMB_X1_Y43_N14
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!lut_index(1) & (!lut_index(3) & !lut_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(1),
	datac => lut_index(3),
	datad => lut_index(2),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X1_Y43_N28
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (!lut_index(0) & ((\string_data[12][0][6]~q\ & (!lut_index(2))) # (!\string_data[12][0][6]~q\ & (lut_index(2) & !lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][6]~q\,
	datab => lut_index(2),
	datac => lut_index(0),
	datad => lut_index(1),
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X1_Y43_N18
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Selector9~1_combout\) # ((lut_index(0) & (lut_index(1) & \string_data[14][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => \string_data[14][0][6]~q\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X1_Y43_N12
\Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\Selector12~2_combout\ & ((\Selector9~0_combout\) # ((lut_index(3) & \Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => \Selector9~0_combout\,
	datac => lut_index(3),
	datad => \Selector9~2_combout\,
	combout => \Selector9~3_combout\);

-- Location: FF_X1_Y43_N13
\mlcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector9~3_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(3));

-- Location: LCCOMB_X2_Y43_N18
\Selector12~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~21_combout\ = ((lut_index(2) & ((\string_data[11][0][4]~q\))) # (!lut_index(2) & (\string_data[14][0][6]~q\))) # (!\Selector12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[14][0][6]~q\,
	datab => \string_data[11][0][4]~q\,
	datac => lut_index(2),
	datad => \Selector12~16_combout\,
	combout => \Selector12~21_combout\);

-- Location: LCCOMB_X1_Y43_N20
\Selector12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~24_combout\ = (lut_index(0) & ((\string_data[12][0][4]~q\))) # (!lut_index(0) & (!\string_data[12][0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][6]~q\,
	datac => \string_data[12][0][4]~q\,
	datad => lut_index(0),
	combout => \Selector12~24_combout\);

-- Location: LCCOMB_X2_Y43_N22
\Selector12~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~25_combout\ = (\Selector12~2_combout\ & (lut_index(2) & \Selector12~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datac => lut_index(2),
	datad => \Selector12~24_combout\,
	combout => \Selector12~25_combout\);

-- Location: LCCOMB_X2_Y43_N4
\Selector12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~22_combout\ = (lut_index(4) & ((lut_index(0) & (\string_data[12][0][4]~q\)) # (!lut_index(0) & ((\string_data[11][0][4]~q\))))) # (!lut_index(4) & (((!lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][4]~q\,
	datab => \string_data[11][0][4]~q\,
	datac => lut_index(4),
	datad => lut_index(0),
	combout => \Selector12~22_combout\);

-- Location: LCCOMB_X2_Y43_N30
\Selector12~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~23_combout\ = (\Selector12~22_combout\ & \Selector12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector12~22_combout\,
	datad => \Selector12~8_combout\,
	combout => \Selector12~23_combout\);

-- Location: LCCOMB_X2_Y43_N28
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (lut_index(3) & (lut_index(1))) # (!lut_index(3) & ((lut_index(1) & ((\Selector12~15_combout\))) # (!lut_index(1) & (\Selector12~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(1),
	datac => \Selector12~23_combout\,
	datad => \Selector12~15_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X2_Y43_N26
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (lut_index(3) & ((\Selector8~0_combout\ & ((\Selector12~25_combout\))) # (!\Selector8~0_combout\ & (!\Selector12~21_combout\)))) # (!lut_index(3) & (((\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => \Selector12~21_combout\,
	datac => \Selector12~25_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X2_Y43_N27
\mlcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(4));

-- Location: LCCOMB_X1_Y44_N8
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (lut_index(4)) # (lut_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(4),
	datad => lut_index(5),
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X1_Y44_N22
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (!lut_index(5) & (lut_index(4) $ (lut_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(4),
	datac => lut_index(3),
	datad => lut_index(5),
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X1_Y44_N24
\Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (lut_index(0) & (!lut_index(1) & !lut_index(2))) # (!lut_index(0) & ((lut_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datac => lut_index(0),
	datad => lut_index(2),
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X1_Y44_N12
\Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = (\Selector7~3_combout\ & (!lut_index(1) & (\Selector7~4_combout\ & !\Selector7~5_combout\))) # (!\Selector7~3_combout\ & ((\Selector7~5_combout\) # ((lut_index(1) & !\Selector7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => \Selector7~3_combout\,
	datac => \Selector7~4_combout\,
	datad => \Selector7~5_combout\,
	combout => \Selector7~7_combout\);

-- Location: LCCOMB_X1_Y44_N14
\Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~8_combout\ = (\Selector7~5_combout\ & (!\Selector7~3_combout\ & (lut_index(1) $ (\Selector7~4_combout\)))) # (!\Selector7~5_combout\ & (lut_index(1) & ((\Selector7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => \Selector7~3_combout\,
	datac => \Selector7~4_combout\,
	datad => \Selector7~5_combout\,
	combout => \Selector7~8_combout\);

-- Location: LCCOMB_X1_Y44_N26
\Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = (\Selector7~4_combout\ & (\Selector7~5_combout\ $ (\Selector7~3_combout\ $ (!lut_index(1))))) # (!\Selector7~4_combout\ & (((!\Selector7~3_combout\ & lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~4_combout\,
	datab => \Selector7~5_combout\,
	datac => \Selector7~3_combout\,
	datad => lut_index(1),
	combout => \Selector7~6_combout\);

-- Location: LCCOMB_X1_Y44_N2
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (lut_index(4) & (\string_data[12][0][6]~q\)) # (!lut_index(4) & ((\string_data[11][0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][6]~q\,
	datab => \string_data[11][0][4]~q\,
	datac => lut_index(4),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X1_Y44_N20
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (lut_index(0) & ((\Selector7~0_combout\))) # (!lut_index(0) & (\string_data[12][0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(0),
	datac => \string_data[12][0][4]~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X1_Y44_N10
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector7~1_combout\ & (lut_index(2) $ ((!lut_index(1))))) # (!\Selector7~1_combout\ & (lut_index(2) & ((lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => \Selector7~1_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X1_Y44_N6
\Selector7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~9_combout\ = (\Selector7~8_combout\ & (\string_data[14][0][6]~q\ & ((\Selector7~7_combout\) # (!\Selector7~2_combout\)))) # (!\Selector7~8_combout\ & (\Selector7~7_combout\ $ (((!\Selector7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~7_combout\,
	datab => \string_data[14][0][6]~q\,
	datac => \Selector7~8_combout\,
	datad => \Selector7~2_combout\,
	combout => \Selector7~9_combout\);

-- Location: LCCOMB_X1_Y44_N0
\Selector7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~10_combout\ = (\Selector7~8_combout\ & ((\Selector7~6_combout\ $ (\Selector7~9_combout\)))) # (!\Selector7~8_combout\ & ((\Selector7~6_combout\ & ((\Selector7~9_combout\))) # (!\Selector7~6_combout\ & (!\Selector7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~7_combout\,
	datab => \Selector7~8_combout\,
	datac => \Selector7~6_combout\,
	datad => \Selector7~9_combout\,
	combout => \Selector7~10_combout\);

-- Location: FF_X1_Y44_N1
\mlcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector7~10_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(5));

-- Location: LCCOMB_X3_Y43_N12
\Selector12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~30_combout\ = ((lut_index(2) & (\string_data[12][0][4]~q\ & !lut_index(0)))) # (!\Selector12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \string_data[12][0][4]~q\,
	datac => lut_index(0),
	datad => \Selector12~2_combout\,
	combout => \Selector12~30_combout\);

-- Location: LCCOMB_X3_Y43_N6
\Selector12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~28_combout\ = (lut_index(4) & ((lut_index(2) & ((lut_index(0)))) # (!lut_index(2) & ((\string_data[12][0][6]~q\) # (!lut_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => \string_data[12][0][6]~q\,
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \Selector12~28_combout\);

-- Location: LCCOMB_X3_Y43_N16
\Selector12~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~29_combout\ = (!lut_index(5) & (!lut_index(7) & (!lut_index(6) & \Selector12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(7),
	datac => lut_index(6),
	datad => \Selector12~28_combout\,
	combout => \Selector12~29_combout\);

-- Location: LCCOMB_X3_Y43_N14
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (lut_index(3) & (((lut_index(1))))) # (!lut_index(3) & ((lut_index(1) & (\Selector12~5_combout\)) # (!lut_index(1) & ((\Selector12~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => \Selector12~5_combout\,
	datac => lut_index(1),
	datad => \Selector12~29_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X2_Y43_N16
\Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = lut_index(0) $ (lut_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(0),
	datad => lut_index(2),
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X3_Y43_N26
\Selector12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~26_combout\ = (\Selector12~2_combout\ & ((lut_index(2) & (!lut_index(0))) # (!lut_index(2) & ((lut_index(0)) # (\string_data[12][0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(0),
	datac => \string_data[12][0][6]~q\,
	datad => \Selector12~2_combout\,
	combout => \Selector12~26_combout\);

-- Location: LCCOMB_X3_Y43_N24
\Selector12~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~27_combout\ = (\Selector12~26_combout\) # ((!\Selector12~3_combout\ & (!\string_data[11][0][4]~q\ & \Selector12~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~3_combout\,
	datab => \string_data[11][0][4]~q\,
	datac => \Selector12~26_combout\,
	datad => \Selector12~16_combout\,
	combout => \Selector12~27_combout\);

-- Location: LCCOMB_X3_Y43_N10
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (lut_index(3) & ((\Selector6~0_combout\ & (!\Selector12~30_combout\)) # (!\Selector6~0_combout\ & ((\Selector12~27_combout\))))) # (!lut_index(3) & (((\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~30_combout\,
	datab => lut_index(3),
	datac => \Selector6~0_combout\,
	datad => \Selector12~27_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X3_Y43_N11
\mlcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(6));

-- Location: LCCOMB_X2_Y44_N20
\lut_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~0_combout\ = (lut_index(2) & (!lut_index(1) & (lut_index(0) $ (!lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => lut_index(4),
	combout => \lut_data~0_combout\);

-- Location: LCCOMB_X2_Y44_N28
\lut_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~1_combout\ = (!lut_index(5) & (!lut_index(3) & \lut_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datac => lut_index(3),
	datad => \lut_data~0_combout\,
	combout => \lut_data~1_combout\);

-- Location: FF_X2_Y44_N29
\mlcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_data~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(7));

-- Location: LCCOMB_X3_Y44_N8
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (lut_index(2) & ((lut_index(1)) # (lut_index(4) $ (lut_index(0))))) # (!lut_index(2) & (lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y44_N6
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

-- Location: FF_X4_Y44_N7
mlcd_rs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WideOr0~1_combout\,
	clrn => \btn[0]~input_o\,
	ena => \mlcd_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_rs~q\);

-- Location: LCCOMB_X2_Y45_N24
\u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector3~0_combout\ = (\u0|state.01~q\) # ((\u0|lcd_en~q\ & ((\u0|state.10~q\) # (!\u0|state.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.00~q\,
	datab => \u0|state.01~q\,
	datac => \u0|lcd_en~q\,
	datad => \u0|state.10~q\,
	combout => \u0|Selector3~0_combout\);

-- Location: FF_X2_Y45_N25
\u0|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector3~0_combout\,
	clrn => \btn[0]~input_o\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|lcd_en~q\);

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


