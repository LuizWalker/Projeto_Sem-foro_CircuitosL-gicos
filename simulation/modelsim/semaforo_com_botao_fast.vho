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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "01/17/2020 15:07:45"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	semaforo_com_botao IS
    PORT (
	clock : IN std_logic;
	botao : IN std_logic;
	buzzer : OUT std_logic;
	tvm : OUT std_logic;
	tam : OUT std_logic;
	tvd : OUT std_logic;
	pvm : OUT std_logic;
	pvd : OUT std_logic
	);
END semaforo_com_botao;

-- Design Ports Information
-- buzzer	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tvm	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tam	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tvd	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pvm	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pvd	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- botao	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF semaforo_com_botao IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_botao : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_tvm : std_logic;
SIGNAL ww_tam : std_logic;
SIGNAL ww_tvd : std_logic;
SIGNAL ww_pvm : std_logic;
SIGNAL ww_pvd : std_logic;
SIGNAL \divisorDeClock|div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisorDeClock|Add0~0_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~1\ : std_logic;
SIGNAL \divisorDeClock|Add0~2_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~3\ : std_logic;
SIGNAL \divisorDeClock|Add0~4_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~5\ : std_logic;
SIGNAL \divisorDeClock|Add0~6_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~7\ : std_logic;
SIGNAL \divisorDeClock|Add0~8_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~9\ : std_logic;
SIGNAL \divisorDeClock|Add0~10_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~11\ : std_logic;
SIGNAL \divisorDeClock|Add0~12_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~13\ : std_logic;
SIGNAL \divisorDeClock|Add0~14_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~15\ : std_logic;
SIGNAL \divisorDeClock|Add0~16_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~17\ : std_logic;
SIGNAL \divisorDeClock|Add0~18_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~19\ : std_logic;
SIGNAL \divisorDeClock|Add0~20_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~21\ : std_logic;
SIGNAL \divisorDeClock|Add0~22_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~23\ : std_logic;
SIGNAL \divisorDeClock|Add0~24_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~25\ : std_logic;
SIGNAL \divisorDeClock|Add0~26_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~27\ : std_logic;
SIGNAL \divisorDeClock|Add0~28_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~29\ : std_logic;
SIGNAL \divisorDeClock|Add0~30_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~31\ : std_logic;
SIGNAL \divisorDeClock|Add0~32_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~33\ : std_logic;
SIGNAL \divisorDeClock|Add0~34_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~35\ : std_logic;
SIGNAL \divisorDeClock|Add0~36_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~37\ : std_logic;
SIGNAL \divisorDeClock|Add0~38_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~39\ : std_logic;
SIGNAL \divisorDeClock|Add0~40_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~41\ : std_logic;
SIGNAL \divisorDeClock|Add0~42_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~43\ : std_logic;
SIGNAL \divisorDeClock|Add0~44_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~45\ : std_logic;
SIGNAL \divisorDeClock|Add0~46_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~47\ : std_logic;
SIGNAL \divisorDeClock|Add0~48_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~49\ : std_logic;
SIGNAL \divisorDeClock|Add0~50_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~51\ : std_logic;
SIGNAL \divisorDeClock|Add0~52_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~53\ : std_logic;
SIGNAL \divisorDeClock|Add0~54_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~55\ : std_logic;
SIGNAL \divisorDeClock|Add0~56_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~57\ : std_logic;
SIGNAL \divisorDeClock|Add0~58_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~59\ : std_logic;
SIGNAL \divisorDeClock|Add0~60_combout\ : std_logic;
SIGNAL \divisorDeClock|Add0~61\ : std_logic;
SIGNAL \divisorDeClock|Add0~62_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_pedestre_vermelho~0_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_amarelo~1_combout\ : std_logic;
SIGNAL \divisorDeClock|div~regout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~0_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~1_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~2_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~3_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~4_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~5_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~6_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~7_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~8_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~9_combout\ : std_logic;
SIGNAL \divisorDeClock|Equal0~10_combout\ : std_logic;
SIGNAL \divisorDeClock|div~0_combout\ : std_logic;
SIGNAL \divisorDeClock|count~0_combout\ : std_logic;
SIGNAL \divisorDeClock|count~1_combout\ : std_logic;
SIGNAL \divisorDeClock|count~2_combout\ : std_logic;
SIGNAL \divisorDeClock|count~3_combout\ : std_logic;
SIGNAL \divisorDeClock|count~4_combout\ : std_logic;
SIGNAL \divisorDeClock|count~5_combout\ : std_logic;
SIGNAL \divisorDeClock|count~6_combout\ : std_logic;
SIGNAL \divisorDeClock|count~7_combout\ : std_logic;
SIGNAL \divisorDeClock|count~8_combout\ : std_logic;
SIGNAL \divisorDeClock|count~9_combout\ : std_logic;
SIGNAL \divisorDeClock|count~10_combout\ : std_logic;
SIGNAL \divisorDeClock|count~11_combout\ : std_logic;
SIGNAL \divisorDeClock|count~12_combout\ : std_logic;
SIGNAL \divisorDeClock|count~13_combout\ : std_logic;
SIGNAL \divisorDeClock|count~14_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \divisorDeClock|div~clkctrl_outclk\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[0]~7\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[1]~8_combout\ : std_logic;
SIGNAL \botao~combout\ : std_logic;
SIGNAL \contadorDe1Hz|process_0~0_combout\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[1]~9\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[2]~11\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[3]~12_combout\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[3]~13\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[4]~14_combout\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[4]~15\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[5]~16_combout\ : std_logic;
SIGNAL \contadorDe1Hz|LessThan0~0_combout\ : std_logic;
SIGNAL \contadorDe1Hz|LessThan0~1_combout\ : std_logic;
SIGNAL \contadorDe1Hz|LessThan0~1_wirecell_combout\ : std_logic;
SIGNAL \contadorDe1Hz|trava~regout\ : std_logic;
SIGNAL \contadorDe1Hz|q[5]~0_combout\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[2]~10_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|LessThan6~0_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|comb~4_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_verde~0_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|LessThan3~0_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_pedestre_vermelho~1_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|comb~5_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|LessThan3~1_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_pedestre_vermelho~2_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_pedestre_verde~0_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_pedestre_verde~combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_amarelo~0_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|comb~8_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|comb~9_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_vermelho~combout\ : std_logic;
SIGNAL \luzesDoSemaforo|LessThan6~1_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|comb~6_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_amarelo~2_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_amarelo~combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_verde~1_combout\ : std_logic;
SIGNAL \contadorDe1Hz|qtemp[0]~6_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_verde~2_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_verde~3_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|comb~7_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_verde~combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_transito_vermelho~0_combout\ : std_logic;
SIGNAL \luzesDoSemaforo|led_pedestre_vermelho~combout\ : std_logic;
SIGNAL \divisorDeClock|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \contadorDe1Hz|qtemp\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_botao <= botao;
buzzer <= ww_buzzer;
tvm <= ww_tvm;
tam <= ww_tam;
tvd <= ww_tvd;
pvm <= ww_pvm;
pvd <= ww_pvd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divisorDeClock|div~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \divisorDeClock|div~regout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: LCCOMB_X41_Y30_N0
\divisorDeClock|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~0_combout\ = \divisorDeClock|count\(0) $ (GND)
-- \divisorDeClock|Add0~1\ = CARRY(!\divisorDeClock|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(0),
	datad => VCC,
	combout => \divisorDeClock|Add0~0_combout\,
	cout => \divisorDeClock|Add0~1\);

-- Location: LCCOMB_X41_Y30_N2
\divisorDeClock|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~2_combout\ = (\divisorDeClock|count\(1) & (!\divisorDeClock|Add0~1\)) # (!\divisorDeClock|count\(1) & ((\divisorDeClock|Add0~1\) # (GND)))
-- \divisorDeClock|Add0~3\ = CARRY((!\divisorDeClock|Add0~1\) # (!\divisorDeClock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(1),
	datad => VCC,
	cin => \divisorDeClock|Add0~1\,
	combout => \divisorDeClock|Add0~2_combout\,
	cout => \divisorDeClock|Add0~3\);

-- Location: LCCOMB_X41_Y30_N4
\divisorDeClock|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~4_combout\ = (\divisorDeClock|count\(2) & (\divisorDeClock|Add0~3\ $ (GND))) # (!\divisorDeClock|count\(2) & (!\divisorDeClock|Add0~3\ & VCC))
-- \divisorDeClock|Add0~5\ = CARRY((\divisorDeClock|count\(2) & !\divisorDeClock|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(2),
	datad => VCC,
	cin => \divisorDeClock|Add0~3\,
	combout => \divisorDeClock|Add0~4_combout\,
	cout => \divisorDeClock|Add0~5\);

-- Location: LCCOMB_X41_Y30_N6
\divisorDeClock|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~6_combout\ = (\divisorDeClock|count\(3) & (!\divisorDeClock|Add0~5\)) # (!\divisorDeClock|count\(3) & ((\divisorDeClock|Add0~5\) # (GND)))
-- \divisorDeClock|Add0~7\ = CARRY((!\divisorDeClock|Add0~5\) # (!\divisorDeClock|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(3),
	datad => VCC,
	cin => \divisorDeClock|Add0~5\,
	combout => \divisorDeClock|Add0~6_combout\,
	cout => \divisorDeClock|Add0~7\);

-- Location: LCCOMB_X41_Y30_N8
\divisorDeClock|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~8_combout\ = (\divisorDeClock|count\(4) & (\divisorDeClock|Add0~7\ $ (GND))) # (!\divisorDeClock|count\(4) & (!\divisorDeClock|Add0~7\ & VCC))
-- \divisorDeClock|Add0~9\ = CARRY((\divisorDeClock|count\(4) & !\divisorDeClock|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(4),
	datad => VCC,
	cin => \divisorDeClock|Add0~7\,
	combout => \divisorDeClock|Add0~8_combout\,
	cout => \divisorDeClock|Add0~9\);

-- Location: LCCOMB_X41_Y30_N10
\divisorDeClock|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~10_combout\ = (\divisorDeClock|count\(5) & (!\divisorDeClock|Add0~9\)) # (!\divisorDeClock|count\(5) & ((\divisorDeClock|Add0~9\) # (GND)))
-- \divisorDeClock|Add0~11\ = CARRY((!\divisorDeClock|Add0~9\) # (!\divisorDeClock|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(5),
	datad => VCC,
	cin => \divisorDeClock|Add0~9\,
	combout => \divisorDeClock|Add0~10_combout\,
	cout => \divisorDeClock|Add0~11\);

-- Location: LCCOMB_X41_Y30_N12
\divisorDeClock|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~12_combout\ = (\divisorDeClock|count\(6) & (\divisorDeClock|Add0~11\ $ (GND))) # (!\divisorDeClock|count\(6) & (!\divisorDeClock|Add0~11\ & VCC))
-- \divisorDeClock|Add0~13\ = CARRY((\divisorDeClock|count\(6) & !\divisorDeClock|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(6),
	datad => VCC,
	cin => \divisorDeClock|Add0~11\,
	combout => \divisorDeClock|Add0~12_combout\,
	cout => \divisorDeClock|Add0~13\);

-- Location: LCCOMB_X41_Y30_N14
\divisorDeClock|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~14_combout\ = (\divisorDeClock|count\(7) & (!\divisorDeClock|Add0~13\)) # (!\divisorDeClock|count\(7) & ((\divisorDeClock|Add0~13\) # (GND)))
-- \divisorDeClock|Add0~15\ = CARRY((!\divisorDeClock|Add0~13\) # (!\divisorDeClock|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(7),
	datad => VCC,
	cin => \divisorDeClock|Add0~13\,
	combout => \divisorDeClock|Add0~14_combout\,
	cout => \divisorDeClock|Add0~15\);

-- Location: LCCOMB_X41_Y30_N16
\divisorDeClock|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~16_combout\ = (\divisorDeClock|count\(8) & (\divisorDeClock|Add0~15\ $ (GND))) # (!\divisorDeClock|count\(8) & (!\divisorDeClock|Add0~15\ & VCC))
-- \divisorDeClock|Add0~17\ = CARRY((\divisorDeClock|count\(8) & !\divisorDeClock|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(8),
	datad => VCC,
	cin => \divisorDeClock|Add0~15\,
	combout => \divisorDeClock|Add0~16_combout\,
	cout => \divisorDeClock|Add0~17\);

-- Location: LCCOMB_X41_Y30_N18
\divisorDeClock|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~18_combout\ = (\divisorDeClock|count\(9) & (!\divisorDeClock|Add0~17\)) # (!\divisorDeClock|count\(9) & ((\divisorDeClock|Add0~17\) # (GND)))
-- \divisorDeClock|Add0~19\ = CARRY((!\divisorDeClock|Add0~17\) # (!\divisorDeClock|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(9),
	datad => VCC,
	cin => \divisorDeClock|Add0~17\,
	combout => \divisorDeClock|Add0~18_combout\,
	cout => \divisorDeClock|Add0~19\);

-- Location: LCCOMB_X41_Y30_N20
\divisorDeClock|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~20_combout\ = (\divisorDeClock|count\(10) & (\divisorDeClock|Add0~19\ $ (GND))) # (!\divisorDeClock|count\(10) & (!\divisorDeClock|Add0~19\ & VCC))
-- \divisorDeClock|Add0~21\ = CARRY((\divisorDeClock|count\(10) & !\divisorDeClock|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(10),
	datad => VCC,
	cin => \divisorDeClock|Add0~19\,
	combout => \divisorDeClock|Add0~20_combout\,
	cout => \divisorDeClock|Add0~21\);

-- Location: LCCOMB_X41_Y30_N22
\divisorDeClock|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~22_combout\ = (\divisorDeClock|count\(11) & (!\divisorDeClock|Add0~21\)) # (!\divisorDeClock|count\(11) & ((\divisorDeClock|Add0~21\) # (GND)))
-- \divisorDeClock|Add0~23\ = CARRY((!\divisorDeClock|Add0~21\) # (!\divisorDeClock|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(11),
	datad => VCC,
	cin => \divisorDeClock|Add0~21\,
	combout => \divisorDeClock|Add0~22_combout\,
	cout => \divisorDeClock|Add0~23\);

-- Location: LCCOMB_X41_Y30_N24
\divisorDeClock|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~24_combout\ = (\divisorDeClock|count\(12) & (\divisorDeClock|Add0~23\ $ (GND))) # (!\divisorDeClock|count\(12) & (!\divisorDeClock|Add0~23\ & VCC))
-- \divisorDeClock|Add0~25\ = CARRY((\divisorDeClock|count\(12) & !\divisorDeClock|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(12),
	datad => VCC,
	cin => \divisorDeClock|Add0~23\,
	combout => \divisorDeClock|Add0~24_combout\,
	cout => \divisorDeClock|Add0~25\);

-- Location: LCCOMB_X41_Y30_N26
\divisorDeClock|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~26_combout\ = (\divisorDeClock|count\(13) & (!\divisorDeClock|Add0~25\)) # (!\divisorDeClock|count\(13) & ((\divisorDeClock|Add0~25\) # (GND)))
-- \divisorDeClock|Add0~27\ = CARRY((!\divisorDeClock|Add0~25\) # (!\divisorDeClock|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(13),
	datad => VCC,
	cin => \divisorDeClock|Add0~25\,
	combout => \divisorDeClock|Add0~26_combout\,
	cout => \divisorDeClock|Add0~27\);

-- Location: LCCOMB_X41_Y30_N28
\divisorDeClock|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~28_combout\ = (\divisorDeClock|count\(14) & (\divisorDeClock|Add0~27\ $ (GND))) # (!\divisorDeClock|count\(14) & (!\divisorDeClock|Add0~27\ & VCC))
-- \divisorDeClock|Add0~29\ = CARRY((\divisorDeClock|count\(14) & !\divisorDeClock|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(14),
	datad => VCC,
	cin => \divisorDeClock|Add0~27\,
	combout => \divisorDeClock|Add0~28_combout\,
	cout => \divisorDeClock|Add0~29\);

-- Location: LCCOMB_X41_Y30_N30
\divisorDeClock|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~30_combout\ = (\divisorDeClock|count\(15) & (!\divisorDeClock|Add0~29\)) # (!\divisorDeClock|count\(15) & ((\divisorDeClock|Add0~29\) # (GND)))
-- \divisorDeClock|Add0~31\ = CARRY((!\divisorDeClock|Add0~29\) # (!\divisorDeClock|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(15),
	datad => VCC,
	cin => \divisorDeClock|Add0~29\,
	combout => \divisorDeClock|Add0~30_combout\,
	cout => \divisorDeClock|Add0~31\);

-- Location: LCCOMB_X41_Y29_N0
\divisorDeClock|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~32_combout\ = (\divisorDeClock|count\(16) & (\divisorDeClock|Add0~31\ $ (GND))) # (!\divisorDeClock|count\(16) & (!\divisorDeClock|Add0~31\ & VCC))
-- \divisorDeClock|Add0~33\ = CARRY((\divisorDeClock|count\(16) & !\divisorDeClock|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(16),
	datad => VCC,
	cin => \divisorDeClock|Add0~31\,
	combout => \divisorDeClock|Add0~32_combout\,
	cout => \divisorDeClock|Add0~33\);

-- Location: LCCOMB_X41_Y29_N2
\divisorDeClock|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~34_combout\ = (\divisorDeClock|count\(17) & (!\divisorDeClock|Add0~33\)) # (!\divisorDeClock|count\(17) & ((\divisorDeClock|Add0~33\) # (GND)))
-- \divisorDeClock|Add0~35\ = CARRY((!\divisorDeClock|Add0~33\) # (!\divisorDeClock|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(17),
	datad => VCC,
	cin => \divisorDeClock|Add0~33\,
	combout => \divisorDeClock|Add0~34_combout\,
	cout => \divisorDeClock|Add0~35\);

-- Location: LCCOMB_X41_Y29_N4
\divisorDeClock|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~36_combout\ = (\divisorDeClock|count\(18) & (\divisorDeClock|Add0~35\ $ (GND))) # (!\divisorDeClock|count\(18) & (!\divisorDeClock|Add0~35\ & VCC))
-- \divisorDeClock|Add0~37\ = CARRY((\divisorDeClock|count\(18) & !\divisorDeClock|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(18),
	datad => VCC,
	cin => \divisorDeClock|Add0~35\,
	combout => \divisorDeClock|Add0~36_combout\,
	cout => \divisorDeClock|Add0~37\);

-- Location: LCCOMB_X41_Y29_N6
\divisorDeClock|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~38_combout\ = (\divisorDeClock|count\(19) & (!\divisorDeClock|Add0~37\)) # (!\divisorDeClock|count\(19) & ((\divisorDeClock|Add0~37\) # (GND)))
-- \divisorDeClock|Add0~39\ = CARRY((!\divisorDeClock|Add0~37\) # (!\divisorDeClock|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(19),
	datad => VCC,
	cin => \divisorDeClock|Add0~37\,
	combout => \divisorDeClock|Add0~38_combout\,
	cout => \divisorDeClock|Add0~39\);

-- Location: LCCOMB_X41_Y29_N8
\divisorDeClock|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~40_combout\ = (\divisorDeClock|count\(20) & (\divisorDeClock|Add0~39\ $ (GND))) # (!\divisorDeClock|count\(20) & (!\divisorDeClock|Add0~39\ & VCC))
-- \divisorDeClock|Add0~41\ = CARRY((\divisorDeClock|count\(20) & !\divisorDeClock|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(20),
	datad => VCC,
	cin => \divisorDeClock|Add0~39\,
	combout => \divisorDeClock|Add0~40_combout\,
	cout => \divisorDeClock|Add0~41\);

-- Location: LCCOMB_X41_Y29_N10
\divisorDeClock|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~42_combout\ = (\divisorDeClock|count\(21) & (!\divisorDeClock|Add0~41\)) # (!\divisorDeClock|count\(21) & ((\divisorDeClock|Add0~41\) # (GND)))
-- \divisorDeClock|Add0~43\ = CARRY((!\divisorDeClock|Add0~41\) # (!\divisorDeClock|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(21),
	datad => VCC,
	cin => \divisorDeClock|Add0~41\,
	combout => \divisorDeClock|Add0~42_combout\,
	cout => \divisorDeClock|Add0~43\);

-- Location: LCCOMB_X41_Y29_N12
\divisorDeClock|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~44_combout\ = (\divisorDeClock|count\(22) & (\divisorDeClock|Add0~43\ $ (GND))) # (!\divisorDeClock|count\(22) & (!\divisorDeClock|Add0~43\ & VCC))
-- \divisorDeClock|Add0~45\ = CARRY((\divisorDeClock|count\(22) & !\divisorDeClock|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(22),
	datad => VCC,
	cin => \divisorDeClock|Add0~43\,
	combout => \divisorDeClock|Add0~44_combout\,
	cout => \divisorDeClock|Add0~45\);

-- Location: LCCOMB_X41_Y29_N14
\divisorDeClock|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~46_combout\ = (\divisorDeClock|count\(23) & (!\divisorDeClock|Add0~45\)) # (!\divisorDeClock|count\(23) & ((\divisorDeClock|Add0~45\) # (GND)))
-- \divisorDeClock|Add0~47\ = CARRY((!\divisorDeClock|Add0~45\) # (!\divisorDeClock|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(23),
	datad => VCC,
	cin => \divisorDeClock|Add0~45\,
	combout => \divisorDeClock|Add0~46_combout\,
	cout => \divisorDeClock|Add0~47\);

-- Location: LCCOMB_X41_Y29_N16
\divisorDeClock|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~48_combout\ = (\divisorDeClock|count\(24) & (\divisorDeClock|Add0~47\ $ (GND))) # (!\divisorDeClock|count\(24) & (!\divisorDeClock|Add0~47\ & VCC))
-- \divisorDeClock|Add0~49\ = CARRY((\divisorDeClock|count\(24) & !\divisorDeClock|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(24),
	datad => VCC,
	cin => \divisorDeClock|Add0~47\,
	combout => \divisorDeClock|Add0~48_combout\,
	cout => \divisorDeClock|Add0~49\);

-- Location: LCCOMB_X41_Y29_N18
\divisorDeClock|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~50_combout\ = (\divisorDeClock|count\(25) & (!\divisorDeClock|Add0~49\)) # (!\divisorDeClock|count\(25) & ((\divisorDeClock|Add0~49\) # (GND)))
-- \divisorDeClock|Add0~51\ = CARRY((!\divisorDeClock|Add0~49\) # (!\divisorDeClock|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(25),
	datad => VCC,
	cin => \divisorDeClock|Add0~49\,
	combout => \divisorDeClock|Add0~50_combout\,
	cout => \divisorDeClock|Add0~51\);

-- Location: LCCOMB_X41_Y29_N20
\divisorDeClock|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~52_combout\ = (\divisorDeClock|count\(26) & (\divisorDeClock|Add0~51\ $ (GND))) # (!\divisorDeClock|count\(26) & (!\divisorDeClock|Add0~51\ & VCC))
-- \divisorDeClock|Add0~53\ = CARRY((\divisorDeClock|count\(26) & !\divisorDeClock|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(26),
	datad => VCC,
	cin => \divisorDeClock|Add0~51\,
	combout => \divisorDeClock|Add0~52_combout\,
	cout => \divisorDeClock|Add0~53\);

-- Location: LCCOMB_X41_Y29_N22
\divisorDeClock|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~54_combout\ = (\divisorDeClock|count\(27) & (!\divisorDeClock|Add0~53\)) # (!\divisorDeClock|count\(27) & ((\divisorDeClock|Add0~53\) # (GND)))
-- \divisorDeClock|Add0~55\ = CARRY((!\divisorDeClock|Add0~53\) # (!\divisorDeClock|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(27),
	datad => VCC,
	cin => \divisorDeClock|Add0~53\,
	combout => \divisorDeClock|Add0~54_combout\,
	cout => \divisorDeClock|Add0~55\);

-- Location: LCCOMB_X41_Y29_N24
\divisorDeClock|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~56_combout\ = (\divisorDeClock|count\(28) & (\divisorDeClock|Add0~55\ $ (GND))) # (!\divisorDeClock|count\(28) & (!\divisorDeClock|Add0~55\ & VCC))
-- \divisorDeClock|Add0~57\ = CARRY((\divisorDeClock|count\(28) & !\divisorDeClock|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|count\(28),
	datad => VCC,
	cin => \divisorDeClock|Add0~55\,
	combout => \divisorDeClock|Add0~56_combout\,
	cout => \divisorDeClock|Add0~57\);

-- Location: LCCOMB_X41_Y29_N26
\divisorDeClock|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~58_combout\ = (\divisorDeClock|count\(29) & (!\divisorDeClock|Add0~57\)) # (!\divisorDeClock|count\(29) & ((\divisorDeClock|Add0~57\) # (GND)))
-- \divisorDeClock|Add0~59\ = CARRY((!\divisorDeClock|Add0~57\) # (!\divisorDeClock|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(29),
	datad => VCC,
	cin => \divisorDeClock|Add0~57\,
	combout => \divisorDeClock|Add0~58_combout\,
	cout => \divisorDeClock|Add0~59\);

-- Location: LCCOMB_X41_Y29_N28
\divisorDeClock|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~60_combout\ = (\divisorDeClock|count\(30) & (\divisorDeClock|Add0~59\ $ (GND))) # (!\divisorDeClock|count\(30) & (!\divisorDeClock|Add0~59\ & VCC))
-- \divisorDeClock|Add0~61\ = CARRY((\divisorDeClock|count\(30) & !\divisorDeClock|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|count\(30),
	datad => VCC,
	cin => \divisorDeClock|Add0~59\,
	combout => \divisorDeClock|Add0~60_combout\,
	cout => \divisorDeClock|Add0~61\);

-- Location: LCCOMB_X41_Y29_N30
\divisorDeClock|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Add0~62_combout\ = \divisorDeClock|Add0~61\ $ (\divisorDeClock|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisorDeClock|count\(31),
	cin => \divisorDeClock|Add0~61\,
	combout => \divisorDeClock|Add0~62_combout\);

-- Location: LCCOMB_X62_Y21_N10
\luzesDoSemaforo|led_pedestre_vermelho~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_pedestre_vermelho~0_combout\ = (((!\botao~combout\ & !\contadorDe1Hz|trava~regout\)) # (!\contadorDe1Hz|qtemp\(4))) # (!\contadorDe1Hz|qtemp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botao~combout\,
	datab => \contadorDe1Hz|qtemp\(3),
	datac => \contadorDe1Hz|trava~regout\,
	datad => \contadorDe1Hz|qtemp\(4),
	combout => \luzesDoSemaforo|led_pedestre_vermelho~0_combout\);

-- Location: LCCOMB_X63_Y21_N2
\luzesDoSemaforo|led_transito_amarelo~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_amarelo~1_combout\ = (\contadorDe1Hz|q[5]~0_combout\) # ((!\contadorDe1Hz|process_0~0_combout\ & (\contadorDe1Hz|qtemp\(3) & !\luzesDoSemaforo|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|process_0~0_combout\,
	datab => \contadorDe1Hz|qtemp\(3),
	datac => \luzesDoSemaforo|LessThan3~1_combout\,
	datad => \contadorDe1Hz|q[5]~0_combout\,
	combout => \luzesDoSemaforo|led_transito_amarelo~1_combout\);

-- Location: LCFF_X40_Y30_N21
\divisorDeClock|div\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|div~regout\);

-- Location: LCFF_X40_Y30_N31
\divisorDeClock|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(0));

-- Location: LCFF_X41_Y30_N3
\divisorDeClock|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(1));

-- Location: LCFF_X41_Y30_N5
\divisorDeClock|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(2));

-- Location: LCFF_X41_Y30_N7
\divisorDeClock|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(3));

-- Location: LCCOMB_X40_Y30_N24
\divisorDeClock|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~0_combout\ = (!\divisorDeClock|Add0~6_combout\ & (!\divisorDeClock|Add0~2_combout\ & (!\divisorDeClock|Add0~0_combout\ & !\divisorDeClock|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~6_combout\,
	datab => \divisorDeClock|Add0~2_combout\,
	datac => \divisorDeClock|Add0~0_combout\,
	datad => \divisorDeClock|Add0~4_combout\,
	combout => \divisorDeClock|Equal0~0_combout\);

-- Location: LCFF_X40_Y29_N29
\divisorDeClock|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(6));

-- Location: LCFF_X41_Y30_N11
\divisorDeClock|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(5));

-- Location: LCFF_X41_Y30_N9
\divisorDeClock|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(4));

-- Location: LCFF_X41_Y30_N15
\divisorDeClock|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(7));

-- Location: LCCOMB_X40_Y30_N28
\divisorDeClock|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~1_combout\ = (!\divisorDeClock|Add0~10_combout\ & (!\divisorDeClock|Add0~8_combout\ & (\divisorDeClock|Add0~12_combout\ & !\divisorDeClock|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~10_combout\,
	datab => \divisorDeClock|Add0~8_combout\,
	datac => \divisorDeClock|Add0~12_combout\,
	datad => \divisorDeClock|Add0~14_combout\,
	combout => \divisorDeClock|Equal0~1_combout\);

-- Location: LCFF_X40_Y29_N3
\divisorDeClock|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(11));

-- Location: LCFF_X41_Y30_N21
\divisorDeClock|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(10));

-- Location: LCFF_X41_Y30_N19
\divisorDeClock|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(9));

-- Location: LCFF_X41_Y30_N17
\divisorDeClock|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(8));

-- Location: LCCOMB_X40_Y30_N14
\divisorDeClock|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~2_combout\ = (!\divisorDeClock|Add0~16_combout\ & (!\divisorDeClock|Add0~18_combout\ & (!\divisorDeClock|Add0~20_combout\ & \divisorDeClock|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~16_combout\,
	datab => \divisorDeClock|Add0~18_combout\,
	datac => \divisorDeClock|Add0~20_combout\,
	datad => \divisorDeClock|Add0~22_combout\,
	combout => \divisorDeClock|Equal0~2_combout\);

-- Location: LCFF_X40_Y29_N17
\divisorDeClock|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(12));

-- Location: LCFF_X40_Y29_N23
\divisorDeClock|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(13));

-- Location: LCFF_X40_Y30_N7
\divisorDeClock|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(14));

-- Location: LCFF_X41_Y30_N31
\divisorDeClock|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(15));

-- Location: LCCOMB_X40_Y30_N22
\divisorDeClock|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~3_combout\ = (\divisorDeClock|Add0~26_combout\ & (\divisorDeClock|Add0~24_combout\ & (\divisorDeClock|Add0~28_combout\ & !\divisorDeClock|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~26_combout\,
	datab => \divisorDeClock|Add0~24_combout\,
	datac => \divisorDeClock|Add0~28_combout\,
	datad => \divisorDeClock|Add0~30_combout\,
	combout => \divisorDeClock|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y30_N16
\divisorDeClock|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~4_combout\ = (\divisorDeClock|Equal0~0_combout\ & (\divisorDeClock|Equal0~1_combout\ & (\divisorDeClock|Equal0~2_combout\ & \divisorDeClock|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Equal0~0_combout\,
	datab => \divisorDeClock|Equal0~1_combout\,
	datac => \divisorDeClock|Equal0~2_combout\,
	datad => \divisorDeClock|Equal0~3_combout\,
	combout => \divisorDeClock|Equal0~4_combout\);

-- Location: LCFF_X40_Y29_N9
\divisorDeClock|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(16));

-- Location: LCFF_X40_Y29_N27
\divisorDeClock|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(18));

-- Location: LCFF_X41_Y29_N3
\divisorDeClock|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(17));

-- Location: LCFF_X40_Y29_N5
\divisorDeClock|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(19));

-- Location: LCCOMB_X40_Y29_N6
\divisorDeClock|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~5_combout\ = (!\divisorDeClock|Add0~34_combout\ & (\divisorDeClock|Add0~32_combout\ & (\divisorDeClock|Add0~38_combout\ & \divisorDeClock|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~34_combout\,
	datab => \divisorDeClock|Add0~32_combout\,
	datac => \divisorDeClock|Add0~38_combout\,
	datad => \divisorDeClock|Add0~36_combout\,
	combout => \divisorDeClock|Equal0~5_combout\);

-- Location: LCFF_X40_Y29_N25
\divisorDeClock|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(20));

-- Location: LCFF_X40_Y29_N15
\divisorDeClock|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(21));

-- Location: LCCOMB_X40_Y29_N12
\divisorDeClock|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~6_combout\ = (\divisorDeClock|Add0~42_combout\ & \divisorDeClock|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisorDeClock|Add0~42_combout\,
	datad => \divisorDeClock|Add0~40_combout\,
	combout => \divisorDeClock|Equal0~6_combout\);

-- Location: LCFF_X40_Y29_N31
\divisorDeClock|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(22));

-- Location: LCFF_X41_Y29_N15
\divisorDeClock|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(23));

-- Location: LCCOMB_X40_Y29_N20
\divisorDeClock|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~7_combout\ = (\divisorDeClock|Equal0~6_combout\ & (\divisorDeClock|Add0~44_combout\ & (!\divisorDeClock|Add0~46_combout\ & \divisorDeClock|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Equal0~6_combout\,
	datab => \divisorDeClock|Add0~44_combout\,
	datac => \divisorDeClock|Add0~46_combout\,
	datad => \divisorDeClock|Equal0~5_combout\,
	combout => \divisorDeClock|Equal0~7_combout\);

-- Location: LCFF_X40_Y30_N1
\divisorDeClock|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(24));

-- Location: LCFF_X41_Y29_N19
\divisorDeClock|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(25));

-- Location: LCFF_X41_Y29_N21
\divisorDeClock|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(26));

-- Location: LCFF_X41_Y29_N23
\divisorDeClock|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(27));

-- Location: LCCOMB_X40_Y29_N18
\divisorDeClock|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~8_combout\ = (\divisorDeClock|Add0~48_combout\ & (!\divisorDeClock|Add0~50_combout\ & (!\divisorDeClock|Add0~52_combout\ & !\divisorDeClock|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~48_combout\,
	datab => \divisorDeClock|Add0~50_combout\,
	datac => \divisorDeClock|Add0~52_combout\,
	datad => \divisorDeClock|Add0~54_combout\,
	combout => \divisorDeClock|Equal0~8_combout\);

-- Location: LCFF_X41_Y29_N25
\divisorDeClock|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(28));

-- Location: LCFF_X41_Y29_N27
\divisorDeClock|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(29));

-- Location: LCFF_X41_Y29_N29
\divisorDeClock|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(30));

-- Location: LCFF_X41_Y29_N31
\divisorDeClock|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \divisorDeClock|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisorDeClock|count\(31));

-- Location: LCCOMB_X40_Y29_N0
\divisorDeClock|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~9_combout\ = (!\divisorDeClock|Add0~58_combout\ & (!\divisorDeClock|Add0~60_combout\ & (!\divisorDeClock|Add0~56_combout\ & !\divisorDeClock|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~58_combout\,
	datab => \divisorDeClock|Add0~60_combout\,
	datac => \divisorDeClock|Add0~56_combout\,
	datad => \divisorDeClock|Add0~62_combout\,
	combout => \divisorDeClock|Equal0~9_combout\);

-- Location: LCCOMB_X40_Y30_N26
\divisorDeClock|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|Equal0~10_combout\ = (\divisorDeClock|Equal0~4_combout\ & (\divisorDeClock|Equal0~9_combout\ & (\divisorDeClock|Equal0~8_combout\ & \divisorDeClock|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Equal0~4_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~8_combout\,
	datad => \divisorDeClock|Equal0~7_combout\,
	combout => \divisorDeClock|Equal0~10_combout\);

-- Location: LCCOMB_X40_Y30_N20
\divisorDeClock|div~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|div~0_combout\ = \divisorDeClock|div~regout\ $ (\divisorDeClock|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisorDeClock|div~regout\,
	datad => \divisorDeClock|Equal0~10_combout\,
	combout => \divisorDeClock|div~0_combout\);

-- Location: LCCOMB_X40_Y30_N18
\divisorDeClock|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~0_combout\ = (\divisorDeClock|Equal0~4_combout\ & \divisorDeClock|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Equal0~4_combout\,
	datac => \divisorDeClock|Equal0~8_combout\,
	combout => \divisorDeClock|count~0_combout\);

-- Location: LCCOMB_X40_Y30_N30
\divisorDeClock|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~1_combout\ = (!\divisorDeClock|Add0~0_combout\ & (((!\divisorDeClock|count~0_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~0_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~0_combout\,
	combout => \divisorDeClock|count~1_combout\);

-- Location: LCCOMB_X40_Y29_N10
\divisorDeClock|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~2_combout\ = (!\divisorDeClock|Equal0~8_combout\) # (!\divisorDeClock|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisorDeClock|Equal0~4_combout\,
	datad => \divisorDeClock|Equal0~8_combout\,
	combout => \divisorDeClock|count~2_combout\);

-- Location: LCCOMB_X40_Y29_N28
\divisorDeClock|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~3_combout\ = (\divisorDeClock|Add0~12_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~12_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~3_combout\);

-- Location: LCCOMB_X40_Y29_N2
\divisorDeClock|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~4_combout\ = (\divisorDeClock|Add0~22_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~22_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~4_combout\);

-- Location: LCCOMB_X40_Y29_N16
\divisorDeClock|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~5_combout\ = (\divisorDeClock|Add0~24_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~24_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~5_combout\);

-- Location: LCCOMB_X40_Y29_N22
\divisorDeClock|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~6_combout\ = (\divisorDeClock|Add0~26_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~26_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~6_combout\);

-- Location: LCCOMB_X40_Y30_N6
\divisorDeClock|count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~7_combout\ = (\divisorDeClock|Add0~28_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~28_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~7_combout\);

-- Location: LCCOMB_X40_Y29_N8
\divisorDeClock|count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~8_combout\ = (\divisorDeClock|Add0~32_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~9_combout\)) # (!\divisorDeClock|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Equal0~7_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Add0~32_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~8_combout\);

-- Location: LCCOMB_X40_Y29_N26
\divisorDeClock|count~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~9_combout\ = (\divisorDeClock|Add0~36_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~36_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~9_combout\);

-- Location: LCCOMB_X40_Y29_N4
\divisorDeClock|count~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~10_combout\ = (\divisorDeClock|Add0~38_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~38_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~10_combout\);

-- Location: LCCOMB_X40_Y29_N24
\divisorDeClock|count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~11_combout\ = (\divisorDeClock|Add0~40_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~7_combout\)) # (!\divisorDeClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Add0~40_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Equal0~7_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~11_combout\);

-- Location: LCCOMB_X40_Y29_N14
\divisorDeClock|count~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~12_combout\ = (\divisorDeClock|Add0~42_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~9_combout\)) # (!\divisorDeClock|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Equal0~7_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Add0~42_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~12_combout\);

-- Location: LCCOMB_X40_Y29_N30
\divisorDeClock|count~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~13_combout\ = (\divisorDeClock|Add0~44_combout\ & (((\divisorDeClock|count~2_combout\) # (!\divisorDeClock|Equal0~9_combout\)) # (!\divisorDeClock|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisorDeClock|Equal0~7_combout\,
	datab => \divisorDeClock|Equal0~9_combout\,
	datac => \divisorDeClock|Add0~44_combout\,
	datad => \divisorDeClock|count~2_combout\,
	combout => \divisorDeClock|count~13_combout\);

-- Location: LCCOMB_X40_Y30_N0
\divisorDeClock|count~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisorDeClock|count~14_combout\ = (\divisorDeClock|Add0~48_combout\ & !\divisorDeClock|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisorDeClock|Add0~48_combout\,
	datad => \divisorDeClock|Equal0~10_combout\,
	combout => \divisorDeClock|count~14_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G8
\divisorDeClock|div~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisorDeClock|div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisorDeClock|div~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y21_N12
\contadorDe1Hz|qtemp[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|qtemp[0]~6_combout\ = \contadorDe1Hz|qtemp\(0) $ (VCC)
-- \contadorDe1Hz|qtemp[0]~7\ = CARRY(\contadorDe1Hz|qtemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(0),
	datad => VCC,
	combout => \contadorDe1Hz|qtemp[0]~6_combout\,
	cout => \contadorDe1Hz|qtemp[0]~7\);

-- Location: LCCOMB_X62_Y21_N14
\contadorDe1Hz|qtemp[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|qtemp[1]~8_combout\ = (\contadorDe1Hz|qtemp\(1) & (!\contadorDe1Hz|qtemp[0]~7\)) # (!\contadorDe1Hz|qtemp\(1) & ((\contadorDe1Hz|qtemp[0]~7\) # (GND)))
-- \contadorDe1Hz|qtemp[1]~9\ = CARRY((!\contadorDe1Hz|qtemp[0]~7\) # (!\contadorDe1Hz|qtemp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contadorDe1Hz|qtemp\(1),
	datad => VCC,
	cin => \contadorDe1Hz|qtemp[0]~7\,
	combout => \contadorDe1Hz|qtemp[1]~8_combout\,
	cout => \contadorDe1Hz|qtemp[1]~9\);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\botao~I\ : cycloneii_io
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
	padio => ww_botao,
	combout => \botao~combout\);

-- Location: LCCOMB_X62_Y21_N8
\contadorDe1Hz|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|process_0~0_combout\ = (!\botao~combout\ & !\contadorDe1Hz|trava~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \botao~combout\,
	datad => \contadorDe1Hz|trava~regout\,
	combout => \contadorDe1Hz|process_0~0_combout\);

-- Location: LCFF_X62_Y21_N15
\contadorDe1Hz|qtemp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisorDeClock|div~clkctrl_outclk\,
	datain => \contadorDe1Hz|qtemp[1]~8_combout\,
	aclr => \contadorDe1Hz|process_0~0_combout\,
	sclr => \contadorDe1Hz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadorDe1Hz|qtemp\(1));

-- Location: LCCOMB_X62_Y21_N16
\contadorDe1Hz|qtemp[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|qtemp[2]~10_combout\ = (\contadorDe1Hz|qtemp\(2) & (\contadorDe1Hz|qtemp[1]~9\ $ (GND))) # (!\contadorDe1Hz|qtemp\(2) & (!\contadorDe1Hz|qtemp[1]~9\ & VCC))
-- \contadorDe1Hz|qtemp[2]~11\ = CARRY((\contadorDe1Hz|qtemp\(2) & !\contadorDe1Hz|qtemp[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(2),
	datad => VCC,
	cin => \contadorDe1Hz|qtemp[1]~9\,
	combout => \contadorDe1Hz|qtemp[2]~10_combout\,
	cout => \contadorDe1Hz|qtemp[2]~11\);

-- Location: LCCOMB_X62_Y21_N18
\contadorDe1Hz|qtemp[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|qtemp[3]~12_combout\ = (\contadorDe1Hz|qtemp\(3) & (!\contadorDe1Hz|qtemp[2]~11\)) # (!\contadorDe1Hz|qtemp\(3) & ((\contadorDe1Hz|qtemp[2]~11\) # (GND)))
-- \contadorDe1Hz|qtemp[3]~13\ = CARRY((!\contadorDe1Hz|qtemp[2]~11\) # (!\contadorDe1Hz|qtemp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contadorDe1Hz|qtemp\(3),
	datad => VCC,
	cin => \contadorDe1Hz|qtemp[2]~11\,
	combout => \contadorDe1Hz|qtemp[3]~12_combout\,
	cout => \contadorDe1Hz|qtemp[3]~13\);

-- Location: LCFF_X62_Y21_N19
\contadorDe1Hz|qtemp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisorDeClock|div~clkctrl_outclk\,
	datain => \contadorDe1Hz|qtemp[3]~12_combout\,
	aclr => \contadorDe1Hz|process_0~0_combout\,
	sclr => \contadorDe1Hz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadorDe1Hz|qtemp\(3));

-- Location: LCCOMB_X62_Y21_N20
\contadorDe1Hz|qtemp[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|qtemp[4]~14_combout\ = (\contadorDe1Hz|qtemp\(4) & (\contadorDe1Hz|qtemp[3]~13\ $ (GND))) # (!\contadorDe1Hz|qtemp\(4) & (!\contadorDe1Hz|qtemp[3]~13\ & VCC))
-- \contadorDe1Hz|qtemp[4]~15\ = CARRY((\contadorDe1Hz|qtemp\(4) & !\contadorDe1Hz|qtemp[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contadorDe1Hz|qtemp\(4),
	datad => VCC,
	cin => \contadorDe1Hz|qtemp[3]~13\,
	combout => \contadorDe1Hz|qtemp[4]~14_combout\,
	cout => \contadorDe1Hz|qtemp[4]~15\);

-- Location: LCFF_X62_Y21_N21
\contadorDe1Hz|qtemp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisorDeClock|div~clkctrl_outclk\,
	datain => \contadorDe1Hz|qtemp[4]~14_combout\,
	aclr => \contadorDe1Hz|process_0~0_combout\,
	sclr => \contadorDe1Hz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadorDe1Hz|qtemp\(4));

-- Location: LCCOMB_X62_Y21_N22
\contadorDe1Hz|qtemp[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|qtemp[5]~16_combout\ = \contadorDe1Hz|qtemp[4]~15\ $ (\contadorDe1Hz|qtemp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \contadorDe1Hz|qtemp\(5),
	cin => \contadorDe1Hz|qtemp[4]~15\,
	combout => \contadorDe1Hz|qtemp[5]~16_combout\);

-- Location: LCFF_X62_Y21_N23
\contadorDe1Hz|qtemp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisorDeClock|div~clkctrl_outclk\,
	datain => \contadorDe1Hz|qtemp[5]~16_combout\,
	aclr => \contadorDe1Hz|process_0~0_combout\,
	sclr => \contadorDe1Hz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadorDe1Hz|qtemp\(5));

-- Location: LCCOMB_X62_Y21_N0
\contadorDe1Hz|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|LessThan0~0_combout\ = (!\contadorDe1Hz|qtemp\(4) & (((!\contadorDe1Hz|qtemp\(3)) # (!\contadorDe1Hz|qtemp\(1))) # (!\contadorDe1Hz|qtemp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(2),
	datab => \contadorDe1Hz|qtemp\(1),
	datac => \contadorDe1Hz|qtemp\(4),
	datad => \contadorDe1Hz|qtemp\(3),
	combout => \contadorDe1Hz|LessThan0~0_combout\);

-- Location: LCCOMB_X62_Y21_N6
\contadorDe1Hz|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|LessThan0~1_combout\ = (\contadorDe1Hz|qtemp\(5) & !\contadorDe1Hz|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contadorDe1Hz|qtemp\(5),
	datad => \contadorDe1Hz|LessThan0~0_combout\,
	combout => \contadorDe1Hz|LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y21_N28
\contadorDe1Hz|LessThan0~1_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|LessThan0~1_wirecell_combout\ = !\contadorDe1Hz|LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contadorDe1Hz|LessThan0~1_combout\,
	combout => \contadorDe1Hz|LessThan0~1_wirecell_combout\);

-- Location: LCFF_X62_Y21_N29
\contadorDe1Hz|trava\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisorDeClock|div~clkctrl_outclk\,
	datain => \contadorDe1Hz|LessThan0~1_wirecell_combout\,
	aclr => \contadorDe1Hz|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadorDe1Hz|trava~regout\);

-- Location: LCCOMB_X62_Y21_N24
\contadorDe1Hz|q[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadorDe1Hz|q[5]~0_combout\ = (\contadorDe1Hz|qtemp\(5) & ((\contadorDe1Hz|trava~regout\) # (\botao~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contadorDe1Hz|trava~regout\,
	datac => \botao~combout\,
	datad => \contadorDe1Hz|qtemp\(5),
	combout => \contadorDe1Hz|q[5]~0_combout\);

-- Location: LCFF_X62_Y21_N17
\contadorDe1Hz|qtemp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisorDeClock|div~clkctrl_outclk\,
	datain => \contadorDe1Hz|qtemp[2]~10_combout\,
	aclr => \contadorDe1Hz|process_0~0_combout\,
	sclr => \contadorDe1Hz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadorDe1Hz|qtemp\(2));

-- Location: LCCOMB_X62_Y21_N30
\luzesDoSemaforo|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|LessThan6~0_combout\ = (\contadorDe1Hz|qtemp\(2) & (\contadorDe1Hz|qtemp\(3) & ((\botao~combout\) # (\contadorDe1Hz|trava~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botao~combout\,
	datab => \contadorDe1Hz|trava~regout\,
	datac => \contadorDe1Hz|qtemp\(2),
	datad => \contadorDe1Hz|qtemp\(3),
	combout => \luzesDoSemaforo|LessThan6~0_combout\);

-- Location: LCCOMB_X63_Y21_N14
\luzesDoSemaforo|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|comb~4_combout\ = (\contadorDe1Hz|qtemp\(5) & (!\contadorDe1Hz|process_0~0_combout\ & ((\contadorDe1Hz|qtemp\(4)) # (\luzesDoSemaforo|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(4),
	datab => \contadorDe1Hz|qtemp\(5),
	datac => \luzesDoSemaforo|LessThan6~0_combout\,
	datad => \contadorDe1Hz|process_0~0_combout\,
	combout => \luzesDoSemaforo|comb~4_combout\);

-- Location: LCCOMB_X63_Y21_N26
\luzesDoSemaforo|led_transito_verde~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_verde~0_combout\ = (\contadorDe1Hz|qtemp\(2) & ((\contadorDe1Hz|qtemp\(0)) # (\contadorDe1Hz|qtemp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(0),
	datac => \contadorDe1Hz|qtemp\(2),
	datad => \contadorDe1Hz|qtemp\(1),
	combout => \luzesDoSemaforo|led_transito_verde~0_combout\);

-- Location: LCCOMB_X63_Y21_N8
\luzesDoSemaforo|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|LessThan3~0_combout\ = ((\contadorDe1Hz|process_0~0_combout\) # ((!\contadorDe1Hz|qtemp\(1) & !\contadorDe1Hz|qtemp\(2)))) # (!\contadorDe1Hz|qtemp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(1),
	datab => \contadorDe1Hz|qtemp\(3),
	datac => \contadorDe1Hz|qtemp\(2),
	datad => \contadorDe1Hz|process_0~0_combout\,
	combout => \luzesDoSemaforo|LessThan3~0_combout\);

-- Location: LCCOMB_X63_Y21_N12
\luzesDoSemaforo|led_pedestre_vermelho~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_pedestre_vermelho~1_combout\ = (\luzesDoSemaforo|led_pedestre_vermelho~0_combout\) # (((\luzesDoSemaforo|LessThan3~0_combout\) # (\contadorDe1Hz|process_0~0_combout\)) # (!\luzesDoSemaforo|led_transito_verde~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|led_pedestre_vermelho~0_combout\,
	datab => \luzesDoSemaforo|led_transito_verde~0_combout\,
	datac => \luzesDoSemaforo|LessThan3~0_combout\,
	datad => \contadorDe1Hz|process_0~0_combout\,
	combout => \luzesDoSemaforo|led_pedestre_vermelho~1_combout\);

-- Location: LCCOMB_X63_Y21_N10
\luzesDoSemaforo|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|comb~5_combout\ = (\luzesDoSemaforo|comb~4_combout\ & (\luzesDoSemaforo|LessThan6~1_combout\)) # (!\luzesDoSemaforo|comb~4_combout\ & (((!\contadorDe1Hz|q[5]~0_combout\ & \luzesDoSemaforo|led_pedestre_vermelho~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|LessThan6~1_combout\,
	datab => \contadorDe1Hz|q[5]~0_combout\,
	datac => \luzesDoSemaforo|comb~4_combout\,
	datad => \luzesDoSemaforo|led_pedestre_vermelho~1_combout\,
	combout => \luzesDoSemaforo|comb~5_combout\);

-- Location: LCCOMB_X63_Y21_N20
\luzesDoSemaforo|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|LessThan3~1_combout\ = (!\contadorDe1Hz|qtemp\(2) & !\contadorDe1Hz|qtemp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadorDe1Hz|qtemp\(2),
	datad => \contadorDe1Hz|qtemp\(1),
	combout => \luzesDoSemaforo|LessThan3~1_combout\);

-- Location: LCCOMB_X63_Y21_N18
\luzesDoSemaforo|led_pedestre_vermelho~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_pedestre_vermelho~2_combout\ = (\contadorDe1Hz|process_0~0_combout\) # (((\luzesDoSemaforo|LessThan3~1_combout\) # (!\luzesDoSemaforo|led_transito_verde~0_combout\)) # (!\contadorDe1Hz|qtemp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|process_0~0_combout\,
	datab => \contadorDe1Hz|qtemp\(3),
	datac => \luzesDoSemaforo|LessThan3~1_combout\,
	datad => \luzesDoSemaforo|led_transito_verde~0_combout\,
	combout => \luzesDoSemaforo|led_pedestre_vermelho~2_combout\);

-- Location: LCCOMB_X63_Y21_N28
\luzesDoSemaforo|led_pedestre_verde~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_pedestre_verde~0_combout\ = (\luzesDoSemaforo|comb~4_combout\) # ((!\contadorDe1Hz|q[5]~0_combout\ & ((\luzesDoSemaforo|led_pedestre_vermelho~0_combout\) # (\luzesDoSemaforo|led_pedestre_vermelho~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|led_pedestre_vermelho~0_combout\,
	datab => \contadorDe1Hz|q[5]~0_combout\,
	datac => \luzesDoSemaforo|comb~4_combout\,
	datad => \luzesDoSemaforo|led_pedestre_vermelho~2_combout\,
	combout => \luzesDoSemaforo|led_pedestre_verde~0_combout\);

-- Location: LCCOMB_X64_Y21_N18
\luzesDoSemaforo|led_pedestre_verde\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_pedestre_verde~combout\ = (!\luzesDoSemaforo|comb~5_combout\ & ((\luzesDoSemaforo|led_pedestre_verde~combout\) # (!\luzesDoSemaforo|led_pedestre_verde~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|comb~5_combout\,
	datab => \luzesDoSemaforo|led_pedestre_verde~0_combout\,
	datad => \luzesDoSemaforo|led_pedestre_verde~combout\,
	combout => \luzesDoSemaforo|led_pedestre_verde~combout\);

-- Location: LCCOMB_X63_Y21_N0
\luzesDoSemaforo|led_transito_amarelo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_amarelo~0_combout\ = (!\contadorDe1Hz|process_0~0_combout\ & (\contadorDe1Hz|qtemp\(4) & ((\contadorDe1Hz|qtemp\(3)) # (\luzesDoSemaforo|led_transito_verde~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|process_0~0_combout\,
	datab => \contadorDe1Hz|qtemp\(3),
	datac => \contadorDe1Hz|qtemp\(4),
	datad => \luzesDoSemaforo|led_transito_verde~0_combout\,
	combout => \luzesDoSemaforo|led_transito_amarelo~0_combout\);

-- Location: LCCOMB_X63_Y21_N24
\luzesDoSemaforo|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|comb~8_combout\ = (\luzesDoSemaforo|led_transito_vermelho~0_combout\ & (!\contadorDe1Hz|q[5]~0_combout\ & ((\luzesDoSemaforo|LessThan3~0_combout\) # (!\luzesDoSemaforo|led_transito_amarelo~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|led_transito_vermelho~0_combout\,
	datab => \contadorDe1Hz|q[5]~0_combout\,
	datac => \luzesDoSemaforo|LessThan3~0_combout\,
	datad => \luzesDoSemaforo|led_transito_amarelo~0_combout\,
	combout => \luzesDoSemaforo|comb~8_combout\);

-- Location: LCCOMB_X63_Y21_N30
\luzesDoSemaforo|comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|comb~9_combout\ = (\luzesDoSemaforo|led_transito_vermelho~0_combout\ & ((\contadorDe1Hz|q[5]~0_combout\) # ((!\luzesDoSemaforo|LessThan3~0_combout\ & \luzesDoSemaforo|led_transito_amarelo~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|led_transito_vermelho~0_combout\,
	datab => \contadorDe1Hz|q[5]~0_combout\,
	datac => \luzesDoSemaforo|LessThan3~0_combout\,
	datad => \luzesDoSemaforo|led_transito_amarelo~0_combout\,
	combout => \luzesDoSemaforo|comb~9_combout\);

-- Location: LCCOMB_X64_Y21_N0
\luzesDoSemaforo|led_transito_vermelho\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_vermelho~combout\ = (!\luzesDoSemaforo|comb~8_combout\ & ((\luzesDoSemaforo|comb~9_combout\) # (\luzesDoSemaforo|led_transito_vermelho~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \luzesDoSemaforo|comb~8_combout\,
	datac => \luzesDoSemaforo|comb~9_combout\,
	datad => \luzesDoSemaforo|led_transito_vermelho~combout\,
	combout => \luzesDoSemaforo|led_transito_vermelho~combout\);

-- Location: LCCOMB_X63_Y21_N16
\luzesDoSemaforo|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|LessThan6~1_combout\ = (!\contadorDe1Hz|qtemp\(4) & ((!\contadorDe1Hz|qtemp\(1)) # (!\luzesDoSemaforo|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(4),
	datac => \luzesDoSemaforo|LessThan6~0_combout\,
	datad => \contadorDe1Hz|qtemp\(1),
	combout => \luzesDoSemaforo|LessThan6~1_combout\);

-- Location: LCCOMB_X64_Y21_N12
\luzesDoSemaforo|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|comb~6_combout\ = (\luzesDoSemaforo|led_transito_amarelo~1_combout\ & ((\luzesDoSemaforo|LessThan6~1_combout\) # ((!\luzesDoSemaforo|comb~4_combout\)))) # (!\luzesDoSemaforo|led_transito_amarelo~1_combout\ & 
-- (!\luzesDoSemaforo|led_transito_amarelo~0_combout\ & ((\luzesDoSemaforo|LessThan6~1_combout\) # (!\luzesDoSemaforo|comb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|led_transito_amarelo~1_combout\,
	datab => \luzesDoSemaforo|LessThan6~1_combout\,
	datac => \luzesDoSemaforo|led_transito_amarelo~0_combout\,
	datad => \luzesDoSemaforo|comb~4_combout\,
	combout => \luzesDoSemaforo|comb~6_combout\);

-- Location: LCCOMB_X64_Y21_N2
\luzesDoSemaforo|led_transito_amarelo~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_amarelo~2_combout\ = (\luzesDoSemaforo|led_transito_amarelo~1_combout\) # (!\luzesDoSemaforo|led_transito_amarelo~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|led_transito_amarelo~1_combout\,
	datac => \luzesDoSemaforo|led_transito_amarelo~0_combout\,
	combout => \luzesDoSemaforo|led_transito_amarelo~2_combout\);

-- Location: LCCOMB_X64_Y21_N6
\luzesDoSemaforo|led_transito_amarelo\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_amarelo~combout\ = (!\luzesDoSemaforo|comb~6_combout\ & ((\luzesDoSemaforo|led_transito_amarelo~combout\) # (!\luzesDoSemaforo|led_transito_amarelo~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|comb~6_combout\,
	datab => \luzesDoSemaforo|led_transito_amarelo~2_combout\,
	datad => \luzesDoSemaforo|led_transito_amarelo~combout\,
	combout => \luzesDoSemaforo|led_transito_amarelo~combout\);

-- Location: LCCOMB_X63_Y21_N4
\luzesDoSemaforo|led_transito_verde~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_verde~1_combout\ = (!\contadorDe1Hz|qtemp\(4) & ((\contadorDe1Hz|qtemp\(0)) # ((\contadorDe1Hz|qtemp\(2)) # (!\contadorDe1Hz|qtemp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(0),
	datab => \contadorDe1Hz|qtemp\(2),
	datac => \contadorDe1Hz|qtemp\(4),
	datad => \contadorDe1Hz|qtemp\(1),
	combout => \luzesDoSemaforo|led_transito_verde~1_combout\);

-- Location: LCFF_X62_Y21_N13
\contadorDe1Hz|qtemp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisorDeClock|div~clkctrl_outclk\,
	datain => \contadorDe1Hz|qtemp[0]~6_combout\,
	aclr => \contadorDe1Hz|process_0~0_combout\,
	sclr => \contadorDe1Hz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadorDe1Hz|qtemp\(0));

-- Location: LCCOMB_X62_Y21_N26
\luzesDoSemaforo|led_transito_verde~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_verde~2_combout\ = (!\contadorDe1Hz|qtemp\(3) & (((!\contadorDe1Hz|qtemp\(1) & !\contadorDe1Hz|qtemp\(0))) # (!\contadorDe1Hz|qtemp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(2),
	datab => \contadorDe1Hz|qtemp\(3),
	datac => \contadorDe1Hz|qtemp\(1),
	datad => \contadorDe1Hz|qtemp\(0),
	combout => \luzesDoSemaforo|led_transito_verde~2_combout\);

-- Location: LCCOMB_X63_Y21_N22
\luzesDoSemaforo|led_transito_verde~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_verde~3_combout\ = (!\contadorDe1Hz|q[5]~0_combout\ & ((\contadorDe1Hz|process_0~0_combout\) # ((\luzesDoSemaforo|led_transito_verde~1_combout\) # (\luzesDoSemaforo|led_transito_verde~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|process_0~0_combout\,
	datab => \contadorDe1Hz|q[5]~0_combout\,
	datac => \luzesDoSemaforo|led_transito_verde~1_combout\,
	datad => \luzesDoSemaforo|led_transito_verde~2_combout\,
	combout => \luzesDoSemaforo|led_transito_verde~3_combout\);

-- Location: LCCOMB_X64_Y21_N16
\luzesDoSemaforo|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|comb~7_combout\ = (!\luzesDoSemaforo|led_transito_verde~3_combout\ & ((\luzesDoSemaforo|LessThan6~1_combout\) # (!\luzesDoSemaforo|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \luzesDoSemaforo|comb~4_combout\,
	datab => \luzesDoSemaforo|led_transito_verde~3_combout\,
	datad => \luzesDoSemaforo|LessThan6~1_combout\,
	combout => \luzesDoSemaforo|comb~7_combout\);

-- Location: LCCOMB_X64_Y21_N28
\luzesDoSemaforo|led_transito_verde\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_verde~combout\ = (!\luzesDoSemaforo|comb~7_combout\ & ((\luzesDoSemaforo|led_transito_verde~3_combout\) # (\luzesDoSemaforo|led_transito_verde~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \luzesDoSemaforo|led_transito_verde~3_combout\,
	datac => \luzesDoSemaforo|comb~7_combout\,
	datad => \luzesDoSemaforo|led_transito_verde~combout\,
	combout => \luzesDoSemaforo|led_transito_verde~combout\);

-- Location: LCCOMB_X63_Y21_N6
\luzesDoSemaforo|led_transito_vermelho~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_transito_vermelho~0_combout\ = ((!\contadorDe1Hz|qtemp\(4) & ((!\contadorDe1Hz|qtemp\(1)) # (!\luzesDoSemaforo|LessThan6~0_combout\)))) # (!\luzesDoSemaforo|comb~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorDe1Hz|qtemp\(4),
	datab => \luzesDoSemaforo|comb~4_combout\,
	datac => \luzesDoSemaforo|LessThan6~0_combout\,
	datad => \contadorDe1Hz|qtemp\(1),
	combout => \luzesDoSemaforo|led_transito_vermelho~0_combout\);

-- Location: LCCOMB_X64_Y21_N10
\luzesDoSemaforo|led_pedestre_vermelho\ : cycloneii_lcell_comb
-- Equation(s):
-- \luzesDoSemaforo|led_pedestre_vermelho~combout\ = (\luzesDoSemaforo|led_pedestre_verde~0_combout\ & ((\luzesDoSemaforo|led_transito_vermelho~0_combout\) # (\luzesDoSemaforo|led_pedestre_vermelho~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \luzesDoSemaforo|led_pedestre_verde~0_combout\,
	datac => \luzesDoSemaforo|led_transito_vermelho~0_combout\,
	datad => \luzesDoSemaforo|led_pedestre_vermelho~combout\,
	combout => \luzesDoSemaforo|led_pedestre_vermelho~combout\);

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\buzzer~I\ : cycloneii_io
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
	datain => \luzesDoSemaforo|led_pedestre_verde~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_buzzer);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tvm~I\ : cycloneii_io
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
	datain => \luzesDoSemaforo|led_transito_vermelho~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tvm);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tam~I\ : cycloneii_io
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
	datain => \luzesDoSemaforo|led_transito_amarelo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tam);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tvd~I\ : cycloneii_io
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
	datain => \luzesDoSemaforo|led_transito_verde~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tvd);

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pvm~I\ : cycloneii_io
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
	datain => \luzesDoSemaforo|led_pedestre_vermelho~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pvm);

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pvd~I\ : cycloneii_io
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
	datain => \luzesDoSemaforo|led_pedestre_verde~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pvd);
END structure;


