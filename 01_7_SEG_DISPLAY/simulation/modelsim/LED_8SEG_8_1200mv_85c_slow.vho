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

-- DATE "09/04/2023 00:37:00"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
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

ENTITY 	LED_8SEG IS
    PORT (
	Clock : IN std_logic;
	led_1 : OUT std_logic;
	led_2 : OUT std_logic;
	led_3 : OUT std_logic;
	led_4 : OUT std_logic;
	Reset : IN std_logic;
	LEDout : OUT std_logic_vector(7 DOWNTO 0);
	DIGITindex : OUT std_logic_vector(3 DOWNTO 0)
	);
END LED_8SEG;

-- Design Ports Information
-- led_1	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: 4mA
-- led_2	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: 4mA
-- led_3	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: 4mA
-- led_4	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: 4mA
-- LEDout[0]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout[1]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout[2]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout[3]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout[5]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGITindex[0]	=>  Location: PIN_162,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGITindex[1]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGITindex[2]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGITindex[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LED_8SEG IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_led_1 : std_logic;
SIGNAL ww_led_2 : std_logic;
SIGNAL ww_led_3 : std_logic;
SIGNAL ww_led_4 : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_LEDout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIGITindex : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Period_mS~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Period_uS~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_1~output_o\ : std_logic;
SIGNAL \led_2~output_o\ : std_logic;
SIGNAL \led_3~output_o\ : std_logic;
SIGNAL \led_4~output_o\ : std_logic;
SIGNAL \LEDout[0]~output_o\ : std_logic;
SIGNAL \LEDout[1]~output_o\ : std_logic;
SIGNAL \LEDout[2]~output_o\ : std_logic;
SIGNAL \LEDout[3]~output_o\ : std_logic;
SIGNAL \LEDout[4]~output_o\ : std_logic;
SIGNAL \LEDout[5]~output_o\ : std_logic;
SIGNAL \LEDout[6]~output_o\ : std_logic;
SIGNAL \LEDout[7]~output_o\ : std_logic;
SIGNAL \DIGITindex[0]~output_o\ : std_logic;
SIGNAL \DIGITindex[1]~output_o\ : std_logic;
SIGNAL \DIGITindex[2]~output_o\ : std_logic;
SIGNAL \DIGITindex[3]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \TIMING:Count_uS[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \TIMING:Count_uS[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \TIMING:Count_uS[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \TIMING:Count_uS[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \TIMING:Count_uS[5]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \TIMING:Count_uS[4]~q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Period_uS~0_combout\ : std_logic;
SIGNAL \Period_uS~feeder_combout\ : std_logic;
SIGNAL \Period_uS~q\ : std_logic;
SIGNAL \Period_uS~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[0]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[1]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[2]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[3]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[4]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[5]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[7]~q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[8]~q\ : std_logic;
SIGNAL \TIMING:Count_mS[9]~feeder_combout\ : std_logic;
SIGNAL \TIMING:Count_mS[9]~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Period_mS~feeder_combout\ : std_logic;
SIGNAL \Period_mS~q\ : std_logic;
SIGNAL \Period_mS~clkctrl_outclk\ : std_logic;
SIGNAL \TIMING:Count_S[9]~feeder_combout\ : std_logic;
SIGNAL \TIMING:Count_S[9]~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \TIMING:Count_S[0]~q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \TIMING:Count_S[1]~q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \TIMING:Count_S[2]~q\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \TIMING:Count_S[3]~q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \TIMING:Count_S[4]~q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \TIMING:Count_S[5]~q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \TIMING:Count_S[6]~q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \TIMING:Count_S[7]~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \TIMING:Count_S[8]~q\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Period_S~feeder_combout\ : std_logic;
SIGNAL \Period_S~q\ : std_logic;
SIGNAL \pulse~0_combout\ : std_logic;
SIGNAL \pulse~q\ : std_logic;

BEGIN

ww_Clock <= Clock;
led_1 <= ww_led_1;
led_2 <= ww_led_2;
led_3 <= ww_led_3;
led_4 <= ww_led_4;
ww_Reset <= Reset;
LEDout <= ww_LEDout;
DIGITindex <= ww_DIGITindex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Period_mS~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Period_mS~q\);

\Period_uS~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Period_uS~q\);

-- Location: IOOBUF_X30_Y0_N23
\led_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led_1~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\led_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led_2~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\led_3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led_3~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\led_4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led_4~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\LEDout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDout[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\LEDout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDout[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\LEDout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDout[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\LEDout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDout[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\LEDout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDout[4]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\LEDout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDout[5]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\LEDout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDout[6]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\LEDout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDout[7]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\DIGITindex[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulse~q\,
	devoe => ww_devoe,
	o => \DIGITindex[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\DIGITindex[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIGITindex[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\DIGITindex[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIGITindex[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\DIGITindex[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIGITindex[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y27_N15
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X19_Y27_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \TIMING:Count_uS[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\TIMING:Count_uS[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y27_N22
\Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~0_combout\ & ((!\LessThan0~0_combout\) # (!\TIMING:Count_uS[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[4]~q\,
	datab => \LessThan0~0_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X19_Y27_N23
\TIMING:Count_uS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_uS[0]~q\);

-- Location: LCCOMB_X19_Y27_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\TIMING:Count_uS[1]~q\ & (!\Add0~1\)) # (!\TIMING:Count_uS[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\TIMING:Count_uS[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y27_N30
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~2_combout\ & ((!\LessThan0~0_combout\) # (!\TIMING:Count_uS[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[4]~q\,
	datab => \LessThan0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Add0~16_combout\);

-- Location: FF_X19_Y27_N31
\TIMING:Count_uS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_uS[1]~q\);

-- Location: LCCOMB_X19_Y27_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\TIMING:Count_uS[2]~q\ & (\Add0~3\ $ (GND))) # (!\TIMING:Count_uS[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\TIMING:Count_uS[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y27_N26
\Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~4_combout\ & ((!\LessThan0~0_combout\) # (!\TIMING:Count_uS[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[4]~q\,
	datac => \Add0~4_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~15_combout\);

-- Location: FF_X19_Y27_N27
\TIMING:Count_uS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~15_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_uS[2]~q\);

-- Location: LCCOMB_X19_Y27_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\TIMING:Count_uS[3]~q\ & (!\Add0~5\)) # (!\TIMING:Count_uS[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\TIMING:Count_uS[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_uS[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y27_N4
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~6_combout\ & ((!\LessThan0~0_combout\) # (!\TIMING:Count_uS[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[4]~q\,
	datab => \LessThan0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~14_combout\);

-- Location: FF_X19_Y27_N5
\TIMING:Count_uS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_uS[3]~q\);

-- Location: LCCOMB_X19_Y27_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\TIMING:Count_uS[4]~q\ & (\Add0~7\ $ (GND))) # (!\TIMING:Count_uS[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\TIMING:Count_uS[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y27_N20
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (\TIMING:Count_uS[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TIMING:Count_uS[5]~q\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X19_Y27_N28
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~10_combout\ & ((!\LessThan0~0_combout\) # (!\TIMING:Count_uS[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[4]~q\,
	datab => \LessThan0~0_combout\,
	datad => \Add0~10_combout\,
	combout => \Add0~12_combout\);

-- Location: FF_X19_Y27_N29
\TIMING:Count_uS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_uS[5]~q\);

-- Location: LCCOMB_X19_Y27_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\TIMING:Count_uS[5]~q\ & ((\TIMING:Count_uS[2]~q\) # ((\TIMING:Count_uS[3]~q\) # (\TIMING:Count_uS[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[2]~q\,
	datab => \TIMING:Count_uS[3]~q\,
	datac => \TIMING:Count_uS[1]~q\,
	datad => \TIMING:Count_uS[5]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y27_N6
\Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~8_combout\ & ((!\TIMING:Count_uS[4]~q\) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \TIMING:Count_uS[4]~q\,
	datad => \Add0~8_combout\,
	combout => \Add0~13_combout\);

-- Location: FF_X19_Y27_N7
\TIMING:Count_uS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~13_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_uS[4]~q\);

-- Location: LCCOMB_X19_Y27_N8
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\TIMING:Count_uS[4]~q\ & \LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_uS[4]~q\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y27_N24
\Period_uS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Period_uS~0_combout\ = (\Reset~input_o\ & (!\LessThan0~1_combout\ & ((\Add0~10_combout\)))) # (!\Reset~input_o\ & (((\Period_uS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \LessThan0~1_combout\,
	datac => \Period_uS~q\,
	datad => \Add0~10_combout\,
	combout => \Period_uS~0_combout\);

-- Location: LCCOMB_X19_Y27_N2
\Period_uS~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Period_uS~feeder_combout\ = \Period_uS~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Period_uS~0_combout\,
	combout => \Period_uS~feeder_combout\);

-- Location: FF_X19_Y27_N3
Period_uS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Period_uS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Period_uS~q\);

-- Location: CLKCTRL_G12
\Period_uS~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Period_uS~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Period_uS~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y3_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \TIMING:Count_mS[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\TIMING:Count_mS[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_mS[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X26_Y3_N6
\Add1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~0_combout\ & !\LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \Add1~29_combout\);

-- Location: FF_X27_Y3_N17
\TIMING:Count_mS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	asdata => \Add1~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[0]~q\);

-- Location: LCCOMB_X27_Y3_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\TIMING:Count_mS[1]~q\ & (!\Add1~1\)) # (!\TIMING:Count_mS[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\TIMING:Count_mS[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_mS[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X27_Y3_N30
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (!\LessThan1~1_combout\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~1_combout\,
	datad => \Add1~2_combout\,
	combout => \Add1~28_combout\);

-- Location: FF_X27_Y3_N31
\TIMING:Count_mS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[1]~q\);

-- Location: LCCOMB_X27_Y3_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\TIMING:Count_mS[2]~q\ & (\Add1~3\ $ (GND))) # (!\TIMING:Count_mS[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\TIMING:Count_mS[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_mS[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y3_N0
\Add1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (!\LessThan1~1_combout\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datac => \Add1~4_combout\,
	combout => \Add1~27_combout\);

-- Location: FF_X27_Y3_N1
\TIMING:Count_mS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[2]~q\);

-- Location: LCCOMB_X27_Y3_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\TIMING:Count_mS[3]~q\ & (!\Add1~5\)) # (!\TIMING:Count_mS[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\TIMING:Count_mS[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_mS[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X27_Y3_N2
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (!\LessThan1~1_combout\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datac => \Add1~6_combout\,
	combout => \Add1~26_combout\);

-- Location: FF_X27_Y3_N3
\TIMING:Count_mS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[3]~q\);

-- Location: LCCOMB_X27_Y3_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\TIMING:Count_mS[4]~q\ & (\Add1~7\ $ (GND))) # (!\TIMING:Count_mS[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\TIMING:Count_mS[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_mS[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X26_Y3_N14
\Add1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (!\LessThan1~1_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datad => \Add1~8_combout\,
	combout => \Add1~25_combout\);

-- Location: FF_X26_Y3_N15
\TIMING:Count_mS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[4]~q\);

-- Location: LCCOMB_X27_Y3_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\TIMING:Count_mS[5]~q\ & (!\Add1~9\)) # (!\TIMING:Count_mS[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\TIMING:Count_mS[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_mS[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X27_Y3_N8
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (!\LessThan1~1_combout\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~1_combout\,
	datad => \Add1~10_combout\,
	combout => \Add1~24_combout\);

-- Location: FF_X27_Y3_N9
\TIMING:Count_mS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[5]~q\);

-- Location: LCCOMB_X27_Y3_N22
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\TIMING:Count_mS[6]~q\ & (\Add1~11\ $ (GND))) # (!\TIMING:Count_mS[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\TIMING:Count_mS[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_mS[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X27_Y3_N6
\Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (!\LessThan1~1_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datac => \Add1~12_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X27_Y3_N7
\TIMING:Count_mS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[6]~q\);

-- Location: LCCOMB_X27_Y3_N24
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\TIMING:Count_mS[7]~q\ & (!\Add1~13\)) # (!\TIMING:Count_mS[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\TIMING:Count_mS[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_mS[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X26_Y3_N26
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (!\LessThan1~1_combout\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datad => \Add1~14_combout\,
	combout => \Add1~22_combout\);

-- Location: FF_X26_Y3_N27
\TIMING:Count_mS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[7]~q\);

-- Location: LCCOMB_X27_Y3_N26
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\TIMING:Count_mS[8]~q\ & (\Add1~15\ $ (GND))) # (!\TIMING:Count_mS[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\TIMING:Count_mS[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_mS[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X27_Y3_N4
\Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (!\LessThan1~1_combout\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datac => \Add1~16_combout\,
	combout => \Add1~21_combout\);

-- Location: FF_X27_Y3_N5
\TIMING:Count_mS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Add1~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[8]~q\);

-- Location: LCCOMB_X26_Y3_N18
\TIMING:Count_mS[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIMING:Count_mS[9]~feeder_combout\ = \Add1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~20_combout\,
	combout => \TIMING:Count_mS[9]~feeder_combout\);

-- Location: FF_X26_Y3_N19
\TIMING:Count_mS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \TIMING:Count_mS[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_mS[9]~q\);

-- Location: LCCOMB_X26_Y3_N24
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\TIMING:Count_mS[6]~q\ & (\TIMING:Count_mS[5]~q\ & ((\TIMING:Count_mS[4]~q\) # (\TIMING:Count_mS[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_mS[6]~q\,
	datab => \TIMING:Count_mS[4]~q\,
	datac => \TIMING:Count_mS[5]~q\,
	datad => \TIMING:Count_mS[3]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y3_N16
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\TIMING:Count_mS[8]~q\ & (\TIMING:Count_mS[9]~q\ & (\TIMING:Count_mS[7]~q\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_mS[8]~q\,
	datab => \TIMING:Count_mS[9]~q\,
	datac => \TIMING:Count_mS[7]~q\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y3_N28
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (\TIMING:Count_mS[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TIMING:Count_mS[9]~q\,
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X26_Y3_N28
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\LessThan1~1_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datad => \Add1~18_combout\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X26_Y3_N12
\Period_mS~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Period_mS~feeder_combout\ = \Add1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~20_combout\,
	combout => \Period_mS~feeder_combout\);

-- Location: FF_X26_Y3_N13
Period_mS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_uS~clkctrl_outclk\,
	d => \Period_mS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Period_mS~q\);

-- Location: CLKCTRL_G19
\Period_mS~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Period_mS~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Period_mS~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y9_N22
\TIMING:Count_S[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIMING:Count_S[9]~feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~20_combout\,
	combout => \TIMING:Count_S[9]~feeder_combout\);

-- Location: FF_X33_Y9_N23
\TIMING:Count_S[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \TIMING:Count_S[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[9]~q\);

-- Location: LCCOMB_X32_Y9_N8
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \TIMING:Count_S[0]~q\ $ (VCC)
-- \Add2~1\ = CARRY(\TIMING:Count_S[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_S[0]~q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X32_Y9_N30
\Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (\Add2~0_combout\ & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Add2~29_combout\);

-- Location: FF_X32_Y9_N31
\TIMING:Count_S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[0]~q\);

-- Location: LCCOMB_X32_Y9_N10
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\TIMING:Count_S[1]~q\ & (!\Add2~1\)) # (!\TIMING:Count_S[1]~q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\TIMING:Count_S[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_S[1]~q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X32_Y9_N4
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add2~2_combout\ & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Add2~28_combout\);

-- Location: FF_X32_Y9_N5
\TIMING:Count_S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[1]~q\);

-- Location: LCCOMB_X32_Y9_N12
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\TIMING:Count_S[2]~q\ & (\Add2~3\ $ (GND))) # (!\TIMING:Count_S[2]~q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\TIMING:Count_S[2]~q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_S[2]~q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X32_Y9_N2
\Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (\Add2~4_combout\ & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Add2~27_combout\);

-- Location: FF_X32_Y9_N3
\TIMING:Count_S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[2]~q\);

-- Location: LCCOMB_X32_Y9_N14
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\TIMING:Count_S[3]~q\ & (!\Add2~5\)) # (!\TIMING:Count_S[3]~q\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\TIMING:Count_S[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_S[3]~q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X32_Y9_N28
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add2~6_combout\ & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Add2~26_combout\);

-- Location: FF_X32_Y9_N29
\TIMING:Count_S[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[3]~q\);

-- Location: LCCOMB_X32_Y9_N16
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\TIMING:Count_S[4]~q\ & (\Add2~7\ $ (GND))) # (!\TIMING:Count_S[4]~q\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\TIMING:Count_S[4]~q\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_S[4]~q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X33_Y9_N30
\Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = (\Add2~8_combout\ & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Add2~25_combout\);

-- Location: FF_X33_Y9_N31
\TIMING:Count_S[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[4]~q\);

-- Location: LCCOMB_X32_Y9_N18
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\TIMING:Count_S[5]~q\ & (!\Add2~9\)) # (!\TIMING:Count_S[5]~q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\TIMING:Count_S[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_S[5]~q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X32_Y9_N6
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Add2~10_combout\ & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~10_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Add2~24_combout\);

-- Location: FF_X32_Y9_N7
\TIMING:Count_S[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[5]~q\);

-- Location: LCCOMB_X32_Y9_N20
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\TIMING:Count_S[6]~q\ & (\Add2~11\ $ (GND))) # (!\TIMING:Count_S[6]~q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\TIMING:Count_S[6]~q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_S[6]~q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X33_Y9_N18
\Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (!\LessThan2~1_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datad => \Add2~12_combout\,
	combout => \Add2~23_combout\);

-- Location: FF_X33_Y9_N19
\TIMING:Count_S[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[6]~q\);

-- Location: LCCOMB_X32_Y9_N22
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\TIMING:Count_S[7]~q\ & (!\Add2~13\)) # (!\TIMING:Count_S[7]~q\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\TIMING:Count_S[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_S[7]~q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X33_Y9_N12
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (!\LessThan2~1_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datad => \Add2~14_combout\,
	combout => \Add2~22_combout\);

-- Location: FF_X33_Y9_N13
\TIMING:Count_S[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[7]~q\);

-- Location: LCCOMB_X33_Y9_N28
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\TIMING:Count_S[6]~q\ & (\TIMING:Count_S[5]~q\ & ((\TIMING:Count_S[4]~q\) # (\TIMING:Count_S[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_S[4]~q\,
	datab => \TIMING:Count_S[6]~q\,
	datac => \TIMING:Count_S[5]~q\,
	datad => \TIMING:Count_S[3]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y9_N16
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\TIMING:Count_S[8]~q\ & (\TIMING:Count_S[7]~q\ & (\TIMING:Count_S[9]~q\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIMING:Count_S[8]~q\,
	datab => \TIMING:Count_S[7]~q\,
	datac => \TIMING:Count_S[9]~q\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X32_Y9_N24
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\TIMING:Count_S[8]~q\ & (\Add2~15\ $ (GND))) # (!\TIMING:Count_S[8]~q\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\TIMING:Count_S[8]~q\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TIMING:Count_S[8]~q\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X32_Y9_N0
\Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (!\LessThan2~1_combout\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~21_combout\);

-- Location: FF_X32_Y9_N1
\TIMING:Count_S[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Add2~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMING:Count_S[8]~q\);

-- Location: LCCOMB_X32_Y9_N26
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \Add2~17\ $ (\TIMING:Count_S[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TIMING:Count_S[9]~q\,
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X33_Y9_N24
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Add2~18_combout\ & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Add2~20_combout\);

-- Location: LCCOMB_X33_Y9_N14
\Period_S~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Period_S~feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~20_combout\,
	combout => \Period_S~feeder_combout\);

-- Location: FF_X33_Y9_N15
Period_S : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_mS~clkctrl_outclk\,
	d => \Period_S~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Period_S~q\);

-- Location: LCCOMB_X33_Y9_N20
\pulse~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pulse~0_combout\ = !\pulse~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse~q\,
	combout => \pulse~0_combout\);

-- Location: FF_X33_Y9_N21
pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Period_S~q\,
	d => \pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse~q\);

ww_led_1 <= \led_1~output_o\;

ww_led_2 <= \led_2~output_o\;

ww_led_3 <= \led_3~output_o\;

ww_led_4 <= \led_4~output_o\;

ww_LEDout(0) <= \LEDout[0]~output_o\;

ww_LEDout(1) <= \LEDout[1]~output_o\;

ww_LEDout(2) <= \LEDout[2]~output_o\;

ww_LEDout(3) <= \LEDout[3]~output_o\;

ww_LEDout(4) <= \LEDout[4]~output_o\;

ww_LEDout(5) <= \LEDout[5]~output_o\;

ww_LEDout(6) <= \LEDout[6]~output_o\;

ww_LEDout(7) <= \LEDout[7]~output_o\;

ww_DIGITindex(0) <= \DIGITindex[0]~output_o\;

ww_DIGITindex(1) <= \DIGITindex[1]~output_o\;

ww_DIGITindex(2) <= \DIGITindex[2]~output_o\;

ww_DIGITindex(3) <= \DIGITindex[3]~output_o\;
END structure;


