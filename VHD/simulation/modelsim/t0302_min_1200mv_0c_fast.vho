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

-- DATE "04/27/2023 09:50:22"

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

ENTITY 	mid IS
    PORT (
	CLK : IN std_logic;
	btn : IN std_logic_vector(3 DOWNTO 0);
	BCD : OUT std_logic_vector(7 DOWNTO 0);
	BCD1 : OUT std_logic_vector(7 DOWNTO 0);
	BCD2 : OUT std_logic_vector(7 DOWNTO 0);
	BCD3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END mid;

-- Design Ports Information
-- BCD[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[3]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[4]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[5]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[0]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD1[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[0]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[1]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[2]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[5]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD2[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD3[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mid IS
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
SIGNAL ww_btn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BCD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BCD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BCD3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[24]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \q[0]~72_combout\ : std_logic;
SIGNAL \q[1]~24_combout\ : std_logic;
SIGNAL \q[1]~25\ : std_logic;
SIGNAL \q[2]~26_combout\ : std_logic;
SIGNAL \q[2]~27\ : std_logic;
SIGNAL \q[3]~28_combout\ : std_logic;
SIGNAL \q[3]~29\ : std_logic;
SIGNAL \q[4]~30_combout\ : std_logic;
SIGNAL \q[4]~31\ : std_logic;
SIGNAL \q[5]~32_combout\ : std_logic;
SIGNAL \q[5]~33\ : std_logic;
SIGNAL \q[6]~34_combout\ : std_logic;
SIGNAL \q[6]~35\ : std_logic;
SIGNAL \q[7]~36_combout\ : std_logic;
SIGNAL \q[7]~37\ : std_logic;
SIGNAL \q[8]~38_combout\ : std_logic;
SIGNAL \q[8]~39\ : std_logic;
SIGNAL \q[9]~40_combout\ : std_logic;
SIGNAL \q[9]~41\ : std_logic;
SIGNAL \q[10]~42_combout\ : std_logic;
SIGNAL \q[10]~43\ : std_logic;
SIGNAL \q[11]~44_combout\ : std_logic;
SIGNAL \q[11]~45\ : std_logic;
SIGNAL \q[12]~46_combout\ : std_logic;
SIGNAL \q[12]~47\ : std_logic;
SIGNAL \q[13]~48_combout\ : std_logic;
SIGNAL \q[13]~49\ : std_logic;
SIGNAL \q[14]~50_combout\ : std_logic;
SIGNAL \q[14]~51\ : std_logic;
SIGNAL \q[15]~52_combout\ : std_logic;
SIGNAL \q[15]~53\ : std_logic;
SIGNAL \q[16]~54_combout\ : std_logic;
SIGNAL \q[16]~55\ : std_logic;
SIGNAL \q[17]~56_combout\ : std_logic;
SIGNAL \q[17]~57\ : std_logic;
SIGNAL \q[18]~58_combout\ : std_logic;
SIGNAL \q[18]~59\ : std_logic;
SIGNAL \q[19]~60_combout\ : std_logic;
SIGNAL \q[19]~61\ : std_logic;
SIGNAL \q[20]~62_combout\ : std_logic;
SIGNAL \q[20]~63\ : std_logic;
SIGNAL \q[21]~64_combout\ : std_logic;
SIGNAL \q[21]~65\ : std_logic;
SIGNAL \q[22]~66_combout\ : std_logic;
SIGNAL \q[22]~67\ : std_logic;
SIGNAL \q[23]~68_combout\ : std_logic;
SIGNAL \q[23]~69\ : std_logic;
SIGNAL \q[24]~70_combout\ : std_logic;
SIGNAL \q[24]~clkctrl_outclk\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \x[6]~feeder_combout\ : std_logic;
SIGNAL \x[4]~feeder_combout\ : std_logic;
SIGNAL \x[2]~feeder_combout\ : std_logic;
SIGNAL \x[1]~feeder_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \btn[3]~input_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
SIGNAL \btn[0]~input_o\ : std_logic;
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \BCD~0_combout\ : std_logic;
SIGNAL \BCD[0]~reg0_q\ : std_logic;
SIGNAL \BCD~1_combout\ : std_logic;
SIGNAL \BCD[1]~reg0_q\ : std_logic;
SIGNAL \BCD~2_combout\ : std_logic;
SIGNAL \BCD[2]~reg0_q\ : std_logic;
SIGNAL \BCD~3_combout\ : std_logic;
SIGNAL \BCD[3]~reg0_q\ : std_logic;
SIGNAL \BCD~4_combout\ : std_logic;
SIGNAL \BCD[4]~reg0_q\ : std_logic;
SIGNAL \BCD~5_combout\ : std_logic;
SIGNAL \BCD[5]~reg0_q\ : std_logic;
SIGNAL \BCD~6_combout\ : std_logic;
SIGNAL \BCD~7_combout\ : std_logic;
SIGNAL \BCD[6]~reg0_q\ : std_logic;
SIGNAL \BCD~8_combout\ : std_logic;
SIGNAL \BCD[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \BCD1~0_combout\ : std_logic;
SIGNAL \BCD1[0]~reg0_q\ : std_logic;
SIGNAL \BCD1~1_combout\ : std_logic;
SIGNAL \BCD1[1]~reg0_q\ : std_logic;
SIGNAL \BCD1~2_combout\ : std_logic;
SIGNAL \BCD1[2]~reg0_q\ : std_logic;
SIGNAL \BCD1~3_combout\ : std_logic;
SIGNAL \BCD1[3]~reg0_q\ : std_logic;
SIGNAL \BCD1~4_combout\ : std_logic;
SIGNAL \BCD1[4]~reg0_q\ : std_logic;
SIGNAL \BCD1~5_combout\ : std_logic;
SIGNAL \BCD1[5]~reg0_q\ : std_logic;
SIGNAL \BCD1~6_combout\ : std_logic;
SIGNAL \BCD1[6]~reg0_q\ : std_logic;
SIGNAL \BCD1~7_combout\ : std_logic;
SIGNAL \BCD1[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \BCD2~0_combout\ : std_logic;
SIGNAL \BCD2[0]~reg0_q\ : std_logic;
SIGNAL \BCD2~1_combout\ : std_logic;
SIGNAL \BCD2[1]~reg0_q\ : std_logic;
SIGNAL \BCD2~2_combout\ : std_logic;
SIGNAL \BCD2[2]~reg0_q\ : std_logic;
SIGNAL \BCD2~3_combout\ : std_logic;
SIGNAL \BCD2[3]~reg0_q\ : std_logic;
SIGNAL \BCD2~4_combout\ : std_logic;
SIGNAL \BCD2[4]~reg0_q\ : std_logic;
SIGNAL \BCD2~5_combout\ : std_logic;
SIGNAL \BCD2[5]~reg0_q\ : std_logic;
SIGNAL \BCD2~6_combout\ : std_logic;
SIGNAL \BCD2[6]~reg0_q\ : std_logic;
SIGNAL \BCD2~7_combout\ : std_logic;
SIGNAL \BCD2[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \BCD3~0_combout\ : std_logic;
SIGNAL \BCD3[0]~reg0_q\ : std_logic;
SIGNAL \BCD3~1_combout\ : std_logic;
SIGNAL \BCD3[1]~reg0_q\ : std_logic;
SIGNAL \BCD3~2_combout\ : std_logic;
SIGNAL \BCD3[2]~reg0_q\ : std_logic;
SIGNAL \BCD3~3_combout\ : std_logic;
SIGNAL \BCD3[3]~reg0_q\ : std_logic;
SIGNAL \BCD3~4_combout\ : std_logic;
SIGNAL \BCD3[4]~reg0_q\ : std_logic;
SIGNAL \BCD3~5_combout\ : std_logic;
SIGNAL \BCD3[5]~reg0_q\ : std_logic;
SIGNAL \BCD3~6_combout\ : std_logic;
SIGNAL \BCD3[6]~reg0_q\ : std_logic;
SIGNAL \BCD3~7_combout\ : std_logic;
SIGNAL \BCD3[7]~reg0_q\ : std_logic;
SIGNAL q : std_logic_vector(30 DOWNTO 0);
SIGNAL b : std_logic_vector(3 DOWNTO 0);
SIGNAL x : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_btn <= btn;
BCD <= ww_BCD;
BCD1 <= ww_BCD1;
BCD2 <= ww_BCD2;
BCD3 <= ww_BCD3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\q[24]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & q(24));

-- Location: IOOBUF_X115_Y27_N2
\BCD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD[0]~reg0_q\,
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
	i => \BCD[1]~reg0_q\,
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
	i => \BCD[2]~reg0_q\,
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
	i => \BCD[3]~reg0_q\,
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
	i => \BCD[4]~reg0_q\,
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
	i => \BCD[5]~reg0_q\,
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
	i => \BCD[6]~reg0_q\,
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
	i => \BCD[7]~reg0_q\,
	devoe => ww_devoe,
	o => \BCD[7]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\BCD1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD1[0]~reg0_q\,
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
	i => \BCD1[1]~reg0_q\,
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
	i => \BCD1[2]~reg0_q\,
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
	i => \BCD1[3]~reg0_q\,
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
	i => \BCD1[4]~reg0_q\,
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
	i => \BCD1[5]~reg0_q\,
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
	i => \BCD1[6]~reg0_q\,
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
	i => \BCD1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \BCD1[7]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\BCD2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD2[0]~reg0_q\,
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
	i => \BCD2[1]~reg0_q\,
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
	i => \BCD2[2]~reg0_q\,
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
	i => \BCD2[3]~reg0_q\,
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
	i => \BCD2[4]~reg0_q\,
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
	i => \BCD2[5]~reg0_q\,
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
	i => \BCD2[6]~reg0_q\,
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
	i => \BCD2[7]~reg0_q\,
	devoe => ww_devoe,
	o => \BCD2[7]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\BCD3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD3[0]~reg0_q\,
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
	i => \BCD3[1]~reg0_q\,
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
	i => \BCD3[2]~reg0_q\,
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
	i => \BCD3[3]~reg0_q\,
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
	i => \BCD3[4]~reg0_q\,
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
	i => \BCD3[5]~reg0_q\,
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
	i => \BCD3[6]~reg0_q\,
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
	i => \BCD3[7]~reg0_q\,
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

-- Location: LCCOMB_X59_Y2_N4
\q[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~72_combout\ = !q(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(0),
	combout => \q[0]~72_combout\);

-- Location: FF_X59_Y2_N5
\q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(0));

-- Location: LCCOMB_X59_Y2_N8
\q[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~24_combout\ = (q(0) & (q(1) $ (VCC))) # (!q(0) & (q(1) & VCC))
-- \q[1]~25\ = CARRY((q(0) & q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datab => q(1),
	datad => VCC,
	combout => \q[1]~24_combout\,
	cout => \q[1]~25\);

-- Location: FF_X59_Y2_N9
\q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(1));

-- Location: LCCOMB_X59_Y2_N10
\q[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[2]~26_combout\ = (q(2) & (!\q[1]~25\)) # (!q(2) & ((\q[1]~25\) # (GND)))
-- \q[2]~27\ = CARRY((!\q[1]~25\) # (!q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \q[1]~25\,
	combout => \q[2]~26_combout\,
	cout => \q[2]~27\);

-- Location: FF_X59_Y2_N11
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: LCCOMB_X59_Y2_N12
\q[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~28_combout\ = (q(3) & (\q[2]~27\ $ (GND))) # (!q(3) & (!\q[2]~27\ & VCC))
-- \q[3]~29\ = CARRY((q(3) & !\q[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \q[2]~27\,
	combout => \q[3]~28_combout\,
	cout => \q[3]~29\);

-- Location: FF_X59_Y2_N13
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: LCCOMB_X59_Y2_N14
\q[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[4]~30_combout\ = (q(4) & (!\q[3]~29\)) # (!q(4) & ((\q[3]~29\) # (GND)))
-- \q[4]~31\ = CARRY((!\q[3]~29\) # (!q(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \q[3]~29\,
	combout => \q[4]~30_combout\,
	cout => \q[4]~31\);

-- Location: FF_X59_Y2_N15
\q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(4));

-- Location: LCCOMB_X59_Y2_N16
\q[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]~32_combout\ = (q(5) & (\q[4]~31\ $ (GND))) # (!q(5) & (!\q[4]~31\ & VCC))
-- \q[5]~33\ = CARRY((q(5) & !\q[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \q[4]~31\,
	combout => \q[5]~32_combout\,
	cout => \q[5]~33\);

-- Location: FF_X59_Y2_N17
\q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(5));

-- Location: LCCOMB_X59_Y2_N18
\q[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~34_combout\ = (q(6) & (!\q[5]~33\)) # (!q(6) & ((\q[5]~33\) # (GND)))
-- \q[6]~35\ = CARRY((!\q[5]~33\) # (!q(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(6),
	datad => VCC,
	cin => \q[5]~33\,
	combout => \q[6]~34_combout\,
	cout => \q[6]~35\);

-- Location: FF_X59_Y2_N19
\q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(6));

-- Location: LCCOMB_X59_Y2_N20
\q[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[7]~36_combout\ = (q(7) & (\q[6]~35\ $ (GND))) # (!q(7) & (!\q[6]~35\ & VCC))
-- \q[7]~37\ = CARRY((q(7) & !\q[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(7),
	datad => VCC,
	cin => \q[6]~35\,
	combout => \q[7]~36_combout\,
	cout => \q[7]~37\);

-- Location: FF_X59_Y2_N21
\q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(7));

-- Location: LCCOMB_X59_Y2_N22
\q[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[8]~38_combout\ = (q(8) & (!\q[7]~37\)) # (!q(8) & ((\q[7]~37\) # (GND)))
-- \q[8]~39\ = CARRY((!\q[7]~37\) # (!q(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(8),
	datad => VCC,
	cin => \q[7]~37\,
	combout => \q[8]~38_combout\,
	cout => \q[8]~39\);

-- Location: FF_X59_Y2_N23
\q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(8));

-- Location: LCCOMB_X59_Y2_N24
\q[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[9]~40_combout\ = (q(9) & (\q[8]~39\ $ (GND))) # (!q(9) & (!\q[8]~39\ & VCC))
-- \q[9]~41\ = CARRY((q(9) & !\q[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(9),
	datad => VCC,
	cin => \q[8]~39\,
	combout => \q[9]~40_combout\,
	cout => \q[9]~41\);

-- Location: FF_X59_Y2_N25
\q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(9));

-- Location: LCCOMB_X59_Y2_N26
\q[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[10]~42_combout\ = (q(10) & (!\q[9]~41\)) # (!q(10) & ((\q[9]~41\) # (GND)))
-- \q[10]~43\ = CARRY((!\q[9]~41\) # (!q(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(10),
	datad => VCC,
	cin => \q[9]~41\,
	combout => \q[10]~42_combout\,
	cout => \q[10]~43\);

-- Location: FF_X59_Y2_N27
\q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(10));

-- Location: LCCOMB_X59_Y2_N28
\q[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[11]~44_combout\ = (q(11) & (\q[10]~43\ $ (GND))) # (!q(11) & (!\q[10]~43\ & VCC))
-- \q[11]~45\ = CARRY((q(11) & !\q[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(11),
	datad => VCC,
	cin => \q[10]~43\,
	combout => \q[11]~44_combout\,
	cout => \q[11]~45\);

-- Location: FF_X59_Y2_N29
\q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(11));

-- Location: LCCOMB_X59_Y2_N30
\q[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[12]~46_combout\ = (q(12) & (!\q[11]~45\)) # (!q(12) & ((\q[11]~45\) # (GND)))
-- \q[12]~47\ = CARRY((!\q[11]~45\) # (!q(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(12),
	datad => VCC,
	cin => \q[11]~45\,
	combout => \q[12]~46_combout\,
	cout => \q[12]~47\);

-- Location: FF_X59_Y2_N31
\q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(12));

-- Location: LCCOMB_X59_Y1_N0
\q[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[13]~48_combout\ = (q(13) & (\q[12]~47\ $ (GND))) # (!q(13) & (!\q[12]~47\ & VCC))
-- \q[13]~49\ = CARRY((q(13) & !\q[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(13),
	datad => VCC,
	cin => \q[12]~47\,
	combout => \q[13]~48_combout\,
	cout => \q[13]~49\);

-- Location: FF_X59_Y1_N1
\q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(13));

-- Location: LCCOMB_X59_Y1_N2
\q[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[14]~50_combout\ = (q(14) & (!\q[13]~49\)) # (!q(14) & ((\q[13]~49\) # (GND)))
-- \q[14]~51\ = CARRY((!\q[13]~49\) # (!q(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(14),
	datad => VCC,
	cin => \q[13]~49\,
	combout => \q[14]~50_combout\,
	cout => \q[14]~51\);

-- Location: FF_X59_Y1_N3
\q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(14));

-- Location: LCCOMB_X59_Y1_N4
\q[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[15]~52_combout\ = (q(15) & (\q[14]~51\ $ (GND))) # (!q(15) & (!\q[14]~51\ & VCC))
-- \q[15]~53\ = CARRY((q(15) & !\q[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(15),
	datad => VCC,
	cin => \q[14]~51\,
	combout => \q[15]~52_combout\,
	cout => \q[15]~53\);

-- Location: FF_X59_Y1_N5
\q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(15));

-- Location: LCCOMB_X59_Y1_N6
\q[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[16]~54_combout\ = (q(16) & (!\q[15]~53\)) # (!q(16) & ((\q[15]~53\) # (GND)))
-- \q[16]~55\ = CARRY((!\q[15]~53\) # (!q(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(16),
	datad => VCC,
	cin => \q[15]~53\,
	combout => \q[16]~54_combout\,
	cout => \q[16]~55\);

-- Location: FF_X59_Y1_N7
\q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(16));

-- Location: LCCOMB_X59_Y1_N8
\q[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[17]~56_combout\ = (q(17) & (\q[16]~55\ $ (GND))) # (!q(17) & (!\q[16]~55\ & VCC))
-- \q[17]~57\ = CARRY((q(17) & !\q[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(17),
	datad => VCC,
	cin => \q[16]~55\,
	combout => \q[17]~56_combout\,
	cout => \q[17]~57\);

-- Location: FF_X59_Y1_N9
\q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(17));

-- Location: LCCOMB_X59_Y1_N10
\q[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[18]~58_combout\ = (q(18) & (!\q[17]~57\)) # (!q(18) & ((\q[17]~57\) # (GND)))
-- \q[18]~59\ = CARRY((!\q[17]~57\) # (!q(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(18),
	datad => VCC,
	cin => \q[17]~57\,
	combout => \q[18]~58_combout\,
	cout => \q[18]~59\);

-- Location: FF_X59_Y1_N11
\q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(18));

-- Location: LCCOMB_X59_Y1_N12
\q[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[19]~60_combout\ = (q(19) & (\q[18]~59\ $ (GND))) # (!q(19) & (!\q[18]~59\ & VCC))
-- \q[19]~61\ = CARRY((q(19) & !\q[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(19),
	datad => VCC,
	cin => \q[18]~59\,
	combout => \q[19]~60_combout\,
	cout => \q[19]~61\);

-- Location: FF_X59_Y1_N13
\q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(19));

-- Location: LCCOMB_X59_Y1_N14
\q[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[20]~62_combout\ = (q(20) & (!\q[19]~61\)) # (!q(20) & ((\q[19]~61\) # (GND)))
-- \q[20]~63\ = CARRY((!\q[19]~61\) # (!q(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(20),
	datad => VCC,
	cin => \q[19]~61\,
	combout => \q[20]~62_combout\,
	cout => \q[20]~63\);

-- Location: FF_X59_Y1_N15
\q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(20));

-- Location: LCCOMB_X59_Y1_N16
\q[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[21]~64_combout\ = (q(21) & (\q[20]~63\ $ (GND))) # (!q(21) & (!\q[20]~63\ & VCC))
-- \q[21]~65\ = CARRY((q(21) & !\q[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(21),
	datad => VCC,
	cin => \q[20]~63\,
	combout => \q[21]~64_combout\,
	cout => \q[21]~65\);

-- Location: FF_X59_Y1_N17
\q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(21));

-- Location: LCCOMB_X59_Y1_N18
\q[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[22]~66_combout\ = (q(22) & (!\q[21]~65\)) # (!q(22) & ((\q[21]~65\) # (GND)))
-- \q[22]~67\ = CARRY((!\q[21]~65\) # (!q(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(22),
	datad => VCC,
	cin => \q[21]~65\,
	combout => \q[22]~66_combout\,
	cout => \q[22]~67\);

-- Location: FF_X59_Y1_N19
\q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(22));

-- Location: LCCOMB_X59_Y1_N20
\q[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[23]~68_combout\ = (q(23) & (\q[22]~67\ $ (GND))) # (!q(23) & (!\q[22]~67\ & VCC))
-- \q[23]~69\ = CARRY((q(23) & !\q[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(23),
	datad => VCC,
	cin => \q[22]~67\,
	combout => \q[23]~68_combout\,
	cout => \q[23]~69\);

-- Location: FF_X59_Y1_N21
\q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(23));

-- Location: LCCOMB_X59_Y1_N22
\q[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[24]~70_combout\ = \q[23]~69\ $ (q(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(24),
	cin => \q[23]~69\,
	combout => \q[24]~70_combout\);

-- Location: FF_X59_Y1_N23
\q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \q[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(24));

-- Location: CLKCTRL_G15
\q[24]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \q[24]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \q[24]~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y27_N6
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!x(3) & (!x(2) & (!x(5) & !x(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datab => x(2),
	datac => x(5),
	datad => x(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X113_Y27_N12
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!x(6) & (!x(0) & (!x(7) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(6),
	datab => x(0),
	datac => x(7),
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X113_Y27_N13
\x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(7));

-- Location: LCCOMB_X113_Y27_N18
\x[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[6]~feeder_combout\ = x(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(7),
	combout => \x[6]~feeder_combout\);

-- Location: FF_X113_Y27_N19
\x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \x[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(6));

-- Location: FF_X113_Y27_N7
\x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	asdata => x(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(5));

-- Location: LCCOMB_X113_Y27_N24
\x[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[4]~feeder_combout\ = x(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(5),
	combout => \x[4]~feeder_combout\);

-- Location: FF_X113_Y27_N25
\x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \x[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(4));

-- Location: FF_X113_Y27_N5
\x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	asdata => x(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(3));

-- Location: LCCOMB_X113_Y27_N28
\x[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[2]~feeder_combout\ = x(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x(3),
	combout => \x[2]~feeder_combout\);

-- Location: FF_X113_Y27_N29
\x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \x[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(2));

-- Location: LCCOMB_X111_Y27_N12
\x[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1]~feeder_combout\ = x(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x(2),
	combout => \x[1]~feeder_combout\);

-- Location: FF_X111_Y27_N13
\x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \x[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(1));

-- Location: LCCOMB_X113_Y27_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!x(0) & (!x(6) & !x(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datab => x(6),
	datad => x(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X113_Y27_N16
\x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~0_combout\ = (x(1) & ((!\Equal1~0_combout\) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \x~0_combout\);

-- Location: FF_X113_Y27_N17
\x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(0));

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

-- Location: LCCOMB_X111_Y27_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!\btn[1]~input_o\) # (!\btn[3]~input_o\)) # (!\btn[0]~input_o\)) # (!\btn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn[2]~input_o\,
	datab => \btn[0]~input_o\,
	datac => \btn[3]~input_o\,
	datad => \btn[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: FF_X112_Y27_N29
\b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \btn[3]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(3));

-- Location: FF_X112_Y27_N5
\b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \btn[1]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(1));

-- Location: FF_X112_Y27_N7
\b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \btn[2]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(2));

-- Location: FF_X112_Y27_N3
\b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \btn[0]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b(0));

-- Location: LCCOMB_X112_Y27_N6
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (b(0) & ((b(3) & (b(1) $ (b(2)))) # (!b(3) & (b(1) & b(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b(3),
	datab => b(1),
	datac => b(2),
	datad => b(0),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X111_Y27_N24
\BCD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~0_combout\ = (\WideOr0~0_combout\) # (!x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(0),
	datad => \WideOr0~0_combout\,
	combout => \BCD~0_combout\);

-- Location: FF_X111_Y27_N25
\BCD[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[0]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N22
\BCD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~1_combout\ = (\WideOr0~0_combout\) # (!x(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datad => \WideOr0~0_combout\,
	combout => \BCD~1_combout\);

-- Location: FF_X111_Y27_N23
\BCD[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[1]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N22
\BCD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~2_combout\ = (\WideOr0~0_combout\) # (!x(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr0~0_combout\,
	datad => x(2),
	combout => \BCD~2_combout\);

-- Location: FF_X113_Y27_N23
\BCD[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[2]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N14
\BCD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~3_combout\ = (\WideOr0~0_combout\) # (!x(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr0~0_combout\,
	datad => x(3),
	combout => \BCD~3_combout\);

-- Location: FF_X113_Y27_N15
\BCD[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[3]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N20
\BCD~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~4_combout\ = (\WideOr0~0_combout\) # (!x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(4),
	datad => \WideOr0~0_combout\,
	combout => \BCD~4_combout\);

-- Location: FF_X111_Y27_N21
\BCD[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[4]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N20
\BCD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~5_combout\ = (\WideOr0~0_combout\) # (!x(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr0~0_combout\,
	datad => x(5),
	combout => \BCD~5_combout\);

-- Location: FF_X112_Y27_N21
\BCD[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[5]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N28
\BCD~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~6_combout\ = (b(1) & (b(3) $ (b(2)))) # (!b(1) & (b(3) & b(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => b(1),
	datac => b(3),
	datad => b(2),
	combout => \BCD~6_combout\);

-- Location: LCCOMB_X112_Y27_N26
\BCD~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~7_combout\ = ((b(0) & \BCD~6_combout\)) # (!x(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => b(0),
	datac => x(6),
	datad => \BCD~6_combout\,
	combout => \BCD~7_combout\);

-- Location: FF_X112_Y27_N27
\BCD[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[6]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N8
\BCD~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~8_combout\ = (\WideOr0~0_combout\) # (!x(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr0~0_combout\,
	datad => x(7),
	combout => \BCD~8_combout\);

-- Location: FF_X112_Y27_N9
\BCD[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[7]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N4
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (b(2) & (b(0) & (!b(1) & b(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b(2),
	datab => b(0),
	datac => b(1),
	datad => b(3),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X112_Y27_N10
\BCD1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~0_combout\ = (!\Decoder0~0_combout\) # (!x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(0),
	datad => \Decoder0~0_combout\,
	combout => \BCD1~0_combout\);

-- Location: FF_X112_Y27_N11
\BCD1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[0]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N10
\BCD1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~1_combout\ = (!\Decoder0~0_combout\) # (!x(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datad => \Decoder0~0_combout\,
	combout => \BCD1~1_combout\);

-- Location: FF_X111_Y27_N11
\BCD1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[1]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N16
\BCD1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~2_combout\ = (!\Decoder0~0_combout\) # (!x(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x(2),
	datad => \Decoder0~0_combout\,
	combout => \BCD1~2_combout\);

-- Location: FF_X112_Y27_N17
\BCD1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[2]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N30
\BCD1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~3_combout\ = (!\Decoder0~0_combout\) # (!x(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datad => \Decoder0~0_combout\,
	combout => \BCD1~3_combout\);

-- Location: FF_X112_Y27_N31
\BCD1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[3]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N4
\BCD1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~4_combout\ = (!\Decoder0~0_combout\) # (!x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(4),
	datad => \Decoder0~0_combout\,
	combout => \BCD1~4_combout\);

-- Location: FF_X111_Y27_N5
\BCD1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[4]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N26
\BCD1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~5_combout\ = (!\Decoder0~0_combout\) # (!x(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x(5),
	datac => \Decoder0~0_combout\,
	combout => \BCD1~5_combout\);

-- Location: FF_X113_Y27_N27
\BCD1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[5]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N26
\BCD1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~6_combout\ = (!\Decoder0~0_combout\) # (!x(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(6),
	datad => \Decoder0~0_combout\,
	combout => \BCD1~6_combout\);

-- Location: FF_X111_Y27_N27
\BCD1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[6]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N0
\BCD1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD1~7_combout\ = (!\Decoder0~0_combout\) # (!x(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x(7),
	datac => \Decoder0~0_combout\,
	combout => \BCD1~7_combout\);

-- Location: FF_X113_Y27_N1
\BCD1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1[7]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N2
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!b(2) & (b(1) & (b(0) & b(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b(2),
	datab => b(1),
	datac => b(0),
	datad => b(3),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X111_Y27_N8
\BCD2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~0_combout\ = (!\Decoder0~1_combout\) # (!x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(0),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~0_combout\);

-- Location: FF_X111_Y27_N9
\BCD2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[0]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N30
\BCD2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~1_combout\ = (!\Decoder0~1_combout\) # (!x(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~1_combout\);

-- Location: FF_X111_Y27_N31
\BCD2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[1]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N28
\BCD2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~2_combout\ = (!\Decoder0~1_combout\) # (!x(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(2),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~2_combout\);

-- Location: FF_X111_Y27_N29
\BCD2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[2]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N30
\BCD2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~3_combout\ = (!\Decoder0~1_combout\) # (!x(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~3_combout\);

-- Location: FF_X113_Y27_N31
\BCD2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[3]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N14
\BCD2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~4_combout\ = (!\Decoder0~1_combout\) # (!x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(4),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~4_combout\);

-- Location: FF_X111_Y27_N15
\BCD2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[4]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N20
\BCD2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~5_combout\ = (!\Decoder0~1_combout\) # (!x(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(5),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~5_combout\);

-- Location: FF_X113_Y27_N21
\BCD2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[5]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N16
\BCD2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~6_combout\ = (!\Decoder0~1_combout\) # (!x(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(6),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~6_combout\);

-- Location: FF_X111_Y27_N17
\BCD2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[6]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N10
\BCD2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD2~7_combout\ = (!\Decoder0~1_combout\) # (!x(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(7),
	datad => \Decoder0~1_combout\,
	combout => \BCD2~7_combout\);

-- Location: FF_X113_Y27_N11
\BCD2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2[7]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N22
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!b(3) & (b(0) & (b(1) & b(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b(3),
	datab => b(0),
	datac => b(1),
	datad => b(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X112_Y27_N24
\BCD3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~0_combout\ = (!x(0)) # (!\Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~2_combout\,
	datad => x(0),
	combout => \BCD3~0_combout\);

-- Location: FF_X112_Y27_N25
\BCD3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[0]~reg0_q\);

-- Location: LCCOMB_X111_Y27_N18
\BCD3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~1_combout\ = (!\Decoder0~2_combout\) # (!x(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datad => \Decoder0~2_combout\,
	combout => \BCD3~1_combout\);

-- Location: FF_X111_Y27_N19
\BCD3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[1]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N18
\BCD3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~2_combout\ = (!x(2)) # (!\Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~2_combout\,
	datad => x(2),
	combout => \BCD3~2_combout\);

-- Location: FF_X112_Y27_N19
\BCD3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[2]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N0
\BCD3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~3_combout\ = (!x(3)) # (!\Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~2_combout\,
	datad => x(3),
	combout => \BCD3~3_combout\);

-- Location: FF_X112_Y27_N1
\BCD3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[3]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N14
\BCD3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~4_combout\ = (!x(4)) # (!\Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datac => x(4),
	combout => \BCD3~4_combout\);

-- Location: FF_X112_Y27_N15
\BCD3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[4]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N2
\BCD3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~5_combout\ = (!\Decoder0~2_combout\) # (!x(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(5),
	datad => \Decoder0~2_combout\,
	combout => \BCD3~5_combout\);

-- Location: FF_X113_Y27_N3
\BCD3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[5]~reg0_q\);

-- Location: LCCOMB_X112_Y27_N12
\BCD3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~6_combout\ = (!x(6)) # (!\Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~2_combout\,
	datad => x(6),
	combout => \BCD3~6_combout\);

-- Location: FF_X112_Y27_N13
\BCD3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[6]~reg0_q\);

-- Location: LCCOMB_X113_Y27_N8
\BCD3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD3~7_combout\ = (!\Decoder0~2_combout\) # (!x(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(7),
	datad => \Decoder0~2_combout\,
	combout => \BCD3~7_combout\);

-- Location: FF_X113_Y27_N9
\BCD3[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \q[24]~clkctrl_outclk\,
	d => \BCD3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3[7]~reg0_q\);

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


