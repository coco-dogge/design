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

-- DATE "06/01/2023 10:26:29"

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
	lcd_on : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	lcd_rs : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic
	);
END HW20;

-- Design Ports Information
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
-- btn[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \rst~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \mlcd_st~18_combout\ : std_logic;
SIGNAL \lut_index[1]~8_combout\ : std_logic;
SIGNAL \btn[0]~input_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
SIGNAL \btn[3]~input_o\ : std_logic;
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \rst~0_combout\ : std_logic;
SIGNAL \rst~0clkctrl_outclk\ : std_logic;
SIGNAL \lut_index[7]~12_combout\ : std_logic;
SIGNAL \lut_index[1]~9\ : std_logic;
SIGNAL \lut_index[2]~10_combout\ : std_logic;
SIGNAL \lut_index[2]~11\ : std_logic;
SIGNAL \lut_index[3]~13_combout\ : std_logic;
SIGNAL \lut_index[3]~14\ : std_logic;
SIGNAL \lut_index[4]~15_combout\ : std_logic;
SIGNAL \lut_index[4]~16\ : std_logic;
SIGNAL \lut_index[5]~17_combout\ : std_logic;
SIGNAL \lut_index[5]~18\ : std_logic;
SIGNAL \lut_index[6]~19_combout\ : std_logic;
SIGNAL \lut_index[6]~20\ : std_logic;
SIGNAL \lut_index[7]~21_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \mdly[0]~18_combout\ : std_logic;
SIGNAL \mdly[17]~22_combout\ : std_logic;
SIGNAL \mdly[17]~23_combout\ : std_logic;
SIGNAL \mdly[0]~19\ : std_logic;
SIGNAL \mdly[1]~20_combout\ : std_logic;
SIGNAL \mdly[1]~21\ : std_logic;
SIGNAL \mdly[2]~24_combout\ : std_logic;
SIGNAL \mdly[2]~25\ : std_logic;
SIGNAL \mdly[3]~26_combout\ : std_logic;
SIGNAL \mdly[3]~27\ : std_logic;
SIGNAL \mdly[4]~28_combout\ : std_logic;
SIGNAL \mdly[4]~29\ : std_logic;
SIGNAL \mdly[5]~30_combout\ : std_logic;
SIGNAL \mdly[5]~31\ : std_logic;
SIGNAL \mdly[6]~32_combout\ : std_logic;
SIGNAL \mdly[6]~33\ : std_logic;
SIGNAL \mdly[7]~34_combout\ : std_logic;
SIGNAL \mdly[7]~35\ : std_logic;
SIGNAL \mdly[8]~36_combout\ : std_logic;
SIGNAL \mdly[8]~37\ : std_logic;
SIGNAL \mdly[9]~38_combout\ : std_logic;
SIGNAL \mdly[9]~39\ : std_logic;
SIGNAL \mdly[10]~40_combout\ : std_logic;
SIGNAL \mdly[10]~41\ : std_logic;
SIGNAL \mdly[11]~42_combout\ : std_logic;
SIGNAL \mdly[11]~43\ : std_logic;
SIGNAL \mdly[12]~44_combout\ : std_logic;
SIGNAL \mdly[12]~45\ : std_logic;
SIGNAL \mdly[13]~46_combout\ : std_logic;
SIGNAL \mdly[13]~47\ : std_logic;
SIGNAL \mdly[14]~48_combout\ : std_logic;
SIGNAL \mdly[14]~49\ : std_logic;
SIGNAL \mdly[15]~50_combout\ : std_logic;
SIGNAL \mdly[15]~51\ : std_logic;
SIGNAL \mdly[16]~52_combout\ : std_logic;
SIGNAL \mdly[16]~53\ : std_logic;
SIGNAL \mdly[17]~54_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mlcd_st~19_combout\ : std_logic;
SIGNAL \mlcd_st.000001~3_combout\ : std_logic;
SIGNAL \mlcd_st.000001~q\ : std_logic;
SIGNAL \mlcd_st.000001~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \mlcd_start~q\ : std_logic;
SIGNAL \u0|state.00~0_combout\ : std_logic;
SIGNAL \u0|state.00~q\ : std_logic;
SIGNAL \u0|state.01~0_combout\ : std_logic;
SIGNAL \u0|state.01~q\ : std_logic;
SIGNAL \u0|Selector2~1_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Selector6~1_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|Selector4~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|Selector5~1_combout\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|state.10~q\ : std_logic;
SIGNAL \u0|state~14_combout\ : std_logic;
SIGNAL \u0|state.11~feeder_combout\ : std_logic;
SIGNAL \u0|state.11~q\ : std_logic;
SIGNAL \u0|prestart~q\ : std_logic;
SIGNAL \u0|mstart~0_combout\ : std_logic;
SIGNAL \u0|mstart~q\ : std_logic;
SIGNAL \u0|odone~0_combout\ : std_logic;
SIGNAL \u0|odone~1_combout\ : std_logic;
SIGNAL \u0|odone~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \mlcd_st.000010~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mlcd_st.000011~q\ : std_logic;
SIGNAL \lut_index[0]~7_combout\ : std_logic;
SIGNAL \Selector12~16_combout\ : std_logic;
SIGNAL \string_state~12_combout\ : std_logic;
SIGNAL \string_state~13_combout\ : std_logic;
SIGNAL \string_state.10~q\ : std_logic;
SIGNAL \string_state~8_combout\ : std_logic;
SIGNAL \string_state~9_combout\ : std_logic;
SIGNAL \string_state.11~q\ : std_logic;
SIGNAL \string_state~10_combout\ : std_logic;
SIGNAL \string_state.00~0_combout\ : std_logic;
SIGNAL \string_state.00~q\ : std_logic;
SIGNAL \string_data~4_combout\ : std_logic;
SIGNAL \string_data[12][0][6]~q\ : std_logic;
SIGNAL \string_state~11_combout\ : std_logic;
SIGNAL \string_state.01~q\ : std_logic;
SIGNAL \string_data[11][0][6]~0_combout\ : std_logic;
SIGNAL \string_data[11][0][6]~q\ : std_logic;
SIGNAL \Selector12~14_combout\ : std_logic;
SIGNAL \Selector12~52_combout\ : std_logic;
SIGNAL \string_data[12][0][4]~q\ : std_logic;
SIGNAL \Selector12~15_combout\ : std_logic;
SIGNAL \Selector12~24_combout\ : std_logic;
SIGNAL \Selector12~18_combout\ : std_logic;
SIGNAL \string_data~5_combout\ : std_logic;
SIGNAL \string_data[10][0][0]~q\ : std_logic;
SIGNAL \Selector12~25_combout\ : std_logic;
SIGNAL \Selector12~53_combout\ : std_logic;
SIGNAL \Selector12~26_combout\ : std_logic;
SIGNAL \string_data[13][0][6]~0_combout\ : std_logic;
SIGNAL \string_data[13][0][6]~q\ : std_logic;
SIGNAL \Selector12~21_combout\ : std_logic;
SIGNAL \Selector12~22_combout\ : std_logic;
SIGNAL \Selector12~17_combout\ : std_logic;
SIGNAL \Selector12~19_combout\ : std_logic;
SIGNAL \Selector12~20_combout\ : std_logic;
SIGNAL \Selector12~23_combout\ : std_logic;
SIGNAL \Selector12~27_combout\ : std_logic;
SIGNAL \mlcd_st.000000~0_combout\ : std_logic;
SIGNAL \mlcd_st.000000~q\ : std_logic;
SIGNAL \mlcd_data[0]~0_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \Selector12~28_combout\ : std_logic;
SIGNAL \Selector12~30_combout\ : std_logic;
SIGNAL \Selector12~29_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector11~5_combout\ : std_logic;
SIGNAL \Selector12~57_combout\ : std_logic;
SIGNAL \Selector12~58_combout\ : std_logic;
SIGNAL \Selector12~32_combout\ : std_logic;
SIGNAL \Selector12~33_combout\ : std_logic;
SIGNAL \Selector12~31_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector12~34_combout\ : std_logic;
SIGNAL \Selector12~54_combout\ : std_logic;
SIGNAL \string_data~6_combout\ : std_logic;
SIGNAL \string_data[11][0][4]~feeder_combout\ : std_logic;
SIGNAL \string_data[11][0][4]~q\ : std_logic;
SIGNAL \Selector12~38_combout\ : std_logic;
SIGNAL \Selector12~35_combout\ : std_logic;
SIGNAL \Selector12~36_combout\ : std_logic;
SIGNAL \Selector12~37_combout\ : std_logic;
SIGNAL \Selector12~39_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Selector9~5_combout\ : std_logic;
SIGNAL \Selector9~7_combout\ : std_logic;
SIGNAL \Selector9~6_combout\ : std_logic;
SIGNAL \Selector12~46_combout\ : std_logic;
SIGNAL \Selector12~47_combout\ : std_logic;
SIGNAL \Selector12~41_combout\ : std_logic;
SIGNAL \Selector12~40_combout\ : std_logic;
SIGNAL \Selector12~42_combout\ : std_logic;
SIGNAL \Selector12~44_combout\ : std_logic;
SIGNAL \Selector12~45_combout\ : std_logic;
SIGNAL \Selector12~43_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector7~10_combout\ : std_logic;
SIGNAL \Selector7~9_combout\ : std_logic;
SIGNAL \Selector7~11_combout\ : std_logic;
SIGNAL \Selector7~12_combout\ : std_logic;
SIGNAL \Selector7~13_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \Selector7~8_combout\ : std_logic;
SIGNAL \Selector7~14_combout\ : std_logic;
SIGNAL \Selector12~50_combout\ : std_logic;
SIGNAL \Selector12~51_combout\ : std_logic;
SIGNAL \Selector12~55_combout\ : std_logic;
SIGNAL \Selector12~56_combout\ : std_logic;
SIGNAL \Selector12~48_combout\ : std_logic;
SIGNAL \Selector12~49_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_rst~0clkctrl_outclk\ : std_logic;

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

\rst~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~0_combout\);
\ALT_INV_rst~0clkctrl_outclk\ <= NOT \rst~0clkctrl_outclk\;

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

-- Location: LCCOMB_X88_Y52_N14
\mlcd_st~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~18_combout\ = (\mlcd_st.000001~q\ & !\u0|odone~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000001~q\,
	datad => \u0|odone~q\,
	combout => \mlcd_st~18_combout\);

-- Location: LCCOMB_X90_Y52_N14
\lut_index[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[1]~8_combout\ = (lut_index(0) & (lut_index(1) $ (VCC))) # (!lut_index(0) & (lut_index(1) & VCC))
-- \lut_index[1]~9\ = CARRY((lut_index(0) & lut_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datad => VCC,
	combout => \lut_index[1]~8_combout\,
	cout => \lut_index[1]~9\);

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

-- Location: LCCOMB_X114_Y45_N8
\rst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rst~0_combout\ = (((!\btn[1]~input_o\) # (!\btn[3]~input_o\)) # (!\btn[2]~input_o\)) # (!\btn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[0]~input_o\,
	datab => \btn[2]~input_o\,
	datac => \btn[3]~input_o\,
	datad => \btn[1]~input_o\,
	combout => \rst~0_combout\);

-- Location: CLKCTRL_G9
\rst~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~0clkctrl_outclk\);

-- Location: LCCOMB_X90_Y52_N10
\lut_index[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~12_combout\ = (\mlcd_st.000011~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mlcd_st.000011~q\,
	datad => \LessThan0~1_combout\,
	combout => \lut_index[7]~12_combout\);

-- Location: FF_X90_Y52_N15
\lut_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[1]~8_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \lut_index[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(1));

-- Location: LCCOMB_X90_Y52_N16
\lut_index[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[2]~10_combout\ = (lut_index(2) & (!\lut_index[1]~9\)) # (!lut_index(2) & ((\lut_index[1]~9\) # (GND)))
-- \lut_index[2]~11\ = CARRY((!\lut_index[1]~9\) # (!lut_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(2),
	datad => VCC,
	cin => \lut_index[1]~9\,
	combout => \lut_index[2]~10_combout\,
	cout => \lut_index[2]~11\);

-- Location: FF_X90_Y52_N17
\lut_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[2]~10_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \lut_index[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(2));

-- Location: LCCOMB_X90_Y52_N18
\lut_index[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[3]~13_combout\ = (lut_index(3) & (\lut_index[2]~11\ $ (GND))) # (!lut_index(3) & (!\lut_index[2]~11\ & VCC))
-- \lut_index[3]~14\ = CARRY((lut_index(3) & !\lut_index[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(3),
	datad => VCC,
	cin => \lut_index[2]~11\,
	combout => \lut_index[3]~13_combout\,
	cout => \lut_index[3]~14\);

-- Location: FF_X90_Y52_N19
\lut_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[3]~13_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \lut_index[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(3));

-- Location: LCCOMB_X90_Y52_N20
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

-- Location: FF_X90_Y52_N21
\lut_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[4]~15_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \lut_index[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(4));

-- Location: LCCOMB_X90_Y52_N22
\lut_index[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[5]~17_combout\ = (lut_index(5) & (\lut_index[4]~16\ $ (GND))) # (!lut_index(5) & (!\lut_index[4]~16\ & VCC))
-- \lut_index[5]~18\ = CARRY((lut_index(5) & !\lut_index[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(5),
	datad => VCC,
	cin => \lut_index[4]~16\,
	combout => \lut_index[5]~17_combout\,
	cout => \lut_index[5]~18\);

-- Location: FF_X90_Y52_N23
\lut_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[5]~17_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \lut_index[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(5));

-- Location: LCCOMB_X90_Y52_N24
\lut_index[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[6]~19_combout\ = (lut_index(6) & (!\lut_index[5]~18\)) # (!lut_index(6) & ((\lut_index[5]~18\) # (GND)))
-- \lut_index[6]~20\ = CARRY((!\lut_index[5]~18\) # (!lut_index(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datad => VCC,
	cin => \lut_index[5]~18\,
	combout => \lut_index[6]~19_combout\,
	cout => \lut_index[6]~20\);

-- Location: FF_X90_Y52_N25
\lut_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[6]~19_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \lut_index[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(6));

-- Location: LCCOMB_X90_Y52_N26
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

-- Location: FF_X90_Y52_N27
\lut_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[7]~21_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \lut_index[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(7));

-- Location: LCCOMB_X90_Y52_N12
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

-- Location: LCCOMB_X90_Y52_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!lut_index(6) & (!lut_index(7) & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(6),
	datab => lut_index(7),
	datac => lut_index(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X89_Y51_N14
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

-- Location: LCCOMB_X89_Y52_N18
\mdly[17]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~22_combout\ = (\mlcd_st.000010~q\ & !lut_index(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mlcd_st.000010~q\,
	datad => lut_index(6),
	combout => \mdly[17]~22_combout\);

-- Location: LCCOMB_X89_Y52_N20
\mdly[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~23_combout\ = (!lut_index(7) & (\mdly[17]~22_combout\ & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(7),
	datab => lut_index(5),
	datac => \LessThan0~0_combout\,
	datad => \mdly[17]~22_combout\,
	combout => \mdly[17]~23_combout\);

-- Location: FF_X89_Y51_N15
\mdly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[0]~18_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(0));

-- Location: LCCOMB_X89_Y51_N16
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

-- Location: FF_X89_Y51_N17
\mdly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[1]~20_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(1));

-- Location: LCCOMB_X89_Y51_N18
\mdly[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[2]~24_combout\ = (mdly(2) & (\mdly[1]~21\ $ (GND))) # (!mdly(2) & (!\mdly[1]~21\ & VCC))
-- \mdly[2]~25\ = CARRY((mdly(2) & !\mdly[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(2),
	datad => VCC,
	cin => \mdly[1]~21\,
	combout => \mdly[2]~24_combout\,
	cout => \mdly[2]~25\);

-- Location: FF_X89_Y51_N19
\mdly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[2]~24_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(2));

-- Location: LCCOMB_X89_Y51_N20
\mdly[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[3]~26_combout\ = (mdly(3) & (!\mdly[2]~25\)) # (!mdly(3) & ((\mdly[2]~25\) # (GND)))
-- \mdly[3]~27\ = CARRY((!\mdly[2]~25\) # (!mdly(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(3),
	datad => VCC,
	cin => \mdly[2]~25\,
	combout => \mdly[3]~26_combout\,
	cout => \mdly[3]~27\);

-- Location: FF_X89_Y51_N21
\mdly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[3]~26_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(3));

-- Location: LCCOMB_X89_Y51_N22
\mdly[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[4]~28_combout\ = (mdly(4) & (\mdly[3]~27\ $ (GND))) # (!mdly(4) & (!\mdly[3]~27\ & VCC))
-- \mdly[4]~29\ = CARRY((mdly(4) & !\mdly[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(4),
	datad => VCC,
	cin => \mdly[3]~27\,
	combout => \mdly[4]~28_combout\,
	cout => \mdly[4]~29\);

-- Location: FF_X89_Y51_N23
\mdly[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[4]~28_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(4));

-- Location: LCCOMB_X89_Y51_N24
\mdly[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[5]~30_combout\ = (mdly(5) & (!\mdly[4]~29\)) # (!mdly(5) & ((\mdly[4]~29\) # (GND)))
-- \mdly[5]~31\ = CARRY((!\mdly[4]~29\) # (!mdly(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(5),
	datad => VCC,
	cin => \mdly[4]~29\,
	combout => \mdly[5]~30_combout\,
	cout => \mdly[5]~31\);

-- Location: FF_X89_Y51_N25
\mdly[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[5]~30_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(5));

-- Location: LCCOMB_X89_Y51_N26
\mdly[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[6]~32_combout\ = (mdly(6) & (\mdly[5]~31\ $ (GND))) # (!mdly(6) & (!\mdly[5]~31\ & VCC))
-- \mdly[6]~33\ = CARRY((mdly(6) & !\mdly[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(6),
	datad => VCC,
	cin => \mdly[5]~31\,
	combout => \mdly[6]~32_combout\,
	cout => \mdly[6]~33\);

-- Location: FF_X89_Y51_N27
\mdly[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[6]~32_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(6));

-- Location: LCCOMB_X89_Y51_N28
\mdly[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[7]~34_combout\ = (mdly(7) & (!\mdly[6]~33\)) # (!mdly(7) & ((\mdly[6]~33\) # (GND)))
-- \mdly[7]~35\ = CARRY((!\mdly[6]~33\) # (!mdly(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(7),
	datad => VCC,
	cin => \mdly[6]~33\,
	combout => \mdly[7]~34_combout\,
	cout => \mdly[7]~35\);

-- Location: FF_X89_Y51_N29
\mdly[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[7]~34_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(7));

-- Location: LCCOMB_X89_Y51_N30
\mdly[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[8]~36_combout\ = (mdly(8) & (\mdly[7]~35\ $ (GND))) # (!mdly(8) & (!\mdly[7]~35\ & VCC))
-- \mdly[8]~37\ = CARRY((mdly(8) & !\mdly[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(8),
	datad => VCC,
	cin => \mdly[7]~35\,
	combout => \mdly[8]~36_combout\,
	cout => \mdly[8]~37\);

-- Location: FF_X89_Y51_N31
\mdly[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[8]~36_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(8));

-- Location: LCCOMB_X89_Y50_N0
\mdly[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[9]~38_combout\ = (mdly(9) & (!\mdly[8]~37\)) # (!mdly(9) & ((\mdly[8]~37\) # (GND)))
-- \mdly[9]~39\ = CARRY((!\mdly[8]~37\) # (!mdly(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(9),
	datad => VCC,
	cin => \mdly[8]~37\,
	combout => \mdly[9]~38_combout\,
	cout => \mdly[9]~39\);

-- Location: FF_X89_Y50_N1
\mdly[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[9]~38_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(9));

-- Location: LCCOMB_X89_Y50_N2
\mdly[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[10]~40_combout\ = (mdly(10) & (\mdly[9]~39\ $ (GND))) # (!mdly(10) & (!\mdly[9]~39\ & VCC))
-- \mdly[10]~41\ = CARRY((mdly(10) & !\mdly[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(10),
	datad => VCC,
	cin => \mdly[9]~39\,
	combout => \mdly[10]~40_combout\,
	cout => \mdly[10]~41\);

-- Location: FF_X89_Y50_N3
\mdly[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[10]~40_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(10));

-- Location: LCCOMB_X89_Y50_N4
\mdly[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[11]~42_combout\ = (mdly(11) & (!\mdly[10]~41\)) # (!mdly(11) & ((\mdly[10]~41\) # (GND)))
-- \mdly[11]~43\ = CARRY((!\mdly[10]~41\) # (!mdly(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(11),
	datad => VCC,
	cin => \mdly[10]~41\,
	combout => \mdly[11]~42_combout\,
	cout => \mdly[11]~43\);

-- Location: FF_X89_Y50_N5
\mdly[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[11]~42_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(11));

-- Location: LCCOMB_X89_Y50_N6
\mdly[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[12]~44_combout\ = (mdly(12) & (\mdly[11]~43\ $ (GND))) # (!mdly(12) & (!\mdly[11]~43\ & VCC))
-- \mdly[12]~45\ = CARRY((mdly(12) & !\mdly[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(12),
	datad => VCC,
	cin => \mdly[11]~43\,
	combout => \mdly[12]~44_combout\,
	cout => \mdly[12]~45\);

-- Location: FF_X89_Y50_N7
\mdly[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[12]~44_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(12));

-- Location: LCCOMB_X89_Y50_N8
\mdly[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[13]~46_combout\ = (mdly(13) & (!\mdly[12]~45\)) # (!mdly(13) & ((\mdly[12]~45\) # (GND)))
-- \mdly[13]~47\ = CARRY((!\mdly[12]~45\) # (!mdly(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(13),
	datad => VCC,
	cin => \mdly[12]~45\,
	combout => \mdly[13]~46_combout\,
	cout => \mdly[13]~47\);

-- Location: FF_X89_Y50_N9
\mdly[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[13]~46_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(13));

-- Location: LCCOMB_X89_Y50_N10
\mdly[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[14]~48_combout\ = (mdly(14) & (\mdly[13]~47\ $ (GND))) # (!mdly(14) & (!\mdly[13]~47\ & VCC))
-- \mdly[14]~49\ = CARRY((mdly(14) & !\mdly[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(14),
	datad => VCC,
	cin => \mdly[13]~47\,
	combout => \mdly[14]~48_combout\,
	cout => \mdly[14]~49\);

-- Location: FF_X89_Y50_N11
\mdly[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[14]~48_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(14));

-- Location: LCCOMB_X89_Y50_N12
\mdly[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[15]~50_combout\ = (mdly(15) & (!\mdly[14]~49\)) # (!mdly(15) & ((\mdly[14]~49\) # (GND)))
-- \mdly[15]~51\ = CARRY((!\mdly[14]~49\) # (!mdly(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(15),
	datad => VCC,
	cin => \mdly[14]~49\,
	combout => \mdly[15]~50_combout\,
	cout => \mdly[15]~51\);

-- Location: FF_X89_Y50_N13
\mdly[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[15]~50_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(15));

-- Location: LCCOMB_X89_Y50_N14
\mdly[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[16]~52_combout\ = (mdly(16) & (\mdly[15]~51\ $ (GND))) # (!mdly(16) & (!\mdly[15]~51\ & VCC))
-- \mdly[16]~53\ = CARRY((mdly(16) & !\mdly[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(16),
	datad => VCC,
	cin => \mdly[15]~51\,
	combout => \mdly[16]~52_combout\,
	cout => \mdly[16]~53\);

-- Location: FF_X89_Y50_N15
\mdly[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[16]~52_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(16));

-- Location: LCCOMB_X89_Y50_N16
\mdly[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~54_combout\ = \mdly[16]~53\ $ (mdly(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => mdly(17),
	cin => \mdly[16]~53\,
	combout => \mdly[17]~54_combout\);

-- Location: FF_X89_Y50_N17
\mdly[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[17]~54_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(17));

-- Location: LCCOMB_X89_Y51_N8
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!mdly(3)) # (!mdly(2))) # (!mdly(1))) # (!mdly(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(4),
	datab => mdly(1),
	datac => mdly(2),
	datad => mdly(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X89_Y51_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!mdly(7)) # (!mdly(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mdly(8),
	datad => mdly(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X89_Y51_N4
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((\LessThan1~0_combout\) # (\LessThan1~1_combout\)) # (!mdly(5))) # (!mdly(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(6),
	datab => mdly(5),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X89_Y50_N18
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!mdly(10)) # (!mdly(11))) # (!mdly(9))) # (!mdly(12))

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
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X89_Y50_N24
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

-- Location: LCCOMB_X89_Y51_N2
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

-- Location: LCCOMB_X89_Y52_N16
\mlcd_st~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~19_combout\ = (\mlcd_st~18_combout\) # (((\mlcd_st.000010~q\ & !\LessThan1~5_combout\)) # (!\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st~18_combout\,
	datab => \LessThan0~1_combout\,
	datac => \mlcd_st.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \mlcd_st~19_combout\);

-- Location: LCCOMB_X89_Y52_N24
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

-- Location: FF_X89_Y52_N25
\mlcd_st.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mlcd_st.000001~3_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000001~q\);

-- Location: LCCOMB_X89_Y52_N28
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

-- Location: LCCOMB_X89_Y52_N2
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

-- Location: FF_X89_Y52_N3
mlcd_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_start~q\);

-- Location: LCCOMB_X88_Y53_N4
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

-- Location: FF_X88_Y53_N5
\u0|state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state.00~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.00~q\);

-- Location: LCCOMB_X88_Y53_N28
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

-- Location: FF_X88_Y53_N29
\u0|state.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state.01~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.01~q\);

-- Location: LCCOMB_X87_Y53_N12
\u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~1_combout\ = (\u0|state.10~q\ & ((!\u0|LessThan0~0_combout\) # (!\u0|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datac => \u0|state.10~q\,
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|Selector2~1_combout\);

-- Location: LCCOMB_X87_Y53_N14
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|cont\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X87_Y53_N2
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|state.01~q\) # ((\u0|state~14_combout\) # (!\u0|state.00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|state.01~q\,
	datac => \u0|state~14_combout\,
	datad => \u0|state.00~q\,
	combout => \u0|Selector6~0_combout\);

-- Location: LCCOMB_X87_Y53_N30
\u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector8~0_combout\ = (\u0|Selector2~1_combout\ & ((\u0|Add0~0_combout\) # ((\u0|cont\(0) & \u0|Selector6~0_combout\)))) # (!\u0|Selector2~1_combout\ & (((\u0|cont\(0) & \u0|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector2~1_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|cont\(0),
	datad => \u0|Selector6~0_combout\,
	combout => \u0|Selector8~0_combout\);

-- Location: FF_X87_Y53_N31
\u0|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector8~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(0));

-- Location: LCCOMB_X87_Y53_N16
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

-- Location: LCCOMB_X87_Y53_N8
\u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector7~0_combout\ = (\u0|Selector2~1_combout\ & ((\u0|Add0~2_combout\) # ((\u0|cont\(1) & \u0|Selector6~0_combout\)))) # (!\u0|Selector2~1_combout\ & (((\u0|cont\(1) & \u0|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector2~1_combout\,
	datab => \u0|Add0~2_combout\,
	datac => \u0|cont\(1),
	datad => \u0|Selector6~0_combout\,
	combout => \u0|Selector7~0_combout\);

-- Location: FF_X87_Y53_N9
\u0|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector7~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(1));

-- Location: LCCOMB_X87_Y53_N18
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

-- Location: LCCOMB_X87_Y53_N26
\u0|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~1_combout\ = (\u0|Selector2~1_combout\ & ((\u0|Add0~4_combout\) # ((\u0|cont\(2) & \u0|Selector6~0_combout\)))) # (!\u0|Selector2~1_combout\ & (((\u0|cont\(2) & \u0|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector2~1_combout\,
	datab => \u0|Add0~4_combout\,
	datac => \u0|cont\(2),
	datad => \u0|Selector6~0_combout\,
	combout => \u0|Selector6~1_combout\);

-- Location: FF_X87_Y53_N27
\u0|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector6~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(2));

-- Location: LCCOMB_X87_Y53_N20
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

-- Location: LCCOMB_X87_Y53_N22
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

-- Location: LCCOMB_X87_Y53_N10
\u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~0_combout\ = (\u0|cont\(4) & ((\u0|state.01~q\) # (!\u0|state.00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.00~q\,
	datab => \u0|state.01~q\,
	datad => \u0|cont\(4),
	combout => \u0|Selector4~0_combout\);

-- Location: LCCOMB_X87_Y53_N0
\u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~1_combout\ = (\u0|state~14_combout\) # ((\u0|Selector4~0_combout\) # ((\u0|state.10~q\ & \u0|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|state~14_combout\,
	datac => \u0|Add0~8_combout\,
	datad => \u0|Selector4~0_combout\,
	combout => \u0|Selector4~1_combout\);

-- Location: FF_X87_Y53_N1
\u0|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector4~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(4));

-- Location: LCCOMB_X87_Y53_N24
\u0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (\u0|cont\(4) & ((\u0|cont\(2)) # ((\u0|cont\(1)) # (\u0|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(2),
	datab => \u0|cont\(1),
	datac => \u0|cont\(0),
	datad => \u0|cont\(4),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X87_Y53_N28
\u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~6_combout\) # ((\u0|cont\(3) & \u0|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datab => \u0|LessThan0~0_combout\,
	datac => \u0|state.10~q\,
	datad => \u0|Add0~6_combout\,
	combout => \u0|Selector5~0_combout\);

-- Location: LCCOMB_X87_Y53_N6
\u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~1_combout\ = (\u0|Selector5~0_combout\) # ((\u0|cont\(3) & ((\u0|state.01~q\) # (!\u0|state.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.00~q\,
	datab => \u0|state.01~q\,
	datac => \u0|cont\(3),
	datad => \u0|Selector5~0_combout\,
	combout => \u0|Selector5~1_combout\);

-- Location: FF_X87_Y53_N7
\u0|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector5~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(3));

-- Location: LCCOMB_X88_Y53_N26
\u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|state.01~q\) # ((\u0|state.10~q\ & ((!\u0|LessThan0~0_combout\) # (!\u0|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.01~q\,
	datab => \u0|cont\(3),
	datac => \u0|state.10~q\,
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|Selector2~0_combout\);

-- Location: FF_X88_Y53_N27
\u0|state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector2~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.10~q\);

-- Location: LCCOMB_X88_Y53_N12
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

-- Location: LCCOMB_X88_Y53_N6
\u0|state.11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state.11~feeder_combout\ = \u0|state~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|state~14_combout\,
	combout => \u0|state.11~feeder_combout\);

-- Location: FF_X88_Y53_N7
\u0|state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state.11~feeder_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.11~q\);

-- Location: FF_X89_Y53_N29
\u0|prestart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mlcd_start~q\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|prestart~q\);

-- Location: LCCOMB_X89_Y53_N24
\u0|mstart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|mstart~0_combout\ = (\u0|mstart~q\ & (((!\u0|state.11~q\)))) # (!\u0|mstart~q\ & (\mlcd_start~q\ & ((!\u0|prestart~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_start~q\,
	datab => \u0|state.11~q\,
	datac => \u0|mstart~q\,
	datad => \u0|prestart~q\,
	combout => \u0|mstart~0_combout\);

-- Location: FF_X89_Y53_N25
\u0|mstart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|mstart~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|mstart~q\);

-- Location: LCCOMB_X89_Y53_N28
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

-- Location: LCCOMB_X89_Y53_N26
\u0|odone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|odone~1_combout\ = (\u0|odone~0_combout\) # ((\u0|mstart~q\ & \u0|state.11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|mstart~q\,
	datac => \u0|state.11~q\,
	datad => \u0|odone~0_combout\,
	combout => \u0|odone~1_combout\);

-- Location: FF_X89_Y53_N27
\u0|odone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|odone~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|odone~q\);

-- Location: LCCOMB_X89_Y52_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\u0|odone~q\ & ((\mlcd_st.000001~q\) # ((\mlcd_st.000010~q\ & !\LessThan1~5_combout\)))) # (!\u0|odone~q\ & (((\mlcd_st.000010~q\ & !\LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|odone~q\,
	datab => \mlcd_st.000001~q\,
	datac => \mlcd_st.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X89_Y52_N31
\mlcd_st.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000010~q\);

-- Location: LCCOMB_X89_Y52_N6
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

-- Location: FF_X89_Y52_N7
\mlcd_st.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000011~q\);

-- Location: LCCOMB_X89_Y52_N8
\lut_index[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[0]~7_combout\ = lut_index(0) $ (((\mlcd_st.000011~q\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000011~q\,
	datac => lut_index(0),
	datad => \LessThan0~1_combout\,
	combout => \lut_index[0]~7_combout\);

-- Location: FF_X89_Y52_N9
\lut_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[0]~7_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(0));

-- Location: LCCOMB_X90_Y52_N8
\Selector12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~16_combout\ = (!lut_index(7) & (!lut_index(6) & (!lut_index(5) & !lut_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(7),
	datab => lut_index(6),
	datac => lut_index(5),
	datad => lut_index(4),
	combout => \Selector12~16_combout\);

-- Location: LCCOMB_X86_Y52_N30
\string_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~12_combout\ = (\string_state.10~q\) # ((!\string_state.11~q\ & !\btn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \string_state.11~q\,
	datac => \string_state.10~q\,
	datad => \btn[1]~input_o\,
	combout => \string_state~12_combout\);

-- Location: LCCOMB_X86_Y52_N26
\string_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~13_combout\ = (\btn[0]~input_o\ & (\btn[3]~input_o\ & \string_state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[0]~input_o\,
	datab => \btn[3]~input_o\,
	datad => \string_state~12_combout\,
	combout => \string_state~13_combout\);

-- Location: FF_X86_Y52_N27
\string_state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.10~q\);

-- Location: LCCOMB_X86_Y52_N18
\string_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~8_combout\ = (\btn[3]~input_o\ & (\btn[0]~input_o\ & ((\btn[1]~input_o\) # (\string_state.11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[1]~input_o\,
	datab => \btn[3]~input_o\,
	datac => \btn[0]~input_o\,
	datad => \string_state.11~q\,
	combout => \string_state~8_combout\);

-- Location: LCCOMB_X86_Y52_N16
\string_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~9_combout\ = (\string_state~8_combout\ & ((\string_state.11~q\) # ((!\string_state.10~q\ & !\btn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.10~q\,
	datab => \string_state~8_combout\,
	datac => \string_state.11~q\,
	datad => \btn[2]~input_o\,
	combout => \string_state~9_combout\);

-- Location: FF_X86_Y52_N17
\string_state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_state.11~q\);

-- Location: LCCOMB_X86_Y52_N28
\string_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~10_combout\ = (\string_state~8_combout\ & ((\btn[2]~input_o\) # (\string_state.10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datac => \string_state.10~q\,
	datad => \string_state~8_combout\,
	combout => \string_state~10_combout\);

-- Location: LCCOMB_X86_Y52_N22
\string_state.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state.00~0_combout\ = (\string_state~10_combout\ & ((\string_state.00~q\))) # (!\string_state~10_combout\ & (\btn[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn[3]~input_o\,
	datac => \string_state.00~q\,
	datad => \string_state~10_combout\,
	combout => \string_state.00~0_combout\);

-- Location: FF_X86_Y52_N23
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

-- Location: LCCOMB_X92_Y52_N0
\string_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data~4_combout\ = (\string_state.11~q\) # (!\string_state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \string_state.11~q\,
	datad => \string_state.00~q\,
	combout => \string_data~4_combout\);

-- Location: FF_X91_Y52_N31
\string_data[12][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \string_data~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[12][0][6]~q\);

-- Location: LCCOMB_X86_Y52_N4
\string_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_state~11_combout\ = (\btn[0]~input_o\ & (((\string_state.01~q\ & \string_state~10_combout\)))) # (!\btn[0]~input_o\ & ((\btn[3]~input_o\) # ((\string_state.01~q\ & \string_state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[0]~input_o\,
	datab => \btn[3]~input_o\,
	datac => \string_state.01~q\,
	datad => \string_state~10_combout\,
	combout => \string_state~11_combout\);

-- Location: FF_X86_Y52_N5
\string_state.01\ : dffeas
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
	q => \string_state.01~q\);

-- Location: LCCOMB_X86_Y52_N6
\string_data[11][0][6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data[11][0][6]~0_combout\ = !\string_state.01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \string_state.01~q\,
	combout => \string_data[11][0][6]~0_combout\);

-- Location: FF_X86_Y52_N7
\string_data[11][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_data[11][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[11][0][6]~q\);

-- Location: LCCOMB_X92_Y52_N24
\Selector12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~14_combout\ = (lut_index(0) & (\string_data[12][0][6]~q\)) # (!lut_index(0) & ((\string_data[11][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][6]~q\,
	datac => \string_data[11][0][6]~q\,
	datad => lut_index(0),
	combout => \Selector12~14_combout\);

-- Location: LCCOMB_X92_Y52_N2
\Selector12~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~52_combout\ = (\Selector12~16_combout\ & (\Selector12~14_combout\ & (lut_index(0) $ (lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \Selector12~16_combout\,
	datac => lut_index(2),
	datad => \Selector12~14_combout\,
	combout => \Selector12~52_combout\);

-- Location: FF_X91_Y52_N9
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

-- Location: LCCOMB_X92_Y52_N18
\Selector12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~15_combout\ = lut_index(2) $ (lut_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \Selector12~15_combout\);

-- Location: LCCOMB_X91_Y52_N22
\Selector12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~24_combout\ = (\string_data[11][0][6]~q\ & \Selector12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datad => \Selector12~16_combout\,
	combout => \Selector12~24_combout\);

-- Location: LCCOMB_X90_Y52_N6
\Selector12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~18_combout\ = (!lut_index(6) & (!lut_index(5) & !lut_index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(6),
	datac => lut_index(5),
	datad => lut_index(7),
	combout => \Selector12~18_combout\);

-- Location: LCCOMB_X87_Y52_N6
\string_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data~5_combout\ = (\string_state.00~q\ & !\string_state.01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_state.00~q\,
	datac => \string_state.01~q\,
	combout => \string_data~5_combout\);

-- Location: FF_X88_Y52_N27
\string_data[10][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \string_data~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[10][0][0]~q\);

-- Location: LCCOMB_X91_Y52_N20
\Selector12~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~25_combout\ = (\Selector12~18_combout\ & ((lut_index(4) & (!\string_data[11][0][6]~q\)) # (!lut_index(4) & ((\string_data[10][0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datab => lut_index(4),
	datac => \Selector12~18_combout\,
	datad => \string_data[10][0][0]~q\,
	combout => \Selector12~25_combout\);

-- Location: LCCOMB_X91_Y52_N12
\Selector12~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~53_combout\ = (lut_index(2) & (lut_index(0) & ((\Selector12~25_combout\)))) # (!lut_index(2) & (!lut_index(0) & (\Selector12~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(0),
	datac => \Selector12~24_combout\,
	datad => \Selector12~25_combout\,
	combout => \Selector12~53_combout\);

-- Location: LCCOMB_X91_Y52_N26
\Selector12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~26_combout\ = (\Selector12~53_combout\) # ((!\string_data[12][0][4]~q\ & (\Selector12~15_combout\ & \Selector12~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][4]~q\,
	datab => \Selector12~15_combout\,
	datac => \Selector12~16_combout\,
	datad => \Selector12~53_combout\,
	combout => \Selector12~26_combout\);

-- Location: LCCOMB_X92_Y52_N4
\string_data[13][0][6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data[13][0][6]~0_combout\ = !\string_state.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \string_state.00~q\,
	combout => \string_data[13][0][6]~0_combout\);

-- Location: FF_X92_Y52_N5
\string_data[13][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_data[13][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[13][0][6]~q\);

-- Location: LCCOMB_X92_Y52_N8
\Selector12~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~21_combout\ = (!lut_index(2) & ((lut_index(0) & ((\string_data[13][0][6]~q\))) # (!lut_index(0) & (\string_data[12][0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][4]~q\,
	datab => \string_data[13][0][6]~q\,
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \Selector12~21_combout\);

-- Location: LCCOMB_X92_Y52_N30
\Selector12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~22_combout\ = (lut_index(4) & (\Selector12~21_combout\ & \Selector12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(4),
	datac => \Selector12~21_combout\,
	datad => \Selector12~18_combout\,
	combout => \Selector12~22_combout\);

-- Location: LCCOMB_X92_Y52_N26
\Selector12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~17_combout\ = (!lut_index(0) & ((\string_data[13][0][6]~q\) # (!lut_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \string_data[13][0][6]~q\,
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \Selector12~17_combout\);

-- Location: LCCOMB_X92_Y52_N12
\Selector12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~19_combout\ = (\string_data[13][0][6]~q\ & (\Selector12~18_combout\ & (lut_index(4) $ (lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => \string_data[13][0][6]~q\,
	datac => lut_index(2),
	datad => \Selector12~18_combout\,
	combout => \Selector12~19_combout\);

-- Location: LCCOMB_X92_Y52_N6
\Selector12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~20_combout\ = (lut_index(0) & ((\Selector12~19_combout\) # ((\Selector12~16_combout\ & \Selector12~17_combout\)))) # (!lut_index(0) & (\Selector12~16_combout\ & (\Selector12~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \Selector12~16_combout\,
	datac => \Selector12~17_combout\,
	datad => \Selector12~19_combout\,
	combout => \Selector12~20_combout\);

-- Location: LCCOMB_X92_Y52_N28
\Selector12~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~23_combout\ = (lut_index(1) & ((lut_index(3)) # ((\Selector12~20_combout\)))) # (!lut_index(1) & (!lut_index(3) & (\Selector12~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(3),
	datac => \Selector12~22_combout\,
	datad => \Selector12~20_combout\,
	combout => \Selector12~23_combout\);

-- Location: LCCOMB_X91_Y52_N24
\Selector12~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~27_combout\ = (lut_index(3) & ((\Selector12~23_combout\ & ((\Selector12~26_combout\))) # (!\Selector12~23_combout\ & (\Selector12~52_combout\)))) # (!lut_index(3) & (((\Selector12~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~52_combout\,
	datab => lut_index(3),
	datac => \Selector12~26_combout\,
	datad => \Selector12~23_combout\,
	combout => \Selector12~27_combout\);

-- Location: LCCOMB_X89_Y52_N26
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

-- Location: FF_X89_Y52_N27
\mlcd_st.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mlcd_st.000000~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000000~q\);

-- Location: LCCOMB_X90_Y52_N0
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

-- Location: FF_X91_Y52_N25
\mlcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector12~27_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(0));

-- Location: LCCOMB_X92_Y52_N10
\Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (lut_index(0) & (\Selector12~16_combout\ & (!lut_index(2)))) # (!lut_index(0) & (((\Selector12~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \Selector12~16_combout\,
	datac => lut_index(2),
	datad => \Selector12~19_combout\,
	combout => \Selector11~4_combout\);

-- Location: LCCOMB_X91_Y52_N8
\Selector12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~28_combout\ = (\Selector12~18_combout\ & ((lut_index(4) & (!\string_data[11][0][6]~q\)) # (!lut_index(4) & ((\string_data[12][0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datab => \Selector12~18_combout\,
	datac => \string_data[12][0][4]~q\,
	datad => lut_index(4),
	combout => \Selector12~28_combout\);

-- Location: LCCOMB_X91_Y52_N14
\Selector12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~30_combout\ = (lut_index(7)) # ((lut_index(5)) # ((lut_index(6)) # (\string_data[11][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(7),
	datab => lut_index(5),
	datac => lut_index(6),
	datad => \string_data[11][0][6]~q\,
	combout => \Selector12~30_combout\);

-- Location: LCCOMB_X91_Y52_N28
\Selector12~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~29_combout\ = ((lut_index(4) & (\string_data[11][0][6]~q\)) # (!lut_index(4) & ((\string_data[12][0][6]~q\)))) # (!\Selector12~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datab => lut_index(4),
	datac => \Selector12~18_combout\,
	datad => \string_data[12][0][6]~q\,
	combout => \Selector12~29_combout\);

-- Location: LCCOMB_X91_Y52_N0
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (lut_index(2) & ((lut_index(1) & ((\Selector12~29_combout\))) # (!lut_index(1) & (\Selector12~30_combout\)))) # (!lut_index(2) & (lut_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => \Selector12~30_combout\,
	datad => \Selector12~29_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X91_Y52_N6
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (lut_index(0) & ((lut_index(2) & (!\Selector12~28_combout\)) # (!lut_index(2) & ((!\Selector11~0_combout\))))) # (!lut_index(0) & (((\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(0),
	datac => \Selector12~28_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X91_Y52_N16
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (lut_index(2) & (((!\Selector11~1_combout\)))) # (!lut_index(2) & (\Selector12~16_combout\ & ((\string_data[12][0][4]~q\) # (\Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][4]~q\,
	datab => \Selector12~16_combout\,
	datac => lut_index(2),
	datad => \Selector11~1_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X91_Y52_N18
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (lut_index(3) & (\Selector11~2_combout\ & ((\string_data[13][0][6]~q\) # (!\Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \string_data[13][0][6]~q\,
	datac => lut_index(3),
	datad => \Selector11~2_combout\,
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X91_Y52_N2
\Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~5_combout\ = (\Selector11~3_combout\) # ((lut_index(1) & (!lut_index(3) & \Selector11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(3),
	datac => \Selector11~4_combout\,
	datad => \Selector11~3_combout\,
	combout => \Selector11~5_combout\);

-- Location: FF_X91_Y52_N3
\mlcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector11~5_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(1));

-- Location: LCCOMB_X91_Y52_N30
\Selector12~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~57_combout\ = (lut_index(2) & (((lut_index(0))))) # (!lut_index(2) & ((lut_index(0) & (\string_data[10][0][0]~q\)) # (!lut_index(0) & ((\string_data[12][0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \string_data[10][0][0]~q\,
	datac => \string_data[12][0][6]~q\,
	datad => lut_index(0),
	combout => \Selector12~57_combout\);

-- Location: LCCOMB_X91_Y52_N10
\Selector12~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~58_combout\ = (lut_index(2) & ((\Selector12~57_combout\ & (!\Selector12~30_combout\)) # (!\Selector12~57_combout\ & ((\Selector12~16_combout\))))) # (!lut_index(2) & (((\Selector12~57_combout\ & \Selector12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \Selector12~30_combout\,
	datac => \Selector12~57_combout\,
	datad => \Selector12~16_combout\,
	combout => \Selector12~58_combout\);

-- Location: LCCOMB_X87_Y52_N20
\Selector12~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~32_combout\ = (lut_index(0) & ((\string_data[12][0][6]~q\) # ((!lut_index(4))))) # (!lut_index(0) & (((\string_data[11][0][6]~q\ & lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[12][0][6]~q\,
	datab => \string_data[11][0][6]~q\,
	datac => lut_index(0),
	datad => lut_index(4),
	combout => \Selector12~32_combout\);

-- Location: LCCOMB_X87_Y52_N22
\Selector12~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~33_combout\ = (!lut_index(2) & (\Selector12~18_combout\ & \Selector12~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(2),
	datac => \Selector12~18_combout\,
	datad => \Selector12~32_combout\,
	combout => \Selector12~33_combout\);

-- Location: LCCOMB_X87_Y52_N18
\Selector12~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~31_combout\ = (\Selector12~16_combout\ & ((lut_index(2) & ((\string_data[13][0][6]~q\))) # (!lut_index(2) & (lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => \string_data[13][0][6]~q\,
	datad => \Selector12~16_combout\,
	combout => \Selector12~31_combout\);

-- Location: LCCOMB_X87_Y52_N0
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (lut_index(1) & ((lut_index(3)) # ((\Selector12~31_combout\)))) # (!lut_index(1) & (!lut_index(3) & (\Selector12~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(3),
	datac => \Selector12~33_combout\,
	datad => \Selector12~31_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X86_Y52_N12
\Selector12~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~34_combout\ = (!\string_data[11][0][6]~q\ & lut_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datad => lut_index(4),
	combout => \Selector12~34_combout\);

-- Location: LCCOMB_X86_Y52_N20
\Selector12~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~54_combout\ = (lut_index(5)) # ((lut_index(7)) # ((lut_index(6)) # (!\Selector12~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(7),
	datac => lut_index(6),
	datad => \Selector12~34_combout\,
	combout => \Selector12~54_combout\);

-- Location: LCCOMB_X86_Y52_N24
\string_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data~6_combout\ = (\string_state.10~q\) # (!\string_state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \string_state.10~q\,
	datad => \string_state.00~q\,
	combout => \string_data~6_combout\);

-- Location: LCCOMB_X88_Y52_N16
\string_data[11][0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data[11][0][4]~feeder_combout\ = \string_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \string_data~6_combout\,
	combout => \string_data[11][0][4]~feeder_combout\);

-- Location: FF_X88_Y52_N17
\string_data[11][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_data[11][0][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[11][0][4]~q\);

-- Location: LCCOMB_X87_Y52_N10
\Selector12~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~38_combout\ = (\string_data[11][0][4]~q\ & \Selector12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \string_data[11][0][4]~q\,
	datad => \Selector12~16_combout\,
	combout => \Selector12~38_combout\);

-- Location: LCCOMB_X90_Y52_N28
\Selector12~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~35_combout\ = (!lut_index(6) & !lut_index(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(6),
	datad => lut_index(7),
	combout => \Selector12~35_combout\);

-- Location: LCCOMB_X86_Y52_N10
\Selector12~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~36_combout\ = (!lut_index(5) & (!lut_index(4) & (\string_data[13][0][6]~q\ & \Selector12~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(4),
	datac => \string_data[13][0][6]~q\,
	datad => \Selector12~35_combout\,
	combout => \Selector12~36_combout\);

-- Location: LCCOMB_X86_Y52_N0
\Selector12~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~37_combout\ = (lut_index(2) & (lut_index(0))) # (!lut_index(2) & ((lut_index(0) & ((\Selector12~36_combout\))) # (!lut_index(0) & (\Selector12~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(0),
	datac => \Selector12~24_combout\,
	datad => \Selector12~36_combout\,
	combout => \Selector12~37_combout\);

-- Location: LCCOMB_X86_Y52_N2
\Selector12~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~39_combout\ = (lut_index(2) & ((\Selector12~37_combout\ & ((\Selector12~38_combout\))) # (!\Selector12~37_combout\ & (!\Selector12~54_combout\)))) # (!lut_index(2) & (((\Selector12~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => \Selector12~54_combout\,
	datac => \Selector12~38_combout\,
	datad => \Selector12~37_combout\,
	combout => \Selector12~39_combout\);

-- Location: LCCOMB_X86_Y52_N8
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (lut_index(3) & ((\Selector10~0_combout\ & ((\Selector12~39_combout\))) # (!\Selector10~0_combout\ & (\Selector12~58_combout\)))) # (!lut_index(3) & (((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => \Selector12~58_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector12~39_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X86_Y52_N9
\mlcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(2));

-- Location: LCCOMB_X89_Y52_N4
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (!lut_index(0) & lut_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(0),
	datad => lut_index(3),
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X89_Y52_N10
\Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (lut_index(3) & ((lut_index(0)) # (\string_data[12][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(0),
	datac => \string_data[12][0][6]~q\,
	datad => lut_index(3),
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X89_Y52_N0
\Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (lut_index(1) & (((!lut_index(2) & !\Selector9~3_combout\)) # (!\Selector9~2_combout\))) # (!lut_index(1) & (lut_index(2) $ (\Selector9~2_combout\ $ (\Selector9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => \Selector9~2_combout\,
	datad => \Selector9~3_combout\,
	combout => \Selector9~4_combout\);

-- Location: LCCOMB_X89_Y52_N22
\Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~5_combout\ = (\Selector9~2_combout\ & (lut_index(2) & (lut_index(1)))) # (!\Selector9~2_combout\ & (\Selector9~3_combout\ & ((lut_index(2)) # (lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => \Selector9~2_combout\,
	datad => \Selector9~3_combout\,
	combout => \Selector9~5_combout\);

-- Location: LCCOMB_X89_Y52_N14
\Selector9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~7_combout\ = (lut_index(4) & (!\Selector9~4_combout\ & ((\string_data[11][0][6]~q\) # (!\Selector9~5_combout\)))) # (!lut_index(4) & (((\Selector9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datab => lut_index(4),
	datac => \Selector9~5_combout\,
	datad => \Selector9~4_combout\,
	combout => \Selector9~7_combout\);

-- Location: LCCOMB_X90_Y52_N4
\Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~6_combout\ = (\Selector12~18_combout\ & ((\Selector9~4_combout\ & (\string_data[13][0][6]~q\ & \Selector9~7_combout\)) # (!\Selector9~4_combout\ & ((!\Selector9~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~18_combout\,
	datab => \string_data[13][0][6]~q\,
	datac => \Selector9~4_combout\,
	datad => \Selector9~7_combout\,
	combout => \Selector9~6_combout\);

-- Location: FF_X90_Y52_N5
\mlcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector9~6_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(3));

-- Location: LCCOMB_X94_Y52_N12
\Selector12~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~46_combout\ = (\Selector12~16_combout\ & ((lut_index(2) & ((!\string_data[12][0][6]~q\))) # (!lut_index(2) & (!\string_data[11][0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datab => lut_index(2),
	datac => \string_data[12][0][6]~q\,
	datad => \Selector12~16_combout\,
	combout => \Selector12~46_combout\);

-- Location: LCCOMB_X94_Y52_N30
\Selector12~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~47_combout\ = (lut_index(0) & ((lut_index(2) & (\Selector12~28_combout\)) # (!lut_index(2) & ((\Selector12~46_combout\))))) # (!lut_index(0) & (lut_index(2) & ((\Selector12~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => \Selector12~28_combout\,
	datad => \Selector12~46_combout\,
	combout => \Selector12~47_combout\);

-- Location: LCCOMB_X88_Y52_N6
\Selector12~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~41_combout\ = (lut_index(2) & (!\string_data[11][0][4]~q\)) # (!lut_index(2) & ((\string_data[10][0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \string_data[11][0][4]~q\,
	datac => \string_data[10][0][0]~q\,
	datad => lut_index(2),
	combout => \Selector12~41_combout\);

-- Location: LCCOMB_X94_Y52_N6
\Selector12~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~40_combout\ = (\Selector12~18_combout\ & (lut_index(2) & (!lut_index(0) & \Selector12~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~18_combout\,
	datab => lut_index(2),
	datac => lut_index(0),
	datad => \Selector12~34_combout\,
	combout => \Selector12~40_combout\);

-- Location: LCCOMB_X94_Y52_N4
\Selector12~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~42_combout\ = (\Selector12~40_combout\) # ((\Selector12~16_combout\ & (lut_index(0) & \Selector12~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~16_combout\,
	datab => lut_index(0),
	datac => \Selector12~41_combout\,
	datad => \Selector12~40_combout\,
	combout => \Selector12~42_combout\);

-- Location: LCCOMB_X94_Y52_N18
\Selector12~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~44_combout\ = (lut_index(4) & ((lut_index(0) & (\string_data[12][0][4]~q\)) # (!lut_index(0) & ((\string_data[11][0][4]~q\))))) # (!lut_index(4) & (((!lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => \string_data[12][0][4]~q\,
	datac => \string_data[11][0][4]~q\,
	datad => lut_index(0),
	combout => \Selector12~44_combout\);

-- Location: LCCOMB_X94_Y52_N8
\Selector12~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~45_combout\ = (\Selector12~18_combout\ & (!lut_index(2) & \Selector12~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~18_combout\,
	datab => lut_index(2),
	datad => \Selector12~44_combout\,
	combout => \Selector12~45_combout\);

-- Location: LCCOMB_X92_Y52_N20
\Selector12~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~43_combout\ = (!lut_index(0) & \Selector12~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datad => \Selector12~19_combout\,
	combout => \Selector12~43_combout\);

-- Location: LCCOMB_X94_Y52_N10
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (lut_index(1) & ((lut_index(3)) # ((\Selector12~43_combout\)))) # (!lut_index(1) & (!lut_index(3) & (\Selector12~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(3),
	datac => \Selector12~45_combout\,
	datad => \Selector12~43_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X94_Y52_N20
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (lut_index(3) & ((\Selector8~0_combout\ & (\Selector12~47_combout\)) # (!\Selector8~0_combout\ & ((\Selector12~42_combout\))))) # (!lut_index(3) & (((\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~47_combout\,
	datab => lut_index(3),
	datac => \Selector12~42_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X94_Y52_N21
\mlcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(4));

-- Location: LCCOMB_X87_Y52_N26
\Selector7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~10_combout\ = (lut_index(0) & (((!\string_data[12][0][6]~q\ & !lut_index(2))))) # (!lut_index(0) & (!\string_data[11][0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \string_data[11][0][6]~q\,
	datac => \string_data[12][0][6]~q\,
	datad => lut_index(2),
	combout => \Selector7~10_combout\);

-- Location: LCCOMB_X87_Y52_N28
\Selector7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~9_combout\ = (lut_index(2) & (((lut_index(1))) # (!lut_index(0)))) # (!lut_index(2) & (((!\string_data[13][0][6]~q\ & lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => \string_data[13][0][6]~q\,
	datad => lut_index(1),
	combout => \Selector7~9_combout\);

-- Location: LCCOMB_X87_Y52_N16
\Selector7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~11_combout\ = (lut_index(1) & (!lut_index(3) & ((\Selector7~9_combout\)))) # (!lut_index(1) & ((\Selector7~10_combout\) # ((!lut_index(3) & \Selector7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(3),
	datac => \Selector7~10_combout\,
	datad => \Selector7~9_combout\,
	combout => \Selector7~11_combout\);

-- Location: LCCOMB_X88_Y52_N2
\Selector7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~12_combout\ = (lut_index(3) & ((\string_data[11][0][6]~q\) # ((!lut_index(1)) # (!lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datab => lut_index(3),
	datac => lut_index(2),
	datad => lut_index(1),
	combout => \Selector7~12_combout\);

-- Location: LCCOMB_X88_Y52_N26
\Selector7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~13_combout\ = (lut_index(5)) # (\Selector7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datad => \Selector7~12_combout\,
	combout => \Selector7~13_combout\);

-- Location: LCCOMB_X88_Y52_N8
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (lut_index(0)) # ((lut_index(1) & ((!lut_index(2)) # (!\string_data[13][0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(0),
	datac => \string_data[13][0][6]~q\,
	datad => lut_index(2),
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X88_Y52_N22
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (lut_index(3) & (((lut_index(2))))) # (!lut_index(3) & ((lut_index(5)) # (lut_index(2) $ (!\Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datab => lut_index(2),
	datac => \Selector7~2_combout\,
	datad => lut_index(3),
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X88_Y52_N24
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (lut_index(0) & (!\string_data[10][0][0]~q\)) # (!lut_index(0) & ((lut_index(1) & (!\string_data[10][0][0]~q\)) # (!lut_index(1) & ((!\string_data[12][0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[10][0][0]~q\,
	datab => lut_index(0),
	datac => \string_data[12][0][4]~q\,
	datad => lut_index(1),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X88_Y52_N30
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (lut_index(5)) # (\Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(5),
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X88_Y52_N12
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (lut_index(1)) # ((\string_data[11][0][4]~q\ & lut_index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \string_data[11][0][4]~q\,
	datac => lut_index(0),
	datad => lut_index(1),
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X88_Y52_N10
\Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\Selector7~4_combout\ & (((lut_index(0))))) # (!\Selector7~4_combout\ & ((lut_index(5)) # ((!\string_data[10][0][0]~q\ & !lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[10][0][0]~q\,
	datab => lut_index(0),
	datac => lut_index(5),
	datad => \Selector7~4_combout\,
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X88_Y52_N0
\Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = (\Selector7~5_combout\ & (\string_data[11][0][6]~q\)) # (!\Selector7~5_combout\ & ((\string_data[12][0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datac => \string_data[12][0][4]~q\,
	datad => \Selector7~5_combout\,
	combout => \Selector7~6_combout\);

-- Location: LCCOMB_X88_Y52_N18
\Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = (lut_index(1) & ((lut_index(5)) # (\Selector7~5_combout\ $ (\Selector7~6_combout\)))) # (!lut_index(1) & (\Selector7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~5_combout\,
	datab => lut_index(1),
	datac => lut_index(5),
	datad => \Selector7~6_combout\,
	combout => \Selector7~7_combout\);

-- Location: LCCOMB_X88_Y52_N28
\Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~8_combout\ = (\Selector7~3_combout\ & (((\Selector7~7_combout\)) # (!lut_index(3)))) # (!\Selector7~3_combout\ & (lut_index(3) & (\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~3_combout\,
	datab => lut_index(3),
	datac => \Selector7~1_combout\,
	datad => \Selector7~7_combout\,
	combout => \Selector7~8_combout\);

-- Location: LCCOMB_X88_Y52_N4
\Selector7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~14_combout\ = (lut_index(4) & ((\Selector7~11_combout\) # ((\Selector7~13_combout\)))) # (!lut_index(4) & (((\Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~11_combout\,
	datab => lut_index(4),
	datac => \Selector7~13_combout\,
	datad => \Selector7~8_combout\,
	combout => \Selector7~14_combout\);

-- Location: FF_X88_Y52_N5
\mlcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector7~14_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(5));

-- Location: LCCOMB_X88_Y52_N20
\Selector12~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~50_combout\ = (lut_index(4) & (!\string_data[11][0][6]~q\)) # (!lut_index(4) & ((lut_index(0) & (\string_data[11][0][6]~q\)) # (!lut_index(0) & ((!\string_data[12][0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \string_data[11][0][6]~q\,
	datab => lut_index(0),
	datac => \string_data[12][0][4]~q\,
	datad => lut_index(4),
	combout => \Selector12~50_combout\);

-- Location: LCCOMB_X87_Y52_N12
\Selector12~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~51_combout\ = (lut_index(2) & (\Selector12~50_combout\ & (\Selector12~18_combout\))) # (!lut_index(2) & (((\Selector12~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~50_combout\,
	datab => lut_index(2),
	datac => \Selector12~18_combout\,
	datad => \Selector12~24_combout\,
	combout => \Selector12~51_combout\);

-- Location: LCCOMB_X87_Y52_N4
\Selector12~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~55_combout\ = (\Selector12~16_combout\ & ((lut_index(0) & (!\string_data[11][0][4]~q\)) # (!lut_index(0) & ((\string_data[12][0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \string_data[11][0][4]~q\,
	datac => \string_data[12][0][6]~q\,
	datad => \Selector12~16_combout\,
	combout => \Selector12~55_combout\);

-- Location: LCCOMB_X87_Y52_N14
\Selector12~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~56_combout\ = (lut_index(0) & ((lut_index(2) & (\Selector12~55_combout\)) # (!lut_index(2) & ((\Selector12~24_combout\))))) # (!lut_index(0) & ((lut_index(2) & ((\Selector12~24_combout\))) # (!lut_index(2) & (\Selector12~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(2),
	datac => \Selector12~55_combout\,
	datad => \Selector12~24_combout\,
	combout => \Selector12~56_combout\);

-- Location: LCCOMB_X87_Y52_N30
\Selector12~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~48_combout\ = (lut_index(0) & (((\string_data[12][0][6]~q\) # (lut_index(2))))) # (!lut_index(0) & (\string_data[11][0][6]~q\ & ((!lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \string_data[11][0][6]~q\,
	datac => \string_data[12][0][6]~q\,
	datad => lut_index(2),
	combout => \Selector12~48_combout\);

-- Location: LCCOMB_X87_Y52_N8
\Selector12~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~49_combout\ = (\Selector12~48_combout\ & (\Selector12~18_combout\ & lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~48_combout\,
	datac => \Selector12~18_combout\,
	datad => lut_index(4),
	combout => \Selector12~49_combout\);

-- Location: LCCOMB_X87_Y52_N2
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (lut_index(1) & ((lut_index(3)) # ((\Selector12~19_combout\)))) # (!lut_index(1) & (!lut_index(3) & (\Selector12~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(3),
	datac => \Selector12~49_combout\,
	datad => \Selector12~19_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X87_Y52_N24
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (lut_index(3) & ((\Selector6~0_combout\ & (\Selector12~51_combout\)) # (!\Selector6~0_combout\ & ((\Selector12~56_combout\))))) # (!lut_index(3) & (((\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~51_combout\,
	datab => lut_index(3),
	datac => \Selector12~56_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X87_Y52_N25
\mlcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(6));

-- Location: LCCOMB_X92_Y52_N22
\lut_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~0_combout\ = (!lut_index(1) & (lut_index(2) & (lut_index(4) $ (!lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(4),
	datac => lut_index(2),
	datad => lut_index(0),
	combout => \lut_data~0_combout\);

-- Location: LCCOMB_X91_Y52_N4
\lut_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~1_combout\ = (\lut_data~0_combout\ & (!lut_index(3) & !lut_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lut_data~0_combout\,
	datac => lut_index(3),
	datad => lut_index(5),
	combout => \lut_data~1_combout\);

-- Location: FF_X91_Y52_N5
\mlcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_data~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(7));

-- Location: LCCOMB_X89_Y52_N12
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (lut_index(2) & ((lut_index(1)) # (lut_index(0) $ (lut_index(4))))) # (!lut_index(2) & (((lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(0),
	datac => lut_index(1),
	datad => lut_index(4),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X90_Y52_N30
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\WideOr0~0_combout\) # ((lut_index(3)) # (lut_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => lut_index(3),
	datad => lut_index(5),
	combout => \WideOr0~1_combout\);

-- Location: FF_X90_Y52_N31
mlcd_rs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WideOr0~1_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \mlcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_rs~q\);

-- Location: LCCOMB_X87_Y53_N4
\u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector3~0_combout\ = (\u0|state.01~q\) # ((\u0|lcd_en~q\ & ((\u0|state.10~q\) # (!\u0|state.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.10~q\,
	datab => \u0|state.01~q\,
	datac => \u0|lcd_en~q\,
	datad => \u0|state.00~q\,
	combout => \u0|Selector3~0_combout\);

-- Location: FF_X87_Y53_N5
\u0|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector3~0_combout\,
	clrn => \ALT_INV_rst~0clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|lcd_en~q\);

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


