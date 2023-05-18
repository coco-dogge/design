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

-- DATE "05/18/2023 09:53:29"

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

ENTITY 	HW17 IS
    PORT (
	CLK : IN std_logic;
	rst : IN std_logic;
	BCD : BUFFER std_logic_vector(7 DOWNTO 0);
	BCD1 : BUFFER std_logic_vector(7 DOWNTO 0);
	BCD2 : BUFFER std_logic_vector(7 DOWNTO 0);
	BCD3 : BUFFER std_logic_vector(7 DOWNTO 0);
	sw : IN std_logic_vector(9 DOWNTO 0)
	);
END HW17;

-- Design Ports Information
-- rst	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[3]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[4]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[5]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[0]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[1]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[2]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[5]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[0]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HW17 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_BCD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BCD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BCD3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \BCD[0]~output_o\ : std_logic;
SIGNAL \BCD[1]~output_o\ : std_logic;
SIGNAL \BCD[2]~output_o\ : std_logic;
SIGNAL \BCD[3]~output_o\ : std_logic;
SIGNAL \BCD[4]~output_o\ : std_logic;
SIGNAL \BCD[5]~output_o\ : std_logic;
SIGNAL \BCD[6]~output_o\ : std_logic;
SIGNAL \BCD[7]~output_o\ : std_logic;
SIGNAL \BCD1[0]~output_o\ : std_logic;
SIGNAL \BCD1[1]~output_o\ : std_logic;
SIGNAL \BCD1[2]~output_o\ : std_logic;
SIGNAL \BCD1[3]~output_o\ : std_logic;
SIGNAL \BCD1[4]~output_o\ : std_logic;
SIGNAL \BCD1[5]~output_o\ : std_logic;
SIGNAL \BCD1[6]~output_o\ : std_logic;
SIGNAL \BCD1[7]~output_o\ : std_logic;
SIGNAL \BCD2[0]~output_o\ : std_logic;
SIGNAL \BCD2[1]~output_o\ : std_logic;
SIGNAL \BCD2[2]~output_o\ : std_logic;
SIGNAL \BCD2[3]~output_o\ : std_logic;
SIGNAL \BCD2[4]~output_o\ : std_logic;
SIGNAL \BCD2[5]~output_o\ : std_logic;
SIGNAL \BCD2[6]~output_o\ : std_logic;
SIGNAL \BCD2[7]~output_o\ : std_logic;
SIGNAL \BCD3[0]~output_o\ : std_logic;
SIGNAL \BCD3[1]~output_o\ : std_logic;
SIGNAL \BCD3[2]~output_o\ : std_logic;
SIGNAL \BCD3[3]~output_o\ : std_logic;
SIGNAL \BCD3[4]~output_o\ : std_logic;
SIGNAL \BCD3[5]~output_o\ : std_logic;
SIGNAL \BCD3[6]~output_o\ : std_logic;
SIGNAL \BCD3[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \w[0]~72_combout\ : std_logic;
SIGNAL \w[1]~24_combout\ : std_logic;
SIGNAL \w[1]~25\ : std_logic;
SIGNAL \w[2]~26_combout\ : std_logic;
SIGNAL \w[2]~27\ : std_logic;
SIGNAL \w[3]~28_combout\ : std_logic;
SIGNAL \w[3]~29\ : std_logic;
SIGNAL \w[4]~30_combout\ : std_logic;
SIGNAL \w[4]~31\ : std_logic;
SIGNAL \w[5]~32_combout\ : std_logic;
SIGNAL \w[5]~33\ : std_logic;
SIGNAL \w[6]~34_combout\ : std_logic;
SIGNAL \w[6]~35\ : std_logic;
SIGNAL \w[7]~36_combout\ : std_logic;
SIGNAL \w[7]~37\ : std_logic;
SIGNAL \w[8]~38_combout\ : std_logic;
SIGNAL \w[8]~39\ : std_logic;
SIGNAL \w[9]~40_combout\ : std_logic;
SIGNAL \w[9]~41\ : std_logic;
SIGNAL \w[10]~42_combout\ : std_logic;
SIGNAL \w[10]~43\ : std_logic;
SIGNAL \w[11]~44_combout\ : std_logic;
SIGNAL \w[11]~45\ : std_logic;
SIGNAL \w[12]~46_combout\ : std_logic;
SIGNAL \w[12]~47\ : std_logic;
SIGNAL \w[13]~48_combout\ : std_logic;
SIGNAL \w[13]~49\ : std_logic;
SIGNAL \w[14]~50_combout\ : std_logic;
SIGNAL \w[14]~51\ : std_logic;
SIGNAL \w[15]~52_combout\ : std_logic;
SIGNAL \w[15]~53\ : std_logic;
SIGNAL \w[16]~54_combout\ : std_logic;
SIGNAL \w[16]~55\ : std_logic;
SIGNAL \w[17]~56_combout\ : std_logic;
SIGNAL \w[17]~57\ : std_logic;
SIGNAL \w[18]~58_combout\ : std_logic;
SIGNAL \w[18]~59\ : std_logic;
SIGNAL \w[19]~60_combout\ : std_logic;
SIGNAL \w[19]~61\ : std_logic;
SIGNAL \w[20]~62_combout\ : std_logic;
SIGNAL \w[20]~63\ : std_logic;
SIGNAL \w[21]~64_combout\ : std_logic;
SIGNAL \w[21]~65\ : std_logic;
SIGNAL \w[22]~66_combout\ : std_logic;
SIGNAL \w[22]~67\ : std_logic;
SIGNAL \w[23]~68_combout\ : std_logic;
SIGNAL \w[23]~69\ : std_logic;
SIGNAL \w[24]~70_combout\ : std_logic;
SIGNAL \clkA~feeder_combout\ : std_logic;
SIGNAL \clkA~q\ : std_logic;
SIGNAL \clkA~clkctrl_outclk\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \WideNor0~8_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \WideNor0~7_combout\ : std_logic;
SIGNAL \WideNor0~6_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \WideNor0~17_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Q[0][0]~q\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \WideNor0~16_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \WideNor0~15_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \Q[0][1]~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \Q[0][2]~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Q[0][3]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Q[1][0]~q\ : std_logic;
SIGNAL \Q[1][2]~q\ : std_logic;
SIGNAL \Q[1][3]~feeder_combout\ : std_logic;
SIGNAL \Q[1][3]~q\ : std_logic;
SIGNAL \Q[1][1]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Q[2][1]~q\ : std_logic;
SIGNAL \Q[2][0]~q\ : std_logic;
SIGNAL \Q[2][3]~feeder_combout\ : std_logic;
SIGNAL \Q[2][3]~q\ : std_logic;
SIGNAL \Q[2][2]~q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Q[3][0]~q\ : std_logic;
SIGNAL \Q[3][3]~q\ : std_logic;
SIGNAL \Q[3][1]~q\ : std_logic;
SIGNAL \Q[3][2]~q\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL w : std_logic_vector(35 DOWNTO 0);
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_rst <= rst;
BCD <= ww_BCD;
BCD1 <= ww_BCD1;
BCD2 <= ww_BCD2;
BCD3 <= ww_BCD3;
ww_sw <= sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\clkA~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkA~q\);
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X5_Y73_N2
\BCD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BCD[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\BCD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \BCD[1]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\BCD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \BCD[2]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\BCD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \BCD[3]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\BCD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \BCD[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\BCD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \BCD[5]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\BCD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \BCD[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\BCD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \BCD[7]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\BCD1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BCD1[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\BCD1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \BCD1[1]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\BCD1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \BCD1[2]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\BCD1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \BCD1[3]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\BCD1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \BCD1[4]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\BCD1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \BCD1[5]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\BCD1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \BCD1[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\BCD1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \BCD1[7]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\BCD2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BCD2[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\BCD2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \BCD2[1]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\BCD2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \BCD2[2]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\BCD2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \BCD2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\BCD2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \BCD2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\BCD2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \BCD2[5]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\BCD2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \BCD2[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\BCD2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \BCD2[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\BCD3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BCD3[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\BCD3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => \BCD3[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\BCD3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \BCD3[2]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\BCD3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \BCD3[3]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\BCD3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \BCD3[4]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\BCD3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \BCD3[5]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\BCD3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \BCD3[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\BCD3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \BCD3[7]~output_o\);

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

-- Location: LCCOMB_X56_Y72_N4
\w[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[0]~72_combout\ = !w(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w(0),
	combout => \w[0]~72_combout\);

-- Location: FF_X56_Y72_N5
\w[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(0));

-- Location: LCCOMB_X56_Y72_N8
\w[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[1]~24_combout\ = (w(0) & (w(1) $ (VCC))) # (!w(0) & (w(1) & VCC))
-- \w[1]~25\ = CARRY((w(0) & w(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w(0),
	datab => w(1),
	datad => VCC,
	combout => \w[1]~24_combout\,
	cout => \w[1]~25\);

-- Location: FF_X56_Y72_N9
\w[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(1));

-- Location: LCCOMB_X56_Y72_N10
\w[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[2]~26_combout\ = (w(2) & (!\w[1]~25\)) # (!w(2) & ((\w[1]~25\) # (GND)))
-- \w[2]~27\ = CARRY((!\w[1]~25\) # (!w(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(2),
	datad => VCC,
	cin => \w[1]~25\,
	combout => \w[2]~26_combout\,
	cout => \w[2]~27\);

-- Location: FF_X56_Y72_N11
\w[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(2));

-- Location: LCCOMB_X56_Y72_N12
\w[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[3]~28_combout\ = (w(3) & (\w[2]~27\ $ (GND))) # (!w(3) & (!\w[2]~27\ & VCC))
-- \w[3]~29\ = CARRY((w(3) & !\w[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(3),
	datad => VCC,
	cin => \w[2]~27\,
	combout => \w[3]~28_combout\,
	cout => \w[3]~29\);

-- Location: FF_X56_Y72_N13
\w[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(3));

-- Location: LCCOMB_X56_Y72_N14
\w[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[4]~30_combout\ = (w(4) & (!\w[3]~29\)) # (!w(4) & ((\w[3]~29\) # (GND)))
-- \w[4]~31\ = CARRY((!\w[3]~29\) # (!w(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(4),
	datad => VCC,
	cin => \w[3]~29\,
	combout => \w[4]~30_combout\,
	cout => \w[4]~31\);

-- Location: FF_X56_Y72_N15
\w[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(4));

-- Location: LCCOMB_X56_Y72_N16
\w[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[5]~32_combout\ = (w(5) & (\w[4]~31\ $ (GND))) # (!w(5) & (!\w[4]~31\ & VCC))
-- \w[5]~33\ = CARRY((w(5) & !\w[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(5),
	datad => VCC,
	cin => \w[4]~31\,
	combout => \w[5]~32_combout\,
	cout => \w[5]~33\);

-- Location: FF_X56_Y72_N17
\w[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(5));

-- Location: LCCOMB_X56_Y72_N18
\w[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[6]~34_combout\ = (w(6) & (!\w[5]~33\)) # (!w(6) & ((\w[5]~33\) # (GND)))
-- \w[6]~35\ = CARRY((!\w[5]~33\) # (!w(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(6),
	datad => VCC,
	cin => \w[5]~33\,
	combout => \w[6]~34_combout\,
	cout => \w[6]~35\);

-- Location: FF_X56_Y72_N19
\w[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(6));

-- Location: LCCOMB_X56_Y72_N20
\w[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[7]~36_combout\ = (w(7) & (\w[6]~35\ $ (GND))) # (!w(7) & (!\w[6]~35\ & VCC))
-- \w[7]~37\ = CARRY((w(7) & !\w[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(7),
	datad => VCC,
	cin => \w[6]~35\,
	combout => \w[7]~36_combout\,
	cout => \w[7]~37\);

-- Location: FF_X56_Y72_N21
\w[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(7));

-- Location: LCCOMB_X56_Y72_N22
\w[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[8]~38_combout\ = (w(8) & (!\w[7]~37\)) # (!w(8) & ((\w[7]~37\) # (GND)))
-- \w[8]~39\ = CARRY((!\w[7]~37\) # (!w(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(8),
	datad => VCC,
	cin => \w[7]~37\,
	combout => \w[8]~38_combout\,
	cout => \w[8]~39\);

-- Location: FF_X56_Y72_N23
\w[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(8));

-- Location: LCCOMB_X56_Y72_N24
\w[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[9]~40_combout\ = (w(9) & (\w[8]~39\ $ (GND))) # (!w(9) & (!\w[8]~39\ & VCC))
-- \w[9]~41\ = CARRY((w(9) & !\w[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(9),
	datad => VCC,
	cin => \w[8]~39\,
	combout => \w[9]~40_combout\,
	cout => \w[9]~41\);

-- Location: FF_X56_Y72_N25
\w[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(9));

-- Location: LCCOMB_X56_Y72_N26
\w[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[10]~42_combout\ = (w(10) & (!\w[9]~41\)) # (!w(10) & ((\w[9]~41\) # (GND)))
-- \w[10]~43\ = CARRY((!\w[9]~41\) # (!w(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(10),
	datad => VCC,
	cin => \w[9]~41\,
	combout => \w[10]~42_combout\,
	cout => \w[10]~43\);

-- Location: FF_X56_Y72_N27
\w[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(10));

-- Location: LCCOMB_X56_Y72_N28
\w[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[11]~44_combout\ = (w(11) & (\w[10]~43\ $ (GND))) # (!w(11) & (!\w[10]~43\ & VCC))
-- \w[11]~45\ = CARRY((w(11) & !\w[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(11),
	datad => VCC,
	cin => \w[10]~43\,
	combout => \w[11]~44_combout\,
	cout => \w[11]~45\);

-- Location: FF_X56_Y72_N29
\w[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(11));

-- Location: LCCOMB_X56_Y72_N30
\w[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[12]~46_combout\ = (w(12) & (!\w[11]~45\)) # (!w(12) & ((\w[11]~45\) # (GND)))
-- \w[12]~47\ = CARRY((!\w[11]~45\) # (!w(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(12),
	datad => VCC,
	cin => \w[11]~45\,
	combout => \w[12]~46_combout\,
	cout => \w[12]~47\);

-- Location: FF_X56_Y72_N31
\w[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(12));

-- Location: LCCOMB_X56_Y71_N0
\w[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[13]~48_combout\ = (w(13) & (\w[12]~47\ $ (GND))) # (!w(13) & (!\w[12]~47\ & VCC))
-- \w[13]~49\ = CARRY((w(13) & !\w[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(13),
	datad => VCC,
	cin => \w[12]~47\,
	combout => \w[13]~48_combout\,
	cout => \w[13]~49\);

-- Location: FF_X56_Y71_N1
\w[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(13));

-- Location: LCCOMB_X56_Y71_N2
\w[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[14]~50_combout\ = (w(14) & (!\w[13]~49\)) # (!w(14) & ((\w[13]~49\) # (GND)))
-- \w[14]~51\ = CARRY((!\w[13]~49\) # (!w(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(14),
	datad => VCC,
	cin => \w[13]~49\,
	combout => \w[14]~50_combout\,
	cout => \w[14]~51\);

-- Location: FF_X56_Y71_N3
\w[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(14));

-- Location: LCCOMB_X56_Y71_N4
\w[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[15]~52_combout\ = (w(15) & (\w[14]~51\ $ (GND))) # (!w(15) & (!\w[14]~51\ & VCC))
-- \w[15]~53\ = CARRY((w(15) & !\w[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(15),
	datad => VCC,
	cin => \w[14]~51\,
	combout => \w[15]~52_combout\,
	cout => \w[15]~53\);

-- Location: FF_X56_Y71_N5
\w[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(15));

-- Location: LCCOMB_X56_Y71_N6
\w[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[16]~54_combout\ = (w(16) & (!\w[15]~53\)) # (!w(16) & ((\w[15]~53\) # (GND)))
-- \w[16]~55\ = CARRY((!\w[15]~53\) # (!w(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(16),
	datad => VCC,
	cin => \w[15]~53\,
	combout => \w[16]~54_combout\,
	cout => \w[16]~55\);

-- Location: FF_X56_Y71_N7
\w[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(16));

-- Location: LCCOMB_X56_Y71_N8
\w[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[17]~56_combout\ = (w(17) & (\w[16]~55\ $ (GND))) # (!w(17) & (!\w[16]~55\ & VCC))
-- \w[17]~57\ = CARRY((w(17) & !\w[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(17),
	datad => VCC,
	cin => \w[16]~55\,
	combout => \w[17]~56_combout\,
	cout => \w[17]~57\);

-- Location: FF_X56_Y71_N9
\w[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(17));

-- Location: LCCOMB_X56_Y71_N10
\w[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[18]~58_combout\ = (w(18) & (!\w[17]~57\)) # (!w(18) & ((\w[17]~57\) # (GND)))
-- \w[18]~59\ = CARRY((!\w[17]~57\) # (!w(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(18),
	datad => VCC,
	cin => \w[17]~57\,
	combout => \w[18]~58_combout\,
	cout => \w[18]~59\);

-- Location: FF_X56_Y71_N11
\w[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(18));

-- Location: LCCOMB_X56_Y71_N12
\w[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[19]~60_combout\ = (w(19) & (\w[18]~59\ $ (GND))) # (!w(19) & (!\w[18]~59\ & VCC))
-- \w[19]~61\ = CARRY((w(19) & !\w[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(19),
	datad => VCC,
	cin => \w[18]~59\,
	combout => \w[19]~60_combout\,
	cout => \w[19]~61\);

-- Location: FF_X56_Y71_N13
\w[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(19));

-- Location: LCCOMB_X56_Y71_N14
\w[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[20]~62_combout\ = (w(20) & (!\w[19]~61\)) # (!w(20) & ((\w[19]~61\) # (GND)))
-- \w[20]~63\ = CARRY((!\w[19]~61\) # (!w(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(20),
	datad => VCC,
	cin => \w[19]~61\,
	combout => \w[20]~62_combout\,
	cout => \w[20]~63\);

-- Location: FF_X56_Y71_N15
\w[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(20));

-- Location: LCCOMB_X56_Y71_N16
\w[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[21]~64_combout\ = (w(21) & (\w[20]~63\ $ (GND))) # (!w(21) & (!\w[20]~63\ & VCC))
-- \w[21]~65\ = CARRY((w(21) & !\w[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(21),
	datad => VCC,
	cin => \w[20]~63\,
	combout => \w[21]~64_combout\,
	cout => \w[21]~65\);

-- Location: FF_X56_Y71_N17
\w[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(21));

-- Location: LCCOMB_X56_Y71_N18
\w[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[22]~66_combout\ = (w(22) & (!\w[21]~65\)) # (!w(22) & ((\w[21]~65\) # (GND)))
-- \w[22]~67\ = CARRY((!\w[21]~65\) # (!w(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(22),
	datad => VCC,
	cin => \w[21]~65\,
	combout => \w[22]~66_combout\,
	cout => \w[22]~67\);

-- Location: FF_X56_Y71_N19
\w[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(22));

-- Location: LCCOMB_X56_Y71_N20
\w[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[23]~68_combout\ = (w(23) & (\w[22]~67\ $ (GND))) # (!w(23) & (!\w[22]~67\ & VCC))
-- \w[23]~69\ = CARRY((w(23) & !\w[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(23),
	datad => VCC,
	cin => \w[22]~67\,
	combout => \w[23]~68_combout\,
	cout => \w[23]~69\);

-- Location: FF_X56_Y71_N21
\w[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(23));

-- Location: LCCOMB_X56_Y71_N22
\w[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[24]~70_combout\ = w(24) $ (\w[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(24),
	cin => \w[23]~69\,
	combout => \w[24]~70_combout\);

-- Location: FF_X56_Y71_N23
\w[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(24));

-- Location: LCCOMB_X56_Y71_N28
\clkA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkA~feeder_combout\ = w(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w(24),
	combout => \clkA~feeder_combout\);

-- Location: FF_X56_Y71_N29
clkA : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clkA~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkA~q\);

-- Location: CLKCTRL_G11
\clkA~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkA~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y15_N1
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

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

-- Location: IOIBUF_X115_Y11_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

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

-- Location: IOIBUF_X115_Y4_N22
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

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

-- Location: LCCOMB_X114_Y17_N20
\WideNor0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~8_combout\ = (\sw[6]~input_o\) # ((\sw[2]~input_o\) # ((\sw[8]~input_o\) # (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \WideNor0~8_combout\);

-- Location: IOIBUF_X115_Y18_N8
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X114_Y17_N6
\WideNor0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~7_combout\ = (\sw[6]~input_o\ & ((\sw[2]~input_o\) # ((\sw[8]~input_o\) # (\sw[0]~input_o\)))) # (!\sw[6]~input_o\ & ((\sw[2]~input_o\ & ((\sw[8]~input_o\) # (\sw[0]~input_o\))) # (!\sw[2]~input_o\ & (\sw[8]~input_o\ $ (!\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \WideNor0~7_combout\);

-- Location: LCCOMB_X114_Y17_N26
\WideNor0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~6_combout\ = (\sw[4]~input_o\ & (\WideNor0~8_combout\)) # (!\sw[4]~input_o\ & ((\WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~8_combout\,
	datac => \sw[4]~input_o\,
	datad => \WideNor0~7_combout\,
	combout => \WideNor0~6_combout\);

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

-- Location: LCCOMB_X114_Y17_N0
\WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (\sw[5]~input_o\) # ((\WideNor0~6_combout\) # (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \WideNor0~6_combout\,
	datad => \sw[1]~input_o\,
	combout => \WideNor0~3_combout\);

-- Location: IOIBUF_X115_Y16_N8
\sw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LCCOMB_X114_Y21_N26
\WideNor0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~17_combout\ = (\sw[7]~input_o\) # ((\sw[3]~input_o\) # ((\WideNor0~3_combout\) # (\sw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \WideNor0~3_combout\,
	datad => \sw[9]~input_o\,
	combout => \WideNor0~17_combout\);

-- Location: LCCOMB_X114_Y17_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\sw[7]~input_o\ & (!\sw[9]~input_o\ & (!\sw[8]~input_o\ & !\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X114_Y17_N14
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\sw[4]~input_o\ & (!\sw[5]~input_o\ & (!\sw[3]~input_o\ & !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X114_Y17_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\sw[6]~input_o\) # (((\sw[2]~input_o\) # (!\Equal3~0_combout\)) # (!\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: FF_X114_Y21_N27
\Q[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \WideNor0~17_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][0]~q\);

-- Location: LCCOMB_X114_Y17_N2
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\sw[6]~input_o\ & (!\sw[2]~input_o\ & (\Equal3~0_combout\ & !\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \Equal3~0_combout\,
	datad => \sw[0]~input_o\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X114_Y17_N10
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\sw[6]~input_o\ & (\Equal0~0_combout\ & (\Equal3~0_combout\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X113_Y21_N26
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\sw[7]~input_o\ & !\sw[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X113_Y21_N8
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\Equal7~0_combout\ & (((\sw[8]~input_o\) # (!\Equal8~0_combout\)) # (!\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y17_N18
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\sw[6]~input_o\ & (\Equal0~0_combout\ & (\Equal3~0_combout\ & \sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X114_Y17_N8
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\sw[4]~input_o\ & (!\sw[5]~input_o\ & (\sw[3]~input_o\ & !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\sw[6]~input_o\ & (\Equal0~0_combout\ & (\Equal4~0_combout\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X113_Y21_N10
\WideNor0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~16_combout\ = (!\sw[8]~input_o\ & (\Equal10~0_combout\ & (\sw[9]~input_o\ $ (\sw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \WideNor0~16_combout\);

-- Location: LCCOMB_X114_Y17_N16
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\sw[6]~input_o\ & (\Equal0~0_combout\ & (!\sw[3]~input_o\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X114_Y17_N4
\WideNor0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~15_combout\ = (!\sw[4]~input_o\ & (\Equal5~0_combout\ & (\sw[5]~input_o\ $ (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \Equal5~0_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \WideNor0~15_combout\);

-- Location: LCCOMB_X114_Y21_N18
WideNor0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\Equal4~1_combout\) # ((\WideNor0~16_combout\) # ((\WideNor0~15_combout\) # (!\WideNor0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \WideNor0~16_combout\,
	datac => \WideNor0~15_combout\,
	datad => \WideNor0~17_combout\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X114_Y21_N22
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ((\Equal3~1_combout\) # ((\Equal4~1_combout\) # (!\WideNor0~combout\))) # (!\WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal4~1_combout\,
	datad => \WideNor0~combout\,
	combout => \WideOr2~combout\);

-- Location: FF_X114_Y21_N23
\Q[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \WideOr2~combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][1]~q\);

-- Location: LCCOMB_X114_Y17_N24
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\Equal5~0_combout\ & (!\sw[1]~input_o\ & (\sw[4]~input_o\ $ (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \Equal5~0_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y21_N8
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ((\WideOr1~0_combout\) # (!\WideNor0~combout\)) # (!\WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr1~0_combout\,
	datad => \WideNor0~combout\,
	combout => \WideOr1~combout\);

-- Location: FF_X114_Y21_N9
\Q[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \WideOr1~combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][2]~q\);

-- Location: LCCOMB_X113_Y21_N2
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\sw[7]~input_o\ & (\Equal10~0_combout\ & (\sw[8]~input_o\ $ (\sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X113_Y21_N18
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~0_combout\) # (!\WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~0_combout\,
	datad => \WideNor0~combout\,
	combout => \WideOr0~combout\);

-- Location: FF_X113_Y21_N19
\Q[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \WideOr0~combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][3]~q\);

-- Location: LCCOMB_X114_Y53_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Q[0][1]~q\ & (((!\Q[0][2]~q\)) # (!\Q[0][0]~q\))) # (!\Q[0][1]~q\ & ((\Q[0][2]~q\ & ((\Q[0][0]~q\) # (!\Q[0][3]~q\))) # (!\Q[0][2]~q\ & ((\Q[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][0]~q\,
	datab => \Q[0][1]~q\,
	datac => \Q[0][2]~q\,
	datad => \Q[0][3]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X114_Y53_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Q[0][1]~q\ & ((\Q[0][2]~q\ & (\Q[0][0]~q\)) # (!\Q[0][2]~q\ & ((!\Q[0][3]~q\))))) # (!\Q[0][1]~q\ & (\Q[0][0]~q\ & (\Q[0][2]~q\ $ (!\Q[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][0]~q\,
	datab => \Q[0][1]~q\,
	datac => \Q[0][2]~q\,
	datad => \Q[0][3]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y53_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Q[0][0]~q\ & ((\Q[0][1]~q\ $ (!\Q[0][2]~q\)) # (!\Q[0][3]~q\))) # (!\Q[0][0]~q\ & (!\Q[0][1]~q\ & (\Q[0][2]~q\ & !\Q[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][0]~q\,
	datab => \Q[0][1]~q\,
	datac => \Q[0][2]~q\,
	datad => \Q[0][3]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X114_Y53_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Q[0][0]~q\ & (\Q[0][1]~q\ $ ((!\Q[0][2]~q\)))) # (!\Q[0][0]~q\ & ((\Q[0][1]~q\ & (!\Q[0][2]~q\ & \Q[0][3]~q\)) # (!\Q[0][1]~q\ & (\Q[0][2]~q\ & !\Q[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][0]~q\,
	datab => \Q[0][1]~q\,
	datac => \Q[0][2]~q\,
	datad => \Q[0][3]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X114_Y53_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Q[0][2]~q\ & (\Q[0][3]~q\ & ((\Q[0][1]~q\) # (!\Q[0][0]~q\)))) # (!\Q[0][2]~q\ & (!\Q[0][0]~q\ & (\Q[0][1]~q\ & !\Q[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][0]~q\,
	datab => \Q[0][1]~q\,
	datac => \Q[0][2]~q\,
	datad => \Q[0][3]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X114_Y53_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Q[0][1]~q\ & ((\Q[0][0]~q\ & ((\Q[0][3]~q\))) # (!\Q[0][0]~q\ & (\Q[0][2]~q\)))) # (!\Q[0][1]~q\ & (\Q[0][2]~q\ & (\Q[0][0]~q\ $ (\Q[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][0]~q\,
	datab => \Q[0][1]~q\,
	datac => \Q[0][2]~q\,
	datad => \Q[0][3]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X114_Y53_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Q[0][0]~q\ & (\Q[0][3]~q\ $ (((!\Q[0][1]~q\ & !\Q[0][2]~q\))))) # (!\Q[0][0]~q\ & (((\Q[0][2]~q\ & !\Q[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][0]~q\,
	datab => \Q[0][1]~q\,
	datac => \Q[0][2]~q\,
	datad => \Q[0][3]~q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X114_Y21_N31
\Q[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[0][0]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][0]~q\);

-- Location: FF_X114_Y21_N15
\Q[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[0][2]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][2]~q\);

-- Location: LCCOMB_X113_Y21_N20
\Q[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[1][3]~feeder_combout\ = \Q[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[0][3]~q\,
	combout => \Q[1][3]~feeder_combout\);

-- Location: FF_X113_Y21_N21
\Q[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[1][3]~feeder_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][3]~q\);

-- Location: FF_X114_Y21_N5
\Q[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[0][1]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][1]~q\);

-- Location: LCCOMB_X114_Y21_N12
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Q[1][2]~q\ & ((\Q[1][0]~q\ & ((!\Q[1][1]~q\))) # (!\Q[1][0]~q\ & ((\Q[1][1]~q\) # (!\Q[1][3]~q\))))) # (!\Q[1][2]~q\ & (((\Q[1][3]~q\) # (\Q[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][0]~q\,
	datab => \Q[1][2]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][1]~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X113_Y21_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Q[1][1]~q\ & ((\Q[1][2]~q\ & (\Q[1][0]~q\)) # (!\Q[1][2]~q\ & ((!\Q[1][3]~q\))))) # (!\Q[1][1]~q\ & (\Q[1][0]~q\ & (\Q[1][2]~q\ $ (!\Q[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][1]~q\,
	datab => \Q[1][2]~q\,
	datac => \Q[1][0]~q\,
	datad => \Q[1][3]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X113_Y21_N30
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Q[1][1]~q\ & (\Q[1][0]~q\ & ((\Q[1][2]~q\) # (!\Q[1][3]~q\)))) # (!\Q[1][1]~q\ & ((\Q[1][2]~q\ & ((!\Q[1][3]~q\))) # (!\Q[1][2]~q\ & (\Q[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][1]~q\,
	datab => \Q[1][2]~q\,
	datac => \Q[1][0]~q\,
	datad => \Q[1][3]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X114_Y21_N30
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Q[1][0]~q\ & (\Q[1][1]~q\ $ ((!\Q[1][2]~q\)))) # (!\Q[1][0]~q\ & ((\Q[1][1]~q\ & (!\Q[1][2]~q\ & \Q[1][3]~q\)) # (!\Q[1][1]~q\ & (\Q[1][2]~q\ & !\Q[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][1]~q\,
	datab => \Q[1][2]~q\,
	datac => \Q[1][0]~q\,
	datad => \Q[1][3]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X113_Y21_N14
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Q[1][2]~q\ & (\Q[1][3]~q\ & ((\Q[1][1]~q\) # (!\Q[1][0]~q\)))) # (!\Q[1][2]~q\ & (\Q[1][1]~q\ & (!\Q[1][0]~q\ & !\Q[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][1]~q\,
	datab => \Q[1][2]~q\,
	datac => \Q[1][0]~q\,
	datad => \Q[1][3]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X114_Y21_N14
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Q[1][3]~q\ & ((\Q[1][0]~q\ & ((\Q[1][1]~q\))) # (!\Q[1][0]~q\ & (\Q[1][2]~q\)))) # (!\Q[1][3]~q\ & (\Q[1][2]~q\ & (\Q[1][0]~q\ $ (\Q[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][0]~q\,
	datab => \Q[1][3]~q\,
	datac => \Q[1][2]~q\,
	datad => \Q[1][1]~q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X114_Y21_N4
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Q[1][0]~q\ & (\Q[1][3]~q\ $ (((!\Q[1][2]~q\ & !\Q[1][1]~q\))))) # (!\Q[1][0]~q\ & (\Q[1][2]~q\ & ((!\Q[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][0]~q\,
	datab => \Q[1][2]~q\,
	datac => \Q[1][1]~q\,
	datad => \Q[1][3]~q\,
	combout => \Mux7~0_combout\);

-- Location: FF_X114_Y21_N29
\Q[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[1][1]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][1]~q\);

-- Location: FF_X114_Y21_N1
\Q[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[1][0]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][0]~q\);

-- Location: LCCOMB_X113_Y21_N4
\Q[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[2][3]~feeder_combout\ = \Q[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[1][3]~q\,
	combout => \Q[2][3]~feeder_combout\);

-- Location: FF_X113_Y21_N5
\Q[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[2][3]~feeder_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][3]~q\);

-- Location: FF_X114_Y21_N25
\Q[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[1][2]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][2]~q\);

-- Location: LCCOMB_X114_Y21_N2
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Q[2][1]~q\ & (((!\Q[2][2]~q\)) # (!\Q[2][0]~q\))) # (!\Q[2][1]~q\ & ((\Q[2][3]~q\ & ((\Q[2][0]~q\) # (!\Q[2][2]~q\))) # (!\Q[2][3]~q\ & ((\Q[2][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][1]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][3]~q\,
	datad => \Q[2][2]~q\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X114_Y21_N6
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Q[2][1]~q\ & ((\Q[2][2]~q\ & ((\Q[2][0]~q\))) # (!\Q[2][2]~q\ & (!\Q[2][3]~q\)))) # (!\Q[2][1]~q\ & (\Q[2][0]~q\ & (\Q[2][3]~q\ $ (!\Q[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][1]~q\,
	datab => \Q[2][3]~q\,
	datac => \Q[2][0]~q\,
	datad => \Q[2][2]~q\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X114_Y21_N16
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Q[2][1]~q\ & (\Q[2][0]~q\ & ((\Q[2][2]~q\) # (!\Q[2][3]~q\)))) # (!\Q[2][1]~q\ & ((\Q[2][2]~q\ & ((!\Q[2][3]~q\))) # (!\Q[2][2]~q\ & (\Q[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][1]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][3]~q\,
	datad => \Q[2][2]~q\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X114_Y21_N0
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Q[2][0]~q\ & (\Q[2][1]~q\ $ (((!\Q[2][2]~q\))))) # (!\Q[2][0]~q\ & ((\Q[2][1]~q\ & (\Q[2][3]~q\ & !\Q[2][2]~q\)) # (!\Q[2][1]~q\ & (!\Q[2][3]~q\ & \Q[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][1]~q\,
	datab => \Q[2][3]~q\,
	datac => \Q[2][0]~q\,
	datad => \Q[2][2]~q\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X114_Y21_N20
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Q[2][3]~q\ & (\Q[2][2]~q\ & ((\Q[2][1]~q\) # (!\Q[2][0]~q\)))) # (!\Q[2][3]~q\ & (!\Q[2][0]~q\ & (\Q[2][1]~q\ & !\Q[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][1]~q\,
	datad => \Q[2][2]~q\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X114_Y21_N24
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Q[2][1]~q\ & ((\Q[2][0]~q\ & (\Q[2][3]~q\)) # (!\Q[2][0]~q\ & ((\Q[2][2]~q\))))) # (!\Q[2][1]~q\ & (\Q[2][2]~q\ & (\Q[2][3]~q\ $ (\Q[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][1]~q\,
	datab => \Q[2][3]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X114_Y21_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Q[2][0]~q\ & (\Q[2][3]~q\ $ (((!\Q[2][1]~q\ & !\Q[2][2]~q\))))) # (!\Q[2][0]~q\ & (!\Q[2][3]~q\ & ((\Q[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][1]~q\,
	datad => \Q[2][2]~q\,
	combout => \Mux14~0_combout\);

-- Location: FF_X114_Y21_N7
\Q[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[2][0]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][0]~q\);

-- Location: FF_X113_Y21_N27
\Q[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[2][3]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][3]~q\);

-- Location: FF_X114_Y21_N21
\Q[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[2][1]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][1]~q\);

-- Location: FF_X114_Y21_N11
\Q[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[2][2]~q\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][2]~q\);

-- Location: LCCOMB_X113_Y21_N24
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Q[3][1]~q\ & (((!\Q[3][2]~q\)) # (!\Q[3][0]~q\))) # (!\Q[3][1]~q\ & ((\Q[3][3]~q\ & ((\Q[3][0]~q\) # (!\Q[3][2]~q\))) # (!\Q[3][3]~q\ & ((\Q[3][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][0]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][1]~q\,
	datad => \Q[3][2]~q\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X113_Y21_N28
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Q[3][1]~q\ & ((\Q[3][2]~q\ & (\Q[3][0]~q\)) # (!\Q[3][2]~q\ & ((!\Q[3][3]~q\))))) # (!\Q[3][1]~q\ & (\Q[3][0]~q\ & (\Q[3][3]~q\ $ (!\Q[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][0]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][1]~q\,
	datad => \Q[3][2]~q\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X113_Y21_N12
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Q[3][0]~q\ & ((\Q[3][1]~q\ $ (!\Q[3][2]~q\)) # (!\Q[3][3]~q\))) # (!\Q[3][0]~q\ & (!\Q[3][3]~q\ & (!\Q[3][1]~q\ & \Q[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][0]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][1]~q\,
	datad => \Q[3][2]~q\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X113_Y21_N16
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Q[3][0]~q\ & ((\Q[3][1]~q\ $ (!\Q[3][2]~q\)))) # (!\Q[3][0]~q\ & ((\Q[3][3]~q\ & (\Q[3][1]~q\ & !\Q[3][2]~q\)) # (!\Q[3][3]~q\ & (!\Q[3][1]~q\ & \Q[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][0]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][1]~q\,
	datad => \Q[3][2]~q\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X113_Y21_N6
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Q[3][3]~q\ & (\Q[3][2]~q\ & ((\Q[3][1]~q\) # (!\Q[3][0]~q\)))) # (!\Q[3][3]~q\ & (!\Q[3][0]~q\ & (\Q[3][1]~q\ & !\Q[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][0]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][1]~q\,
	datad => \Q[3][2]~q\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X114_Y21_N10
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Q[3][3]~q\ & ((\Q[3][0]~q\ & (\Q[3][1]~q\)) # (!\Q[3][0]~q\ & ((\Q[3][2]~q\))))) # (!\Q[3][3]~q\ & (\Q[3][2]~q\ & (\Q[3][1]~q\ $ (\Q[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][3]~q\,
	datab => \Q[3][1]~q\,
	datac => \Q[3][2]~q\,
	datad => \Q[3][0]~q\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X113_Y21_N22
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Q[3][0]~q\ & (\Q[3][3]~q\ $ (((!\Q[3][1]~q\ & !\Q[3][2]~q\))))) # (!\Q[3][0]~q\ & (!\Q[3][3]~q\ & ((\Q[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][0]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][1]~q\,
	datad => \Q[3][2]~q\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X0_Y51_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_BCD(0) <= \BCD[0]~output_o\;

ww_BCD(1) <= \BCD[1]~output_o\;

ww_BCD(2) <= \BCD[2]~output_o\;

ww_BCD(3) <= \BCD[3]~output_o\;

ww_BCD(4) <= \BCD[4]~output_o\;

ww_BCD(5) <= \BCD[5]~output_o\;

ww_BCD(6) <= \BCD[6]~output_o\;

ww_BCD(7) <= \BCD[7]~output_o\;

ww_BCD1(0) <= \BCD1[0]~output_o\;

ww_BCD1(1) <= \BCD1[1]~output_o\;

ww_BCD1(2) <= \BCD1[2]~output_o\;

ww_BCD1(3) <= \BCD1[3]~output_o\;

ww_BCD1(4) <= \BCD1[4]~output_o\;

ww_BCD1(5) <= \BCD1[5]~output_o\;

ww_BCD1(6) <= \BCD1[6]~output_o\;

ww_BCD1(7) <= \BCD1[7]~output_o\;

ww_BCD2(0) <= \BCD2[0]~output_o\;

ww_BCD2(1) <= \BCD2[1]~output_o\;

ww_BCD2(2) <= \BCD2[2]~output_o\;

ww_BCD2(3) <= \BCD2[3]~output_o\;

ww_BCD2(4) <= \BCD2[4]~output_o\;

ww_BCD2(5) <= \BCD2[5]~output_o\;

ww_BCD2(6) <= \BCD2[6]~output_o\;

ww_BCD2(7) <= \BCD2[7]~output_o\;

ww_BCD3(0) <= \BCD3[0]~output_o\;

ww_BCD3(1) <= \BCD3[1]~output_o\;

ww_BCD3(2) <= \BCD3[2]~output_o\;

ww_BCD3(3) <= \BCD3[3]~output_o\;

ww_BCD3(4) <= \BCD3[4]~output_o\;

ww_BCD3(5) <= \BCD3[5]~output_o\;

ww_BCD3(6) <= \BCD3[6]~output_o\;

ww_BCD3(7) <= \BCD3[7]~output_o\;
END structure;


