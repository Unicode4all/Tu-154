-- this is engines panel
-- controls
defineProperty("control_ut", globalPropertyi("tu154ce/buttons/eng/control_ut")) -- кнопка контроль УТ
defineProperty("control_vibro_1", globalPropertyi("tu154ce/buttons/eng/control_vibro_1")) -- кнопка контроль вибрации
defineProperty("control_vibro_2", globalPropertyi("tu154ce/buttons/eng/control_vibro_2")) -- кнопка контроль вибрации
defineProperty("control_vibro_3", globalPropertyi("tu154ce/buttons/eng/control_vibro_3")) -- кнопка контроль вибрации
defineProperty("vibro_sel_1", globalPropertyi("tu154ce/switchers/eng/vibro_sel_1")) -- переключатель прибора вибрации
defineProperty("vibro_sel_2", globalPropertyi("tu154ce/switchers/eng/vibro_sel_2")) -- переключатель прибора вибрации
defineProperty("vibro_sel_3", globalPropertyi("tu154ce/switchers/eng/vibro_sel_3")) -- переключатель прибора вибрации

defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_engines")) -- кнопка проверки ламп панели двигателей
defineProperty("lamp_test_fwd", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп на передней панели	0

defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

defineProperty("gauges_on_1", globalPropertyi("tu154ce/switchers/eng/gauges_on_1")) -- приборы контроля двигателей
defineProperty("gauges_on_2", globalPropertyi("tu154ce/switchers/eng/gauges_on_2")) -- приборы контроля двигателей
defineProperty("gauges_on_3", globalPropertyi("tu154ce/switchers/eng/gauges_on_3")) -- приборы контроля двигателей

defineProperty("gauges_on_1_cap", globalPropertyi("tu154ce/switchers/eng/gauges_on_1_cap")) -- приборы контроля двигателей
defineProperty("gauges_on_2_cap", globalPropertyi("tu154ce/switchers/eng/gauges_on_2_cap")) -- приборы контроля двигателей
defineProperty("gauges_on_3_cap", globalPropertyi("tu154ce/switchers/eng/gauges_on_3_cap")) -- приборы контроля двигателей

-- lamps
defineProperty("eng1_dangerous_vibro", globalPropertyf("tu154ce/lights/engines/eng1_dangerous_vibro")) -- опасная вибрация
defineProperty("eng1_oil_level", globalPropertyf("tu154ce/lights/engines/eng1_oil_level")) -- уровень масла
defineProperty("eng1_oil_p", globalPropertyf("tu154ce/lights/engines/eng1_oil_p")) -- давление масла
defineProperty("eng1_bypass_valve", globalPropertyf("tu154ce/lights/engines/eng1_bypass_valve")) -- клапаны перепуска
defineProperty("eng1_vna33", globalPropertyf("tu154ce/lights/engines/eng1_vna33")) -- ВНА 33
defineProperty("eng1_reverse_lock", globalPropertyf("tu154ce/lights/engines/eng1_reverse_lock")) -- замок реверса
defineProperty("eng1_high_vibro", globalPropertyf("tu154ce/lights/engines/eng1_high_vibro")) -- вибрация велика
defineProperty("eng1_chips", globalPropertyf("tu154ce/lights/engines/eng1_chips")) -- стружка в масле
defineProperty("eng1_fuel_p", globalPropertyf("tu154ce/lights/engines/eng1_fuel_p")) -- давление топлива
defineProperty("eng1_filter_fail", globalPropertyf("tu154ce/lights/engines/eng1_filter_fail")) -- фильтр засорен
defineProperty("eng1_vna0", globalPropertyf("tu154ce/lights/engines/eng1_vna0")) -- ВНА 0
defineProperty("eng1_reverse_doors", globalPropertyf("tu154ce/lights/engines/eng1_reverse_doors")) -- створки реверса

defineProperty("eng2_dangerous_vibro", globalPropertyf("tu154ce/lights/engines/eng2_dangerous_vibro")) -- опасная вибрация
defineProperty("eng2_oil_level", globalPropertyf("tu154ce/lights/engines/eng2_oil_level")) -- уровень масла
defineProperty("eng2_oil_p", globalPropertyf("tu154ce/lights/engines/eng2_oil_p")) -- давление масла
defineProperty("eng2_bypass_valve", globalPropertyf("tu154ce/lights/engines/eng2_bypass_valve")) -- клапаны перепуска
defineProperty("eng2_vna33", globalPropertyf("tu154ce/lights/engines/eng2_vna33")) -- ВНА 33
defineProperty("eng_at_on", globalPropertyf("tu154ce/lights/engines/eng_at_on")) -- АТ включен
defineProperty("eng2_high_vibro", globalPropertyf("tu154ce/lights/engines/eng2_high_vibro")) -- вибрация велика
defineProperty("eng2_chips", globalPropertyf("tu154ce/lights/engines/eng2_chips")) -- стружка в масле
defineProperty("eng2_fuel_p", globalPropertyf("tu154ce/lights/engines/eng2_fuel_p")) -- давление топлива
defineProperty("eng2_filter_fail", globalPropertyf("tu154ce/lights/engines/eng2_filter_fail")) -- фильтр засорен
defineProperty("eng2_vna0", globalPropertyf("tu154ce/lights/engines/eng2_vna0")) -- ВНА 0
defineProperty("eng_block", globalPropertyf("tu154ce/lights/engines/eng_block")) -- расстоп сектора

defineProperty("eng3_dangerous_vibro", globalPropertyf("tu154ce/lights/engines/eng3_dangerous_vibro")) -- опасная вибрация
defineProperty("eng3_oil_level", globalPropertyf("tu154ce/lights/engines/eng3_oil_level")) -- уровень масла
defineProperty("eng3_oil_p", globalPropertyf("tu154ce/lights/engines/eng3_oil_p")) -- давление масла
defineProperty("eng3_bypass_valve", globalPropertyf("tu154ce/lights/engines/eng3_bypass_valve")) -- клапаны перепуска
defineProperty("eng3_vna33", globalPropertyf("tu154ce/lights/engines/eng3_vna33")) -- ВНА 33
defineProperty("eng3_reverse_lock", globalPropertyf("tu154ce/lights/engines/eng3_reverse_lock")) -- замок реверса
defineProperty("eng3_high_vibro", globalPropertyf("tu154ce/lights/engines/eng3_high_vibro")) -- вибрация велика
defineProperty("eng3_chips", globalPropertyf("tu154ce/lights/engines/eng3_chips")) -- стружка в масле
defineProperty("eng3_fuel_p", globalPropertyf("tu154ce/lights/engines/eng3_fuel_p")) -- давление топлива
defineProperty("eng3_filter_fail", globalPropertyf("tu154ce/lights/engines/eng3_filter_fail")) -- фильтр засорен
defineProperty("eng3_vna0", globalPropertyf("tu154ce/lights/engines/eng3_vna0")) -- ВНА 0
defineProperty("eng3_reverse_doors", globalPropertyf("tu154ce/lights/engines/eng3_reverse_doors")) -- створки реверса


defineProperty("starter_high_rpm_1", globalPropertyf("tu154ce/lights/small/starter_high_rpm_1")) -- опасные обороты стартера
defineProperty("starter_high_rpm_2", globalPropertyf("tu154ce/lights/small/starter_high_rpm_2")) -- опасные обороты стартера
defineProperty("starter_high_rpm_3", globalPropertyf("tu154ce/lights/small/starter_high_rpm_3")) -- опасные обороты стартера
defineProperty("fuel_2500", globalPropertyf("tu154ce/lights/small/fuel_2500")) -- остаток топлива 2500
defineProperty("fuel_tank1_used", globalPropertyf("tu154ce/lights/small/fuel_tank1_used")) -- расход из бака 1


defineProperty("fp_eng_fail_1", globalPropertyf("tu154ce/lights/fp_eng_fail_1")) -- двиг. неиспр 1 на передней панели
defineProperty("fp_eng_fail_2", globalPropertyf("tu154ce/lights/fp_eng_fail_2")) -- двиг. неиспр 2 на передней панели
defineProperty("fp_eng_fail_3", globalPropertyf("tu154ce/lights/fp_eng_fail_3")) -- двиг. неиспр 3 на передней панели

defineProperty("fp_reverse_1", globalPropertyf("tu154ce/lights/fp_reverse_1")) -- створки реверса 1 на передней панели
defineProperty("fp_reverse_3", globalPropertyf("tu154ce/lights/fp_reverse_3")) -- створки реверса 3 на передней панели

defineProperty("oil_meter_qty_1", globalPropertyf("tu154ce/lights/small/oil_meter_1")) -- лампа на масломере
defineProperty("oil_meter_qty_2", globalPropertyf("tu154ce/lights/small/oil_meter_2")) -- лампа на масломере
defineProperty("oil_meter_qty_3", globalPropertyf("tu154ce/lights/small/oil_meter_3")) -- лампа на масломере


-- sources
defineProperty("vibra_1", globalPropertyf("tu154ce/gauges/eng/vibra_1")) -- вибрация двиг 1
defineProperty("vibra_2", globalPropertyf("tu154ce/gauges/eng/vibra_2")) -- вибрация двиг 2
defineProperty("vibra_3", globalPropertyf("tu154ce/gauges/eng/vibra_3")) -- вибрация двиг 3

defineProperty("rpm_high_1", globalPropertyf("tu154ce/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154ce/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154ce/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine

defineProperty("chip_detect1", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[0]")) -- chip in engine1
defineProperty("chip_detect2", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[1]")) -- chip in engine1
defineProperty("chip_detect3", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[2]")) -- chip in engine1

defineProperty("fuel_p_1", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[0]"))
defineProperty("fuel_p_2", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[1]"))
defineProperty("fuel_p_3", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[2]"))

defineProperty("oil_p_1", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[0]"))
defineProperty("oil_p_2", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[1]"))
defineProperty("oil_p_3", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[2]"))

defineProperty("eng_fuel_press_1", globalPropertyi("tu154ce/fuel/eng_fuel_press_1")) -- топливо может быть подано в двигатель. без учета стоп-кранов
defineProperty("eng_fuel_press_2", globalPropertyi("tu154ce/fuel/eng_fuel_press_2")) -- топливо может быть подано в двигатель. без учета стоп-кранов
defineProperty("eng_fuel_press_3", globalPropertyi("tu154ce/fuel/eng_fuel_press_3")) -- топливо может быть подано в двигатель. без учета стоп-кранов

defineProperty("throttle_lock", globalPropertyf("tu154ce/controlls/throttle_lock")) -- рычаг фиксации РУД

defineProperty("tank1_w", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight
defineProperty("pump_tank2_left_work", globalPropertyi("tu154ce/fuel/pump_tank2_left_work"))
defineProperty("pump_tank2_right_work", globalPropertyi("tu154ce/fuel/pump_tank2_right_work"))
defineProperty("pump_tank3_left_work", globalPropertyi("tu154ce/fuel/pump_tank3_left_work"))
defineProperty("pump_tank3_right_work", globalPropertyi("tu154ce/fuel/pump_tank3_right_work"))
defineProperty("pump_tank4_work", globalPropertyi("tu154ce/fuel/pump_tank4_work"))
defineProperty("pump_tank1_1_work", globalPropertyi("tu154ce/fuel/pump_tank1_1_work"))
defineProperty("pump_tank1_2_work", globalPropertyi("tu154ce/fuel/pump_tank1_2_work"))
defineProperty("pump_tank1_3_work", globalPropertyi("tu154ce/fuel/pump_tank1_3_work"))
defineProperty("pump_tank1_4_work", globalPropertyi("tu154ce/fuel/pump_tank1_4_work"))

defineProperty("stu_mode", globalPropertyi("tu154ce/absu/stu_mode")) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	

defineProperty("engn_oil_qty_1", globalPropertyf("tu154ce/failures/engn_oil_qty_1")) 
defineProperty("engn_oil_qty_2", globalPropertyf("tu154ce/failures/engn_oil_qty_2")) 
defineProperty("engn_oil_qty_3", globalPropertyf("tu154ce/failures/engn_oil_qty_3"))

defineProperty("oil_qty_1", globalPropertyf("tu154ce/gauges/eng/oil_qty_1")) -- количество масла
defineProperty("oil_qty_2", globalPropertyf("tu154ce/gauges/eng/oil_qty_2")) -- количество масла
defineProperty("oil_qty_3", globalPropertyf("tu154ce/gauges/eng/oil_qty_3")) -- количество масла



defineProperty("eng_filter_1", globalPropertyi("sim/operation/failures/rel_eng_lo0"))
defineProperty("eng_filter_2", globalPropertyi("sim/operation/failures/rel_eng_lo1"))
defineProperty("eng_filter_3", globalPropertyi("sim/operation/failures/rel_eng_lo2"))










-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("fire_main_switch", globalPropertyi("tu154ce/switchers/eng/fire_main_switch")) -- выключатель пожарной системы

defineProperty("sim_engine_on_fire1", globalPropertyi("sim/operation/failures/rel_engfir0"))  -- left engine on fire
defineProperty("sim_engine_on_fire2", globalPropertyi("sim/operation/failures/rel_engfir1"))  -- mid engine on fire
defineProperty("sim_engine_on_fire3", globalPropertyi("sim/operation/failures/rel_engfir2"))  -- right engine on fire

defineProperty("egt_1", globalPropertyf("tu154ce/gauges/eng/egt_1")) -- ТВГ двиг 1
defineProperty("egt_2", globalPropertyf("tu154ce/gauges/eng/egt_2")) -- ТВГ двиг 2
defineProperty("egt_3", globalPropertyf("tu154ce/gauges/eng/egt_3")) -- ТВГ двиг 3

defineProperty("speaker_fuel", globalPropertyi("tu154ce/alarm/speaker_fuel")) -- остаток топлива 2500 в баке 1
include("smooth_light.lua")
local passed = get(frame_time)
local notLoaded = true

local eng_1_fail_src = 0
local eng_2_fail_src = 0
local eng_3_fail_src = 0

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(gauges_on_1, 0)
		set(gauges_on_2, 0)
		set(gauges_on_3, 0)
		set(gauges_on_1_cap, 1)
		set(gauges_on_2_cap, 1)
		set(gauges_on_3_cap, 1)
	end
	
	notLoaded = false
end

local function small_lamps()
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	
	-- TODO: Implement starter overspeeding failure
	local starter_high_rpm_1_brt = math.max(0, test_btn) -- fake for now
	set(starter_high_rpm_1, smooth_light(starter_high_rpm_1_brt, get(starter_high_rpm_1)))
	 
	local starter_high_rpm_2_brt = math.max(0, test_btn) -- fake for now
	set(starter_high_rpm_2, smooth_light(starter_high_rpm_2_brt, get(starter_high_rpm_2)))
	
	local starter_high_rpm_3_brt = math.max(0, test_btn) -- fake for now
	set(starter_high_rpm_3, smooth_light(starter_high_rpm_3_brt, get(starter_high_rpm_3)))
	
	local fuel_2500_brt = 0
	if get(tank1_w) < 2500 then fuel_2500_brt = 1 end
	
	set(speaker_fuel, fuel_2500_brt)
	
	fuel_2500_brt = math.max(fuel_2500_brt * lamps_brt, test_btn)
	set(fuel_2500, fuel_2500_brt)
	
	local fuel_tank1_used_brt = 0
	if get(pump_tank2_left_work) + get(pump_tank2_right_work) + get(pump_tank3_left_work) + get(pump_tank3_right_work) + get(pump_tank4_work) == 0 and 
		get(pump_tank1_1_work) + get(pump_tank1_2_work) + get(pump_tank1_3_work) + get(pump_tank1_4_work) > 0
	then fuel_tank1_used_brt = 1 end
	fuel_tank1_used_brt = math.max(fuel_tank1_used_brt * lamps_brt, test_btn) 
	set(fuel_tank1_used, fuel_tank1_used_brt)
	
	local oil_meter_qty_1_brt = math.max(get(gauges_on_1) * lamps_brt, test_btn) 
	set(oil_meter_qty_1, oil_meter_qty_1_brt)
	
	local oil_meter_qty_2_brt = math.max(get(gauges_on_2) * lamps_brt, test_btn) 
	set(oil_meter_qty_2, oil_meter_qty_2_brt)
	
	local oil_meter_qty_3_brt = math.max(get(gauges_on_3) * lamps_brt, test_btn) 
	set(oil_meter_qty_3, oil_meter_qty_3_brt)
	

end

local revers_flap_L_last = get(revers_flap_L)

local function lamps_eng1()
	local day_night = 1 - get(day_night_set) * 0.8
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	local lamps_brt = math.max((get(bus27_volt_left) - 10) / 18.5, 0) * day_night
	local RPM = get(rpm_high_1)
	local eng1_dangerous_vibro_brt = 0
	local vibr = get(vibra_1)
	if vibr > 65 then eng1_dangerous_vibro_brt = 1 end
	eng1_dangerous_vibro_brt = math.max(eng1_dangerous_vibro_brt * lamps_brt, test_btn)
	set(eng1_dangerous_vibro, smooth_light(eng1_dangerous_vibro_brt, get(eng1_dangerous_vibro)))
	
	local eng1_oil_level_brt = math.max(bool2int(get(oil_qty_1) < 8) * get(gauges_on_1) * lamps_brt, test_btn) 
	set(eng1_oil_level, smooth_light(eng1_oil_level_brt, get(eng1_oil_level)))
	
	local eng1_oil_p_brt = 0
	local oil_p = get(oil_p_1)
	if oil_p < 10 then eng1_oil_p_brt = lamps_brt end
	eng1_oil_p_brt = math.max(eng1_oil_p_brt, test_btn)
	set(eng1_oil_p, smooth_light(eng1_oil_p_brt, get(eng1_oil_p)))
	
	local eng1_bypass_valve_brt = 0
	if RPM > 12 and RPM < 73 then eng1_bypass_valve_brt = 1 end
	eng1_bypass_valve_brt = math.max(eng1_bypass_valve_brt * lamps_brt, test_btn)
	set(eng1_bypass_valve, smooth_light(eng1_bypass_valve_brt, get(eng1_bypass_valve)))

	local eng1_vna33_brt = 0
	if RPM < 74 then eng1_vna33_brt = 1 end
	eng1_vna33_brt = math.max(eng1_vna33_brt * lamps_brt, test_btn)
	set(eng1_vna33, smooth_light(eng1_vna33_brt, get(eng1_vna33)))
	
	local rev_L = get(revers_flap_L)
	local eng1_reverse_lock_brt = 0 
	if rev_L < revers_flap_L_last and rev_L > 0.05 and rev_L < 0.95 then eng1_reverse_lock_brt = 1 end
	eng1_reverse_lock_brt = math.max(eng1_reverse_lock_brt * lamps_brt, test_btn) -- fake for now
	set(eng1_reverse_lock, smooth_light(eng1_reverse_lock_brt, get(eng1_reverse_lock)))
	
	local eng1_high_vibro_brt = 0
	if vibr > 55 then eng1_high_vibro_brt = 1 end
	eng1_high_vibro_brt = math.max(eng1_high_vibro_brt * lamps_brt, test_btn)
	set(eng1_high_vibro, smooth_light(eng1_high_vibro_brt, get(eng1_high_vibro)))
	
	local chip_det = get(chip_detect1)
	local eng1_chips_brt = chip_det
	eng1_chips_brt = math.max(eng1_chips_brt * lamps_brt, test_btn)
	set(eng1_chips, smooth_light(eng1_chips_brt, get(eng1_chips)))
	
	local fuel_p = get(eng_fuel_press_1)
	local eng1_fuel_p_brt = (1 - fuel_p) * lamps_brt -- * get(gauges_on_1)
	eng1_fuel_p_brt = math.max(eng1_fuel_p_brt, test_btn)
	set(eng1_fuel_p, smooth_light(eng1_fuel_p_brt, get(eng1_fuel_p)))
	
	local eng1_filter_fail_brt = math.max(bool2int(get(eng_filter_1) == 6), test_btn)
	set(eng1_filter_fail, smooth_light(eng1_filter_fail_brt, get(eng1_filter_fail)))
	
	local eng1_vna0_brt = 0
	if RPM < 91 then eng1_vna0_brt = 1 end
	eng1_vna0_brt = math.max(eng1_vna0_brt * lamps_brt, test_btn)
	set(eng1_vna0, smooth_light(eng1_vna0_brt, get(eng1_vna0)))
	
	local eng1_reverse_doors_brt = 0
	if rev_L > 0.7 then eng1_reverse_doors_brt = 1 end
	eng1_reverse_doors_brt = math.max(eng1_reverse_doors_brt * lamps_brt, test_btn) 
	set(eng1_reverse_doors, smooth_light(eng1_reverse_doors_brt, get(eng1_reverse_doors)))
		
	
	
	
	eng_1_fail_src = bool2int(oil_p < 10 or (rev_L < revers_flap_L_last and rev_L > 0.05 and rev_L < 0.95) or vibr > 55 or chip_det == 1 or fuel_p == 0 or (get(fire_main_switch) * get(sim_engine_on_fire1) == 6) or get(egt_1) > 710)
	
	
	revers_flap_L_last = rev_L
	
	
	
end

local function lamps_eng2()

	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	local RPM = get(rpm_high_2)
	
	local eng2_dangerous_vibro_brt = 0
	local vibr = get(vibra_2)
	if vibr > 65 then eng2_dangerous_vibro_brt = 1 end
	eng2_dangerous_vibro_brt = math.max(eng2_dangerous_vibro_brt * lamps_brt, test_btn)
	set(eng2_dangerous_vibro, smooth_light(eng2_dangerous_vibro_brt, get(eng2_dangerous_vibro)))
	
	local eng2_oil_level_brt = math.max(bool2int(get(oil_qty_2) < 8) * get(gauges_on_2) * lamps_brt, test_btn) 
	set(eng2_oil_level, smooth_light(eng2_oil_level_brt, get(eng2_oil_level)))
	
	local eng2_oil_p_brt = 0
	local oil_p = get(oil_p_2)
	if oil_p < 10 then eng2_oil_p_brt = 1 end
	eng2_oil_p_brt = math.max(eng2_oil_p_brt * lamps_brt, test_btn)
	set(eng2_oil_p, smooth_light(eng2_oil_p_brt, get(eng2_oil_p)))

	local eng2_bypass_valve_brt = 0
	if RPM > 13 and RPM < 78 then eng2_bypass_valve_brt = 1 end
	eng2_bypass_valve_brt = math.max(eng2_bypass_valve_brt * lamps_brt, test_btn)
	set(eng2_bypass_valve, smooth_light(eng2_bypass_valve_brt, get(eng2_bypass_valve)))

	local eng2_vna33_brt = 0
	if RPM < 74 then eng2_vna33_brt = 1 end
	eng2_vna33_brt = math.max(eng2_vna33_brt * lamps_brt, test_btn)
	set(eng2_vna33, smooth_light(eng2_vna33_brt, get(eng2_vna33)))
	
	local eng_at_on_brt = math.max(bool2int(get(stu_mode) > 2), test_btn) * lamps_brt
	set(eng_at_on, smooth_light(eng_at_on_brt, get(eng_at_on)))
	
	local eng2_high_vibro_brt = 0
	if vibr > 55 then eng2_high_vibro_brt = 1 end
	eng2_high_vibro_brt = math.max(eng2_high_vibro_brt * lamps_brt, test_btn)
	set(eng2_high_vibro, smooth_light(eng2_high_vibro_brt, get(eng2_high_vibro)))
	
	local chip_det = get(chip_detect2)
	local eng2_chips_brt = math.max(chip_det * lamps_brt, test_btn)
	set(eng2_chips, smooth_light(eng2_chips_brt, get(eng2_chips)))
	
	local fuel_p = get(eng_fuel_press_2)
	local eng2_fuel_p_brt = (1 - fuel_p) * lamps_brt-- * get(gauges_on_2)
	eng2_fuel_p_brt = math.max(eng2_fuel_p_brt, test_btn)
	set(eng2_fuel_p, smooth_light(eng2_fuel_p_brt, get(eng2_fuel_p)))
	
	local eng2_filter_fail_brt = math.max(bool2int(get(eng_filter_2) == 6), test_btn) 
	set(eng2_filter_fail, smooth_light(eng2_filter_fail_brt, get(eng2_filter_fail)))
	
	local eng2_vna0_brt = 0
	if RPM < 91 then eng2_vna0_brt = 1 end
	eng2_vna0_brt = math.max(eng2_vna0_brt * lamps_brt, test_btn)
	set(eng2_vna0, smooth_light(eng2_vna0_brt, get(eng2_vna0)))
	
	local eng_block_brt = 0
	if get(throttle_lock) > 0.2 then eng_block_brt = 1 end
	eng_block_brt = math.max(eng_block_brt * lamps_brt, test_btn)
	set(eng_block, smooth_light(eng_block_brt, get(eng_block)))
		

	eng_2_fail_src = bool2int(oil_p < 10 or vibr > 55 or chip_det == 1 or fuel_p == 0 or (get(fire_main_switch) * get(sim_engine_on_fire2) == 6) or get(egt_2) > 710)
		
end


local revers_flap_R_last = get(revers_flap_R)
local function lamps_eng3()

	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	local RPM = get(rpm_high_3)
	
	local eng3_dangerous_vibro_brt = 0
	local vibr = get(vibra_3)
	if vibr > 65 then eng3_dangerous_vibro_brt = 1 end
	eng3_dangerous_vibro_brt = math.max(eng3_dangerous_vibro_brt * lamps_brt, test_btn)
	set(eng3_dangerous_vibro, smooth_light(eng3_dangerous_vibro_brt, get(eng3_dangerous_vibro)))
	
	local eng3_oil_level_brt = math.max(bool2int(get(oil_qty_3) < 8) * get(gauges_on_3) * lamps_brt, test_btn) 
	set(eng3_oil_level, smooth_light(eng3_oil_level_brt, get(eng3_oil_level)))
	
	local eng3_oil_p_brt = 0
	local oil_p = get(oil_p_3)
	if oil_p < 10 then eng3_oil_p_brt = 1 end
	eng3_oil_p_brt = math.max(eng3_oil_p_brt * lamps_brt, test_btn) 
	set(eng3_oil_p, smooth_light(eng3_oil_p_brt, get(eng3_oil_p)))
	
	local eng3_bypass_valve_brt = 0
	if RPM > 12.5 and RPM < 75 then eng3_bypass_valve_brt = 1 end
	eng3_bypass_valve_brt = math.max(eng3_bypass_valve_brt * lamps_brt, test_btn)
	set(eng3_bypass_valve, smooth_light(eng3_bypass_valve_brt, get(eng3_bypass_valve)))

	local eng3_vna33_brt = 0
	if RPM < 74 then eng3_vna33_brt = 1 end
	eng3_vna33_brt = math.max(eng3_vna33_brt * lamps_brt , test_btn)
	set(eng3_vna33, smooth_light(eng3_vna33_brt, get(eng3_vna33)))
	
	local rev_R = get(revers_flap_R)
	local eng3_reverse_lock_brt = 0 
	if rev_R < revers_flap_R_last and rev_R > 0.05 and rev_R < 0.9 then eng3_reverse_lock_brt = 1 end
	eng3_reverse_lock_brt = math.max(eng3_reverse_lock_brt * lamps_brt, test_btn) 
	set(eng3_reverse_lock, smooth_light(eng3_reverse_lock_brt, get(eng3_reverse_lock)))
	
	local eng3_high_vibro_brt = 0
	if vibr > 55 then eng3_high_vibro_brt = 1 end
	eng3_high_vibro_brt = math.max(eng3_high_vibro_brt * lamps_brt , test_btn)
	set(eng3_high_vibro, smooth_light(eng3_high_vibro_brt, get(eng3_high_vibro)))
	
	local chip_det = get(chip_detect3)
	local eng3_chips_brt = chip_det
	eng3_chips_brt = math.max(eng3_chips_brt * lamps_brt, test_btn)
	set(eng3_chips, smooth_light(eng3_chips_brt, get(eng3_chips)))
	
	local fuel_p = get(eng_fuel_press_3)
	local eng3_fuel_p_brt = (1 - fuel_p) * lamps_brt
	eng3_fuel_p_brt = math.max(eng3_fuel_p_brt, test_btn) 
	set(eng3_fuel_p, smooth_light(eng3_fuel_p_brt, get(eng3_fuel_p)))
	
	local eng3_filter_fail_brt = math.max(bool2int(get(eng_filter_3) == 6), test_btn)
	set(eng3_filter_fail, smooth_light(eng3_filter_fail_brt, get(eng3_filter_fail)))
	
	local eng3_vna0_brt = 0
	if RPM < 91 then eng3_vna0_brt = 1 end
	eng3_vna0_brt = math.max(eng3_vna0_brt * lamps_brt, test_btn)
	set(eng3_vna0, smooth_light(eng3_vna0_brt, get(eng3_vna0)))
	
	local eng3_reverse_doors_brt = 0
	if rev_R > 0.7 then eng3_reverse_doors_brt = 1 end
	eng3_reverse_doors_brt = math.max(eng3_reverse_doors_brt * lamps_brt, test_btn)
	set(eng3_reverse_doors, smooth_light(eng3_reverse_doors_brt, get(eng3_reverse_doors)))
		
	eng_3_fail_src = bool2int(oil_p < 10 or (rev_R < revers_flap_R_last and rev_R > 0.05 and rev_R < 0.95) or vibr > 55 or chip_det == 1 or fuel_p == 0 or (get(fire_main_switch) * get(sim_engine_on_fire3) == 6) or get(egt_3) > 710)	
	
	revers_flap_R_last = rev_R
end

local function lamps_fwd()

	local day_night = 1 - get(day_night_set) * 0.8
	local test_btn = get(lamp_test_fwd) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	local lamps_brt_L = math.max((get(bus27_volt_left) - 10) / 18.5, 0) * day_night
	local lamps_brt_R = math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	
	
	local rev_L = get(revers_flap_L)
	local rev_R = get(revers_flap_R)
	
	local eng1_reverse_doors_brt = 0
	if rev_L > 0.7 then eng1_reverse_doors_brt = 1 end
	eng1_reverse_doors_brt = math.max(eng1_reverse_doors_brt * lamps_brt_L, test_btn) 
	set(fp_reverse_1, smooth_light(eng1_reverse_doors_brt,get(fp_reverse_1)))
	
	local eng3_reverse_doors_brt = 0
	if rev_R > 0.7 then eng3_reverse_doors_brt = 1 end
	eng3_reverse_doors_brt = math.max(eng3_reverse_doors_brt * lamps_brt_R, test_btn) 
	set(fp_reverse_3, smooth_light(eng3_reverse_doors_brt,get(fp_reverse_3)))
	
	local fp_eng_fail_1_brt = math.max(eng_1_fail_src * lamps_brt_L, test_btn) 
	set(fp_eng_fail_1, smooth_light(fp_eng_fail_1_brt,get(fp_eng_fail_1)))
	
	local fp_eng_fail_2_brt = math.max(eng_2_fail_src * lamps_brt_R, test_btn) 
	set(fp_eng_fail_2, smooth_light(fp_eng_fail_2_brt,get(fp_eng_fail_2)))
	
	local fp_eng_fail_3_brt = math.max(eng_3_fail_src * lamps_brt_R, test_btn) 
	set(fp_eng_fail_3, smooth_light(fp_eng_fail_3_brt,get(fp_eng_fail_3)))

end





-- sounds
local rotary_sound = loadSample('Custom Sounds/plastic_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')

local control_ut_last = get(control_ut)
local control_vibro_1_last = get(control_vibro_1)
local control_vibro_2_last = get(control_vibro_2)
local control_vibro_3_last = get(control_vibro_3)
local vibro_sel_1_last = get(vibro_sel_1)
local vibro_sel_2_last = get(vibro_sel_2)
local vibro_sel_3_last = get(vibro_sel_3)
local test_lamps_last = get(test_lamps)

local gauges_on_1_last = get(gauges_on_1)
local gauges_on_2_last = get(gauges_on_2)
local gauges_on_3_last = get(gauges_on_3)

local gauges_on_1_cap_last = get(gauges_on_1_cap)
local gauges_on_2_cap_last = get(gauges_on_2_cap)
local gauges_on_3_cap_last = get(gauges_on_3_cap)

local function check_controls()
	
	local control_ut_sw = get(control_ut)
	local control_vibro_1_sw = get(control_vibro_1)
	local control_vibro_2_sw = get(control_vibro_2)
	local control_vibro_3_sw = get(control_vibro_3)
	local vibro_sel_1_sw = get(vibro_sel_1)
	local vibro_sel_2_sw = get(vibro_sel_2)
	local vibro_sel_3_sw = get(vibro_sel_3)
	local test_lamps_swt = get(test_lamps)
	local gauges_on_1_sw = get(gauges_on_1)
	local gauges_on_2_sw = get(gauges_on_2)
	local gauges_on_3_sw = get(gauges_on_3)
	
	local gauges_on_1_cap_sw = get(gauges_on_1_cap)
	local gauges_on_2_cap_sw = get(gauges_on_2_cap)
	local gauges_on_3_cap_sw = get(gauges_on_3_cap)
	
	-- play sounds on change position
	local change_but = control_ut_sw + control_vibro_1_sw + control_vibro_2_sw + control_vibro_3_sw + test_lamps_swt
	change_but = change_but - control_ut_last - control_vibro_1_last - control_vibro_2_last - control_vibro_3_last - test_lamps_last
	
	local change_sw = vibro_sel_1_sw + vibro_sel_2_sw + vibro_sel_3_sw - vibro_sel_1_last - vibro_sel_2_last - vibro_sel_3_last
	change_sw = change_sw + gauges_on_1_sw + gauges_on_2_sw + gauges_on_3_sw - gauges_on_1_last - gauges_on_2_last - gauges_on_3_last
	
	local caps_change = gauges_on_1_cap_sw + gauges_on_2_cap_sw + gauges_on_3_cap_sw - gauges_on_1_cap_last - gauges_on_2_cap_last - gauges_on_3_cap_last
	
	if change_but ~= 0 then		end
	if change_sw ~= 0 then --[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]] end
	if caps_change ~= 0 then  end 
	-- check caps
	if gauges_on_1_cap_sw == 0 then set(gauges_on_1, 1) end
	if gauges_on_2_cap_sw == 0 then set(gauges_on_2, 1) end
	if gauges_on_3_cap_sw == 0 then set(gauges_on_3, 1) end
	
	
	control_ut_last = get(control_ut)
	control_vibro_1_last = get(control_vibro_1)
	control_vibro_2_last = get(control_vibro_2)
	control_vibro_3_last = get(control_vibro_3)
	vibro_sel_1_last = get(vibro_sel_1)
	vibro_sel_2_last = get(vibro_sel_2)
	vibro_sel_3_last = get(vibro_sel_3)	
	test_lamps_last = get(test_lamps)
	gauges_on_1_last = gauges_on_1_sw
	gauges_on_2_last = gauges_on_2_sw
	gauges_on_3_last = gauges_on_3_sw
	gauges_on_1_cap_last = gauges_on_1_cap_sw
	gauges_on_2_cap_last = gauges_on_2_cap_sw
	gauges_on_3_cap_last = gauges_on_3_cap_sw

end

local sim_start_timer = 0

function update()
	
	passed = get(frame_time)
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
		check_controls()
		lamps_eng1()
		lamps_eng2()
		lamps_eng3()
		lamps_fwd()
		small_lamps()
	end
	

	
	

end


