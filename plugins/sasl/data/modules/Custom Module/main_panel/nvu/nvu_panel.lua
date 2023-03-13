-- this is NVU panel

-- controls
defineProperty("nvu_param_sel", globalPropertyi("tu154ce/switchers/console/nvu_param_sel")) -- ручка выбора вводимого параметра НВУ. -4 - Z, -3 - S, -2 - Zm, -1 - Sm, 0 - off, 1 - Sn, 2 - Zn, 3 - S, 4 - Z
defineProperty("nvu_turn_sel", globalPropertyi("tu154ce/switchers/console/nvu_turn_sel")) -- ручка выбора радиуса разворота, -1 - принуд, 0 - выкл, 1 - 5, 2 - 10, 3 - 15, 4 - 20, 5 - 25
defineProperty("nvu_power_on", globalPropertyi("tu154ce/switchers/console/nvu_power_on")) -- питание НВУ
defineProperty("nvu_calc_on", globalPropertyi("tu154ce/switchers/console/nvu_calc_on")) -- счисление НВУ
defineProperty("nvu_corr_on", globalPropertyi("tu154ce/switchers/console/nvu_corr_on")) -- коррекция НВУ


defineProperty("nvu_left_btn", globalPropertyi("tu154ce/buttons/nvu/nvu_left_btn")) -- левая кнопка НВУ
defineProperty("nvu_ctr_btn", globalPropertyi("tu154ce/buttons/nvu/nvu_ctr_btn")) -- центр кнопка НВУ
defineProperty("nvu_right_btn", globalPropertyi("tu154ce/buttons/nvu/nvu_right_btn")) -- правая кнопка НВУ

defineProperty("zpu_1_left_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_1_left_btn")) -- левая кнопка ЗПУ
defineProperty("zpu_1_ctr_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_1_ctr_btn")) -- центр кнопка ЗПУ
defineProperty("zpu_1_right_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_1_right_btn")) -- правая кнопка ЗПУ

defineProperty("zpu_2_left_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_2_left_btn")) -- левая кнопка ЗПУ
defineProperty("zpu_2_ctr_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_2_ctr_btn")) -- центр кнопка ЗПУ
defineProperty("zpu_2_right_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_2_right_btn")) -- правая кнопка ЗПУ

-- internal datarefs
defineProperty("current_Z1", globalPropertyf("tu154ce/nvu/current_Z1")) -- Z1
defineProperty("current_S1", globalPropertyf("tu154ce/nvu/current_S1")) -- S1
defineProperty("next_Z1", globalPropertyf("tu154ce/nvu/next_Z1")) -- Z1
defineProperty("next_S1", globalPropertyf("tu154ce/nvu/next_S1")) -- S1

defineProperty("current_Z2", globalPropertyf("tu154ce/nvu/current_Z2")) -- Z2
defineProperty("current_S2", globalPropertyf("tu154ce/nvu/current_S2")) -- S2
defineProperty("next_Z2", globalPropertyf("tu154ce/nvu/next_Z2")) -- Z2
defineProperty("next_S2", globalPropertyf("tu154ce/nvu/next_S2")) -- S2

defineProperty("zpu1", globalPropertyf("tu154ce/nvu/zpu1")) -- ZPU1
defineProperty("zpu2", globalPropertyf("tu154ce/nvu/zpu2")) -- ZPU2


-- gauges - numbers
defineProperty("current_Z1_1", globalPropertyf("tu154ce/nvu/current_Z1_1")) -- Z1
defineProperty("current_Z1_10", globalPropertyf("tu154ce/nvu/current_Z1_10")) -- Z1
defineProperty("current_Z1_100", globalPropertyf("tu154ce/nvu/current_Z1_100")) -- Z1
defineProperty("current_Z1_1000", globalPropertyf("tu154ce/nvu/current_Z1_1000")) -- Z1

defineProperty("current_Z1_min_1", globalPropertyf("tu154ce/nvu/current_Z1_min_1")) -- Z1
defineProperty("current_Z1_min_10", globalPropertyf("tu154ce/nvu/current_Z1_min_10")) -- Z1
defineProperty("current_Z1_min_100", globalPropertyf("tu154ce/nvu/current_Z1_min_100")) -- Z1
defineProperty("current_Z1_min_1000", globalPropertyf("tu154ce/nvu/current_Z1_min_1000")) -- Z1


defineProperty("current_S1_1", globalPropertyf("tu154ce/nvu/current_S1_1")) -- S1
defineProperty("current_S1_10", globalPropertyf("tu154ce/nvu/current_S1_10")) -- S1
defineProperty("current_S1_100", globalPropertyf("tu154ce/nvu/current_S1_100")) -- S1
defineProperty("current_S1_1000", globalPropertyf("tu154ce/nvu/current_S1_1000")) -- S1

defineProperty("current_S1_min_1", globalPropertyf("tu154ce/nvu/current_S1_min_1")) -- S1
defineProperty("current_S1_min_10", globalPropertyf("tu154ce/nvu/current_S1_min_10")) -- S1
defineProperty("current_S1_min_100", globalPropertyf("tu154ce/nvu/current_S1_min_100")) -- S1
defineProperty("current_S1_min_1000", globalPropertyf("tu154ce/nvu/current_S1_min_1000")) -- S1


defineProperty("next_Z1_1", globalPropertyf("tu154ce/nvu/next_Z1_1")) -- Z1
defineProperty("next_Z1_10", globalPropertyf("tu154ce/nvu/next_Z1_10")) -- Z1
defineProperty("next_Z1_100", globalPropertyf("tu154ce/nvu/next_Z1_100")) -- Z1
defineProperty("next_Z1_1000", globalPropertyf("tu154ce/nvu/next_Z1_1000")) -- Z1

defineProperty("next_Z1_min_1", globalPropertyf("tu154ce/nvu/next_Z1_min_1")) -- Z1
defineProperty("next_Z1_min_10", globalPropertyf("tu154ce/nvu/next_Z1_min_10")) -- Z1
defineProperty("next_Z1_min_100", globalPropertyf("tu154ce/nvu/next_Z1_min_100")) -- Z1
defineProperty("next_Z1_min_1000", globalPropertyf("tu154ce/nvu/next_Z1_min_1000")) -- Z1


defineProperty("next_S1_1", globalPropertyf("tu154ce/nvu/next_S1_1")) -- S1
defineProperty("next_S1_10", globalPropertyf("tu154ce/nvu/next_S1_10")) -- S1
defineProperty("next_S1_100", globalPropertyf("tu154ce/nvu/next_S1_100")) -- S1
defineProperty("next_S1_1000", globalPropertyf("tu154ce/nvu/next_S1_1000")) -- S1

defineProperty("next_S1_min_1", globalPropertyf("tu154ce/nvu/next_S1_min_1")) -- S1
defineProperty("next_S1_min_10", globalPropertyf("tu154ce/nvu/next_S1_min_10")) -- S1
defineProperty("next_S1_min_100", globalPropertyf("tu154ce/nvu/next_S1_min_100")) -- S1
defineProperty("next_S1_min_1000", globalPropertyf("tu154ce/nvu/next_S1_min_1000")) -- S1

----
defineProperty("current_Z2_1", globalPropertyf("tu154ce/nvu/current_Z2_1")) -- Z2
defineProperty("current_Z2_10", globalPropertyf("tu154ce/nvu/current_Z2_10")) -- Z2
defineProperty("current_Z2_100", globalPropertyf("tu154ce/nvu/current_Z2_100")) -- Z2
defineProperty("current_Z2_1000", globalPropertyf("tu154ce/nvu/current_Z2_1000")) -- Z2

defineProperty("current_Z2_min_1", globalPropertyf("tu154ce/nvu/current_Z2_min_1")) -- Z2
defineProperty("current_Z2_min_10", globalPropertyf("tu154ce/nvu/current_Z2_min_10")) -- Z2
defineProperty("current_Z2_min_100", globalPropertyf("tu154ce/nvu/current_Z2_min_100")) -- Z2
defineProperty("current_Z2_min_1000", globalPropertyf("tu154ce/nvu/current_Z2_min_1000")) -- Z2


defineProperty("current_S2_1", globalPropertyf("tu154ce/nvu/current_S2_1")) -- S2
defineProperty("current_S2_10", globalPropertyf("tu154ce/nvu/current_S2_10")) -- S2
defineProperty("current_S2_100", globalPropertyf("tu154ce/nvu/current_S2_100")) -- S2
defineProperty("current_S2_1000", globalPropertyf("tu154ce/nvu/current_S2_1000")) -- S2

defineProperty("current_S2_min_1", globalPropertyf("tu154ce/nvu/current_S2_min_1")) -- S2
defineProperty("current_S2_min_10", globalPropertyf("tu154ce/nvu/current_S2_min_10")) -- S2
defineProperty("current_S2_min_100", globalPropertyf("tu154ce/nvu/current_S2_min_100")) -- S2
defineProperty("current_S2_min_1000", globalPropertyf("tu154ce/nvu/current_S2_min_1000")) -- S2


defineProperty("next_Z2_1", globalPropertyf("tu154ce/nvu/next_Z2_1")) -- Z2
defineProperty("next_Z2_10", globalPropertyf("tu154ce/nvu/next_Z2_10")) -- Z2
defineProperty("next_Z2_100", globalPropertyf("tu154ce/nvu/next_Z2_100")) -- Z2
defineProperty("next_Z2_1000", globalPropertyf("tu154ce/nvu/next_Z2_1000")) -- Z2

defineProperty("next_Z2_min_1", globalPropertyf("tu154ce/nvu/next_Z2_min_1")) -- Z2
defineProperty("next_Z2_min_10", globalPropertyf("tu154ce/nvu/next_Z2_min_10")) -- Z2
defineProperty("next_Z2_min_100", globalPropertyf("tu154ce/nvu/next_Z2_min_100")) -- Z2
defineProperty("next_Z2_min_1000", globalPropertyf("tu154ce/nvu/next_Z2_min_1000")) -- Z2


defineProperty("next_S2_1", globalPropertyf("tu154ce/nvu/next_S2_1")) -- S2
defineProperty("next_S2_10", globalPropertyf("tu154ce/nvu/next_S2_10")) -- S2
defineProperty("next_S2_100", globalPropertyf("tu154ce/nvu/next_S2_100")) -- S2
defineProperty("next_S2_1000", globalPropertyf("tu154ce/nvu/next_S2_1000")) -- S2

defineProperty("next_S2_min_1", globalPropertyf("tu154ce/nvu/next_S2_min_1")) -- S2
defineProperty("next_S2_min_10", globalPropertyf("tu154ce/nvu/next_S2_min_10")) -- S2
defineProperty("next_S2_min_100", globalPropertyf("tu154ce/nvu/next_S2_min_100")) -- S2
defineProperty("next_S2_min_1000", globalPropertyf("tu154ce/nvu/next_S2_min_1000")) -- S2

---------
defineProperty("Z1_minus_cap", globalPropertyf("tu154ce/nvu/z1_minus_cap")) -- digits cap
defineProperty("Z1_plus_cap", globalPropertyf("tu154ce/nvu/z1_plus_cap")) -- digits cap
defineProperty("S1_minus_cap", globalPropertyf("tu154ce/nvu/s1_minus_cap")) -- digits cap
defineProperty("S1_plus_cap", globalPropertyf("tu154ce/nvu/s1_plus_cap")) -- digits cap

defineProperty("Z2_minus_cap", globalPropertyf("tu154ce/nvu/z2_minus_cap")) -- digits cap
defineProperty("Z2_plus_cap", globalPropertyf("tu154ce/nvu/z2_plus_cap")) -- digits cap
defineProperty("S2_minus_cap", globalPropertyf("tu154ce/nvu/s2_minus_cap")) -- digits cap
defineProperty("S2_plus_cap", globalPropertyf("tu154ce/nvu/s2_plus_cap")) -- digits cap


defineProperty("Z1_next_minus_cap", globalPropertyf("tu154ce/nvu/z1_next_minus_cap")) -- digits cap
defineProperty("Z1_next_plus_cap", globalPropertyf("tu154ce/nvu/z1_next_plus_cap")) -- digits cap
defineProperty("S1_next_minus_cap", globalPropertyf("tu154ce/nvu/s1_next_minus_cap")) -- digits cap
defineProperty("S1_next_plus_cap", globalPropertyf("tu154ce/nvu/s1_next_plus_cap")) -- digits cap

defineProperty("Z2_next_minus_cap", globalPropertyf("tu154ce/nvu/z2_next_minus_cap")) -- digits cap
defineProperty("Z2_next_plus_cap", globalPropertyf("tu154ce/nvu/z2_next_plus_cap")) -- digits cap
defineProperty("S2_next_minus_cap", globalPropertyf("tu154ce/nvu/s2_next_minus_cap")) -- digits cap
defineProperty("S2_next_plus_cap", globalPropertyf("tu154ce/nvu/s2_next_plus_cap")) -- digits cap

--------
defineProperty("zpu1_01", globalPropertyf("tu154ce/nvu/zpu1_01")) -- ZPU
defineProperty("zpu1_1", globalPropertyf("tu154ce/nvu/zpu1_1")) -- ZPU
defineProperty("zpu1_10", globalPropertyf("tu154ce/nvu/zpu1_10")) -- ZPU
defineProperty("zpu1_100", globalPropertyf("tu154ce/nvu/zpu1_100")) -- ZPU

defineProperty("zpu2_01", globalPropertyf("tu154ce/nvu/zpu2_01")) -- ZPU
defineProperty("zpu2_1", globalPropertyf("tu154ce/nvu/zpu2_1")) -- ZPU
defineProperty("zpu2_10", globalPropertyf("tu154ce/nvu/zpu2_10")) -- ZPU
defineProperty("zpu2_100", globalPropertyf("tu154ce/nvu/zpu2_100")) -- ZPU


---
defineProperty("map_angle", globalPropertyf("tu154ce/gauges/console/map_angle")) -- угол карты


-- lamps
defineProperty("nvu_on_lit", globalPropertyf("tu154ce/lights/small/nvu_on")) -- НВУ испр
defineProperty("nvu_corr_lit", globalPropertyf("tu154ce/lights/small/nvu_corr")) -- НВУ КОРР

defineProperty("nvu_1_active", globalPropertyf("tu154ce/lights/nvu_1_active")) -- светимость активной панели НВУ
defineProperty("nvu_2_active", globalPropertyf("tu154ce/lights/nvu_2_active")) -- светимость активной панели НВУ

defineProperty("nvu_fail_lit", globalPropertyf("tu154ce/lights/nvu_fail")) -- отаказ НВУ
defineProperty("nvu_vor_automat", globalPropertyf("tu154ce/lights/nvu_vor_automat")) -- НВУ-VOR автомат
defineProperty("correct_on_lit", globalPropertyf("tu154ce/lights/correct_on")) -- коррекция включ
defineProperty("change_ch_o", globalPropertyf("tu154ce/lights/change_ch_o")) -- смена ЧО


-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27


defineProperty("nvu_changing_ort", globalPropertyi("tu154ce/nvu/nvu_changing_ort")) -- смена ЧО
defineProperty("nvu_fail", globalPropertyi("tu154ce/nvu/nvu_fail")) -- отказ или недостаточно систем для НВУ

defineProperty("nvu_mode", globalPropertyi("tu154ce/nvu/nvu_mode")) -- режим НВУ. 0 = выкл, 1 = готов, 2 = счисление, 3 = коррекция
defineProperty("nvu_active", globalPropertyi("tu154ce/nvu/nvu_active")) -- активный комплект НВУ. 1 - 2

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп 
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

defineProperty("rsbn_distance", globalPropertyf("tu154ce/rsbn/distance")) -- геометрическая дистанция от маяка
defineProperty("rsbn_azimuth", globalPropertyf("tu154ce/rsbn/azimuth")) -- азимут от маяка


defineProperty("compas_big_needle", globalPropertyf("tu154ce/gauges/misc/compas_big_needle")) -- БДК
defineProperty("compas_small_needle", globalPropertyf("tu154ce/gauges/misc/compas_small_needle")) -- БДК
defineProperty("compas_knob", globalPropertyf("tu154ce/gauges/misc/compas_knob")) -- БДК




-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm
include("smooth_light.lua")

local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(nvu_power_on, 0)
	
	end
	
	notLoaded = false

end






local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local rotary_sound = loadSample('Custom Sounds/plastic_switch.wav')

local passed = get(frame_time)

local function digit_counter_09(value) -- general function for 5 digit (or less) counters. pre-last digit changes when last moves from 9 to 0

	local x_1 = value % 10
	local x_10 = math.floor((value % 100) * 0.1) + math.max(math.max((x_1  - 9), 0), 0)
	local x_100 = math.floor((value % 1000) * 0.01) + math.max(math.max((x_10 - 9), 0), 0)
	local x_1000 = math.floor((value % 10000) * 0.001) + math.max(math.max((x_100 - 9), 0), 0)
	local x_10000 = math.floor((value % 100000) * 0.0001) + math.max(math.max((x_1000 - 9), 0), 0)

	return x_1, x_10, x_100, x_1000, x_10000

end

local Z1_act = 0
local S1_act = 0

local Z2_act = 0
local S2_act = 0



local function counters()

	------------------------------
	-- current Z1 counters
	local cur_Z1 = get(current_Z1)
	
	local delta_Z1 = cur_Z1 - Z1_act 
		
	if delta_Z1 > 1 then Z1_act = Z1_act + passed * 20
	elseif delta_Z1 < -1 then Z1_act = Z1_act - passed * 20
	else Z1_act = Z1_act + delta_Z1 * passed * 20
	end
	
	
	local cur_z1_pls_1, cur_z1_pls_10, cur_z1_pls_100, cur_z1_pls_1000 = digit_counter_09(Z1_act)
	
	local cur_z1_min_1, cur_z1_min_10, cur_z1_min_100, cur_z1_min_1000 = digit_counter_09(-Z1_act)
	
	set(current_Z1_1, cur_z1_pls_1)
	set(current_Z1_10, cur_z1_pls_10)
	set(current_Z1_100, cur_z1_pls_100)
	set(current_Z1_1000, cur_z1_pls_1000)
	
	set(current_Z1_min_1, cur_z1_min_1)
	set(current_Z1_min_10, cur_z1_min_10)
	set(current_Z1_min_100, cur_z1_min_100)
	set(current_Z1_min_1000, cur_z1_min_1000)
	
	set(Z1_minus_cap, math.min(1, 1 + math.max(-1, -Z1_act)))
	set(Z1_plus_cap,  math.min(1, 1 + math.max(-1, Z1_act)))
	
	------------------------------------
	-- current S1 counters
	local cur_S1 = get(current_S1)
	
	local delta_S1 = cur_S1 - S1_act 
		
	if delta_S1 > 1 then S1_act = S1_act + passed * 20
	elseif delta_S1 < -1 then S1_act = S1_act - passed * 20
	else S1_act = S1_act + delta_S1 * passed * 20
	end
	
	local cur_S1_pls_1, cur_S1_pls_10, cur_S1_pls_100, cur_S1_pls_1000 = digit_counter_09(S1_act)
	
	local cur_S1_min_1, cur_S1_min_10, cur_S1_min_100, cur_S1_min_1000 = digit_counter_09(-S1_act)
	
	set(current_S1_1, cur_S1_pls_1)
	set(current_S1_10, cur_S1_pls_10)
	set(current_S1_100, cur_S1_pls_100)
	set(current_S1_1000, cur_S1_pls_1000)
	
	set(current_S1_min_1, cur_S1_min_1)
	set(current_S1_min_10, cur_S1_min_10)
	set(current_S1_min_100, cur_S1_min_100)
	set(current_S1_min_1000, cur_S1_min_1000)
	
	set(S1_minus_cap,  math.min(1, 1 + math.max(-1, -S1_act)))
	set(S1_plus_cap,  math.min(1, 1 + math.max(-1, S1_act)))	
	
	-----------------------------
	-- current Z2 counters
	local cur_Z2 = get(current_Z2)
	
	local delta_Z2 = cur_Z2 - Z2_act 
		
	if delta_Z2 > 1 then Z2_act = Z2_act + passed * 20
	elseif delta_Z2 < -1 then Z2_act = Z2_act - passed * 20
	else Z2_act = Z2_act + delta_Z2 * passed * 20
	end
	
	local cur_Z2_pls_1, cur_Z2_pls_10, cur_Z2_pls_100, cur_Z2_pls_1000 = digit_counter_09(Z2_act)
	
	local cur_Z2_min_1, cur_Z2_min_10, cur_Z2_min_100, cur_Z2_min_1000 = digit_counter_09(-Z2_act)
	
	set(current_Z2_1, cur_Z2_pls_1)
	set(current_Z2_10, cur_Z2_pls_10)
	set(current_Z2_100, cur_Z2_pls_100)
	set(current_Z2_1000, cur_Z2_pls_1000)
	
	set(current_Z2_min_1, cur_Z2_min_1)
	set(current_Z2_min_10, cur_Z2_min_10)
	set(current_Z2_min_100, cur_Z2_min_100)
	set(current_Z2_min_1000, cur_Z2_min_1000)
	
	set(Z2_minus_cap,  math.min(1, 1 + math.max(-1, -Z2_act)))
	set(Z2_plus_cap,  math.min(1, 1 + math.max(-1, Z2_act)))
	
	---------------------------
	-- current S2 counters
	local cur_S2 = get(current_S2)
	
	local delta_S2 = cur_S2 - S2_act 
		
	if delta_S2 > 1 then S2_act = S2_act + passed * 20
	elseif delta_S2 < -1 then S2_act = S2_act - passed * 20
	else S2_act = S2_act + delta_S2 * passed * 20
	end
	
	local cur_S2_pls_1, cur_S2_pls_10, cur_S2_pls_100, cur_S2_pls_1000 = digit_counter_09(S2_act)
	
	local cur_S2_min_1, cur_S2_min_10, cur_S2_min_100, cur_S2_min_1000 = digit_counter_09(-S2_act)
	
	set(current_S2_1, cur_S2_pls_1)
	set(current_S2_10, cur_S2_pls_10)
	set(current_S2_100, cur_S2_pls_100)
	set(current_S2_1000, cur_S2_pls_1000)
	
	set(current_S2_min_1, cur_S2_min_1)
	set(current_S2_min_10, cur_S2_min_10)
	set(current_S2_min_100, cur_S2_min_100)
	set(current_S2_min_1000, cur_S2_min_1000)
	
	set(S2_minus_cap,  math.min(1, 1 + math.max(-1, -S2_act)))
	set(S2_plus_cap,  math.min(1, 1 + math.max(-1, S2_act)))
	
	
	--------------------------
	-- next values
	
	------------------------------
	-- next Z1 counters
	local nxt_Z1 = get(next_Z1)
	
	local nxt_z1_pls_1, nxt_z1_pls_10, nxt_z1_pls_100, nxt_z1_pls_1000 = digit_counter_09(nxt_Z1)
	
	local nxt_z1_min_1, nxt_z1_min_10, nxt_z1_min_100, nxt_z1_min_1000 = digit_counter_09(-nxt_Z1)
	
	set(next_Z1_1, nxt_z1_pls_1)
	set(next_Z1_10, nxt_z1_pls_10)
	set(next_Z1_100, nxt_z1_pls_100)
	set(next_Z1_1000, nxt_z1_pls_1000)
	
	set(next_Z1_min_1, nxt_z1_min_1)
	set(next_Z1_min_10, nxt_z1_min_10)
	set(next_Z1_min_100, nxt_z1_min_100)
	set(next_Z1_min_1000, nxt_z1_min_1000)
	
	set(Z1_next_minus_cap,  math.min(1, 1 + math.max(-1, -nxt_Z1)))
	set(Z1_next_plus_cap,  math.min(1, 1 + math.max(-1, nxt_Z1)))
	
	------------------------------------
	-- next S1 counters
	local nxt_S1 = get(next_S1)
	
	local nxt_S1_pls_1, nxt_S1_pls_10, nxt_S1_pls_100, nxt_S1_pls_1000 = digit_counter_09(nxt_S1)
	
	local nxt_S1_min_1, nxt_S1_min_10, nxt_S1_min_100, nxt_S1_min_1000 = digit_counter_09(-nxt_S1)
	
	set(next_S1_1, nxt_S1_pls_1)
	set(next_S1_10, nxt_S1_pls_10)
	set(next_S1_100, nxt_S1_pls_100)
	set(next_S1_1000, nxt_S1_pls_1000)
	
	set(next_S1_min_1, nxt_S1_min_1)
	set(next_S1_min_10, nxt_S1_min_10)
	set(next_S1_min_100, nxt_S1_min_100)
	set(next_S1_min_1000, nxt_S1_min_1000)
	
	set(S1_next_minus_cap,  math.min(1, 1 + math.max(-1, -nxt_S1)))
	set(S1_next_plus_cap,  math.min(1, 1 + math.max(-1, nxt_S1)))	
	
	-----------------------------
	-- next Z1 counters
	local nxt_Z2 = get(next_Z2)
	
	local nxt_Z2_pls_1, nxt_Z2_pls_10, nxt_Z2_pls_100, nxt_Z2_pls_1000 = digit_counter_09(nxt_Z2)
	
	local nxt_Z2_min_1, nxt_Z2_min_10, nxt_Z2_min_100, nxt_Z2_min_1000 = digit_counter_09(-nxt_Z2)
	
	set(next_Z2_1, nxt_Z2_pls_1)
	set(next_Z2_10, nxt_Z2_pls_10)
	set(next_Z2_100, nxt_Z2_pls_100)
	set(next_Z2_1000, nxt_Z2_pls_1000)
	
	set(next_Z2_min_1, nxt_Z2_min_1)
	set(next_Z2_min_10, nxt_Z2_min_10)
	set(next_Z2_min_100, nxt_Z2_min_100)
	set(next_Z2_min_1000, nxt_Z2_min_1000)
	
	set(Z2_next_minus_cap,  math.min(1, 1 + math.max(-1, -nxt_Z2)))
	set(Z2_next_plus_cap,  math.min(1, 1 + math.max(-1, nxt_Z2)))
	
	---------------------------
	-- next S2 counters
	local nxt_S2 = get(next_S2)
	
	local nxt_S2_pls_1, nxt_S2_pls_10, nxt_S2_pls_100, nxt_S2_pls_1000 = digit_counter_09(nxt_S2)
	
	local nxt_S2_min_1, nxt_S2_min_10, nxt_S2_min_100, nxt_S2_min_1000 = digit_counter_09(-nxt_S2)
	
	set(next_S2_1, nxt_S2_pls_1)
	set(next_S2_10, nxt_S2_pls_10)
	set(next_S2_100, nxt_S2_pls_100)
	set(next_S2_1000, nxt_S2_pls_1000)
	
	set(next_S2_min_1, nxt_S2_min_1)
	set(next_S2_min_10, nxt_S2_min_10)
	set(next_S2_min_100, nxt_S2_min_100)
	set(next_S2_min_1000, nxt_S2_min_1000)
	
	set(S2_next_minus_cap,  math.min(1, 1 + math.max(-1, -nxt_S2)))
	set(S2_next_plus_cap,  math.min(1, 1 + math.max(-1, nxt_S2)))
	
	------------------------
	-- ZPU counters --
	------------------------
	
	-- ZPU1 counters
	local zpu1_ctr = get(zpu1) * 10
	
	local zpu1_d_01, zpu1_d_1, zpu1_d_10, zpu1_d_100 = digit_counter_09(zpu1_ctr)
	
	
	set(zpu1_01, zpu1_d_01)
	set(zpu1_1, zpu1_d_1)
	set(zpu1_10, zpu1_d_10)
	set(zpu1_100, zpu1_d_100)

	-- ZPU2 counters
	local zpu2_ctr = get(zpu2) * 10
	
	local zpu2_d_01, zpu2_d_1, zpu2_d_10, zpu2_d_100 = digit_counter_09(zpu2_ctr)
	
	
	set(zpu2_01, zpu2_d_01)
	set(zpu2_1, zpu2_d_1)
	set(zpu2_10, zpu2_d_10)
	set(zpu2_100, zpu2_d_100)
	

end

local switchers_summ = 0

local function switchers()
	
	local summ = get(nvu_power_on) + get(nvu_calc_on) + get(nvu_corr_on)
	
	if summ ~= switchers_summ then  end
	
	
	switchers_summ = summ

end

local but_summ = 0


local function buttons()

	local summ = get(nvu_left_btn) + get(nvu_ctr_btn) + get(nvu_right_btn) + get(zpu_1_left_btn) + get(zpu_1_ctr_btn) + get(zpu_1_right_btn)
	summ = summ + get(zpu_2_left_btn) + get(zpu_2_ctr_btn) + get(zpu_2_right_btn)
	
	if summ ~= but_summ then  end
	
	but_summ = summ


end

local rot_summ = 0

local function rotary()
	
	local summ = get(nvu_param_sel) + get(nvu_turn_sel)
	
	if summ ~= rot_summ then --[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]] end
	
	rot_summ = summ

end

local function lamps()
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	local small_lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local mode = get(nvu_mode)
	local active = get(nvu_active)
	
	local nvu_on_lit_brt = bool2int(mode > 0 and get(nvu_fail) == 0) * small_lamps_brt
	set(nvu_on_lit, smooth_light(nvu_on_lit_brt, get(nvu_on_lit)))
	
	local nvu_corr_lit_brt = bool2int(mode == 3) * small_lamps_brt
	set(nvu_corr_lit, smooth_light(nvu_corr_lit_brt, get(nvu_corr_lit)))
	
	local nvu_1_active_brt = bool2int(active == 1 and mode > 0) * small_lamps_brt
	set(nvu_1_active, smooth_light(nvu_1_active_brt, get(nvu_1_active)))
	
	local nvu_2_active_brt = bool2int(active == 2 and mode > 0) * small_lamps_brt
	set(nvu_2_active, smooth_light(nvu_2_active_brt, get(nvu_2_active)))
	
	local nvu_fail_lit_brt = math.max(bool2int(get(nvu_fail) == 1) * lamps_brt, test_btn)
	set(nvu_fail_lit, smooth_light(nvu_fail_lit_brt, get(nvu_fail_lit)))
	
	local nvu_vor_automat_brt = math.max(bool2int(false) * lamps_brt, test_btn) -- temp
	set(nvu_vor_automat, smooth_light(nvu_vor_automat_brt, get(nvu_vor_automat)))
	
	local correct_on_lit_brt = math.max(bool2int(mode == 3 and get(rsbn_distance) ~= 0) * lamps_brt, test_btn)
	set(correct_on_lit, smooth_light(correct_on_lit_brt, get(correct_on_lit)))
	
	local change_ch_o_brt = math.max(bool2int(get(nvu_changing_ort) == 1) * lamps_brt, test_btn)
	set(change_ch_o, smooth_light(change_ch_o_brt, get(change_ch_o)))

end



function update()
	
	passed = get(frame_time)
	
	counters()
	switchers()
	buttons()
	rotary()
	lamps()
	
	-- BDK corrector
	local knob = get(compas_knob)
	set(compas_small_needle, knob)
	set(compas_big_needle, knob * 36)
	
	
	-- map angle limits
	local map_ang = get(map_angle)
	
	while map_ang > 360 do map_ang = map_ang - 360 end
	while map_ang < 0 do map_ang = map_ang + 360 end
	
	set(map_angle, map_ang)


	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end




end