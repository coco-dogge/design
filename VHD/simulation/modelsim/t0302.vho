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

-- DATE "06/01/2023 11:27:16"

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

ENTITY 	HW21 IS
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
END HW21;

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
-- btn[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HW21 IS
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
SIGNAL \q[20]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \lut_index[0]~1_combout\ : std_logic;
SIGNAL \btn[3]~input_o\ : std_logic;
SIGNAL \btn[0]~input_o\ : std_logic;
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \mlcd_st.000001~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \mlcd_start~q\ : std_logic;
SIGNAL \u0|prestart~q\ : std_logic;
SIGNAL \u0|state.00~0_combout\ : std_logic;
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
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|Selector5~1_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|Selector4~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|state.10~q\ : std_logic;
SIGNAL \u0|state~14_combout\ : std_logic;
SIGNAL \u0|state.11~q\ : std_logic;
SIGNAL \u0|mstart~0_combout\ : std_logic;
SIGNAL \u0|mstart~q\ : std_logic;
SIGNAL \u0|odone~0_combout\ : std_logic;
SIGNAL \u0|odone~1_combout\ : std_logic;
SIGNAL \u0|odone~q\ : std_logic;
SIGNAL \mlcd_st~18_combout\ : std_logic;
SIGNAL \mdly[0]~18_combout\ : std_logic;
SIGNAL \mdly[17]~26_combout\ : std_logic;
SIGNAL \mdly[0]~19\ : std_logic;
SIGNAL \mdly[1]~20_combout\ : std_logic;
SIGNAL \mdly[1]~21\ : std_logic;
SIGNAL \mdly[2]~22_combout\ : std_logic;
SIGNAL \mdly[2]~23\ : std_logic;
SIGNAL \mdly[3]~24_combout\ : std_logic;
SIGNAL \mdly[3]~25\ : std_logic;
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
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \mdly[12]~44\ : std_logic;
SIGNAL \mdly[13]~45_combout\ : std_logic;
SIGNAL \mdly[13]~46\ : std_logic;
SIGNAL \mdly[14]~47_combout\ : std_logic;
SIGNAL \mdly[14]~48\ : std_logic;
SIGNAL \mdly[15]~49_combout\ : std_logic;
SIGNAL \mdly[15]~50\ : std_logic;
SIGNAL \mdly[16]~51_combout\ : std_logic;
SIGNAL \mdly[16]~52\ : std_logic;
SIGNAL \mdly[17]~53_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mlcd_st~19_combout\ : std_logic;
SIGNAL \mlcd_st.000001~3_combout\ : std_logic;
SIGNAL \mlcd_st.000001~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \mlcd_st.000010~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mlcd_st.000011~q\ : std_logic;
SIGNAL \lut_index[7]~0_combout\ : std_logic;
SIGNAL \mlcd_data[3]~0_combout\ : std_logic;
SIGNAL \mlcd_data[3]~1_combout\ : std_logic;
SIGNAL \q[0]~60_combout\ : std_logic;
SIGNAL \q[1]~20_combout\ : std_logic;
SIGNAL \q[1]~21\ : std_logic;
SIGNAL \q[2]~22_combout\ : std_logic;
SIGNAL \q[2]~23\ : std_logic;
SIGNAL \q[3]~24_combout\ : std_logic;
SIGNAL \q[3]~25\ : std_logic;
SIGNAL \q[4]~26_combout\ : std_logic;
SIGNAL \q[4]~27\ : std_logic;
SIGNAL \q[5]~28_combout\ : std_logic;
SIGNAL \q[5]~29\ : std_logic;
SIGNAL \q[6]~30_combout\ : std_logic;
SIGNAL \q[6]~31\ : std_logic;
SIGNAL \q[7]~32_combout\ : std_logic;
SIGNAL \q[7]~33\ : std_logic;
SIGNAL \q[8]~34_combout\ : std_logic;
SIGNAL \q[8]~35\ : std_logic;
SIGNAL \q[9]~36_combout\ : std_logic;
SIGNAL \q[9]~37\ : std_logic;
SIGNAL \q[10]~38_combout\ : std_logic;
SIGNAL \q[10]~39\ : std_logic;
SIGNAL \q[11]~40_combout\ : std_logic;
SIGNAL \q[11]~41\ : std_logic;
SIGNAL \q[12]~42_combout\ : std_logic;
SIGNAL \q[12]~43\ : std_logic;
SIGNAL \q[13]~44_combout\ : std_logic;
SIGNAL \q[13]~45\ : std_logic;
SIGNAL \q[14]~46_combout\ : std_logic;
SIGNAL \q[14]~47\ : std_logic;
SIGNAL \q[15]~48_combout\ : std_logic;
SIGNAL \q[15]~49\ : std_logic;
SIGNAL \q[16]~50_combout\ : std_logic;
SIGNAL \q[16]~51\ : std_logic;
SIGNAL \q[17]~52_combout\ : std_logic;
SIGNAL \q[17]~53\ : std_logic;
SIGNAL \q[18]~54_combout\ : std_logic;
SIGNAL \q[18]~55\ : std_logic;
SIGNAL \q[19]~56_combout\ : std_logic;
SIGNAL \q[19]~57\ : std_logic;
SIGNAL \q[20]~58_combout\ : std_logic;
SIGNAL \q[20]~clkctrl_outclk\ : std_logic;
SIGNAL \tim[0]~10_combout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \flag~1_combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \tim[7]~12_combout\ : std_logic;
SIGNAL \string_data[9][0][0]~q\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \tim[0]~11\ : std_logic;
SIGNAL \tim[1]~13_combout\ : std_logic;
SIGNAL \tim[1]~14\ : std_logic;
SIGNAL \tim[2]~15_combout\ : std_logic;
SIGNAL \tim[2]~16\ : std_logic;
SIGNAL \tim[3]~17_combout\ : std_logic;
SIGNAL \tim[3]~18\ : std_logic;
SIGNAL \tim[4]~19_combout\ : std_logic;
SIGNAL \tim[4]~20\ : std_logic;
SIGNAL \tim[5]~21_combout\ : std_logic;
SIGNAL \tim[5]~22\ : std_logic;
SIGNAL \tim[6]~23_combout\ : std_logic;
SIGNAL \tim[6]~24\ : std_logic;
SIGNAL \tim[7]~25_combout\ : std_logic;
SIGNAL \tim[7]~26\ : std_logic;
SIGNAL \tim[8]~27_combout\ : std_logic;
SIGNAL \tim[8]~28\ : std_logic;
SIGNAL \tim[9]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b[0]~0_combout\ : std_logic;
SIGNAL \string_data[8][0][0]~q\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \Selector12~6_combout\ : std_logic;
SIGNAL \mlcd_st.000000~0_combout\ : std_logic;
SIGNAL \mlcd_st.000000~q\ : std_logic;
SIGNAL \mlcd_data[0]~3_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~51_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[46]~54_combout\ : std_logic;
SIGNAL \string_data[8][0][1]~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~101_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~97_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~98_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~99_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~100_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[46]~94_combout\ : std_logic;
SIGNAL \string_data[9][0][1]~q\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \Selector11~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[47]~95_combout\ : std_logic;
SIGNAL \string_data[9][0][2]~q\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[47]~55_combout\ : std_logic;
SIGNAL \string_data[8][0][2]~q\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector10~4_combout\ : std_logic;
SIGNAL \Selector10~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~96_combout\ : std_logic;
SIGNAL \string_data[9][0][3]~feeder_combout\ : std_logic;
SIGNAL \string_data[9][0][3]~q\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~56_combout\ : std_logic;
SIGNAL \string_data[8][0][3]~q\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \mlcd_data[3]~2_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \lut_data~0_combout\ : std_logic;
SIGNAL \lut_data~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \mlcd_rs~q\ : std_logic;
SIGNAL \u0|Selector3~0_combout\ : std_logic;
SIGNAL \u0|lcd_en~q\ : std_logic;
SIGNAL mdly : std_logic_vector(17 DOWNTO 0);
SIGNAL tim : std_logic_vector(9 DOWNTO 0);
SIGNAL q : std_logic_vector(30 DOWNTO 0);
SIGNAL mlcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL lut_index : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL a : std_logic_vector(3 DOWNTO 0);
SIGNAL b : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_btn[3]~input_o\ : std_logic;

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

\q[20]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & q(20));

\rst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~combout\);
\ALT_INV_rst~clkctrl_outclk\ <= NOT \rst~clkctrl_outclk\;
\ALT_INV_btn[3]~input_o\ <= NOT \btn[3]~input_o\;

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

-- Location: LCCOMB_X55_Y38_N30
\lut_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[0]~1_combout\ = !lut_index(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lut_index(0),
	combout => \lut_index[0]~1_combout\);

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

-- Location: LCCOMB_X63_Y36_N20
rst : cycloneive_lcell_comb
-- Equation(s):
-- \rst~combout\ = (((!\btn[2]~input_o\) # (!\btn[1]~input_o\)) # (!\btn[0]~input_o\)) # (!\btn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[3]~input_o\,
	datab => \btn[0]~input_o\,
	datac => \btn[1]~input_o\,
	datad => \btn[2]~input_o\,
	combout => \rst~combout\);

-- Location: CLKCTRL_G17
\rst~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y38_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (lut_index(0) & (lut_index(1) $ (VCC))) # (!lut_index(0) & (lut_index(1) & VCC))
-- \Add1~1\ = CARRY((lut_index(0) & lut_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X55_Y38_N27
\lut_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Add1~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(1));

-- Location: LCCOMB_X55_Y38_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (lut_index(2) & (!\Add1~1\)) # (!lut_index(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!lut_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X55_Y38_N11
\lut_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(2));

-- Location: LCCOMB_X55_Y38_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (lut_index(3) & (\Add1~3\ $ (GND))) # (!lut_index(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((lut_index(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X55_Y38_N13
\lut_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(3));

-- Location: LCCOMB_X55_Y38_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (lut_index(4) & (!\Add1~5\)) # (!lut_index(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X55_Y38_N15
\lut_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(4));

-- Location: LCCOMB_X55_Y38_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (lut_index(5) & (\Add1~7\ $ (GND))) # (!lut_index(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((lut_index(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X55_Y38_N17
\lut_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(5));

-- Location: LCCOMB_X55_Y38_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (lut_index(6) & (!\Add1~9\)) # (!lut_index(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!lut_index(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lut_index(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X55_Y38_N19
\lut_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(6));

-- Location: LCCOMB_X55_Y38_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = lut_index(7) $ (!\Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(7),
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: FF_X55_Y38_N21
\lut_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(7));

-- Location: LCCOMB_X55_Y38_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!lut_index(3) & (!lut_index(4) & ((!lut_index(2)) # (!lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(4),
	datac => lut_index(1),
	datad => lut_index(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y38_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!lut_index(7) & (!lut_index(6) & ((\LessThan0~0_combout\) # (!lut_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(7),
	datab => lut_index(6),
	datac => lut_index(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y37_N22
\mlcd_st.000001~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st.000001~2_combout\ = (!\mlcd_st.000011~q\ & (!\mlcd_st.000001~q\ & !\mlcd_st.000010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000011~q\,
	datac => \mlcd_st.000001~q\,
	datad => \mlcd_st.000010~q\,
	combout => \mlcd_st.000001~2_combout\);

-- Location: LCCOMB_X55_Y37_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\mlcd_st.000001~2_combout\) # ((\mlcd_start~q\ & ((!\u0|odone~q\) # (!\mlcd_st.000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000001~2_combout\,
	datab => \mlcd_st.000001~q\,
	datac => \mlcd_start~q\,
	datad => \u0|odone~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X55_Y37_N13
mlcd_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_start~q\);

-- Location: FF_X55_Y41_N17
\u0|prestart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mlcd_start~q\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|prestart~q\);

-- Location: LCCOMB_X55_Y41_N18
\u0|state.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state.00~0_combout\ = !\u0|state.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|state.11~q\,
	combout => \u0|state.00~0_combout\);

-- Location: FF_X55_Y41_N19
\u0|state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state.00~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.00~q\);

-- Location: LCCOMB_X55_Y41_N14
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

-- Location: FF_X55_Y41_N15
\u0|state.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state.01~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.01~q\);

-- Location: LCCOMB_X56_Y41_N26
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|state.01~q\) # ((\u0|state~14_combout\) # (!\u0|state.00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.01~q\,
	datab => \u0|state.00~q\,
	datad => \u0|state~14_combout\,
	combout => \u0|Selector6~0_combout\);

-- Location: LCCOMB_X56_Y41_N8
\u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~1_combout\ = (\u0|state.10~q\ & ((!\u0|cont\(3)) # (!\u0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|state.10~q\,
	datac => \u0|LessThan0~0_combout\,
	datad => \u0|cont\(3),
	combout => \u0|Selector2~1_combout\);

-- Location: LCCOMB_X56_Y41_N16
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

-- Location: LCCOMB_X56_Y41_N28
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

-- Location: FF_X56_Y41_N29
\u0|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector8~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(0));

-- Location: LCCOMB_X56_Y41_N18
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

-- Location: LCCOMB_X56_Y41_N30
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

-- Location: FF_X56_Y41_N31
\u0|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector7~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(1));

-- Location: LCCOMB_X56_Y41_N20
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

-- Location: LCCOMB_X56_Y41_N4
\u0|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~1_combout\ = (\u0|Selector6~0_combout\ & ((\u0|cont\(2)) # ((\u0|Selector2~1_combout\ & \u0|Add0~4_combout\)))) # (!\u0|Selector6~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector6~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|cont\(2),
	datad => \u0|Add0~4_combout\,
	combout => \u0|Selector6~1_combout\);

-- Location: FF_X56_Y41_N5
\u0|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector6~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(2));

-- Location: LCCOMB_X56_Y41_N22
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

-- Location: LCCOMB_X56_Y41_N10
\u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~6_combout\) # ((\u0|cont\(3) & \u0|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datab => \u0|LessThan0~0_combout\,
	datac => \u0|Add0~6_combout\,
	datad => \u0|state.10~q\,
	combout => \u0|Selector5~0_combout\);

-- Location: LCCOMB_X56_Y41_N12
\u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~1_combout\ = (\u0|Selector5~0_combout\) # ((\u0|cont\(3) & ((\u0|state.01~q\) # (!\u0|state.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.01~q\,
	datab => \u0|state.00~q\,
	datac => \u0|cont\(3),
	datad => \u0|Selector5~0_combout\,
	combout => \u0|Selector5~1_combout\);

-- Location: FF_X56_Y41_N13
\u0|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector5~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(3));

-- Location: LCCOMB_X56_Y41_N24
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

-- Location: LCCOMB_X56_Y41_N2
\u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~0_combout\ = (\u0|state.10~q\ & ((\u0|Add0~8_combout\) # ((\u0|cont\(3) & \u0|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|cont\(3),
	datab => \u0|state.10~q\,
	datac => \u0|LessThan0~0_combout\,
	datad => \u0|Add0~8_combout\,
	combout => \u0|Selector4~0_combout\);

-- Location: LCCOMB_X56_Y41_N6
\u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~1_combout\ = (\u0|Selector4~0_combout\) # ((\u0|cont\(4) & ((\u0|state.01~q\) # (!\u0|state.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.01~q\,
	datab => \u0|state.00~q\,
	datac => \u0|cont\(4),
	datad => \u0|Selector4~0_combout\,
	combout => \u0|Selector4~1_combout\);

-- Location: FF_X56_Y41_N7
\u0|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector4~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|cont\(4));

-- Location: LCCOMB_X56_Y41_N14
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

-- Location: LCCOMB_X55_Y41_N24
\u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|state.01~q\) # ((\u0|state.10~q\ & ((!\u0|cont\(3)) # (!\u0|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~0_combout\,
	datab => \u0|cont\(3),
	datac => \u0|state.10~q\,
	datad => \u0|state.01~q\,
	combout => \u0|Selector2~0_combout\);

-- Location: FF_X55_Y41_N25
\u0|state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector2~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.10~q\);

-- Location: LCCOMB_X56_Y41_N0
\u0|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|state~14_combout\ = (\u0|state.10~q\ & (\u0|LessThan0~0_combout\ & \u0|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|state.10~q\,
	datac => \u0|LessThan0~0_combout\,
	datad => \u0|cont\(3),
	combout => \u0|state~14_combout\);

-- Location: FF_X56_Y41_N1
\u0|state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|state~14_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|mstart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|state.11~q\);

-- Location: LCCOMB_X55_Y41_N20
\u0|mstart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|mstart~0_combout\ = (\u0|mstart~q\ & (((!\u0|state.11~q\)))) # (!\u0|mstart~q\ & (!\u0|prestart~q\ & ((\mlcd_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|prestart~q\,
	datab => \u0|state.11~q\,
	datac => \u0|mstart~q\,
	datad => \mlcd_start~q\,
	combout => \u0|mstart~0_combout\);

-- Location: FF_X55_Y41_N21
\u0|mstart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|mstart~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|mstart~q\);

-- Location: LCCOMB_X55_Y41_N16
\u0|odone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|odone~0_combout\ = (\u0|odone~q\ & ((\u0|prestart~q\) # (!\mlcd_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_start~q\,
	datac => \u0|prestart~q\,
	datad => \u0|odone~q\,
	combout => \u0|odone~0_combout\);

-- Location: LCCOMB_X55_Y41_N26
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

-- Location: FF_X55_Y41_N27
\u0|odone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|odone~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|odone~q\);

-- Location: LCCOMB_X55_Y37_N26
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

-- Location: LCCOMB_X56_Y38_N14
\mdly[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[0]~18_combout\ = mdly(0) $ (VCC)
-- \mdly[0]~19\ = CARRY(mdly(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(0),
	datad => VCC,
	combout => \mdly[0]~18_combout\,
	cout => \mdly[0]~19\);

-- Location: LCCOMB_X55_Y38_N0
\mdly[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[17]~26_combout\ = (\mlcd_st.000010~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000010~q\,
	datad => \LessThan0~1_combout\,
	combout => \mdly[17]~26_combout\);

-- Location: FF_X56_Y38_N15
\mdly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[0]~18_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(0));

-- Location: LCCOMB_X56_Y38_N16
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

-- Location: FF_X56_Y38_N17
\mdly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[1]~20_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(1));

-- Location: LCCOMB_X56_Y38_N18
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

-- Location: FF_X56_Y38_N19
\mdly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[2]~22_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(2));

-- Location: LCCOMB_X56_Y38_N20
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

-- Location: FF_X56_Y38_N21
\mdly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[3]~24_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(3));

-- Location: LCCOMB_X56_Y38_N22
\mdly[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[4]~27_combout\ = (mdly(4) & (\mdly[3]~25\ $ (GND))) # (!mdly(4) & (!\mdly[3]~25\ & VCC))
-- \mdly[4]~28\ = CARRY((mdly(4) & !\mdly[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(4),
	datad => VCC,
	cin => \mdly[3]~25\,
	combout => \mdly[4]~27_combout\,
	cout => \mdly[4]~28\);

-- Location: FF_X56_Y38_N23
\mdly[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[4]~27_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(4));

-- Location: LCCOMB_X56_Y38_N24
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

-- Location: FF_X56_Y38_N25
\mdly[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[5]~29_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(5));

-- Location: LCCOMB_X56_Y38_N26
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

-- Location: FF_X56_Y38_N27
\mdly[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[6]~31_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(6));

-- Location: LCCOMB_X56_Y38_N28
\mdly[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[7]~33_combout\ = (mdly(7) & (!\mdly[6]~32\)) # (!mdly(7) & ((\mdly[6]~32\) # (GND)))
-- \mdly[7]~34\ = CARRY((!\mdly[6]~32\) # (!mdly(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mdly(7),
	datad => VCC,
	cin => \mdly[6]~32\,
	combout => \mdly[7]~33_combout\,
	cout => \mdly[7]~34\);

-- Location: FF_X56_Y38_N29
\mdly[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[7]~33_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(7));

-- Location: LCCOMB_X56_Y38_N30
\mdly[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdly[8]~35_combout\ = (mdly(8) & (\mdly[7]~34\ $ (GND))) # (!mdly(8) & (!\mdly[7]~34\ & VCC))
-- \mdly[8]~36\ = CARRY((mdly(8) & !\mdly[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mdly(8),
	datad => VCC,
	cin => \mdly[7]~34\,
	combout => \mdly[8]~35_combout\,
	cout => \mdly[8]~36\);

-- Location: FF_X56_Y38_N31
\mdly[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[8]~35_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(8));

-- Location: LCCOMB_X56_Y37_N0
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

-- Location: FF_X56_Y37_N1
\mdly[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[9]~37_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(9));

-- Location: LCCOMB_X56_Y37_N2
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

-- Location: FF_X56_Y37_N3
\mdly[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[10]~39_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(10));

-- Location: LCCOMB_X56_Y37_N4
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

-- Location: FF_X56_Y37_N5
\mdly[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[11]~41_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(11));

-- Location: LCCOMB_X56_Y37_N6
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

-- Location: FF_X56_Y37_N7
\mdly[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[12]~43_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(12));

-- Location: LCCOMB_X56_Y37_N26
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

-- Location: LCCOMB_X56_Y37_N8
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

-- Location: FF_X56_Y37_N9
\mdly[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[13]~45_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(13));

-- Location: LCCOMB_X56_Y37_N10
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

-- Location: FF_X56_Y37_N11
\mdly[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[14]~47_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(14));

-- Location: LCCOMB_X56_Y37_N12
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

-- Location: FF_X56_Y37_N13
\mdly[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[15]~49_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(15));

-- Location: LCCOMB_X56_Y37_N14
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

-- Location: FF_X56_Y37_N15
\mdly[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[16]~51_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(16));

-- Location: LCCOMB_X56_Y37_N16
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

-- Location: FF_X56_Y37_N17
\mdly[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mdly[17]~53_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sclr => \LessThan1~5_combout\,
	ena => \mdly[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mdly(17));

-- Location: LCCOMB_X56_Y37_N28
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!mdly(14)) # (!mdly(13))) # (!mdly(16))) # (!mdly(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(15),
	datab => mdly(16),
	datac => mdly(13),
	datad => mdly(14),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X56_Y38_N8
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!mdly(3)) # (!mdly(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mdly(4),
	datad => mdly(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y38_N10
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

-- Location: LCCOMB_X56_Y38_N12
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((\LessThan1~0_combout\) # (\LessThan1~1_combout\)) # (!mdly(2))) # (!mdly(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mdly(1),
	datab => mdly(2),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X56_Y37_N22
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!\LessThan1~3_combout\ & (mdly(17) & (!\LessThan1~4_combout\ & !\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => mdly(17),
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X55_Y37_N10
\mlcd_st~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_st~19_combout\ = ((\mlcd_st~18_combout\) # ((\mlcd_st.000010~q\ & !\LessThan1~5_combout\))) # (!\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_st.000010~q\,
	datab => \LessThan0~1_combout\,
	datac => \mlcd_st~18_combout\,
	datad => \LessThan1~5_combout\,
	combout => \mlcd_st~19_combout\);

-- Location: LCCOMB_X55_Y37_N4
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

-- Location: FF_X55_Y37_N5
\mlcd_st.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mlcd_st.000001~3_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000001~q\);

-- Location: LCCOMB_X55_Y37_N0
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

-- Location: FF_X55_Y37_N1
\mlcd_st.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000010~q\);

-- Location: LCCOMB_X55_Y37_N2
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

-- Location: FF_X55_Y37_N3
\mlcd_st.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000011~q\);

-- Location: LCCOMB_X55_Y38_N22
\lut_index[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_index[7]~0_combout\ = (\mlcd_st.000011~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mlcd_st.000011~q\,
	datad => \LessThan0~1_combout\,
	combout => \lut_index[7]~0_combout\);

-- Location: FF_X55_Y38_N31
\lut_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_index[0]~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \lut_index[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_index(0));

-- Location: LCCOMB_X54_Y38_N24
\mlcd_data[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[3]~0_combout\ = (!lut_index(5) & (!lut_index(7) & !lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(5),
	datac => lut_index(7),
	datad => lut_index(4),
	combout => \mlcd_data[3]~0_combout\);

-- Location: LCCOMB_X54_Y38_N18
\mlcd_data[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[3]~1_combout\ = (lut_index(2) & (!lut_index(6) & (lut_index(3) & \mlcd_data[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(6),
	datac => lut_index(3),
	datad => \mlcd_data[3]~0_combout\,
	combout => \mlcd_data[3]~1_combout\);

-- Location: LCCOMB_X1_Y36_N8
\q[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~60_combout\ = !q(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(0),
	combout => \q[0]~60_combout\);

-- Location: FF_X1_Y36_N9
\q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[0]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(0));

-- Location: LCCOMB_X1_Y36_N12
\q[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~20_combout\ = (q(1) & (q(0) $ (VCC))) # (!q(1) & (q(0) & VCC))
-- \q[1]~21\ = CARRY((q(1) & q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datab => q(0),
	datad => VCC,
	combout => \q[1]~20_combout\,
	cout => \q[1]~21\);

-- Location: FF_X1_Y36_N13
\q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(1));

-- Location: LCCOMB_X1_Y36_N14
\q[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[2]~22_combout\ = (q(2) & (!\q[1]~21\)) # (!q(2) & ((\q[1]~21\) # (GND)))
-- \q[2]~23\ = CARRY((!\q[1]~21\) # (!q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \q[1]~21\,
	combout => \q[2]~22_combout\,
	cout => \q[2]~23\);

-- Location: FF_X1_Y36_N15
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: LCCOMB_X1_Y36_N16
\q[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~24_combout\ = (q(3) & (\q[2]~23\ $ (GND))) # (!q(3) & (!\q[2]~23\ & VCC))
-- \q[3]~25\ = CARRY((q(3) & !\q[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \q[2]~23\,
	combout => \q[3]~24_combout\,
	cout => \q[3]~25\);

-- Location: FF_X1_Y36_N17
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: LCCOMB_X1_Y36_N18
\q[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[4]~26_combout\ = (q(4) & (!\q[3]~25\)) # (!q(4) & ((\q[3]~25\) # (GND)))
-- \q[4]~27\ = CARRY((!\q[3]~25\) # (!q(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \q[3]~25\,
	combout => \q[4]~26_combout\,
	cout => \q[4]~27\);

-- Location: FF_X1_Y36_N19
\q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(4));

-- Location: LCCOMB_X1_Y36_N20
\q[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]~28_combout\ = (q(5) & (\q[4]~27\ $ (GND))) # (!q(5) & (!\q[4]~27\ & VCC))
-- \q[5]~29\ = CARRY((q(5) & !\q[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \q[4]~27\,
	combout => \q[5]~28_combout\,
	cout => \q[5]~29\);

-- Location: FF_X1_Y36_N21
\q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[5]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(5));

-- Location: LCCOMB_X1_Y36_N22
\q[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~30_combout\ = (q(6) & (!\q[5]~29\)) # (!q(6) & ((\q[5]~29\) # (GND)))
-- \q[6]~31\ = CARRY((!\q[5]~29\) # (!q(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(6),
	datad => VCC,
	cin => \q[5]~29\,
	combout => \q[6]~30_combout\,
	cout => \q[6]~31\);

-- Location: FF_X1_Y36_N23
\q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(6));

-- Location: LCCOMB_X1_Y36_N24
\q[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[7]~32_combout\ = (q(7) & (\q[6]~31\ $ (GND))) # (!q(7) & (!\q[6]~31\ & VCC))
-- \q[7]~33\ = CARRY((q(7) & !\q[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(7),
	datad => VCC,
	cin => \q[6]~31\,
	combout => \q[7]~32_combout\,
	cout => \q[7]~33\);

-- Location: FF_X1_Y36_N25
\q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(7));

-- Location: LCCOMB_X1_Y36_N26
\q[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[8]~34_combout\ = (q(8) & (!\q[7]~33\)) # (!q(8) & ((\q[7]~33\) # (GND)))
-- \q[8]~35\ = CARRY((!\q[7]~33\) # (!q(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(8),
	datad => VCC,
	cin => \q[7]~33\,
	combout => \q[8]~34_combout\,
	cout => \q[8]~35\);

-- Location: FF_X1_Y36_N27
\q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(8));

-- Location: LCCOMB_X1_Y36_N28
\q[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[9]~36_combout\ = (q(9) & (\q[8]~35\ $ (GND))) # (!q(9) & (!\q[8]~35\ & VCC))
-- \q[9]~37\ = CARRY((q(9) & !\q[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(9),
	datad => VCC,
	cin => \q[8]~35\,
	combout => \q[9]~36_combout\,
	cout => \q[9]~37\);

-- Location: FF_X1_Y36_N29
\q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[9]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(9));

-- Location: LCCOMB_X1_Y36_N30
\q[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[10]~38_combout\ = (q(10) & (!\q[9]~37\)) # (!q(10) & ((\q[9]~37\) # (GND)))
-- \q[10]~39\ = CARRY((!\q[9]~37\) # (!q(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(10),
	datad => VCC,
	cin => \q[9]~37\,
	combout => \q[10]~38_combout\,
	cout => \q[10]~39\);

-- Location: FF_X1_Y36_N31
\q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[10]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(10));

-- Location: LCCOMB_X1_Y35_N0
\q[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[11]~40_combout\ = (q(11) & (\q[10]~39\ $ (GND))) # (!q(11) & (!\q[10]~39\ & VCC))
-- \q[11]~41\ = CARRY((q(11) & !\q[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(11),
	datad => VCC,
	cin => \q[10]~39\,
	combout => \q[11]~40_combout\,
	cout => \q[11]~41\);

-- Location: FF_X1_Y35_N1
\q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(11));

-- Location: LCCOMB_X1_Y35_N2
\q[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[12]~42_combout\ = (q(12) & (!\q[11]~41\)) # (!q(12) & ((\q[11]~41\) # (GND)))
-- \q[12]~43\ = CARRY((!\q[11]~41\) # (!q(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(12),
	datad => VCC,
	cin => \q[11]~41\,
	combout => \q[12]~42_combout\,
	cout => \q[12]~43\);

-- Location: FF_X1_Y35_N3
\q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[12]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(12));

-- Location: LCCOMB_X1_Y35_N4
\q[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[13]~44_combout\ = (q(13) & (\q[12]~43\ $ (GND))) # (!q(13) & (!\q[12]~43\ & VCC))
-- \q[13]~45\ = CARRY((q(13) & !\q[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(13),
	datad => VCC,
	cin => \q[12]~43\,
	combout => \q[13]~44_combout\,
	cout => \q[13]~45\);

-- Location: FF_X1_Y35_N5
\q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(13));

-- Location: LCCOMB_X1_Y35_N6
\q[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[14]~46_combout\ = (q(14) & (!\q[13]~45\)) # (!q(14) & ((\q[13]~45\) # (GND)))
-- \q[14]~47\ = CARRY((!\q[13]~45\) # (!q(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(14),
	datad => VCC,
	cin => \q[13]~45\,
	combout => \q[14]~46_combout\,
	cout => \q[14]~47\);

-- Location: FF_X1_Y35_N7
\q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[14]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(14));

-- Location: LCCOMB_X1_Y35_N8
\q[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[15]~48_combout\ = (q(15) & (\q[14]~47\ $ (GND))) # (!q(15) & (!\q[14]~47\ & VCC))
-- \q[15]~49\ = CARRY((q(15) & !\q[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(15),
	datad => VCC,
	cin => \q[14]~47\,
	combout => \q[15]~48_combout\,
	cout => \q[15]~49\);

-- Location: FF_X1_Y35_N9
\q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(15));

-- Location: LCCOMB_X1_Y35_N10
\q[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[16]~50_combout\ = (q(16) & (!\q[15]~49\)) # (!q(16) & ((\q[15]~49\) # (GND)))
-- \q[16]~51\ = CARRY((!\q[15]~49\) # (!q(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(16),
	datad => VCC,
	cin => \q[15]~49\,
	combout => \q[16]~50_combout\,
	cout => \q[16]~51\);

-- Location: FF_X1_Y35_N11
\q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[16]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(16));

-- Location: LCCOMB_X1_Y35_N12
\q[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[17]~52_combout\ = (q(17) & (\q[16]~51\ $ (GND))) # (!q(17) & (!\q[16]~51\ & VCC))
-- \q[17]~53\ = CARRY((q(17) & !\q[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(17),
	datad => VCC,
	cin => \q[16]~51\,
	combout => \q[17]~52_combout\,
	cout => \q[17]~53\);

-- Location: FF_X1_Y35_N13
\q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(17));

-- Location: LCCOMB_X1_Y35_N14
\q[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[18]~54_combout\ = (q(18) & (!\q[17]~53\)) # (!q(18) & ((\q[17]~53\) # (GND)))
-- \q[18]~55\ = CARRY((!\q[17]~53\) # (!q(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(18),
	datad => VCC,
	cin => \q[17]~53\,
	combout => \q[18]~54_combout\,
	cout => \q[18]~55\);

-- Location: FF_X1_Y35_N15
\q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(18));

-- Location: LCCOMB_X1_Y35_N16
\q[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[19]~56_combout\ = (q(19) & (\q[18]~55\ $ (GND))) # (!q(19) & (!\q[18]~55\ & VCC))
-- \q[19]~57\ = CARRY((q(19) & !\q[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(19),
	datad => VCC,
	cin => \q[18]~55\,
	combout => \q[19]~56_combout\,
	cout => \q[19]~57\);

-- Location: FF_X1_Y35_N17
\q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[19]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(19));

-- Location: LCCOMB_X1_Y35_N18
\q[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[20]~58_combout\ = \q[19]~57\ $ (q(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(20),
	cin => \q[19]~57\,
	combout => \q[20]~58_combout\);

-- Location: FF_X1_Y35_N19
\q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[20]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(20));

-- Location: CLKCTRL_G3
\q[20]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \q[20]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \q[20]~clkctrl_outclk\);

-- Location: LCCOMB_X65_Y36_N4
\tim[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[0]~10_combout\ = tim(0) $ (VCC)
-- \tim[0]~11\ = CARRY(tim(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tim(0),
	datad => VCC,
	combout => \tim[0]~10_combout\,
	cout => \tim[0]~11\);

-- Location: LCCOMB_X63_Y36_N28
\flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (\flag~q\ & ((!\btn[2]~input_o\) # (!\btn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flag~q\,
	datac => \btn[3]~input_o\,
	datad => \btn[2]~input_o\,
	combout => \flag~0_combout\);

-- Location: LCCOMB_X63_Y36_N10
\flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag~1_combout\ = (\flag~0_combout\) # ((\btn[3]~input_o\ & ((!\btn[1]~input_o\) # (!\btn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[3]~input_o\,
	datab => \btn[0]~input_o\,
	datac => \btn[1]~input_o\,
	datad => \flag~0_combout\,
	combout => \flag~1_combout\);

-- Location: FF_X63_Y36_N11
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: LCCOMB_X63_Y36_N12
\tim[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[7]~12_combout\ = ((!\flag~q\ & ((!\btn[0]~input_o\) # (!\btn[1]~input_o\)))) # (!\btn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[1]~input_o\,
	datab => \btn[0]~input_o\,
	datac => \btn[3]~input_o\,
	datad => \flag~q\,
	combout => \tim[7]~12_combout\);

-- Location: FF_X65_Y36_N5
\tim[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[0]~10_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(0));

-- Location: FF_X66_Y36_N21
\a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => tim(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(0));

-- Location: FF_X55_Y38_N29
\string_data[9][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => a(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[9][0][0]~q\);

-- Location: LCCOMB_X63_Y36_N6
\always3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~0_combout\ = (\btn[0]~input_o\) # (\flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn[0]~input_o\,
	datad => \flag~q\,
	combout => \always3~0_combout\);

-- Location: LCCOMB_X65_Y36_N6
\tim[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[1]~13_combout\ = (tim(1) & ((\always3~0_combout\ & (\tim[0]~11\ & VCC)) # (!\always3~0_combout\ & (!\tim[0]~11\)))) # (!tim(1) & ((\always3~0_combout\ & (!\tim[0]~11\)) # (!\always3~0_combout\ & ((\tim[0]~11\) # (GND)))))
-- \tim[1]~14\ = CARRY((tim(1) & (!\always3~0_combout\ & !\tim[0]~11\)) # (!tim(1) & ((!\tim[0]~11\) # (!\always3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(1),
	datab => \always3~0_combout\,
	datad => VCC,
	cin => \tim[0]~11\,
	combout => \tim[1]~13_combout\,
	cout => \tim[1]~14\);

-- Location: FF_X65_Y36_N7
\tim[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[1]~13_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(1));

-- Location: LCCOMB_X65_Y36_N8
\tim[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[2]~15_combout\ = ((tim(2) $ (\always3~0_combout\ $ (!\tim[1]~14\)))) # (GND)
-- \tim[2]~16\ = CARRY((tim(2) & ((\always3~0_combout\) # (!\tim[1]~14\))) # (!tim(2) & (\always3~0_combout\ & !\tim[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(2),
	datab => \always3~0_combout\,
	datad => VCC,
	cin => \tim[1]~14\,
	combout => \tim[2]~15_combout\,
	cout => \tim[2]~16\);

-- Location: FF_X65_Y36_N9
\tim[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[2]~15_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(2));

-- Location: LCCOMB_X65_Y36_N10
\tim[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[3]~17_combout\ = (tim(3) & ((\always3~0_combout\ & (\tim[2]~16\ & VCC)) # (!\always3~0_combout\ & (!\tim[2]~16\)))) # (!tim(3) & ((\always3~0_combout\ & (!\tim[2]~16\)) # (!\always3~0_combout\ & ((\tim[2]~16\) # (GND)))))
-- \tim[3]~18\ = CARRY((tim(3) & (!\always3~0_combout\ & !\tim[2]~16\)) # (!tim(3) & ((!\tim[2]~16\) # (!\always3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(3),
	datab => \always3~0_combout\,
	datad => VCC,
	cin => \tim[2]~16\,
	combout => \tim[3]~17_combout\,
	cout => \tim[3]~18\);

-- Location: FF_X65_Y36_N11
\tim[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[3]~17_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(3));

-- Location: LCCOMB_X65_Y36_N12
\tim[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[4]~19_combout\ = ((tim(4) $ (\always3~0_combout\ $ (!\tim[3]~18\)))) # (GND)
-- \tim[4]~20\ = CARRY((tim(4) & ((\always3~0_combout\) # (!\tim[3]~18\))) # (!tim(4) & (\always3~0_combout\ & !\tim[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(4),
	datab => \always3~0_combout\,
	datad => VCC,
	cin => \tim[3]~18\,
	combout => \tim[4]~19_combout\,
	cout => \tim[4]~20\);

-- Location: FF_X65_Y36_N13
\tim[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[4]~19_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(4));

-- Location: LCCOMB_X65_Y36_N14
\tim[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[5]~21_combout\ = (tim(5) & ((\always3~0_combout\ & (\tim[4]~20\ & VCC)) # (!\always3~0_combout\ & (!\tim[4]~20\)))) # (!tim(5) & ((\always3~0_combout\ & (!\tim[4]~20\)) # (!\always3~0_combout\ & ((\tim[4]~20\) # (GND)))))
-- \tim[5]~22\ = CARRY((tim(5) & (!\always3~0_combout\ & !\tim[4]~20\)) # (!tim(5) & ((!\tim[4]~20\) # (!\always3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(5),
	datab => \always3~0_combout\,
	datad => VCC,
	cin => \tim[4]~20\,
	combout => \tim[5]~21_combout\,
	cout => \tim[5]~22\);

-- Location: FF_X65_Y36_N15
\tim[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[5]~21_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(5));

-- Location: LCCOMB_X65_Y36_N16
\tim[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[6]~23_combout\ = ((\always3~0_combout\ $ (tim(6) $ (!\tim[5]~22\)))) # (GND)
-- \tim[6]~24\ = CARRY((\always3~0_combout\ & ((tim(6)) # (!\tim[5]~22\))) # (!\always3~0_combout\ & (tim(6) & !\tim[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always3~0_combout\,
	datab => tim(6),
	datad => VCC,
	cin => \tim[5]~22\,
	combout => \tim[6]~23_combout\,
	cout => \tim[6]~24\);

-- Location: FF_X65_Y36_N17
\tim[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[6]~23_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(6));

-- Location: LCCOMB_X65_Y36_N18
\tim[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[7]~25_combout\ = (tim(7) & ((\always3~0_combout\ & (\tim[6]~24\ & VCC)) # (!\always3~0_combout\ & (!\tim[6]~24\)))) # (!tim(7) & ((\always3~0_combout\ & (!\tim[6]~24\)) # (!\always3~0_combout\ & ((\tim[6]~24\) # (GND)))))
-- \tim[7]~26\ = CARRY((tim(7) & (!\always3~0_combout\ & !\tim[6]~24\)) # (!tim(7) & ((!\tim[6]~24\) # (!\always3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(7),
	datab => \always3~0_combout\,
	datad => VCC,
	cin => \tim[6]~24\,
	combout => \tim[7]~25_combout\,
	cout => \tim[7]~26\);

-- Location: FF_X65_Y36_N19
\tim[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[7]~25_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(7));

-- Location: LCCOMB_X65_Y36_N20
\tim[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[8]~27_combout\ = ((tim(8) $ (\always3~0_combout\ $ (!\tim[7]~26\)))) # (GND)
-- \tim[8]~28\ = CARRY((tim(8) & ((\always3~0_combout\) # (!\tim[7]~26\))) # (!tim(8) & (\always3~0_combout\ & !\tim[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(8),
	datab => \always3~0_combout\,
	datad => VCC,
	cin => \tim[7]~26\,
	combout => \tim[8]~27_combout\,
	cout => \tim[8]~28\);

-- Location: FF_X65_Y36_N21
\tim[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[8]~27_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(8));

-- Location: LCCOMB_X65_Y36_N22
\tim[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim[9]~29_combout\ = \always3~0_combout\ $ (\tim[8]~28\ $ (tim(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \always3~0_combout\,
	datad => tim(9),
	cin => \tim[8]~28\,
	combout => \tim[9]~29_combout\);

-- Location: FF_X65_Y36_N23
\tim[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[20]~clkctrl_outclk\,
	d => \tim[9]~29_combout\,
	sclr => \ALT_INV_btn[3]~input_o\,
	ena => \tim[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tim(9));

-- Location: LCCOMB_X65_Y36_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = tim(7) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(tim(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tim(7),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X65_Y36_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (tim(8) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!tim(8) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!tim(8) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tim(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X65_Y36_N28
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (tim(9) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!tim(9) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((tim(9) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tim(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X65_Y36_N30
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X65_Y36_N0
\Div0|auto_generated|divider|divider|StageOut[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & tim(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => tim(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X65_Y36_N2
\Div0|auto_generated|divider|divider|StageOut[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X66_Y36_N30
\Div0|auto_generated|divider|divider|StageOut[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X66_Y36_N20
\Div0|auto_generated|divider|divider|StageOut[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\ = (tim(8) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X66_Y36_N26
\Div0|auto_generated|divider|divider|StageOut[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ = (tim(7) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X66_Y36_N24
\Div0|auto_generated|divider|divider|StageOut[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X66_Y36_N22
\Div0|auto_generated|divider|divider|StageOut[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\ = (tim(6) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X66_Y36_N0
\Div0|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ = (tim(6) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X66_Y36_N4
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X66_Y36_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~60_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~61_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~61_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X66_Y36_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~58_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~58_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X66_Y36_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y36_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y36_N26
\Div0|auto_generated|divider|divider|StageOut[23]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (tim(8))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(8),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X66_Y36_N18
\Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X66_Y36_N16
\Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X67_Y36_N24
\Div0|auto_generated|divider|divider|StageOut[22]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (tim(7))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(7),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X66_Y36_N14
\Div0|auto_generated|divider|divider|StageOut[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X67_Y36_N0
\Div0|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ = (tim(6) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X66_Y36_N2
\Div0|auto_generated|divider|divider|StageOut[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\ = (tim(5) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X66_Y36_N28
\Div0|auto_generated|divider|divider|StageOut[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\ = (tim(5) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X67_Y36_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~68_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X67_Y36_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~67_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X67_Y36_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X67_Y36_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X67_Y36_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y36_N8
\Div0|auto_generated|divider|divider|StageOut[25]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & tim(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => tim(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X67_Y36_N6
\Div0|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & tim(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => tim(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X68_Y36_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X67_Y36_N12
\Div0|auto_generated|divider|divider|StageOut[28]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X67_Y36_N30
\Div0|auto_generated|divider|divider|StageOut[28]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X67_Y36_N2
\Div0|auto_generated|divider|divider|StageOut[27]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (tim(6))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(6),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X67_Y36_N4
\Div0|auto_generated|divider|divider|StageOut[27]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X67_Y36_N10
\Div0|auto_generated|divider|divider|StageOut[26]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & tim(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => tim(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X67_Y36_N28
\Div0|auto_generated|divider|divider|StageOut[26]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X68_Y36_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~72_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~73_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~73_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X68_Y36_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X68_Y36_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X68_Y36_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X68_Y36_N20
\Div0|auto_generated|divider|divider|StageOut[33]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X68_Y36_N8
\Div0|auto_generated|divider|divider|StageOut[33]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X68_Y36_N6
\Div0|auto_generated|divider|divider|StageOut[32]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X68_Y36_N4
\Div0|auto_generated|divider|divider|StageOut[32]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((tim(5)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => tim(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X69_Y36_N4
\Div0|auto_generated|divider|divider|StageOut[31]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ = (tim(4) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X68_Y36_N0
\Div0|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X69_Y36_N30
\Div0|auto_generated|divider|divider|StageOut[30]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\ = (tim(3) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X68_Y36_N2
\Div0|auto_generated|divider|divider|StageOut[30]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ = (tim(3) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X68_Y36_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X68_Y36_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[31]~78_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X68_Y36_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X68_Y36_N28
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X68_Y36_N30
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y36_N8
\Div0|auto_generated|divider|divider|StageOut[37]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((tim(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => tim(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X69_Y36_N26
\Div0|auto_generated|divider|divider|StageOut[38]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X69_Y36_N24
\Div0|auto_generated|divider|divider|StageOut[38]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X69_Y36_N6
\Div0|auto_generated|divider|divider|StageOut[37]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X69_Y36_N20
\Div0|auto_generated|divider|divider|StageOut[36]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X69_Y36_N0
\Div0|auto_generated|divider|divider|StageOut[36]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ = (tim(3) & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X69_Y36_N22
\Div0|auto_generated|divider|divider|StageOut[35]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\ = (tim(2) & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X69_Y36_N28
\Div0|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ = (tim(2) & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X69_Y36_N10
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X69_Y36_N12
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~85_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~84_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~84_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X69_Y36_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X69_Y36_N16
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y36_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y36_N30
\Div0|auto_generated|divider|divider|StageOut[43]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X70_Y36_N14
\Div0|auto_generated|divider|divider|StageOut[43]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X70_Y36_N12
\Div0|auto_generated|divider|divider|StageOut[42]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X70_Y36_N16
\Div0|auto_generated|divider|divider|StageOut[42]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (tim(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => tim(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X70_Y36_N10
\Div0|auto_generated|divider|divider|StageOut[41]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ = (tim(2) & \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\);

-- Location: LCCOMB_X70_Y36_N8
\Div0|auto_generated|divider|divider|StageOut[41]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\);

-- Location: LCCOMB_X70_Y36_N6
\Div0|auto_generated|divider|divider|StageOut[40]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ = (tim(1) & \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X70_Y36_N4
\Div0|auto_generated|divider|divider|StageOut[40]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\ = (tim(1) & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\);

-- Location: LCCOMB_X70_Y36_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~92_combout\) # (\Div0|auto_generated|divider|divider|StageOut[40]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X70_Y36_N20
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X70_Y36_N22
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~89_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X70_Y36_N24
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y36_N26
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y36_N0
\b[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b[0]~0_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b[0]~0_combout\);

-- Location: FF_X70_Y36_N1
\b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(0));

-- Location: FF_X55_Y38_N5
\string_data[8][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => b(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[8][0][0]~q\);

-- Location: LCCOMB_X55_Y38_N4
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (lut_index(1) & (((\string_data[9][0][0]~q\)))) # (!lut_index(1) & (lut_index(0) & ((\string_data[8][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \string_data[9][0][0]~q\,
	datac => \string_data[8][0][0]~q\,
	datad => lut_index(1),
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X55_Y38_N6
\Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (!lut_index(3) & ((lut_index(2) & ((lut_index(0)))) # (!lut_index(2) & (lut_index(1) & !lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => lut_index(2),
	datac => lut_index(0),
	datad => lut_index(3),
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X55_Y38_N28
\Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\Selector12~3_combout\) # ((lut_index(3) & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => \Add1~0_combout\,
	datad => \Selector12~3_combout\,
	combout => \Selector12~4_combout\);

-- Location: LCCOMB_X54_Y38_N8
\Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = (\mlcd_data[3]~1_combout\ & (((\Selector12~2_combout\)))) # (!\mlcd_data[3]~1_combout\ & (\mlcd_data[3]~0_combout\ & ((\Selector12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mlcd_data[3]~0_combout\,
	datab => \mlcd_data[3]~1_combout\,
	datac => \Selector12~2_combout\,
	datad => \Selector12~4_combout\,
	combout => \Selector12~5_combout\);

-- Location: LCCOMB_X54_Y38_N16
\Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~6_combout\ = (\Selector12~5_combout\ & (((!\mlcd_data[3]~1_combout\) # (!lut_index(1))) # (!lut_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => \Selector12~5_combout\,
	datad => \mlcd_data[3]~1_combout\,
	combout => \Selector12~6_combout\);

-- Location: LCCOMB_X55_Y37_N8
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

-- Location: FF_X55_Y37_N9
\mlcd_st.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mlcd_st.000000~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_st.000000~q\);

-- Location: LCCOMB_X54_Y38_N6
\mlcd_data[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[0]~3_combout\ = (!\mlcd_st.000000~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mlcd_st.000000~q\,
	datad => \LessThan0~1_combout\,
	combout => \mlcd_data[0]~3_combout\);

-- Location: FF_X54_Y38_N17
\mlcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector12~6_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(0));

-- Location: LCCOMB_X54_Y38_N12
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (lut_index(0) & ((lut_index(1) & ((!lut_index(3)))) # (!lut_index(1) & ((lut_index(2)) # (lut_index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => lut_index(3),
	datad => lut_index(0),
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X70_Y38_N8
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\);

-- Location: LCCOMB_X68_Y38_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X68_Y38_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X68_Y38_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X68_Y38_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X68_Y38_N18
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X68_Y38_N2
\Mod1|auto_generated|divider|divider|StageOut[33]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\);

-- Location: LCCOMB_X68_Y38_N4
\Mod1|auto_generated|divider|divider|StageOut[33]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\);

-- Location: LCCOMB_X68_Y38_N6
\Mod1|auto_generated|divider|divider|StageOut[32]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\);

-- Location: LCCOMB_X68_Y38_N8
\Mod1|auto_generated|divider|divider|StageOut[32]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\);

-- Location: LCCOMB_X68_Y38_N20
\Mod1|auto_generated|divider|divider|StageOut[31]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\);

-- Location: LCCOMB_X68_Y38_N0
\Mod1|auto_generated|divider|divider|StageOut[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X67_Y38_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X67_Y38_N16
\Mod1|auto_generated|divider|divider|StageOut[30]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\);

-- Location: LCCOMB_X67_Y38_N6
\Mod1|auto_generated|divider|divider|StageOut[30]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\);

-- Location: LCCOMB_X68_Y38_N22
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~42_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X68_Y38_N24
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X68_Y38_N26
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~38_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X68_Y38_N28
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[33]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~36_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X68_Y38_N30
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y38_N30
\Mod1|auto_generated|divider|divider|StageOut[38]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~59_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~59_combout\);

-- Location: LCCOMB_X69_Y38_N2
\Mod1|auto_generated|divider|divider|StageOut[38]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\);

-- Location: LCCOMB_X69_Y38_N24
\Mod1|auto_generated|divider|divider|StageOut[37]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\);

-- Location: LCCOMB_X69_Y38_N28
\Mod1|auto_generated|divider|divider|StageOut[37]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\);

-- Location: LCCOMB_X69_Y38_N26
\Mod1|auto_generated|divider|divider|StageOut[36]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\);

-- Location: LCCOMB_X69_Y38_N20
\Mod1|auto_generated|divider|divider|StageOut[36]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\);

-- Location: LCCOMB_X69_Y38_N22
\Mod1|auto_generated|divider|divider|StageOut[35]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\);

-- Location: LCCOMB_X69_Y38_N4
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\);

-- Location: LCCOMB_X69_Y38_N0
\Mod1|auto_generated|divider|divider|StageOut[35]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\);

-- Location: LCCOMB_X69_Y38_N6
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~47_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~48_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X69_Y38_N8
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~46_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X69_Y38_N10
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~45_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X69_Y38_N12
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[38]~59_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~59_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~44_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y38_N14
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y38_N10
\Mod1|auto_generated|divider|divider|StageOut[40]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\);

-- Location: LCCOMB_X70_Y38_N0
\Mod1|auto_generated|divider|divider|StageOut[40]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\);

-- Location: LCCOMB_X70_Y38_N14
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X70_Y38_N12
\Mod1|auto_generated|divider|divider|StageOut[43]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~57_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~60_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~57_combout\);

-- Location: LCCOMB_X70_Y38_N4
\Mod1|auto_generated|divider|divider|StageOut[43]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~51_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~51_combout\);

-- Location: LCCOMB_X70_Y38_N30
\Mod1|auto_generated|divider|divider|StageOut[42]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[36]~61_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\);

-- Location: LCCOMB_X69_Y38_N18
\Mod1|auto_generated|divider|divider|StageOut[42]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\);

-- Location: LCCOMB_X69_Y38_N16
\Mod1|auto_generated|divider|divider|StageOut[41]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\);

-- Location: LCCOMB_X70_Y38_N28
\Mod1|auto_generated|divider|divider|StageOut[41]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\);

-- Location: LCCOMB_X70_Y38_N16
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X70_Y38_N18
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X70_Y38_N20
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[43]~57_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[43]~51_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[43]~57_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[43]~51_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y38_N22
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y38_N26
\Mod1|auto_generated|divider|divider|StageOut[46]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[46]~54_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[46]~54_combout\);

-- Location: FF_X70_Y38_N27
\b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[46]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(1));

-- Location: FF_X53_Y38_N9
\string_data[8][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => b(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[8][0][1]~q\);

-- Location: LCCOMB_X66_Y35_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = tim(7) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(tim(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(7),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X66_Y35_N26
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (tim(8) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!tim(8) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!tim(8) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tim(8),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X66_Y35_N28
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (tim(9) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!tim(9) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((tim(9) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tim(9),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X66_Y35_N30
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X66_Y35_N10
\Mod0|auto_generated|divider|divider|StageOut[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X66_Y35_N4
\Mod0|auto_generated|divider|divider|StageOut[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\ = (tim(9) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tim(9),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X66_Y35_N22
\Mod0|auto_generated|divider|divider|StageOut[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X66_Y35_N8
\Mod0|auto_generated|divider|divider|StageOut[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & tim(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => tim(8),
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X66_Y35_N6
\Mod0|auto_generated|divider|divider|StageOut[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X66_Y35_N0
\Mod0|auto_generated|divider|divider|StageOut[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & tim(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => tim(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X65_Y35_N16
\Mod0|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & tim(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => tim(6),
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X66_Y35_N2
\Mod0|auto_generated|divider|divider|StageOut[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\ = (tim(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X66_Y35_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X66_Y35_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X66_Y35_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X66_Y35_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y35_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y35_N30
\Mod0|auto_generated|divider|divider|StageOut[23]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~101_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (tim(8))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(8),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~101_combout\);

-- Location: LCCOMB_X67_Y35_N18
\Mod0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X67_Y35_N12
\Mod0|auto_generated|divider|divider|StageOut[22]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((tim(7)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => tim(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\);

-- Location: LCCOMB_X67_Y35_N16
\Mod0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X67_Y35_N22
\Mod0|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ = (tim(6) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X67_Y35_N24
\Mod0|auto_generated|divider|divider|StageOut[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X67_Y35_N10
\Mod0|auto_generated|divider|divider|StageOut[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\ = (tim(5) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X67_Y35_N20
\Mod0|auto_generated|divider|divider|StageOut[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\ = (tim(5) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X67_Y35_N0
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X67_Y35_N2
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X67_Y35_N4
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X67_Y35_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~101_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~101_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X67_Y35_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X68_Y35_N10
\Mod0|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\ = (tim(4) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X68_Y35_N4
\Mod0|auto_generated|divider|divider|StageOut[25]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\ = (tim(4) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X68_Y35_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X67_Y35_N26
\Mod0|auto_generated|divider|divider|StageOut[27]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (tim(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(6),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\);

-- Location: LCCOMB_X68_Y35_N20
\Mod0|auto_generated|divider|divider|StageOut[27]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X68_Y35_N12
\Mod0|auto_generated|divider|divider|StageOut[26]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X68_Y35_N2
\Mod0|auto_generated|divider|divider|StageOut[26]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\ = (tim(5) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X68_Y35_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X68_Y35_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X67_Y35_N14
\Mod0|auto_generated|divider|divider|StageOut[28]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X67_Y35_N28
\Mod0|auto_generated|divider|divider|StageOut[28]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~97_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~102_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~97_combout\);

-- Location: LCCOMB_X68_Y35_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~97_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~97_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X68_Y35_N30
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X68_Y35_N14
\Mod0|auto_generated|divider|divider|StageOut[33]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X69_Y35_N18
\Mod0|auto_generated|divider|divider|StageOut[33]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~98_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~103_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~98_combout\);

-- Location: LCCOMB_X68_Y35_N8
\Mod0|auto_generated|divider|divider|StageOut[32]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X69_Y35_N28
\Mod0|auto_generated|divider|divider|StageOut[32]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (tim(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(5),
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\);

-- Location: LCCOMB_X68_Y35_N16
\Mod0|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X68_Y35_N18
\Mod0|auto_generated|divider|divider|StageOut[31]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\ = (tim(4) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X68_Y35_N0
\Mod0|auto_generated|divider|divider|StageOut[30]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & tim(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => tim(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X68_Y35_N6
\Mod0|auto_generated|divider|divider|StageOut[30]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & tim(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => tim(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X69_Y35_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X69_Y35_N2
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X69_Y35_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X69_Y35_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~98_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~98_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y35_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y35_N10
\Mod0|auto_generated|divider|divider|StageOut[37]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (tim(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\);

-- Location: LCCOMB_X69_Y35_N14
\Mod0|auto_generated|divider|divider|StageOut[38]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X69_Y35_N24
\Mod0|auto_generated|divider|divider|StageOut[38]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~99_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~104_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~99_combout\);

-- Location: LCCOMB_X69_Y35_N20
\Mod0|auto_generated|divider|divider|StageOut[37]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X69_Y35_N16
\Mod0|auto_generated|divider|divider|StageOut[36]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X69_Y35_N30
\Mod0|auto_generated|divider|divider|StageOut[36]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\ = (tim(3) & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X69_Y35_N12
\Mod0|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & tim(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => tim(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X69_Y35_N22
\Mod0|auto_generated|divider|divider|StageOut[35]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & tim(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => tim(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X70_Y35_N20
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X70_Y35_N22
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X70_Y35_N24
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X70_Y35_N26
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~99_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~99_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y35_N28
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y35_N26
\Mod0|auto_generated|divider|divider|StageOut[43]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~100_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~105_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~100_combout\);

-- Location: LCCOMB_X70_Y35_N16
\Mod0|auto_generated|divider|divider|StageOut[43]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\);

-- Location: LCCOMB_X70_Y35_N30
\Mod0|auto_generated|divider|divider|StageOut[42]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\);

-- Location: LCCOMB_X72_Y35_N2
\Mod0|auto_generated|divider|divider|StageOut[42]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (tim(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\);

-- Location: LCCOMB_X72_Y35_N20
\Mod0|auto_generated|divider|divider|StageOut[41]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\);

-- Location: LCCOMB_X70_Y35_N14
\Mod0|auto_generated|divider|divider|StageOut[41]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\ = (tim(2) & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\);

-- Location: LCCOMB_X72_Y35_N22
\Mod0|auto_generated|divider|divider|StageOut[40]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\ = (tim(1) & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\);

-- Location: LCCOMB_X72_Y35_N12
\Mod0|auto_generated|divider|divider|StageOut[40]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\ = (tim(1) & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tim(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\);

-- Location: LCCOMB_X70_Y35_N0
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X70_Y35_N2
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X70_Y35_N4
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X70_Y35_N6
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[43]~100_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~100_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y35_N8
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y35_N18
\Mod0|auto_generated|divider|divider|StageOut[46]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[46]~94_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (tim(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tim(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[46]~94_combout\);

-- Location: FF_X70_Y35_N19
\a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[46]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(1));

-- Location: FF_X55_Y38_N1
\string_data[9][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => a(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[9][0][1]~q\);

-- Location: LCCOMB_X53_Y38_N6
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (lut_index(1) & (((\string_data[9][0][1]~q\)))) # (!lut_index(1) & ((\string_data[8][0][1]~q\) # ((!lut_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datab => \string_data[8][0][1]~q\,
	datac => lut_index(0),
	datad => \string_data[9][0][1]~q\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X54_Y38_N26
\Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (\mlcd_data[3]~1_combout\ & (((\Selector11~2_combout\)))) # (!\mlcd_data[3]~1_combout\ & (\Selector11~3_combout\ & (\mlcd_data[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~3_combout\,
	datab => \mlcd_data[3]~0_combout\,
	datac => \Selector11~2_combout\,
	datad => \mlcd_data[3]~1_combout\,
	combout => \Selector11~4_combout\);

-- Location: LCCOMB_X54_Y38_N14
\Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~5_combout\ = (\Selector11~4_combout\ & (((!\mlcd_data[3]~1_combout\) # (!lut_index(1))) # (!lut_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => \Selector11~4_combout\,
	datad => \mlcd_data[3]~1_combout\,
	combout => \Selector11~5_combout\);

-- Location: FF_X54_Y38_N15
\mlcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector11~5_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(1));

-- Location: LCCOMB_X70_Y35_N12
\Mod0|auto_generated|divider|divider|StageOut[47]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[47]~95_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[47]~95_combout\);

-- Location: FF_X70_Y35_N13
\a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[47]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(2));

-- Location: FF_X55_Y38_N23
\string_data[9][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => a(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[9][0][2]~q\);

-- Location: LCCOMB_X70_Y38_N24
\Mod1|auto_generated|divider|divider|StageOut[47]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[47]~55_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[41]~53_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[47]~55_combout\);

-- Location: FF_X70_Y38_N25
\b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[47]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(2));

-- Location: FF_X55_Y38_N9
\string_data[8][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => b(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[8][0][2]~q\);

-- Location: LCCOMB_X55_Y38_N26
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (lut_index(1) & (((\string_data[9][0][2]~q\)))) # (!lut_index(1) & (lut_index(0) & ((\string_data[8][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \string_data[9][0][2]~q\,
	datac => lut_index(1),
	datad => \string_data[8][0][2]~q\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X54_Y38_N4
\Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (lut_index(3) & (((lut_index(1))))) # (!lut_index(3) & ((lut_index(2) & (lut_index(1) & !lut_index(0))) # (!lut_index(2) & ((lut_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(2),
	datab => lut_index(1),
	datac => lut_index(3),
	datad => lut_index(0),
	combout => \Selector10~3_combout\);

-- Location: LCCOMB_X54_Y38_N30
\Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~4_combout\ = (\mlcd_data[3]~1_combout\ & (\Selector10~2_combout\)) # (!\mlcd_data[3]~1_combout\ & (((\mlcd_data[3]~0_combout\ & \Selector10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~2_combout\,
	datab => \mlcd_data[3]~0_combout\,
	datac => \Selector10~3_combout\,
	datad => \mlcd_data[3]~1_combout\,
	combout => \Selector10~4_combout\);

-- Location: LCCOMB_X54_Y38_N28
\Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~5_combout\ = (\Selector10~4_combout\ & (((!\mlcd_data[3]~1_combout\) # (!lut_index(1))) # (!lut_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => \Selector10~4_combout\,
	datad => \mlcd_data[3]~1_combout\,
	combout => \Selector10~5_combout\);

-- Location: FF_X54_Y38_N29
\mlcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector10~5_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(2));

-- Location: LCCOMB_X70_Y35_N10
\Mod0|auto_generated|divider|divider|StageOut[48]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~96_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[42]~106_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~96_combout\);

-- Location: FF_X70_Y35_N11
\a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[48]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(3));

-- Location: LCCOMB_X53_Y38_N18
\string_data[9][0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_data[9][0][3]~feeder_combout\ = a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a(3),
	combout => \string_data[9][0][3]~feeder_combout\);

-- Location: FF_X53_Y38_N19
\string_data[9][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \string_data[9][0][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[9][0][3]~q\);

-- Location: LCCOMB_X70_Y38_N6
\Mod1|auto_generated|divider|divider|StageOut[48]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~56_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[42]~58_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[42]~52_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~56_combout\);

-- Location: FF_X70_Y38_N7
\b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[48]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(3));

-- Location: FF_X53_Y38_N13
\string_data[8][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => b(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \string_data[8][0][3]~q\);

-- Location: LCCOMB_X53_Y38_N12
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (lut_index(1) & (((\string_data[9][0][3]~q\)))) # (!lut_index(1) & (((\string_data[8][0][3]~q\)) # (!lut_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => \string_data[9][0][3]~q\,
	datac => \string_data[8][0][3]~q\,
	datad => lut_index(1),
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X53_Y38_N24
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!lut_index(3) & (\mlcd_data[3]~0_combout\ & (lut_index(2) $ (!lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(2),
	datac => lut_index(1),
	datad => \mlcd_data[3]~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X53_Y38_N30
\mlcd_data[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mlcd_data[3]~2_combout\ = (lut_index(1) & (lut_index(0) & \mlcd_data[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(1),
	datac => lut_index(0),
	datad => \mlcd_data[3]~1_combout\,
	combout => \mlcd_data[3]~2_combout\);

-- Location: LCCOMB_X53_Y38_N28
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (!\mlcd_data[3]~2_combout\ & ((\Selector9~0_combout\) # ((\Selector9~1_combout\ & \mlcd_data[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => \Selector9~0_combout\,
	datac => \mlcd_data[3]~2_combout\,
	datad => \mlcd_data[3]~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: FF_X53_Y38_N29
\mlcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector9~2_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(3));

-- Location: LCCOMB_X53_Y38_N26
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (lut_index(1) & ((lut_index(2) $ (!lut_index(0))) # (!lut_index(3)))) # (!lut_index(1) & (lut_index(3) $ (((lut_index(2)) # (lut_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(2),
	datac => lut_index(0),
	datad => lut_index(1),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X54_Y38_N2
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (!lut_index(5) & (!\Selector8~0_combout\ & !lut_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(5),
	datac => \Selector8~0_combout\,
	datad => lut_index(4),
	combout => \Selector8~1_combout\);

-- Location: FF_X54_Y38_N3
\mlcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(4));

-- Location: LCCOMB_X53_Y38_N16
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (lut_index(2) & (!lut_index(3))) # (!lut_index(2) & (((lut_index(0)) # (lut_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(2),
	datac => lut_index(0),
	datad => lut_index(1),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X53_Y38_N10
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (lut_index(4) & (!lut_index(1) & (lut_index(0) & !lut_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(1),
	datac => lut_index(0),
	datad => lut_index(3),
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X53_Y38_N8
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (lut_index(2) & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(2),
	datad => \Selector7~1_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X54_Y38_N0
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (lut_index(5)) # ((!\Selector7~2_combout\ & ((lut_index(4)) # (!\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(4),
	datab => lut_index(5),
	datac => \Selector7~0_combout\,
	datad => \Selector7~2_combout\,
	combout => \Selector7~3_combout\);

-- Location: FF_X54_Y38_N1
\mlcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector7~3_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(5));

-- Location: LCCOMB_X53_Y38_N0
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (lut_index(0) & (lut_index(3) $ ((lut_index(2))))) # (!lut_index(0) & (lut_index(1) & (lut_index(3) $ (lut_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(3),
	datab => lut_index(2),
	datac => lut_index(0),
	datad => lut_index(1),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X54_Y38_N22
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (!lut_index(5) & ((\Selector7~2_combout\) # ((\Selector6~0_combout\ & !lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => lut_index(5),
	datac => \Selector6~0_combout\,
	datad => lut_index(4),
	combout => \Selector6~1_combout\);

-- Location: FF_X54_Y38_N23
\mlcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(6));

-- Location: LCCOMB_X53_Y38_N14
\lut_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~0_combout\ = (!lut_index(1) & (lut_index(2) & (lut_index(0) $ (!lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => lut_index(2),
	datad => lut_index(4),
	combout => \lut_data~0_combout\);

-- Location: LCCOMB_X54_Y38_N20
\lut_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_data~1_combout\ = (!lut_index(5) & (!lut_index(3) & \lut_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lut_index(5),
	datac => lut_index(3),
	datad => \lut_data~0_combout\,
	combout => \lut_data~1_combout\);

-- Location: FF_X54_Y38_N21
\mlcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \lut_data~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mlcd_data(7));

-- Location: LCCOMB_X53_Y38_N20
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (lut_index(2) & ((lut_index(1)) # (lut_index(0) $ (lut_index(4))))) # (!lut_index(2) & (((lut_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lut_index(0),
	datab => lut_index(1),
	datac => lut_index(2),
	datad => lut_index(4),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X54_Y38_N10
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

-- Location: FF_X54_Y38_N11
mlcd_rs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WideOr0~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	ena => \mlcd_data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mlcd_rs~q\);

-- Location: LCCOMB_X55_Y41_N28
\u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector3~0_combout\ = (\u0|state.01~q\) # ((\u0|lcd_en~q\ & ((\u0|state.10~q\) # (!\u0|state.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|state.01~q\,
	datab => \u0|state.00~q\,
	datac => \u0|lcd_en~q\,
	datad => \u0|state.10~q\,
	combout => \u0|Selector3~0_combout\);

-- Location: FF_X55_Y41_N29
\u0|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|Selector3~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
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


