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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/22/2016 01:07:50"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	blink01 IS
    PORT (
	clk : IN std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	sw0 : IN std_logic
	);
END blink01;

-- Design Ports Information
-- led0	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 12mA
-- led1	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 12mA
-- led2	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 12mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw0	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF blink01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cnt[6]~28_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \cnt[17]~50_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \cnt[22]~60_combout\ : std_logic;
SIGNAL \cnt[23]~63\ : std_logic;
SIGNAL \cnt[24]~64_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \sw0~combout\ : std_logic;
SIGNAL \cnt[3]~23\ : std_logic;
SIGNAL \cnt[4]~24_combout\ : std_logic;
SIGNAL \cnt[3]~22_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cnt[4]~25\ : std_logic;
SIGNAL \cnt[5]~26_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \cnt[5]~27\ : std_logic;
SIGNAL \cnt[6]~29\ : std_logic;
SIGNAL \cnt[7]~30_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \cnt[7]~31\ : std_logic;
SIGNAL \cnt[8]~32_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \cnt[8]~33\ : std_logic;
SIGNAL \cnt[9]~34_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \cnt[9]~35\ : std_logic;
SIGNAL \cnt[10]~36_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \cnt[10]~37\ : std_logic;
SIGNAL \cnt[11]~39\ : std_logic;
SIGNAL \cnt[12]~41\ : std_logic;
SIGNAL \cnt[13]~42_combout\ : std_logic;
SIGNAL \cnt[12]~40_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cnt[13]~43\ : std_logic;
SIGNAL \cnt[14]~44_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \cnt[14]~45\ : std_logic;
SIGNAL \cnt[15]~47\ : std_logic;
SIGNAL \cnt[16]~49\ : std_logic;
SIGNAL \cnt[17]~51\ : std_logic;
SIGNAL \cnt[18]~53\ : std_logic;
SIGNAL \cnt[19]~54_combout\ : std_logic;
SIGNAL \cnt[18]~52_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cnt[19]~55\ : std_logic;
SIGNAL \cnt[20]~56_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \cnt[20]~57\ : std_logic;
SIGNAL \cnt[21]~58_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \cnt[21]~59\ : std_logic;
SIGNAL \cnt[22]~61\ : std_logic;
SIGNAL \cnt[23]~62_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \cnt[16]~48_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \cnt[15]~46_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \cnt[11]~38_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \blink~0_combout\ : std_logic;
SIGNAL \blink~regout\ : std_logic;
SIGNAL \led1~0_combout\ : std_logic;
SIGNAL \led1~reg0_regout\ : std_logic;
SIGNAL cnt : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_blink~regout\ : std_logic;

BEGIN

ww_clk <= clk;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
ww_sw0 <= sw0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_blink~regout\ <= NOT \blink~regout\;

-- Location: LCFF_X2_Y6_N17
\cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[6]~28_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LCFF_X2_Y5_N7
\cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[17]~50_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17));

-- Location: LCFF_X2_Y5_N21
\cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[24]~64_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(24));

-- Location: LCFF_X2_Y5_N17
\cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[22]~60_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22));

-- Location: LCCOMB_X1_Y6_N10
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt(1) & (!\Add0~1\)) # (!cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y6_N12
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt(2) & (\Add0~3\ $ (GND))) # (!cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y6_N14
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(3) & (!\Add0~5\)) # (!cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y6_N20
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt(6) & (\Add0~11\ $ (GND))) # (!cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X2_Y6_N16
\cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[6]~28_combout\ = (\Add0~12_combout\ & ((\sw0~combout\ & (!\cnt[5]~27\)) # (!\sw0~combout\ & (\cnt[5]~27\ & VCC)))) # (!\Add0~12_combout\ & ((\sw0~combout\ & ((\cnt[5]~27\) # (GND))) # (!\sw0~combout\ & (!\cnt[5]~27\))))
-- \cnt[6]~29\ = CARRY((\Add0~12_combout\ & (\sw0~combout\ & !\cnt[5]~27\)) # (!\Add0~12_combout\ & ((\sw0~combout\) # (!\cnt[5]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \sw0~combout\,
	datad => VCC,
	cin => \cnt[5]~27\,
	combout => \cnt[6]~28_combout\,
	cout => \cnt[6]~29\);

-- Location: LCCOMB_X1_Y6_N30
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt(11) & (!\Add0~21\)) # (!cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X1_Y5_N0
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt(12) & (\Add0~23\ $ (GND))) # (!cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X1_Y5_N2
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt(13) & (!\Add0~25\)) # (!cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X1_Y5_N8
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt(16) & (\Add0~31\ $ (GND))) # (!cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X1_Y5_N10
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt(17) & (!\Add0~33\)) # (!cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X1_Y5_N12
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt(18) & (\Add0~35\ $ (GND))) # (!cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X2_Y5_N6
\cnt[17]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[17]~50_combout\ = (\Add0~34_combout\ & (\cnt[16]~49\ $ (GND))) # (!\Add0~34_combout\ & (!\cnt[16]~49\ & VCC))
-- \cnt[17]~51\ = CARRY((\Add0~34_combout\ & !\cnt[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => VCC,
	cin => \cnt[16]~49\,
	combout => \cnt[17]~50_combout\,
	cout => \cnt[17]~51\);

-- Location: LCCOMB_X1_Y5_N14
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt(19) & (!\Add0~37\)) # (!cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X1_Y5_N20
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt(22) & (\Add0~43\ $ (GND))) # (!cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X1_Y5_N22
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt(23) & (!\Add0~45\)) # (!cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X1_Y5_N24
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!cnt(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X2_Y5_N16
\cnt[22]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[22]~60_combout\ = (\Add0~44_combout\ & (!\cnt[21]~59\)) # (!\Add0~44_combout\ & ((\cnt[21]~59\) # (GND)))
-- \cnt[22]~61\ = CARRY((!\cnt[21]~59\) # (!\Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datad => VCC,
	cin => \cnt[21]~59\,
	combout => \cnt[22]~60_combout\,
	cout => \cnt[22]~61\);

-- Location: LCCOMB_X2_Y5_N18
\cnt[23]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[23]~62_combout\ = (\Add0~46_combout\ & (\cnt[22]~61\ $ (GND))) # (!\Add0~46_combout\ & (!\cnt[22]~61\ & VCC))
-- \cnt[23]~63\ = CARRY((\Add0~46_combout\ & !\cnt[22]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \cnt[22]~61\,
	combout => \cnt[23]~62_combout\,
	cout => \cnt[23]~63\);

-- Location: LCCOMB_X2_Y5_N20
\cnt[24]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[24]~64_combout\ = \cnt[23]~63\ $ (\Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~48_combout\,
	cin => \cnt[23]~63\,
	combout => \cnt[24]~64_combout\);

-- Location: LCFF_X1_Y6_N13
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCFF_X1_Y6_N11
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X1_Y6_N0
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(0) & (cnt(3) & (cnt(1) & cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(1),
	datad => cnt(2),
	combout => \Equal0~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\sw0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw0,
	combout => \sw0~combout\);

-- Location: LCCOMB_X2_Y6_N10
\cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[3]~22_combout\ = (\Add0~6_combout\ & (\sw0~combout\ $ (GND))) # (!\Add0~6_combout\ & (!\sw0~combout\ & VCC))
-- \cnt[3]~23\ = CARRY((\Add0~6_combout\ & !\sw0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \sw0~combout\,
	datad => VCC,
	combout => \cnt[3]~22_combout\,
	cout => \cnt[3]~23\);

-- Location: LCCOMB_X2_Y6_N12
\cnt[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[4]~24_combout\ = (\Add0~8_combout\ & (!\cnt[3]~23\)) # (!\Add0~8_combout\ & ((\cnt[3]~23\) # (GND)))
-- \cnt[4]~25\ = CARRY((!\cnt[3]~23\) # (!\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \cnt[3]~23\,
	combout => \cnt[4]~24_combout\,
	cout => \cnt[4]~25\);

-- Location: LCFF_X2_Y6_N13
\cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[4]~24_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LCFF_X1_Y6_N5
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \cnt[3]~22_combout\,
	sclr => \Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X1_Y6_N8
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCFF_X1_Y6_N9
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X1_Y6_N16
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt(4) & (\Add0~7\ $ (GND))) # (!cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y6_N14
\cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[5]~26_combout\ = ((\sw0~combout\ $ (\Add0~10_combout\ $ (\cnt[4]~25\)))) # (GND)
-- \cnt[5]~27\ = CARRY((\sw0~combout\ & (\Add0~10_combout\ & !\cnt[4]~25\)) # (!\sw0~combout\ & ((\Add0~10_combout\) # (!\cnt[4]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \cnt[4]~25\,
	combout => \cnt[5]~26_combout\,
	cout => \cnt[5]~27\);

-- Location: LCFF_X2_Y6_N15
\cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[5]~26_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LCCOMB_X1_Y6_N18
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt(5) & (!\Add0~9\)) # (!cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X2_Y6_N18
\cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[7]~30_combout\ = ((\sw0~combout\ $ (\Add0~14_combout\ $ (\cnt[6]~29\)))) # (GND)
-- \cnt[7]~31\ = CARRY((\sw0~combout\ & (\Add0~14_combout\ & !\cnt[6]~29\)) # (!\sw0~combout\ & ((\Add0~14_combout\) # (!\cnt[6]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \cnt[6]~29\,
	combout => \cnt[7]~30_combout\,
	cout => \cnt[7]~31\);

-- Location: LCFF_X2_Y6_N19
\cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[7]~30_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LCCOMB_X1_Y6_N22
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt(7) & (!\Add0~13\)) # (!cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X2_Y6_N20
\cnt[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[8]~32_combout\ = (\sw0~combout\ & ((\Add0~16_combout\ & (!\cnt[7]~31\)) # (!\Add0~16_combout\ & ((\cnt[7]~31\) # (GND))))) # (!\sw0~combout\ & ((\Add0~16_combout\ & (\cnt[7]~31\ & VCC)) # (!\Add0~16_combout\ & (!\cnt[7]~31\))))
-- \cnt[8]~33\ = CARRY((\sw0~combout\ & ((!\cnt[7]~31\) # (!\Add0~16_combout\))) # (!\sw0~combout\ & (!\Add0~16_combout\ & !\cnt[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \cnt[7]~31\,
	combout => \cnt[8]~32_combout\,
	cout => \cnt[8]~33\);

-- Location: LCFF_X2_Y6_N21
\cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[8]~32_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8));

-- Location: LCCOMB_X1_Y6_N24
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt(8) & (\Add0~15\ $ (GND))) # (!cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X2_Y6_N22
\cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[9]~34_combout\ = ((\sw0~combout\ $ (\Add0~18_combout\ $ (\cnt[8]~33\)))) # (GND)
-- \cnt[9]~35\ = CARRY((\sw0~combout\ & (\Add0~18_combout\ & !\cnt[8]~33\)) # (!\sw0~combout\ & ((\Add0~18_combout\) # (!\cnt[8]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~combout\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \cnt[8]~33\,
	combout => \cnt[9]~34_combout\,
	cout => \cnt[9]~35\);

-- Location: LCFF_X2_Y6_N23
\cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[9]~34_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LCCOMB_X1_Y6_N26
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt(9) & (!\Add0~17\)) # (!cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X2_Y6_N24
\cnt[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[10]~36_combout\ = (\Add0~20_combout\ & (!\cnt[9]~35\)) # (!\Add0~20_combout\ & ((\cnt[9]~35\) # (GND)))
-- \cnt[10]~37\ = CARRY((!\cnt[9]~35\) # (!\Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \cnt[9]~35\,
	combout => \cnt[10]~36_combout\,
	cout => \cnt[10]~37\);

-- Location: LCFF_X2_Y6_N25
\cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[10]~36_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LCCOMB_X1_Y6_N28
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt(10) & (\Add0~19\ $ (GND))) # (!cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X2_Y6_N26
\cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[11]~38_combout\ = (\Add0~22_combout\ & (\cnt[10]~37\ $ (GND))) # (!\Add0~22_combout\ & (!\cnt[10]~37\ & VCC))
-- \cnt[11]~39\ = CARRY((\Add0~22_combout\ & !\cnt[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datad => VCC,
	cin => \cnt[10]~37\,
	combout => \cnt[11]~38_combout\,
	cout => \cnt[11]~39\);

-- Location: LCCOMB_X2_Y6_N28
\cnt[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[12]~40_combout\ = (\Add0~24_combout\ & (!\cnt[11]~39\)) # (!\Add0~24_combout\ & ((\cnt[11]~39\) # (GND)))
-- \cnt[12]~41\ = CARRY((!\cnt[11]~39\) # (!\Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datad => VCC,
	cin => \cnt[11]~39\,
	combout => \cnt[12]~40_combout\,
	cout => \cnt[12]~41\);

-- Location: LCCOMB_X2_Y6_N30
\cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[13]~42_combout\ = (\Add0~26_combout\ & (\cnt[12]~41\ $ (GND))) # (!\Add0~26_combout\ & (!\cnt[12]~41\ & VCC))
-- \cnt[13]~43\ = CARRY((\Add0~26_combout\ & !\cnt[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => VCC,
	cin => \cnt[12]~41\,
	combout => \cnt[13]~42_combout\,
	cout => \cnt[13]~43\);

-- Location: LCFF_X2_Y6_N31
\cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[13]~42_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13));

-- Location: LCFF_X2_Y6_N29
\cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[12]~40_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12));

-- Location: LCCOMB_X1_Y5_N4
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt(14) & (\Add0~27\ $ (GND))) # (!cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X2_Y5_N0
\cnt[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[14]~44_combout\ = (\Add0~28_combout\ & (!\cnt[13]~43\)) # (!\Add0~28_combout\ & ((\cnt[13]~43\) # (GND)))
-- \cnt[14]~45\ = CARRY((!\cnt[13]~43\) # (!\Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \cnt[13]~43\,
	combout => \cnt[14]~44_combout\,
	cout => \cnt[14]~45\);

-- Location: LCFF_X2_Y5_N1
\cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[14]~44_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LCCOMB_X1_Y5_N6
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt(15) & (!\Add0~29\)) # (!cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X2_Y5_N2
\cnt[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[15]~46_combout\ = (\Add0~30_combout\ & (\cnt[14]~45\ $ (GND))) # (!\Add0~30_combout\ & (!\cnt[14]~45\ & VCC))
-- \cnt[15]~47\ = CARRY((\Add0~30_combout\ & !\cnt[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \cnt[14]~45\,
	combout => \cnt[15]~46_combout\,
	cout => \cnt[15]~47\);

-- Location: LCCOMB_X2_Y5_N4
\cnt[16]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[16]~48_combout\ = (\Add0~32_combout\ & (!\cnt[15]~47\)) # (!\Add0~32_combout\ & ((\cnt[15]~47\) # (GND)))
-- \cnt[16]~49\ = CARRY((!\cnt[15]~47\) # (!\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => VCC,
	cin => \cnt[15]~47\,
	combout => \cnt[16]~48_combout\,
	cout => \cnt[16]~49\);

-- Location: LCCOMB_X2_Y5_N8
\cnt[18]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[18]~52_combout\ = (\Add0~36_combout\ & (!\cnt[17]~51\)) # (!\Add0~36_combout\ & ((\cnt[17]~51\) # (GND)))
-- \cnt[18]~53\ = CARRY((!\cnt[17]~51\) # (!\Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datad => VCC,
	cin => \cnt[17]~51\,
	combout => \cnt[18]~52_combout\,
	cout => \cnt[18]~53\);

-- Location: LCCOMB_X2_Y5_N10
\cnt[19]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[19]~54_combout\ = (\Add0~38_combout\ & (\cnt[18]~53\ $ (GND))) # (!\Add0~38_combout\ & (!\cnt[18]~53\ & VCC))
-- \cnt[19]~55\ = CARRY((\Add0~38_combout\ & !\cnt[18]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datad => VCC,
	cin => \cnt[18]~53\,
	combout => \cnt[19]~54_combout\,
	cout => \cnt[19]~55\);

-- Location: LCFF_X2_Y5_N11
\cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[19]~54_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19));

-- Location: LCFF_X2_Y5_N9
\cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[18]~52_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18));

-- Location: LCCOMB_X1_Y5_N16
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt(20) & (\Add0~39\ $ (GND))) # (!cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X2_Y5_N12
\cnt[20]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[20]~56_combout\ = (\Add0~40_combout\ & (!\cnt[19]~55\)) # (!\Add0~40_combout\ & ((\cnt[19]~55\) # (GND)))
-- \cnt[20]~57\ = CARRY((!\cnt[19]~55\) # (!\Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \cnt[19]~55\,
	combout => \cnt[20]~56_combout\,
	cout => \cnt[20]~57\);

-- Location: LCFF_X2_Y5_N13
\cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[20]~56_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(20));

-- Location: LCCOMB_X1_Y5_N18
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt(21) & (!\Add0~41\)) # (!cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X2_Y5_N14
\cnt[21]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[21]~58_combout\ = (\Add0~42_combout\ & (\cnt[20]~57\ $ (GND))) # (!\Add0~42_combout\ & (!\cnt[20]~57\ & VCC))
-- \cnt[21]~59\ = CARRY((\Add0~42_combout\ & !\cnt[20]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \cnt[20]~57\,
	combout => \cnt[21]~58_combout\,
	cout => \cnt[21]~59\);

-- Location: LCFF_X2_Y5_N15
\cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[21]~58_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21));

-- Location: LCFF_X2_Y5_N19
\cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[23]~62_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23));

-- Location: LCCOMB_X2_Y5_N28
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (cnt(22) & (!cnt(23) & (cnt(21) & cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(23),
	datac => cnt(21),
	datad => cnt(20),
	combout => \Equal0~6_combout\);

-- Location: LCFF_X2_Y5_N5
\cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[16]~48_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LCCOMB_X2_Y5_N26
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!cnt(17) & (cnt(18) & (cnt(16) & cnt(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(19),
	combout => \Equal0~5_combout\);

-- Location: LCFF_X2_Y5_N3
\cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[15]~46_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15));

-- Location: LCCOMB_X2_Y6_N0
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (cnt(13) & (cnt(12) & (cnt(14) & !cnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(12),
	datac => cnt(14),
	datad => cnt(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y6_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt(6) & (!cnt(7) & (cnt(5) & cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(7),
	datac => cnt(5),
	datad => cnt(4),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X2_Y6_N27
\cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[11]~38_combout\,
	sclr => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LCCOMB_X2_Y6_N2
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt(8) & (!cnt(9) & (!cnt(10) & cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datab => cnt(9),
	datac => cnt(10),
	datad => cnt(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X2_Y6_N6
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y6_N8
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (cnt(24) & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X1_Y6_N6
\blink~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink~0_combout\ = \Equal0~7_combout\ $ (\blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \blink~regout\,
	combout => \blink~0_combout\);

-- Location: LCFF_X1_Y6_N7
blink : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blink~regout\);

-- Location: LCCOMB_X1_Y11_N20
\led1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led1~0_combout\ = !\sw0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw0~combout\,
	combout => \led1~0_combout\);

-- Location: LCFF_X1_Y11_N21
\led1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1~reg0_regout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 12mA
\led0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \blink~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led0);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 12mA
\led1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led1~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 12mA
\led2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_blink~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2);
END structure;


