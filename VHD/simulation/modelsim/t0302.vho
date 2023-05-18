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

-- DATE "05/18/2023 10:33:24"

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
-- rst	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[0]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[3]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[4]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[5]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[1]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[2]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[5]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \w[0]~60_combout\ : std_logic;
SIGNAL \w[1]~20_combout\ : std_logic;
SIGNAL \w[1]~21\ : std_logic;
SIGNAL \w[2]~22_combout\ : std_logic;
SIGNAL \w[2]~23\ : std_logic;
SIGNAL \w[3]~24_combout\ : std_logic;
SIGNAL \w[3]~25\ : std_logic;
SIGNAL \w[4]~26_combout\ : std_logic;
SIGNAL \w[4]~27\ : std_logic;
SIGNAL \w[5]~28_combout\ : std_logic;
SIGNAL \w[5]~29\ : std_logic;
SIGNAL \w[6]~30_combout\ : std_logic;
SIGNAL \w[6]~31\ : std_logic;
SIGNAL \w[7]~32_combout\ : std_logic;
SIGNAL \w[7]~33\ : std_logic;
SIGNAL \w[8]~34_combout\ : std_logic;
SIGNAL \w[8]~35\ : std_logic;
SIGNAL \w[9]~36_combout\ : std_logic;
SIGNAL \w[9]~37\ : std_logic;
SIGNAL \w[10]~38_combout\ : std_logic;
SIGNAL \w[10]~39\ : std_logic;
SIGNAL \w[11]~40_combout\ : std_logic;
SIGNAL \w[11]~41\ : std_logic;
SIGNAL \w[12]~42_combout\ : std_logic;
SIGNAL \w[12]~43\ : std_logic;
SIGNAL \w[13]~44_combout\ : std_logic;
SIGNAL \w[13]~45\ : std_logic;
SIGNAL \w[14]~46_combout\ : std_logic;
SIGNAL \w[14]~47\ : std_logic;
SIGNAL \w[15]~48_combout\ : std_logic;
SIGNAL \w[15]~49\ : std_logic;
SIGNAL \w[16]~50_combout\ : std_logic;
SIGNAL \w[16]~51\ : std_logic;
SIGNAL \w[17]~52_combout\ : std_logic;
SIGNAL \w[17]~53\ : std_logic;
SIGNAL \w[18]~54_combout\ : std_logic;
SIGNAL \w[18]~55\ : std_logic;
SIGNAL \w[19]~56_combout\ : std_logic;
SIGNAL \w[19]~57\ : std_logic;
SIGNAL \w[20]~58_combout\ : std_logic;
SIGNAL \clkA~feeder_combout\ : std_logic;
SIGNAL \clkA~q\ : std_logic;
SIGNAL \clkA~clkctrl_outclk\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \WideNor0~5_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \WideNor0~6_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Q[3][1]~feeder_combout\ : std_logic;
SIGNAL \flag~feeder_combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \flagx~0_combout\ : std_logic;
SIGNAL \flagx~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Q[3][1]~q\ : std_logic;
SIGNAL \Q[2][1]~feeder_combout\ : std_logic;
SIGNAL \Q[2][1]~q\ : std_logic;
SIGNAL \Q[1][1]~feeder_combout\ : std_logic;
SIGNAL \Q[1][1]~q\ : std_logic;
SIGNAL \Q[0][1]~feeder_combout\ : std_logic;
SIGNAL \Q[0][1]~q\ : std_logic;
SIGNAL \Q[3][0]~q\ : std_logic;
SIGNAL \Q[2][0]~q\ : std_logic;
SIGNAL \Q[1][0]~feeder_combout\ : std_logic;
SIGNAL \Q[1][0]~q\ : std_logic;
SIGNAL \Q[0][0]~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Q[3][3]~q\ : std_logic;
SIGNAL \Q[2][3]~feeder_combout\ : std_logic;
SIGNAL \Q[2][3]~q\ : std_logic;
SIGNAL \Q[1][3]~feeder_combout\ : std_logic;
SIGNAL \Q[1][3]~q\ : std_logic;
SIGNAL \Q[0][3]~feeder_combout\ : std_logic;
SIGNAL \Q[0][3]~q\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \Q[3][2]~q\ : std_logic;
SIGNAL \Q[2][2]~feeder_combout\ : std_logic;
SIGNAL \Q[2][2]~q\ : std_logic;
SIGNAL \Q[1][2]~feeder_combout\ : std_logic;
SIGNAL \Q[1][2]~q\ : std_logic;
SIGNAL \Q[0][2]~feeder_combout\ : std_logic;
SIGNAL \Q[0][2]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL w : std_logic_vector(35 DOWNTO 0);
SIGNAL ram : std_logic_vector(3 DOWNTO 0);
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

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X0_Y46_N16
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

-- Location: IOOBUF_X107_Y0_N2
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

-- Location: LCCOMB_X113_Y38_N8
\w[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[0]~60_combout\ = !w(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w(0),
	combout => \w[0]~60_combout\);

-- Location: FF_X113_Y38_N9
\w[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[0]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(0));

-- Location: LCCOMB_X113_Y38_N12
\w[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[1]~20_combout\ = (w(1) & (w(0) $ (VCC))) # (!w(1) & (w(0) & VCC))
-- \w[1]~21\ = CARRY((w(1) & w(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w(1),
	datab => w(0),
	datad => VCC,
	combout => \w[1]~20_combout\,
	cout => \w[1]~21\);

-- Location: FF_X113_Y38_N13
\w[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(1));

-- Location: LCCOMB_X113_Y38_N14
\w[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[2]~22_combout\ = (w(2) & (!\w[1]~21\)) # (!w(2) & ((\w[1]~21\) # (GND)))
-- \w[2]~23\ = CARRY((!\w[1]~21\) # (!w(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(2),
	datad => VCC,
	cin => \w[1]~21\,
	combout => \w[2]~22_combout\,
	cout => \w[2]~23\);

-- Location: FF_X113_Y38_N15
\w[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(2));

-- Location: LCCOMB_X113_Y38_N16
\w[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[3]~24_combout\ = (w(3) & (\w[2]~23\ $ (GND))) # (!w(3) & (!\w[2]~23\ & VCC))
-- \w[3]~25\ = CARRY((w(3) & !\w[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(3),
	datad => VCC,
	cin => \w[2]~23\,
	combout => \w[3]~24_combout\,
	cout => \w[3]~25\);

-- Location: FF_X113_Y38_N17
\w[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(3));

-- Location: LCCOMB_X113_Y38_N18
\w[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[4]~26_combout\ = (w(4) & (!\w[3]~25\)) # (!w(4) & ((\w[3]~25\) # (GND)))
-- \w[4]~27\ = CARRY((!\w[3]~25\) # (!w(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(4),
	datad => VCC,
	cin => \w[3]~25\,
	combout => \w[4]~26_combout\,
	cout => \w[4]~27\);

-- Location: FF_X113_Y38_N19
\w[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(4));

-- Location: LCCOMB_X113_Y38_N20
\w[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[5]~28_combout\ = (w(5) & (\w[4]~27\ $ (GND))) # (!w(5) & (!\w[4]~27\ & VCC))
-- \w[5]~29\ = CARRY((w(5) & !\w[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(5),
	datad => VCC,
	cin => \w[4]~27\,
	combout => \w[5]~28_combout\,
	cout => \w[5]~29\);

-- Location: FF_X113_Y38_N21
\w[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[5]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(5));

-- Location: LCCOMB_X113_Y38_N22
\w[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[6]~30_combout\ = (w(6) & (!\w[5]~29\)) # (!w(6) & ((\w[5]~29\) # (GND)))
-- \w[6]~31\ = CARRY((!\w[5]~29\) # (!w(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(6),
	datad => VCC,
	cin => \w[5]~29\,
	combout => \w[6]~30_combout\,
	cout => \w[6]~31\);

-- Location: FF_X113_Y38_N23
\w[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(6));

-- Location: LCCOMB_X113_Y38_N24
\w[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[7]~32_combout\ = (w(7) & (\w[6]~31\ $ (GND))) # (!w(7) & (!\w[6]~31\ & VCC))
-- \w[7]~33\ = CARRY((w(7) & !\w[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(7),
	datad => VCC,
	cin => \w[6]~31\,
	combout => \w[7]~32_combout\,
	cout => \w[7]~33\);

-- Location: FF_X113_Y38_N25
\w[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(7));

-- Location: LCCOMB_X113_Y38_N26
\w[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[8]~34_combout\ = (w(8) & (!\w[7]~33\)) # (!w(8) & ((\w[7]~33\) # (GND)))
-- \w[8]~35\ = CARRY((!\w[7]~33\) # (!w(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(8),
	datad => VCC,
	cin => \w[7]~33\,
	combout => \w[8]~34_combout\,
	cout => \w[8]~35\);

-- Location: FF_X113_Y38_N27
\w[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(8));

-- Location: LCCOMB_X113_Y38_N28
\w[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[9]~36_combout\ = (w(9) & (\w[8]~35\ $ (GND))) # (!w(9) & (!\w[8]~35\ & VCC))
-- \w[9]~37\ = CARRY((w(9) & !\w[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(9),
	datad => VCC,
	cin => \w[8]~35\,
	combout => \w[9]~36_combout\,
	cout => \w[9]~37\);

-- Location: FF_X113_Y38_N29
\w[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[9]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(9));

-- Location: LCCOMB_X113_Y38_N30
\w[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[10]~38_combout\ = (w(10) & (!\w[9]~37\)) # (!w(10) & ((\w[9]~37\) # (GND)))
-- \w[10]~39\ = CARRY((!\w[9]~37\) # (!w(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(10),
	datad => VCC,
	cin => \w[9]~37\,
	combout => \w[10]~38_combout\,
	cout => \w[10]~39\);

-- Location: FF_X113_Y38_N31
\w[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[10]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(10));

-- Location: LCCOMB_X113_Y37_N0
\w[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[11]~40_combout\ = (w(11) & (\w[10]~39\ $ (GND))) # (!w(11) & (!\w[10]~39\ & VCC))
-- \w[11]~41\ = CARRY((w(11) & !\w[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(11),
	datad => VCC,
	cin => \w[10]~39\,
	combout => \w[11]~40_combout\,
	cout => \w[11]~41\);

-- Location: FF_X113_Y37_N1
\w[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(11));

-- Location: LCCOMB_X113_Y37_N2
\w[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[12]~42_combout\ = (w(12) & (!\w[11]~41\)) # (!w(12) & ((\w[11]~41\) # (GND)))
-- \w[12]~43\ = CARRY((!\w[11]~41\) # (!w(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(12),
	datad => VCC,
	cin => \w[11]~41\,
	combout => \w[12]~42_combout\,
	cout => \w[12]~43\);

-- Location: FF_X113_Y37_N3
\w[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[12]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(12));

-- Location: LCCOMB_X113_Y37_N4
\w[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[13]~44_combout\ = (w(13) & (\w[12]~43\ $ (GND))) # (!w(13) & (!\w[12]~43\ & VCC))
-- \w[13]~45\ = CARRY((w(13) & !\w[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(13),
	datad => VCC,
	cin => \w[12]~43\,
	combout => \w[13]~44_combout\,
	cout => \w[13]~45\);

-- Location: FF_X113_Y37_N5
\w[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(13));

-- Location: LCCOMB_X113_Y37_N6
\w[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[14]~46_combout\ = (w(14) & (!\w[13]~45\)) # (!w(14) & ((\w[13]~45\) # (GND)))
-- \w[14]~47\ = CARRY((!\w[13]~45\) # (!w(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(14),
	datad => VCC,
	cin => \w[13]~45\,
	combout => \w[14]~46_combout\,
	cout => \w[14]~47\);

-- Location: FF_X113_Y37_N7
\w[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[14]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(14));

-- Location: LCCOMB_X113_Y37_N8
\w[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[15]~48_combout\ = (w(15) & (\w[14]~47\ $ (GND))) # (!w(15) & (!\w[14]~47\ & VCC))
-- \w[15]~49\ = CARRY((w(15) & !\w[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(15),
	datad => VCC,
	cin => \w[14]~47\,
	combout => \w[15]~48_combout\,
	cout => \w[15]~49\);

-- Location: FF_X113_Y37_N9
\w[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(15));

-- Location: LCCOMB_X113_Y37_N10
\w[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[16]~50_combout\ = (w(16) & (!\w[15]~49\)) # (!w(16) & ((\w[15]~49\) # (GND)))
-- \w[16]~51\ = CARRY((!\w[15]~49\) # (!w(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(16),
	datad => VCC,
	cin => \w[15]~49\,
	combout => \w[16]~50_combout\,
	cout => \w[16]~51\);

-- Location: FF_X113_Y37_N11
\w[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[16]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(16));

-- Location: LCCOMB_X113_Y37_N12
\w[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[17]~52_combout\ = (w(17) & (\w[16]~51\ $ (GND))) # (!w(17) & (!\w[16]~51\ & VCC))
-- \w[17]~53\ = CARRY((w(17) & !\w[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w(17),
	datad => VCC,
	cin => \w[16]~51\,
	combout => \w[17]~52_combout\,
	cout => \w[17]~53\);

-- Location: FF_X113_Y37_N13
\w[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(17));

-- Location: LCCOMB_X113_Y37_N14
\w[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[18]~54_combout\ = (w(18) & (!\w[17]~53\)) # (!w(18) & ((\w[17]~53\) # (GND)))
-- \w[18]~55\ = CARRY((!\w[17]~53\) # (!w(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(18),
	datad => VCC,
	cin => \w[17]~53\,
	combout => \w[18]~54_combout\,
	cout => \w[18]~55\);

-- Location: FF_X113_Y37_N15
\w[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(18));

-- Location: LCCOMB_X113_Y37_N16
\w[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[19]~56_combout\ = (w(19) & (\w[18]~55\ $ (GND))) # (!w(19) & (!\w[18]~55\ & VCC))
-- \w[19]~57\ = CARRY((w(19) & !\w[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w(19),
	datad => VCC,
	cin => \w[18]~55\,
	combout => \w[19]~56_combout\,
	cout => \w[19]~57\);

-- Location: FF_X113_Y37_N17
\w[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[19]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(19));

-- Location: LCCOMB_X113_Y37_N18
\w[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[20]~58_combout\ = \w[19]~57\ $ (w(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => w(20),
	cin => \w[19]~57\,
	combout => \w[20]~58_combout\);

-- Location: FF_X113_Y37_N19
\w[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w[20]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w(20));

-- Location: LCCOMB_X114_Y37_N2
\clkA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkA~feeder_combout\ = w(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w(20),
	combout => \clkA~feeder_combout\);

-- Location: FF_X114_Y37_N3
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

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X111_Y18_N20
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & !\sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \Equal1~2_combout\);

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

-- Location: LCCOMB_X111_Y18_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\sw[0]~input_o\ & (\Equal1~2_combout\ & (!\sw[5]~input_o\ & !\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \Equal1~2_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Equal0~0_combout\);

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

-- Location: LCCOMB_X112_Y18_N18
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\sw[7]~input_o\ & (!\sw[8]~input_o\ & !\sw[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[8]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X112_Y18_N28
\Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal0~0_combout\ & (!\sw[6]~input_o\ & \Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \sw[6]~input_o\,
	datad => \Equal8~0_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X112_Y18_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\sw[7]~input_o\ & (!\sw[6]~input_o\ & (!\sw[8]~input_o\ & !\sw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X111_Y18_N8
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\sw[0]~input_o\ & (!\sw[5]~input_o\ & (\Equal0~1_combout\ & !\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \sw[4]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X111_Y18_N16
\WideNor0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = (\Equal2~0_combout\ & (!\sw[2]~input_o\ & (\sw[1]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \WideNor0~4_combout\);

-- Location: LCCOMB_X112_Y18_N6
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\sw[7]~input_o\ & (\Equal0~0_combout\ & !\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \sw[6]~input_o\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X112_Y18_N2
\WideNor0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~5_combout\ = (\WideNor0~4_combout\) # ((\sw[9]~input_o\ & (!\sw[8]~input_o\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \sw[9]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \WideNor0~5_combout\);

-- Location: LCCOMB_X111_Y18_N10
\WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\Equal2~0_combout\ & \sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X112_Y18_N22
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\sw[7]~input_o\ & (\sw[6]~input_o\ & (!\sw[8]~input_o\ & !\sw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X111_Y18_N28
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\Equal0~1_combout\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \sw[2]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X111_Y18_N24
\WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = ((\sw[5]~input_o\) # (\sw[0]~input_o\ $ (!\sw[4]~input_o\))) # (!\Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \Equal1~3_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X112_Y18_N16
\WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (\WideNor0~1_combout\ & (((\sw[9]~input_o\) # (!\sw[8]~input_o\)) # (!\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \WideNor0~1_combout\,
	datac => \sw[8]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X112_Y18_N8
\WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (!\WideNor0~0_combout\ & (\WideNor0~2_combout\ & ((!\Equal7~0_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X111_Y18_N14
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\sw[0]~input_o\ & (\Equal1~3_combout\ & (\sw[5]~input_o\ & !\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \Equal1~3_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X112_Y18_N10
\WideNor0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~6_combout\ = (\Equal8~1_combout\) # ((\WideNor0~5_combout\) # ((\Equal6~0_combout\) # (!\WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \WideNor0~5_combout\,
	datac => \WideNor0~3_combout\,
	datad => \Equal6~0_combout\,
	combout => \WideNor0~6_combout\);

-- Location: LCCOMB_X111_Y18_N4
\WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (!\Equal8~1_combout\ & (\WideNor0~6_combout\ & ((!\Equal7~0_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \WideNor0~6_combout\,
	datad => \Equal7~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X111_Y18_N30
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\sw[1]~input_o\ & (\Equal2~0_combout\ & (\sw[3]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X111_Y18_N6
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\WideOr2~0_combout\) # (!\WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~1_combout\,
	datac => \WideOr2~0_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X112_Y18_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Equal0~0_combout\) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X112_Y18_N19
\ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \WideOr2~combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram(1));

-- Location: LCCOMB_X113_Y18_N28
\Q[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[3][1]~feeder_combout\ = ram(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram(1),
	combout => \Q[3][1]~feeder_combout\);

-- Location: LCCOMB_X113_Y18_N30
\flag~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag~feeder_combout\ = \Equal0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~2_combout\,
	combout => \flag~feeder_combout\);

-- Location: FF_X113_Y18_N31
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \flag~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: LCCOMB_X113_Y18_N24
\flagx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flagx~0_combout\ = (\flagx~q\ & (\Equal0~1_combout\ & (\Equal0~0_combout\))) # (!\flagx~q\ & (((!\flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \flagx~q\,
	datad => \flag~q\,
	combout => \flagx~0_combout\);

-- Location: FF_X113_Y18_N25
flagx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \flagx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flagx~q\);

-- Location: LCCOMB_X113_Y18_N22
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\flag~q\ & !\flagx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datad => \flagx~q\,
	combout => \process_1~0_combout\);

-- Location: FF_X113_Y18_N29
\Q[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[3][1]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][1]~q\);

-- Location: LCCOMB_X113_Y18_N12
\Q[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[2][1]~feeder_combout\ = \Q[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[3][1]~q\,
	combout => \Q[2][1]~feeder_combout\);

-- Location: FF_X113_Y18_N13
\Q[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[2][1]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][1]~q\);

-- Location: LCCOMB_X113_Y18_N18
\Q[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[1][1]~feeder_combout\ = \Q[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[2][1]~q\,
	combout => \Q[1][1]~feeder_combout\);

-- Location: FF_X113_Y18_N19
\Q[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[1][1]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][1]~q\);

-- Location: LCCOMB_X113_Y18_N20
\Q[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0][1]~feeder_combout\ = \Q[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[1][1]~q\,
	combout => \Q[0][1]~feeder_combout\);

-- Location: FF_X113_Y18_N21
\Q[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[0][1]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][1]~q\);

-- Location: FF_X112_Y18_N9
\ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \WideNor0~3_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram(0));

-- Location: FF_X112_Y18_N15
\Q[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => ram(0),
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][0]~q\);

-- Location: FF_X112_Y18_N31
\Q[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[3][0]~q\,
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][0]~q\);

-- Location: LCCOMB_X113_Y18_N2
\Q[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[1][0]~feeder_combout\ = \Q[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[2][0]~q\,
	combout => \Q[1][0]~feeder_combout\);

-- Location: FF_X113_Y18_N3
\Q[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[1][0]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][0]~q\);

-- Location: FF_X113_Y18_N23
\Q[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \Q[1][0]~q\,
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][0]~q\);

-- Location: LCCOMB_X112_Y18_N0
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ((\Equal9~0_combout\ & (\sw[9]~input_o\ $ (\sw[8]~input_o\)))) # (!\WideNor0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~6_combout\,
	datab => \sw[9]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \WideOr0~combout\);

-- Location: FF_X112_Y18_N1
\ram[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \WideOr0~combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram(3));

-- Location: FF_X113_Y18_N9
\Q[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => ram(3),
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][3]~q\);

-- Location: LCCOMB_X113_Y18_N14
\Q[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[2][3]~feeder_combout\ = \Q[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q[3][3]~q\,
	combout => \Q[2][3]~feeder_combout\);

-- Location: FF_X113_Y18_N15
\Q[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[2][3]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][3]~q\);

-- Location: LCCOMB_X113_Y18_N26
\Q[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[1][3]~feeder_combout\ = \Q[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[2][3]~q\,
	combout => \Q[1][3]~feeder_combout\);

-- Location: FF_X113_Y18_N27
\Q[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[1][3]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][3]~q\);

-- Location: LCCOMB_X113_Y18_N0
\Q[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0][3]~feeder_combout\ = \Q[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q[1][3]~q\,
	combout => \Q[0][3]~feeder_combout\);

-- Location: FF_X113_Y18_N1
\Q[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[0][3]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][3]~q\);

-- Location: LCCOMB_X111_Y18_N12
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\sw[0]~input_o\ & (\Equal1~2_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \Equal1~2_combout\,
	datac => \Equal0~1_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X111_Y18_N26
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ((\Equal5~0_combout\ & (\sw[5]~input_o\ $ (\sw[4]~input_o\)))) # (!\WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \sw[5]~input_o\,
	datac => \WideOr2~1_combout\,
	datad => \sw[4]~input_o\,
	combout => \WideOr1~combout\);

-- Location: FF_X112_Y18_N5
\ram[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => \WideOr1~combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram(2));

-- Location: FF_X113_Y18_N17
\Q[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	asdata => ram(2),
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3][2]~q\);

-- Location: LCCOMB_X113_Y18_N4
\Q[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[2][2]~feeder_combout\ = \Q[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Q[3][2]~q\,
	combout => \Q[2][2]~feeder_combout\);

-- Location: FF_X113_Y18_N5
\Q[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[2][2]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2][2]~q\);

-- Location: LCCOMB_X113_Y18_N6
\Q[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[1][2]~feeder_combout\ = \Q[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q[2][2]~q\,
	combout => \Q[1][2]~feeder_combout\);

-- Location: FF_X113_Y18_N7
\Q[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[1][2]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1][2]~q\);

-- Location: LCCOMB_X113_Y18_N10
\Q[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0][2]~feeder_combout\ = \Q[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q[1][2]~q\,
	combout => \Q[0][2]~feeder_combout\);

-- Location: FF_X113_Y18_N11
\Q[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkA~clkctrl_outclk\,
	d => \Q[0][2]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0][2]~q\);

-- Location: LCCOMB_X114_Y54_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Q[0][1]~q\ & (((!\Q[0][2]~q\)) # (!\Q[0][0]~q\))) # (!\Q[0][1]~q\ & ((\Q[0][3]~q\ & ((\Q[0][0]~q\) # (!\Q[0][2]~q\))) # (!\Q[0][3]~q\ & ((\Q[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][1]~q\,
	datab => \Q[0][0]~q\,
	datac => \Q[0][3]~q\,
	datad => \Q[0][2]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X114_Y54_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Q[0][1]~q\ & ((\Q[0][2]~q\ & (\Q[0][0]~q\)) # (!\Q[0][2]~q\ & ((!\Q[0][3]~q\))))) # (!\Q[0][1]~q\ & (\Q[0][0]~q\ & (\Q[0][3]~q\ $ (!\Q[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][1]~q\,
	datab => \Q[0][0]~q\,
	datac => \Q[0][3]~q\,
	datad => \Q[0][2]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y54_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Q[0][1]~q\ & (\Q[0][0]~q\ & ((\Q[0][2]~q\) # (!\Q[0][3]~q\)))) # (!\Q[0][1]~q\ & ((\Q[0][2]~q\ & ((!\Q[0][3]~q\))) # (!\Q[0][2]~q\ & (\Q[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][1]~q\,
	datab => \Q[0][0]~q\,
	datac => \Q[0][3]~q\,
	datad => \Q[0][2]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X114_Y54_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Q[0][0]~q\ & (\Q[0][1]~q\ $ (((!\Q[0][2]~q\))))) # (!\Q[0][0]~q\ & ((\Q[0][1]~q\ & (\Q[0][3]~q\ & !\Q[0][2]~q\)) # (!\Q[0][1]~q\ & (!\Q[0][3]~q\ & \Q[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][1]~q\,
	datab => \Q[0][0]~q\,
	datac => \Q[0][3]~q\,
	datad => \Q[0][2]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X114_Y54_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Q[0][3]~q\ & (\Q[0][2]~q\ & ((\Q[0][1]~q\) # (!\Q[0][0]~q\)))) # (!\Q[0][3]~q\ & (\Q[0][1]~q\ & (!\Q[0][0]~q\ & !\Q[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][1]~q\,
	datab => \Q[0][0]~q\,
	datac => \Q[0][3]~q\,
	datad => \Q[0][2]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X114_Y54_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Q[0][1]~q\ & ((\Q[0][0]~q\ & (\Q[0][3]~q\)) # (!\Q[0][0]~q\ & ((\Q[0][2]~q\))))) # (!\Q[0][1]~q\ & (\Q[0][2]~q\ & (\Q[0][0]~q\ $ (\Q[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][1]~q\,
	datab => \Q[0][0]~q\,
	datac => \Q[0][3]~q\,
	datad => \Q[0][2]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X114_Y54_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Q[0][0]~q\ & (\Q[0][3]~q\ $ (((!\Q[0][1]~q\ & !\Q[0][2]~q\))))) # (!\Q[0][0]~q\ & (((!\Q[0][3]~q\ & \Q[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0][1]~q\,
	datab => \Q[0][0]~q\,
	datac => \Q[0][3]~q\,
	datad => \Q[0][2]~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Q[1][2]~q\ & ((\Q[1][1]~q\ & ((!\Q[1][0]~q\))) # (!\Q[1][1]~q\ & ((\Q[1][0]~q\) # (!\Q[1][3]~q\))))) # (!\Q[1][2]~q\ & ((\Q[1][1]~q\) # ((\Q[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][2]~q\,
	datab => \Q[1][1]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][0]~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X114_Y22_N26
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Q[1][2]~q\ & (\Q[1][0]~q\ & ((\Q[1][1]~q\) # (\Q[1][3]~q\)))) # (!\Q[1][2]~q\ & (!\Q[1][3]~q\ & ((\Q[1][1]~q\) # (\Q[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][2]~q\,
	datab => \Q[1][1]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][0]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Q[1][2]~q\ & ((\Q[1][1]~q\ & ((\Q[1][0]~q\))) # (!\Q[1][1]~q\ & (!\Q[1][3]~q\)))) # (!\Q[1][2]~q\ & (\Q[1][0]~q\ & ((!\Q[1][3]~q\) # (!\Q[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][2]~q\,
	datab => \Q[1][1]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][0]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Q[1][0]~q\ & (\Q[1][2]~q\ $ ((!\Q[1][1]~q\)))) # (!\Q[1][0]~q\ & ((\Q[1][2]~q\ & (!\Q[1][1]~q\ & !\Q[1][3]~q\)) # (!\Q[1][2]~q\ & (\Q[1][1]~q\ & \Q[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][2]~q\,
	datab => \Q[1][1]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][0]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X114_Y22_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Q[1][2]~q\ & (\Q[1][3]~q\ & ((\Q[1][1]~q\) # (!\Q[1][0]~q\)))) # (!\Q[1][2]~q\ & (\Q[1][1]~q\ & (!\Q[1][3]~q\ & !\Q[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][2]~q\,
	datab => \Q[1][1]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][0]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Q[1][1]~q\ & ((\Q[1][0]~q\ & ((\Q[1][3]~q\))) # (!\Q[1][0]~q\ & (\Q[1][2]~q\)))) # (!\Q[1][1]~q\ & (\Q[1][2]~q\ & (\Q[1][3]~q\ $ (\Q[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][2]~q\,
	datab => \Q[1][1]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][0]~q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Q[1][2]~q\ & ((\Q[1][3]~q\ $ (!\Q[1][0]~q\)))) # (!\Q[1][2]~q\ & (\Q[1][0]~q\ & (\Q[1][1]~q\ $ (!\Q[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1][2]~q\,
	datab => \Q[1][1]~q\,
	datac => \Q[1][3]~q\,
	datad => \Q[1][0]~q\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Q[2][2]~q\ & ((\Q[2][0]~q\ & ((!\Q[2][1]~q\))) # (!\Q[2][0]~q\ & ((\Q[2][1]~q\) # (!\Q[2][3]~q\))))) # (!\Q[2][2]~q\ & ((\Q[2][3]~q\) # ((\Q[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][1]~q\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Q[2][2]~q\ & (\Q[2][0]~q\ & ((\Q[2][3]~q\) # (\Q[2][1]~q\)))) # (!\Q[2][2]~q\ & (!\Q[2][3]~q\ & ((\Q[2][0]~q\) # (\Q[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][1]~q\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X114_Y18_N4
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Q[2][3]~q\ & (\Q[2][0]~q\ & (\Q[2][2]~q\ $ (!\Q[2][1]~q\)))) # (!\Q[2][3]~q\ & ((\Q[2][0]~q\) # ((\Q[2][2]~q\ & !\Q[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][1]~q\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X114_Y18_N22
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Q[2][0]~q\ & ((\Q[2][2]~q\ $ (!\Q[2][1]~q\)))) # (!\Q[2][0]~q\ & ((\Q[2][3]~q\ & (!\Q[2][2]~q\ & \Q[2][1]~q\)) # (!\Q[2][3]~q\ & (\Q[2][2]~q\ & !\Q[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][1]~q\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Q[2][3]~q\ & (\Q[2][2]~q\ & ((\Q[2][1]~q\) # (!\Q[2][0]~q\)))) # (!\Q[2][3]~q\ & (!\Q[2][0]~q\ & (!\Q[2][2]~q\ & \Q[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][1]~q\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X114_Y18_N30
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Q[2][3]~q\ & ((\Q[2][0]~q\ & ((\Q[2][1]~q\))) # (!\Q[2][0]~q\ & (\Q[2][2]~q\)))) # (!\Q[2][3]~q\ & (\Q[2][2]~q\ & (\Q[2][0]~q\ $ (\Q[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][1]~q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Q[2][0]~q\ & (\Q[2][3]~q\ $ (((!\Q[2][2]~q\ & !\Q[2][1]~q\))))) # (!\Q[2][0]~q\ & (!\Q[2][3]~q\ & (\Q[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2][3]~q\,
	datab => \Q[2][0]~q\,
	datac => \Q[2][2]~q\,
	datad => \Q[2][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X112_Y18_N24
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Q[3][2]~q\ & ((\Q[3][0]~q\ & ((!\Q[3][1]~q\))) # (!\Q[3][0]~q\ & ((\Q[3][1]~q\) # (!\Q[3][3]~q\))))) # (!\Q[3][2]~q\ & ((\Q[3][3]~q\) # ((\Q[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][2]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][0]~q\,
	datad => \Q[3][1]~q\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X112_Y18_N12
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Q[3][2]~q\ & (\Q[3][0]~q\ & ((\Q[3][3]~q\) # (\Q[3][1]~q\)))) # (!\Q[3][2]~q\ & (!\Q[3][3]~q\ & ((\Q[3][0]~q\) # (\Q[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][2]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][0]~q\,
	datad => \Q[3][1]~q\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X112_Y18_N26
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Q[3][2]~q\ & ((\Q[3][1]~q\ & ((\Q[3][0]~q\))) # (!\Q[3][1]~q\ & (!\Q[3][3]~q\)))) # (!\Q[3][2]~q\ & (\Q[3][0]~q\ & ((!\Q[3][1]~q\) # (!\Q[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][2]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][0]~q\,
	datad => \Q[3][1]~q\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X112_Y18_N14
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Q[3][0]~q\ & (\Q[3][2]~q\ $ (((!\Q[3][1]~q\))))) # (!\Q[3][0]~q\ & ((\Q[3][2]~q\ & (!\Q[3][3]~q\ & !\Q[3][1]~q\)) # (!\Q[3][2]~q\ & (\Q[3][3]~q\ & \Q[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][2]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][0]~q\,
	datad => \Q[3][1]~q\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X112_Y18_N30
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Q[3][2]~q\ & (\Q[3][3]~q\ & ((\Q[3][1]~q\) # (!\Q[3][0]~q\)))) # (!\Q[3][2]~q\ & (!\Q[3][3]~q\ & (!\Q[3][0]~q\ & \Q[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][2]~q\,
	datab => \Q[3][3]~q\,
	datac => \Q[3][0]~q\,
	datad => \Q[3][1]~q\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X113_Y18_N16
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

-- Location: LCCOMB_X113_Y18_N8
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Q[3][0]~q\ & (\Q[3][3]~q\ $ (((!\Q[3][2]~q\ & !\Q[3][1]~q\))))) # (!\Q[3][0]~q\ & (\Q[3][2]~q\ & (!\Q[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3][0]~q\,
	datab => \Q[3][2]~q\,
	datac => \Q[3][3]~q\,
	datad => \Q[3][1]~q\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
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


