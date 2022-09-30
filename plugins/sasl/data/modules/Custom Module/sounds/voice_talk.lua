defineProperty("reset_crew", globalPropertyi("tu154ce/sound/reset_crew")) -- сброс фраз команды


-- sources

-- gears
defineProperty("deflection_mtr_1", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")) -- 
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 

defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear


defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed")) -- GS, m/s

-- controls
defineProperty("nosewheel_turn_sel", globalPropertyi("tu154ce/switchers/nosewheel_turn_sel")) -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63
defineProperty("parking_brake", globalPropertyi("tu154ce/controll/parking_brake")) -- ручка фиксации тормоза
defineProperty("l_brake_add", globalPropertyf("sim/flightmodel/controls/l_brake_add")) -- Left Brake
defineProperty("r_brake_add", globalPropertyf("sim/flightmodel/controls/r_brake_add")) -- Right Brake

defineProperty("turn_rate_ind", globalPropertyf("tu154ce/gauges/misc/turn_rate_ind")) -- индикатор разворота
defineProperty("big_course_needle", globalPropertyf("tu154ce/gauges/compas/big_course_needle")) -- стрелка "самолетик"

-- flaps and stab


defineProperty("stab_man_cap", globalPropertyi("tu154ce/controll/stab_man_cap")) -- положение крышки управления стабилизатором
defineProperty("stab_ind", globalPropertyf("tu154ce/gauges/misc/stab_ind")) -- индикатор положения стаб
defineProperty("flap_left_ind", globalPropertyf("tu154ce/gauges/misc/flap_left_ind")) -- индикатор положения стаб
defineProperty("flap_right_ind", globalPropertyf("tu154ce/gauges/misc/flap_right_ind")) -- индикатор положения стаб
defineProperty("slat_man", globalPropertyi("tu154ce/switchers/slat_man")) -- ручное управление предкрылками. -1 - уборка, 0 выкл, +1 - выпуск
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too
defineProperty("gear_lever", globalPropertyi("tu154ce/controll/gear_lever")) -- ручка выпуска шасси. -1 - уборка, 0 - нейтр, +1 - выпуск
defineProperty("int_pitch_trim", globalPropertyf("tu154ce/trimmers/int_pitch_trim"))

defineProperty("spoilers_inn_left", globalPropertyf("tu154ce/lights/spoilers_inn_left")) -- интерцепторы внутр лев
defineProperty("spoilers_inn_right", globalPropertyf("tu154ce/lights/spoilers_inn_right")) -- интерцепторы внутр прав
defineProperty("spoilers_lever", globalPropertyf("tu154ce/controlls/spoilers_lever")) -- рычаг интерцепторов

-- batteries
defineProperty("bat1_on", globalPropertyi("tu154ce/switchers/eng/bat1_on")) -- батарея 1
defineProperty("bat2_on", globalPropertyi("tu154ce/switchers/eng/bat2_on")) -- батарея 2
defineProperty("bat3_on", globalPropertyi("tu154ce/switchers/eng/bat3_on")) -- батарея 3
defineProperty("bat4_on", globalPropertyi("tu154ce/switchers/eng/bat4_on")) -- батарея 4


-- APU
defineProperty("apu_main_switch", globalPropertyi("tu154ce/switchers/eng/apu_main_switch")) -- выключатель ВСУ
defineProperty("apu_start_mode", globalPropertyi("tu154ce/switchers/eng/apu_start_mode")) -- режим запуска ВСУ
defineProperty("apu_n1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ
defineProperty("apu_fuel_p", globalPropertyf("tu154ce/eng/apu_fuel_p")) -- давление топлива ВСУ
defineProperty("apu_doors", globalPropertyf("tu154ce/anim/apu_doors")) -- положение створок ВСУ. 0 - закрыты, 1 - открыты.

-- engines
defineProperty("starter_pressure", globalPropertyf("tu154ce/start/starter_pressure")) -- двление в системе запуска
defineProperty("starter_cap", globalPropertyi("tu154ce/switchers/eng/starter_cap")) -- крышка панели запуска
defineProperty("starter_switch", globalPropertyi("tu154ce/switchers/eng/starter_switch")) -- выключатель запуска
defineProperty("starter_eng_select", globalPropertyi("tu154ce/switchers/eng/starter_eng_select")) -- выбор двигателя
defineProperty("starter_mode", globalPropertyi("tu154ce/switchers/eng/starter_mode")) -- режим запуска

defineProperty("starter_start", globalPropertyi("tu154ce/buttons/eng/starter_start")) -- кнопка запуска

defineProperty("apd_working_1", globalPropertyf("tu154ce/start/apd_working_1")) -- работа системы запуска
defineProperty("apd_working_2", globalPropertyf("tu154ce/start/apd_working_2")) -- работа системы запуска
defineProperty("apd_working_3", globalPropertyf("tu154ce/start/apd_working_3")) -- работа системы запуска

defineProperty("eng_rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))   
defineProperty("eng_rpm2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("eng_rpm3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))

defineProperty("engine_caps", globalPropertyi("tu154ce/anim/engine_caps")) -- установка крышек двигателей
defineProperty("gear_blocks", globalPropertyi("tu154ce/anim/gear_blocks")) -- установка блоков шасси
defineProperty("sensors_caps", globalPropertyi("tu154ce/anim/sensors_caps")) -- установка крышек датчиков

defineProperty("slider_3", globalProperty("sim/cockpit2/switches/custom_slider_on[2]")) -- cargo 1
defineProperty("slider_4", globalProperty("sim/cockpit2/switches/custom_slider_on[3]")) -- cargo 2
defineProperty("slider_5", globalProperty("sim/cockpit2/switches/custom_slider_on[4]")) -- pax door 1
defineProperty("slider_6", globalProperty("sim/cockpit2/switches/custom_slider_on[5]")) -- pax door 2
defineProperty("slider_7", globalProperty("sim/cockpit2/switches/custom_slider_on[6]")) -- kitchen door

defineProperty("sim_gen1_on", globalProperty("sim/cockpit/electrical/generator_on[0]"))
defineProperty("sim_gen2_on", globalProperty("sim/cockpit/electrical/generator_on[1]"))
defineProperty("sim_gen3_on", globalProperty("sim/cockpit/electrical/generator_on[2]"))

defineProperty("rpm_high_1", globalPropertyf("tu154ce/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154ce/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154ce/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine


-- speeds
defineProperty("v1_15", globalPropertyi("tu154ce/speeds/v1_15")) -- 
defineProperty("vr_15", globalPropertyi("tu154ce/speeds/vr_15")) -- 
defineProperty("v2_15", globalPropertyi("tu154ce/speeds/v2_15")) -- 
defineProperty("v1_28", globalPropertyi("tu154ce/speeds/v1_28")) -- 
defineProperty("vr_28", globalPropertyi("tu154ce/speeds/vr_28")) -- 
defineProperty("v2_28", globalPropertyi("tu154ce/speeds/v2_28")) -- 

defineProperty("ias_left", globalPropertyf("tu154ce/gauges/speed/ias_left")) -- приборная скорость КВС
defineProperty("ias_right", globalPropertyf("tu154ce/gauges/speed/ias_right")) -- приборная скорость 2П

defineProperty("ias_L", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot")) -- indicated airspeed in KTS
defineProperty("ias_R", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot"))

defineProperty("vvi_L", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")) -- vertical speed in ft/min
defineProperty("vvi_R", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_copilot"))

defineProperty("VVI", globalPropertyf("sim/flightmodel/position/vh_ind")) -- vertical speed in m/s
defineProperty("IAS", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- Air speed indicated

defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed")) -- GS, m/s

-- altitude
defineProperty("rv5_alt", globalPropertyf("tu154ce/misc/rv5_alt_left"))
defineProperty("pressure_L", globalPropertyf("tu154ce/gauges/alt/vbe_press_left"))
defineProperty("pressure_R", globalPropertyf("tu154ce/gauges/alt/vbe_press_right"))
defineProperty("alt_mtr", globalPropertyf("tu154ce/gauges/alt/vbe_alt_left"))  -- indicated altitude in meters

defineProperty("dh_set", globalPropertyf("tu154ce/gauges/alt/radioalt_dh_left"))  -- DH angle
defineProperty("rv_test_btn", globalPropertyf("tu154ce/gauges/alt/radioalt_button_left"))  -- Test button
defineProperty("rv_angle", globalPropertyf("tu154ce/gauges/alt/radioalt_needle_left"))  -- RV needle

defineProperty("rv_lamp", globalPropertyf("tu154ce/lights/small/rv5_left_dh"))  -- RV lamp


-- ABSU
defineProperty("roll_main_mode", globalPropertyi("tu154ce/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154ce/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("stu_mode", globalPropertyi("tu154ce/absu/stu_mode")) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	


-- lights
defineProperty("landing_ext_set_L", globalPropertyi("tu154ce/lights/landing_ext_set_L")) -- выпуск фар лев
defineProperty("landing_ext_set_R", globalPropertyi("tu154ce/lights/landing_ext_set_R")) -- выпуск фар прав
defineProperty("landing_mode_set_L", globalPropertyi("tu154ce/lights/landing_mode_set_L")) -- режим фар лев. -1 - рулежный, 0 - выкл, +1 - посадочный
defineProperty("landing_mode_set_R", globalPropertyi("tu154ce/lights/landing_mode_set_R")) -- режим фар прав

defineProperty("parking_brake", globalPropertyi("tu154ce/controll/parking_brake")) -- ручка фиксации тормоза

defineProperty("tks_course_set", globalPropertyi("tu154ce/switchers/ovhd/tks_course_set")) -- задатчик курса

defineProperty("bat1_on", globalPropertyi("tu154ce/switchers/eng/bat1_on")) -- батарея 1
defineProperty("bat2_on", globalPropertyi("tu154ce/switchers/eng/bat2_on")) -- батарея 2
defineProperty("bat3_on", globalPropertyi("tu154ce/switchers/eng/bat3_on")) -- батарея 3
defineProperty("bat4_on", globalPropertyi("tu154ce/switchers/eng/bat4_on")) -- батарея 4


-- controls
defineProperty("ail_L", globalPropertyf("sim/flightmodel/controls/wing3l_ail1def")) -- aileron left Degrees, positive is trailing-edge down. +- 20
defineProperty("ail_R", globalPropertyf("sim/flightmodel/controls/wing3r_ail1def")) -- aileron right Degrees, positive is trailing-edge down. +- 20
defineProperty("elevator_L", globalPropertyf("sim/flightmodel/controls/hstab1_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("elevator_R", globalPropertyf("sim/flightmodel/controls/hstab2_elv1def")) -- Degrees, positive is trailing-edge down.


local flight_status = 0 
local flight_status_last = 10

--[[
0 - подготовка к полету:
	самолет на земле
	двигатели заглушены
	стояночный тормоз
	
1 - руление перед полетом:
	был статус 0
	самолет на земле
	двигатели запущены НО НЕ номинал
	--скорость руления
	
2 - взлет:
	самолет на земле
	двигатели номинал+
	тормоза сняты
	НЕТ реверса
	
3 - набор:
	был статус 2 или 7 или 6
	двигатели номинал+
	самолет НЕ на земле
	вертикальная скорость больше 4
	радиовысота растет. выше 150
	
4 - полет:
	самолет НЕ на земле
	радиовысота выше 550
	скорость больше 430
	вертикальная в пределах +-4
	
5 - снижение:
	был статус 4 или 3
	самолет НЕ на земле
	вертикальная скорость меньше -4
	
6 - заход:
	самолет НЕ на земле
	радиовысота меньше 400
	вертикальна ниже -3
	
7 - уход на второй круг:
	был статус 6
	самолет НЕ на земле
	радиовысота ниже 150
	вертикальная скорость выше 3
	двигатели номинал+
	
8 - после посадки:
	был статус 6
	самолет на земле
	скорость посадки и руления
	двигатели на малом + НО НЕ номинал
	
9 - на стоянке:
	был статус 8
	самолет на земле
	двигатели запущены
	стояночный тормоз

0 - сброс в начальное состояние:
	был статус 9
	самолет на земле
	двигатели заглушены
	стояночный тормоз
	
	или сигнал сброса
	

--]]




local reset_timer = 0





function regular_talk()

	v_var["on_ground"] = get(deflection_mtr_1) + get(deflection_mtr_2) + get(deflection_mtr_3) > 0.1
	v_var["vvi_now"] = (get(vvi_L) + get(vvi_R)) * 0.00508 / 2
	v_var["ias_now"] = (get(ias_L) + get(ias_R)) * 1.852 / 2
	
	v_var["ias_grow"] = v_var["ias_now"] > v_var["ias_last"]
	v_var["ias_last"] = v_var["ias_now"]
	
	v_var["flaps_diff"] = get(flap_left_ind) - v_var["flaps_last_L"] + get(flap_right_ind) - v_var["flaps_last_R"]
	
	v_var["flaps_last_L"] = get(flap_left_ind)
	v_var["flaps_last_R"] = get(flap_right_ind)
	
	v_var["stab_diff"] = get(stab_ind) - v_var["stab_last"]
	v_var["stab_last"] = get(stab_ind)
	
	v_var["trim_diff"] = math.abs(get(int_pitch_trim) - v_var["trim_last"])
	v_var["trim_last"] = get(int_pitch_trim)
	
	v_var["slats_diff"] = get(slats) - v_var["slats_last"]
	v_var["slats_last"] = get(slats)
	
	if math.abs(get(ail_L) - get(ail_R)) > 20 then v_var["ail_chk"] = true end
	if math.abs(get(elevator_L) + get(elevator_R)) > 20 then v_var["elev_chk"] = true end
	
	--if get(reset_crew) == 1 then flight_status = 0 end -- reset crew voices
	
	-- preparing for flight
	if v_var["on_ground"] -- on ground
		and flight_status ~= 9 -- not after landing
		and get(rpm_high_1) < 10 and get(rpm_high_2) < 10 and get(rpm_high_3) < 10 -- engines shut off
		and get(parking_brake) == 1 -- parking brake
	then
		flight_status = 0
		
		v_var["ready_to_taxi_said"] = false
		v_var["check_brk_said"] = false
		v_var["brk_chk_ok_said"] = false
		v_var["eup_chk_said"] = false
		v_var["engine_TO_said"] = false
		
		v_var["ail_chk"] = false
		v_var["elev_chk"] = false
	end
	
	-- taxi before flight
	if flight_status == 0 -- was prepare
		and v_var["on_ground"] -- on ground
		and get(rpm_high_1) > 40 and get(rpm_high_2) > 40 and get(rpm_high_3) > 40 -- engines IDLE+
		and get(rpm_high_1) < 90 and get(rpm_high_2) < 90 and get(rpm_high_3) < 90 -- NOT nominal
		and get(revers_flap_L) < 0.1 and get(revers_flap_R) < 0.1 -- no reverse
		and get(parking_brake) == 0 and get(l_brake_add) < 0.05 and get(r_brake_add) < 0.05 -- brakes off
		--and get(groundspeed) > 5 / 3.6 and get(groundspeed) < 20 / 3.6 -- taxi speed
	then
		flight_status = 1
		
		v_var["engine_TO_said"] = false
		
		v_var["v_rise_said"] = false
		v_var["v_160_said"] = false
		v_var["v_200_said"] = false
		v_var["v_220_said"] = false
		v_var["v_240_said"] = false	
		
		v_var["v1_said"] = false
		v_var["vr_said"] = false
		v_var["v2_said"] = false
		
		v_var["set_gear_up_said"] = false
		v_var["gear_up_said"] = false
		v_var["set_gear_ntr_said"] = false
		v_var["gear_ntr_said"] = false
		
		v_var["alt50_said"] = false
		v_var["lights_off_said"] = false
		
		v_var["v_330_said"] = false
		v_var["v_360_said"] = false
		
	end
	
	-- take off
	if v_var["on_ground"] -- on ground
		and (get(rpm_high_1) > 90 or get(rpm_high_2) > 90 or get(rpm_high_3) > 90) -- engines nominal+
		and get(parking_brake) == 0 and get(l_brake_add) < 0.05 and get(r_brake_add) < 0.05 -- brakes off
		and get(revers_flap_L) < 0.1 and get(revers_flap_R) < 0.1 -- no reverse
	then
		flight_status = 2
		
		v_var["press1013_said"] = false
		
	end
	
	-- climb
	if (flight_status == 2 or flight_status == 6 or flight_status == 7) -- was takeoff or approach or TOGA
		and (get(rpm_high_1) > 90 or get(rpm_high_2) > 90 or get(rpm_high_3) > 90) -- engines nominal+
		and not v_var["on_ground"] -- not on ground
		and get(VVI) > 4 -- vertical speed
		and get(rv5_alt) > 150 -- radio altitude
	then
		flight_status = 3
		
		v_var["tks_set_counter"] = 0
		
		v_var["gear_down_cpt_said"] = false
		v_var["gear_down_cop_said"] = false
		v_var["gear_down_fact_cop_said"] = false
		v_var["set_gear_ntr_2_said"] = false
		v_var["gear_ntr_2_said"] = false
		v_var["extend_lites_said"] = false
		v_var["lites_full_said"] = false
		v_var["rating_said"] = false
		v_var["decision_said"] = false
	end
	
	-- in flight
	if not v_var["on_ground"] -- not on ground
		and get(rv5_alt) > 550 -- radio altitude
		and get(IAS) > 430 / 1.852 -- airspeed
		and get(VVI) < 4 and get(VVI) > -4 -- vertical speed
	then
		flight_status = 4
		
		v_var["call_10_said"] = false
		v_var["call_5_said"] = false
		v_var["call_3_said"] = false
		v_var["call_2_said"] = false
		v_var["call_1_said"] = false
		v_var["rating_said"] = false
		v_var["decision_said"] = false
	end

	-- descend
	if (flight_status == 3 or flight_status == 4) -- was climb or flight
		and not v_var["on_ground"] -- not on ground
		and get(VVI) < -4 -- vertical speed
	then
		flight_status = 5
	end
	
	-- approach
	if not v_var["on_ground"] -- not on ground
		and get(rv5_alt) < 400 -- radio altitude 
		and get(VVI) < -3 -- vertical speed
	then
		flight_status = 6
		
		v_var["spoilers_said"] = false
		v_var["set_reverse_said"] = false
		v_var["reverse_off_said"] = false
		v_var["remove_flaps_said"] = false
		
	end
	
	-- TOGA
	if flight_status == 6 -- was approach
		and not v_var["on_ground"] -- not on ground
		and get(rv5_alt) < 150-- radio altitude 
		and get(VVI) > 3 -- vertical speed
		and (get(rpm_high_1) > 90 or get(rpm_high_2) > 90 or get(rpm_high_3) > 90) -- engines nominal+
	then
		flight_status = 7
		
		v_var["press1013_said"] = false
		
		--v_var["engine_TO_said"] = false
		
		v_var["v_rise_said"] = false
		v_var["v_160_said"] = false
		v_var["v_200_said"] = false
		v_var["v_220_said"] = false
		v_var["v_240_said"] = false	
		
		--v_var["v1_said"] = false
		--v_var["vr_said"] = false
		
		v_var["set_gear_up_said"] = false
		v_var["gear_up_said"] = false
		v_var["set_gear_ntr_said"] = false
		v_var["gear_ntr_said"] = false
		
		v_var["alt50_said"] = false
		v_var["lights_off_said"] = false
		
		v_var["v_330_said"] = false
		v_var["v_360_said"] = false
	end
	
	-- after landing
	if (flight_status == 6 or flight_status == 2) -- was approach or cancelled take-off
		and v_var["on_ground"] -- on ground
		and get(groundspeed) > 5 / 3.6 and get(groundspeed) < 350 / 3.6 -- landing and taxi speed
		and (get(rpm_high_1) > 40 or get(rpm_high_2) > 40 or get(rpm_high_3) > 40) -- engines IDLE+
		and get(rpm_high_1) < 70 and get(rpm_high_2) < 70 and get(rpm_high_3) < 70 -- NOT nominal 
	then
		flight_status = 8
		
		v_var["on_brakes_said"] = false
		
	end
	
	-- on ramp after landing
	if flight_status == 8 -- was taxi after landing
		and v_var["on_ground"] -- on ground 
		and (get(rpm_high_1) > 40 or get(rpm_high_2) > 40 or get(rpm_high_3) > 40) -- engines IDLE+
		and get(rpm_high_1) < 90 and get(rpm_high_2) < 90 and get(rpm_high_3) < 90 -- NOT nominal 
		and get(parking_brake) == 1 -- parking brake
	then
		flight_status = 9
		
		v_var["press1013_said"] = false
	end
	
	-- final stand and reset
	if get(reset_crew) == 1 or (flight_status == 9
		and v_var["on_ground"] -- on ground
		and get(rpm_high_1) < 5 and get(rpm_high_2) < 5 and get(rpm_high_3) < 5 -- engines shut off
		and get(parking_brake) == 1 -- parking brake
		and get(apu_n1) < 5 -- APU off
		--and get(bat1_on) + get(bat2_on) + get(bat3_on) + get(bat4_on) == 0 -- bat off
		)
	then
		print("FLIGHT RESET")
		
		flight_status = 0
		
		v_var["apu_start_said"] = false
		v_var["eng_start_check_said"] = false
		v_var["gnd_eng_start_check_ok_said"] = false
		v_var["gnd_doors_open_said"] = false
		v_var["gnd_covers_said"] = false
		v_var["gnd_blocks_said"] = false
		v_var["away_from_eng_said"] = false
		v_var["starting_eng1_said"] = false
		v_var["starting_eng2_said"] = false
		v_var["starting_eng3_said"] = false
		v_var["engines_go_said"] = false
		v_var["generators_on_said"] = false
		v_var["ail_chk"] = false
		v_var["elev_chk"] = false
		
	end
	
	-- test
	if     flight_status == 0 and flight_status_last ~= flight_status then print("PREPARE")
	elseif flight_status == 1 and flight_status_last ~= flight_status then print("TAXI BEFORE TAKEOFF")
	elseif flight_status == 2 and flight_status_last ~= flight_status then print("TAKEOFF")
	elseif flight_status == 3 and flight_status_last ~= flight_status then print("CLIMB")
	elseif flight_status == 4 and flight_status_last ~= flight_status then print("FLIGHT")
	elseif flight_status == 5 and flight_status_last ~= flight_status then print("DESCEND")
	elseif flight_status == 6 and flight_status_last ~= flight_status then print("APPROACH")
	elseif flight_status == 7 and flight_status_last ~= flight_status then print("TOGA")
	elseif flight_status == 8 and flight_status_last ~= flight_status then print("TAXI AFTER LANDING")
	elseif flight_status == 9 and flight_status_last ~= flight_status then print("ON RAMP AFTER LANDING")
	end
	
	flight_status_last = flight_status
	

	----------------------------------------------
	-- regular talk for various ocasions --
	----------------------------------------------
	
	-- Turn 63 is ON	
	if (flight_status == 1 or flight_status == 8) and not v_var["turn63on_said"] and get(nosewheel_turn_sel) == 1 and v_var["on_ground"] then
		v_var["turn63on_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["turn_63_on"][lang], 2}
	end
	
	-- reset said state
	if get(nosewheel_turn_sel) == 0 then
		v_var["turn63on_said"] = false
	end	
		
	-------------------------
	
	-- engine valves closed
	if not v_var["valves_closed_said"] and get(rpm_high_1) > 73 and get(rpm_high_2) > 78 and get(rpm_high_3) > 75 and (flight_status == 1 or flight_status == 2) then
		v_var["valves_closed_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["valves_closed"][lang], 3}
	end
	--reset state
	if get(rpm_high_1) < 65 and get(rpm_high_2) < 65 and get(rpm_high_3) < 65 and v_var["on_ground"] then
		v_var["valves_closed_said"] = false
	end

	------------------------
	
	-- AP ON
	if not v_var["ap_on_said"] and get(roll_main_mode) == 2 and get(pitch_main_mode) == 2 then
		v_var["ap_on_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["ap_enable"][lang], 2}	
	
	end
	-- reset state
	if get(roll_main_mode) < 2 and get(pitch_main_mode) < 2 then
		v_var["ap_on_said"] = false
	end
	
	------------------------
	
	-- AT ON
	if not v_var["at_on_said"] and get(stu_mode) > 2 and not v_var["on_ground"] then
		v_var["at_on_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["at_on"][lang], 2}
	
	elseif get(stu_mode) < 3 then 
		v_var["at_on_said"] = false
	
	end
	
	------------------------
	
	-- Reverse ON
	if not v_var["reverse_on_said"] and get(revers_flap_L) > 0.5 and get(revers_flap_R) > 0.5 then
		v_var["reverse_on_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["reverse_on"][lang], 2}
	
	
	elseif get(revers_flap_L) < 0.1 and get(revers_flap_R) < 0.1 then
		v_var["reverse_on_said"] = false
	end	
	
	-------------------------
	
	-- flaps, stab and slats
	
	v_var["flaps_count"] = v_var["flaps_count"] + passed_time
	
	if math.abs(v_var["flaps_diff"]) ~=0 then v_var["flaps_count"] = 0 end
	
	-- flaps extending sync
	if not v_var["flaps_ext_said"] and v_var["flaps_diff"] > 0.0001 and math.abs(v_var["flaps_last_L"] - v_var["flaps_last_R"]) < 1 then
		v_var["flaps_ext_said"] = true
		v_var["flaps_retr_said"] = false
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["flaps_extending"][lang], 2}
	end
	
	-- flaps retracting sync
	if not v_var["flaps_retr_said"] and v_var["flaps_diff"] < -0.0001 and math.abs(v_var["flaps_last_L"] - v_var["flaps_last_R"]) < 1 then
		v_var["flaps_retr_said"] = true
		v_var["flaps_ext_said"] = false
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["flaps_retracting"][lang], 2}

	end	

	if v_var["flaps_count"] > 2 then
		v_var["flaps_ext_said"] = false
		v_var["flaps_retr_said"] = false
	end

	-- slats extending
	if not v_var["slats_ext_said"] and v_var["slats_diff"] > 0.0001 and (v_var["flaps_ext_said"] or get(slat_man) == 1) then
		v_var["slats_ext_said"] = true
		v_var["slats_retr_said"] = false
		--v_var["slats_out_said"] = false
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["slats_extending"][lang], 2}

	end
	
	-- slats retracting
	if not v_var["slats_retr_said"] and v_var["slats_diff"] < -0.0001 and (v_var["flaps_retr_said"] or get(slat_man) == -1) then
		v_var["slats_retr_said"] = true
		v_var["slats_ext_said"] = false
		v_var["slats_out_said"] = false
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["slats_retracting"][lang], 2}

	end	
	

	
	-- stab move
	if v_var["trim_diff"] ~= 0 or get(stab_man_cap) == 1 then v_var["trim_count"] = 0 end
	v_var["trim_count"] = v_var["trim_count"] + passed_time
	
	if not v_var["stab_move_said"] and math.abs(v_var["stab_diff"]) > 0.001 and v_var["trim_count"] > 2 and (v_var["flaps_ext_said"] or v_var["flaps_retr_said"]) and v_var["stab_count"] > 1 then
		v_var["stab_move_said"] = true
		v_var["stab_moved"] = true
		v_var["stab_count"] = 0
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["stab_move"][lang], 2}
	
	end	
	
	if v_var["trim_diff"] == 0 and v_var["stab_diff"] == 0 then v_var["stab_count"] = v_var["stab_count"] + passed_time end

	-- flaps stops moving report
	if v_var["flaps_count"] > 1 then
		
		-- flaps 0
		if not v_var["flaps_0_said"] and v_var["flaps_last_L"] < 2 and v_var["stab_last"] < 0.2 and v_var["slats_last"] < 0.001 then
			v_var["flaps_0_said"] = true
			
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["flaps_0"][lang], 3}
			
		-- flaps 15
		elseif not v_var["flaps_15_said"] and v_var["flaps_last_L"] > 13 and v_var["flaps_last_L"] < 17 then
			v_var["flaps_15_said"] = true
		
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["flaps_15"][lang], 2}
		
		-- flaps 28
		elseif not v_var["flaps_28_said"] and v_var["flaps_last_L"] > 26 and v_var["flaps_last_L"] < 30 then
			v_var["flaps_28_said"] = true
		
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["flaps_28"][lang], 2}
		-- flaps 36
		elseif not v_var["flaps_36_said"] and v_var["flaps_last_L"] > 34 and v_var["flaps_last_L"] < 38 then
			v_var["flaps_36_said"] = true
		
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["flaps_36"][lang], 2}
		elseif not v_var["flaps_45_said"] and v_var["flaps_last_L"] > 43 then
			v_var["flaps_45_said"] = true
		
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["flaps_45"][lang], 2}
		
		end
		
		-- stab 0
		if not v_var["stab_0_said"] and v_var["stab_moved"] and v_var["stab_last"] < 0.2 and not v_var["flaps_0_said"] and v_var["stab_diff"] == 0 then
			v_var["stab_0_said"] = true
			v_var["stab_15_said"] = true
			v_var["stab_30_said"] = true
			v_var["stab_55_said"] = true
			
			v_var["stab_moved"] = false
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["stab_0"][lang], 2}
		-- stab -1.5
		elseif not v_var["stab_15_said"] and v_var["stab_moved"] and v_var["stab_last"] > 1.3 and v_var["stab_last"] < 1.7 and v_var["stab_diff"] == 0 then
			v_var["stab_0_said"] = true
			v_var["stab_15_said"] = true
			v_var["stab_30_said"] = true
			v_var["stab_55_said"] = true
			
			v_var["stab_moved"] = false
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["stab_15"][lang], 2}
		-- stab -3
		elseif not v_var["stab_30_said"] and v_var["stab_moved"] and v_var["stab_last"] > 2.8 and v_var["stab_last"] < 3.2 and v_var["stab_diff"] == 0 then
			v_var["stab_0_said"] = true
			v_var["stab_15_said"] = true
			v_var["stab_30_said"] = true
			v_var["stab_55_said"] = true
			
			v_var["stab_moved"] = false
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["stab_30"][lang], 2}
		-- sytab -5.5
		elseif not v_var["stab_55_said"] and v_var["stab_moved"] and v_var["stab_last"] > 5.3 and v_var["stab_diff"] == 0 then
			v_var["stab_0_said"] = true
			v_var["stab_15_said"] = true
			v_var["stab_30_said"] = true
			v_var["stab_55_said"] = true
			
			v_var["stab_moved"] = false
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["stab_55"][lang], 2}
		
		end
		
		
		
		-- slats extended
		if not v_var["slats_out_said"] and v_var["slats_last"] > 0.9 and v_var["slats_diff"] == 0 then
			v_var["slats_out_said"] = true
		
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["slats_retracted"][lang], 2}
		end
		
		
		
		-- reset stab
		if v_var["stab_count"] > 1 then
			v_var["stab_move_said"] = false
		end
		
		--find_remove(nav_tbl["flaps_extending"][lang])
		--find_remove(nav_tbl["flaps_retracting"][lang])
	
	else
		v_var["flaps_0_said"] = false
		v_var["flaps_15_said"] = false
		v_var["flaps_28_said"] = false
		v_var["flaps_36_said"] = false
		v_var["flaps_45_said"] = false
		
		v_var["stab_0_said"] = false
		v_var["stab_15_said"] = false
		v_var["stab_30_said"] = false
		v_var["stab_55_said"] = false
	
	end







	
	-----------------------------------------------
	-- preparing for flight -- 0
	-----------------------------------------------
	
if flight_status == 0 then
	
	-- APU --
	v_var["apu_start"] = get(apu_main_switch) == 1 and get(apu_start_mode) == 1 and get(apu_n1) < 10 and get(apu_fuel_p) > 0.8 and get(apu_doors) > 0.9
	
	if v_var["apu_start"] and not v_var["apu_start_said"] then
		v_var["apu_start_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["start_apu"][lang], 2}
		phrases_tbl[num + 1] = {gnd_tbl["apu_start_ready"][lang], 3}
		
	end

	-- check before engines start --
	v_var["eng_panel_open"] = get(starter_cap) == 1 and get(starter_switch) == 1 and get(starter_mode) == 1
	v_var["engines_not_started"] = get(eng_rpm1) < 5 and get(eng_rpm2) < 5 and get(eng_rpm3) < 5
	
	-- engineer asks ground to check if it's OK to start engines
	if not v_var["eng_start_check_said"] and v_var["eng_panel_open"] and v_var["engines_not_started"] then
		v_var["eng_start_check_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["check_before_start"][lang], 2}
	end
	
	v_var["eng_start_ready"] = get(engine_caps) + get(gear_blocks) + get(sensors_caps) + get(slider_3) + get(slider_4) + get(slider_5) + get(slider_6) + get(slider_7) == 0
	
	-- ground answers engines OK to start
	if v_var["eng_start_check_said"] and not v_var["gnd_eng_start_check_ok_said"] and v_var["eng_start_ready"] then
		v_var["gnd_eng_start_check_ok_said"] = true
		v_var["gnd_doors_open_said"] = true
		v_var["gnd_covers_said"] = true
		v_var["gnd_blocks_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {gnd_tbl["eng_start_ready"][lang], 5}
	
	end
	
	-- ground found doors open
	if v_var["eng_start_check_said"] and not v_var["gnd_doors_open_said"] and get(slider_3) + get(slider_4) + get(slider_5) + get(slider_6) + get(slider_7) ~= 0 then
		v_var["gnd_doors_open_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {gnd_tbl["doors_open"][lang], 3}
	end

	-- ground found covers are not removed
	if v_var["eng_start_check_said"] and not v_var["gnd_covers_said"] and get(engine_caps) + get(sensors_caps) ~= 0 then
		v_var["gnd_covers_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {gnd_tbl["covers_not_removed"][lang], 3}
	end

	
	-- ground found blocks are not removed
	if v_var["eng_start_check_said"] and not v_var["gnd_blocks_said"] and get(gear_blocks) ~= 0 then
		v_var["gnd_blocks_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {gnd_tbl["blocks_not_removed"][lang], 3}
	end	
	
	-- starting engines --
	
	v_var["away_from_eng"] = get(apd_working_1) == 1 or get(apd_working_2) == 1 or get(apd_working_3) == 1
	
	-- clear engines
	if v_var["away_from_eng"] and not v_var["away_from_eng_said"] then
		v_var["away_from_eng_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["clear_engines"][lang], 1}
	
	end
	
	-- starting engine 1
	if get(apd_working_1) == 1 and not v_var["starting_eng1_said"] then
		v_var["starting_eng1_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["start_1"][lang], 3}
		phrases_tbl[num + 1] = {gnd_tbl["start_1"][lang], 1}
		
	end
	
	-- starting engine 2
	if get(apd_working_2) == 1 and not v_var["starting_eng2_said"] then
		v_var["starting_eng2_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["start_2"][lang], 3}
		phrases_tbl[num + 1] = {gnd_tbl["start_2"][lang], 1}
		
	end
	
	-- starting engine 3
	if get(apd_working_3) == 1 and not v_var["starting_eng3_said"] then
		v_var["starting_eng3_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["start_3"][lang], 3}
		phrases_tbl[num + 1] = {gnd_tbl["start_3"][lang], 1}
		
	end	
		
	-- engines started
	v_var["engines_started"] = get(eng_rpm1) > 60 and get(eng_rpm2) > 60 and get(eng_rpm3) > 60
	
	if v_var["engines_started"] and not v_var["engines_go_said"] then 
	
		v_var["engines_go_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["engines_run"][lang], 2}
		phrases_tbl[num + 1] = {gnd_tbl["engines_run"][lang], 2}
		
	end

	-- generators ON. Good bye, ground
	if not v_var["generators_on_said"] and get(sim_gen1_on) + get(sim_gen2_on) + get(sim_gen3_on) == 3 then
	
		v_var["generators_on_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["generators_on"][lang], 3}
		phrases_tbl[num + 1] = {cpt_tbl["turn_on_users"][lang], 2}
		phrases_tbl[num + 2] = {cpt_tbl["engies_go_goodbye"][lang], 5}
		phrases_tbl[num + 3] = {gnd_tbl["good_bye"][lang], 2}
		
		find_remove(eng_tbl["engines_run"][lang])
		find_remove(gnd_tbl["engines_run"][lang])
		
		
		
	end	
	
	
	-----------------------------------------------
	-- taxi before the flight -- 1
	-----------------------------------------------
	
elseif flight_status == 1 then	
	
	if get(parking_brake) == 0 and not v_var["ready_to_taxi_said"] and not v_var["eng_TO_mode"] then
		v_var["ready_to_taxi_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["ready_to_taxi"][lang], 3}
		phrases_tbl[num + 1] = {cpt_tbl["attention_start_taxi"][lang], 5}
	
	end
	
	if v_var["ready_to_taxi_said"] then
		v_var["taxi_count"] = v_var["taxi_count"] + passed_time
	end
	
	if v_var["eng_TO_mode"] or not v_var["on_ground"] then v_var["taxi_count"] = 0 end
	
	if v_var["taxi_count"] > 5 and not v_var["check_brk_said"] and v_var["ready_to_taxi_said"] then
		v_var["check_brk_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["check_brakes"][lang], 3}
			
	end	
	
	-- checking brakes
	if get(l_brake_add) > 0.4 and get(r_brake_add) > 0.4 and not v_var["brk_chk_ok_said"] and v_var["check_brk_said"] then
		v_var["brk_chk_ok_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["brakes_check"][lang], 2}
	end
	
	-- check course and EUP
	-- save positions before checking
	if v_var["taxi_count"] < 1 then 
		v_var["eup_last"] = get(turn_rate_ind)
		v_var["course_last"] = get(big_course_needle)	
	else
		v_var["course_diff"] = get(big_course_needle) - v_var["course_last"]
		if v_var["course_diff"] > 180 then v_var["course_diff"] = v_var["course_diff"] - 360
		elseif v_var["course_diff"] < -180 then v_var["course_diff"] = v_var["course_diff"] + 360 end
		v_var["eup_diff"] = get(turn_rate_ind) - v_var["eup_last"]
	end
	
	-- check positions
	if not v_var["eup_chk_said"] and v_var["taxi_count"] > 10 and ((v_var["course_diff"] > 20 and v_var["eup_diff"] > 5) or (v_var["course_diff"] < -20 and v_var["eup_diff"] < -5)) then
		v_var["eup_chk_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["tks_eup"][lang], 3}
	end	
	
	
	
	
	
	
	
	-- engines take-off mode
	v_var["eng_TO_mode"] = get(rpm_high_1) > 90 and get(rpm_high_2) > 90 and get(rpm_high_3) > 90
	
	if not v_var["engine_TO_said"] and v_var["eng_TO_mode"] then
		v_var["engine_TO_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["takeoff_mode"][lang], 3}
		phrases_tbl[num+1] = {eng_tbl["takeoff_mode"][lang], 3}
	end
	
	
	
	-----------------------------------------------
	-- take off -- 2
	-----------------------------------------------
	
elseif flight_status == 2 then		
	
	-- engines take-off mode
	if not v_var["engine_TO_said"] then
		v_var["engine_TO_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["takeoff_mode"][lang], 3}
		phrases_tbl[num+1] = {eng_tbl["takeoff_mode"][lang], 3}
	end
	
	-- take off speeds
	v_var["v1_spd"] = get(v1_15)
	v_var["vr_spd"] = get(vr_15)
	v_var["v2_spd"] = get(v2_15)
	
	if v_var["flaps_last_L"] < 30 and v_var["flaps_last_L"] > 26 and v_var["flaps_last_R"] < 30 and v_var["flaps_last_R"] > 26 then
		v_var["v1_spd"] = get(v1_28)
		v_var["vr_spd"] = get(vr_28)
		v_var["v2_spd"] = get(v2_28)
	end
	
	
	-- take off
	if v_var["ias_grow"] and get(rpm_high_1) > 90 and get(rpm_high_2) > 90 and get(rpm_high_3) > 90  then
		
		if not v_var["v1_said"] and v_var["ias_now"] > v_var["v1_spd"] - 5 and v_var["on_ground"] then
			v_var["v1_said"] = true
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["v1"][lang], 1}
			v_var["v_rise_said"] = true
			v_var["v_160_said"] = true
			v_var["v_200_said"] = true
			v_var["v_220_said"] = true
			v_var["v_240_said"] = true
			
			find_remove(nav_tbl["spd_240"][lang])
			find_remove(nav_tbl["spd_220"][lang])
			find_remove(nav_tbl["spd_200"][lang])
			find_remove(nav_tbl["spd_160"][lang])
			find_remove(nav_tbl["spd_alive"][lang])
			
		elseif not v_var["vr_said"] and v_var["ias_now"] > v_var["vr_spd"] and v_var["on_ground"] then
			v_var["vr_said"] = true
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["rotate"][lang], 1}
		
		elseif not v_var["v2_said"] and v_var["ias_now"] > v_var["v2_spd"] and v_var["vvi_now"] > 1 then
			v_var["v2_said"] = true
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["pos_rate"][lang], 2}
			phrases_tbl[num + 1] = {cpt_tbl["gear_up"][lang], 2}
		end
		
		
			
		if not v_var["v_240_said"] and v_var["ias_now"] > 235 and not v_var["v1_said"] and v_var["on_ground"] then
			v_var["v_240_said"] = true
			v_var["v_220_said"] = true
			v_var["v_200_said"] = true
			v_var["v_rise_said"] = true
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["spd_240"][lang], 1}
			
		elseif not v_var["v_220_said"] and v_var["ias_now"] > 215 and not v_var["v1_said"] and v_var["on_ground"] then
			v_var["v_220_said"] = true
			v_var["v_200_said"] = true
			v_var["v_rise_said"] = true
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["spd_220"][lang], 1}
			
		elseif not v_var["v_200_said"] and v_var["ias_now"] > 195 and not v_var["v1_said"] and v_var["on_ground"] then
			v_var["v_200_said"] = true
			v_var["v_rise_said"] = true
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["spd_200"][lang], 1}
	
		elseif not v_var["v_rise_said"] and v_var["ias_now"] > 130 and v_var["on_ground"] then
			v_var["v_rise_said"] = true
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["spd_alive"][lang], 2}
		
		end
		
		
	
	end	
	
	
	
	-- initial climb
	if not v_var["set_gear_up_said"] and get(gear_lever) == -1 then
		v_var["set_gear_up_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["gear_up"][lang], 2}
	end
	
	-- gear up fact
	if not v_var["gear_up_said"] and get(gear1_deploy) + get(gear2_deploy) + get(gear3_deploy) == 0 and get(gear_lever) == -1 then
		v_var["gear_up_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["gears_up"][lang], 2}
	
	end
	
	-- set gear lever ntr
	if not v_var["set_gear_ntr_said"] and v_var["gear_up_said"] and v_var["flaps_0_said"] then 
		v_var["set_gear_ntr_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["gear_neutr"][lang], 2}
	end
	
	-- gear ntr
	if not v_var["gear_ntr_said"] and v_var["set_gear_ntr_said"] and get(gear_lever) == 0 then
		v_var["gear_ntr_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["gear_lever_neutr"][lang], 3}
	end	
	
	-- alt 50
	if not v_var["alt50_said"] and get(rv5_alt) > 45 and not v_var["on_ground"] and v_var["v2_said"] then 
		v_var["alt50_said"] = true
		local num = find_empty()
		if get(rv5_alt) < 65 then phrases_tbl[num] = {nav_tbl["alt_50"][lang], 2} end
		if get(landing_ext_set_L) + get(landing_ext_set_R) == 2 and get(landing_mode_set_L) == 1 and get(landing_mode_set_R) == 1 then
			num = find_empty()
			phrases_tbl[num] = {cpt_tbl["lights_off"][lang], 3}
		end
	end
	
	-- lights off and in
	if not v_var["lights_off_said"] and get(landing_ext_set_L) + get(landing_ext_set_R) == 0 and get(landing_mode_set_L) == 0 and get(landing_mode_set_R) == 0 and v_var["alt50_said"] then
		v_var["lights_off_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["lights_off"][lang], 2}
	end	
	
	-- spd 360
	if not v_var["v_360_said"] and v_var["ias_now"] > 355 and v_var["ias_grow"] then
		v_var["v_360_said"] = true
		v_var["v_330_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["spd_360"][lang], 2}
		if v_var["flaps_last_L"] > 10 then phrases_tbl[num + 1] = {cpt_tbl["flaps_0"][lang], 1} end
	-- spd 330
	elseif not v_var["v_330_said"] and v_var["ias_now"] > 325 and v_var["ias_grow"] then
		v_var["v_330_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["spd_330"][lang], 2}
		
		if v_var["flaps_last_L"] > 16 then phrases_tbl[num + 1] = {cpt_tbl["flaps_15"][lang], 2} end
		
	end
	
	
	
	----------------------------------------------
	-- climb -- 3
	----------------------------------------------
	
elseif flight_status == 3 then		
	
	-- initial climb
	if not v_var["set_gear_up_said"] and get(gear_lever) == -1 then
		v_var["set_gear_up_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["gear_up"][lang], 2}
	end
	
	-- gear up fact
	if not v_var["gear_up_said"] and get(gear1_deploy) + get(gear2_deploy) + get(gear3_deploy) == 0 and get(gear_lever) == -1 then
		v_var["gear_up_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["gears_up"][lang], 2}
	
	end
	
	-- set gear lever ntr
	if not v_var["set_gear_ntr_said"] and v_var["gear_up_said"] and v_var["flaps_0_said"] then 
		v_var["set_gear_ntr_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["gear_neutr"][lang], 2}
	end
	
	-- gear ntr
	if not v_var["gear_ntr_said"] and v_var["set_gear_ntr_said"] and get(gear_lever) == 0 then
		v_var["gear_ntr_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["gear_lever_neutr"][lang], 3}
	end	
	
	-- spd 360
	if not v_var["v_360_said"] and v_var["ias_now"] > 355 and v_var["ias_grow"] then
		v_var["v_360_said"] = true
		v_var["v_330_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["spd_360"][lang], 2}
		if v_var["flaps_last_L"] > 10 then phrases_tbl[num + 1] = {cpt_tbl["flaps_0"][lang], 1} end
	-- spd 330
	elseif not v_var["v_330_said"] and v_var["ias_now"] > 325 and v_var["ias_grow"] then
		v_var["v_330_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["spd_330"][lang], 2}
		
		if v_var["flaps_last_L"] > 16 then phrases_tbl[num + 1] = {cpt_tbl["flaps_15"][lang], 2} end
		
	end	
	
	-- press 1013
	if not v_var["press1013_said"] and get(rv5_alt) > 600 and get(pressure_L) == 1013 and get(pressure_R) == 1013 then
		v_var["press1013_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["pressure_1013"][lang], 2}
	
	end	
	
	
	
	
	
	-----------------------------------------------
	-- en-route -- 4
	-----------------------------------------------
	
elseif flight_status == 4 then		
	
	-- press 1013
	if not v_var["press1013_said"] and get(rv5_alt) > 600 and get(pressure_L) == 1013 and get(pressure_R) == 1013 then
		v_var["press1013_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["pressure_1013"][lang], 2}
	
	end		
	
	-- TKS sync
	if get(tks_course_set) ~= 0 and v_var["tks_set_counter"] > 600 then
		v_var["tks_set_counter"] = 0
		--v_var["setting_tks_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["set_ort_course"][lang], 2}
	

	end
	
	if get(tks_course_set) == 0 then v_var["tks_set_counter"] = v_var["tks_set_counter"] + passed_time end
	
	
	
	
	
	----------------------------------------------
	-- descend -- 5
	----------------------------------------------
	----------------------------------------------
	-- approach -- 6
	----------------------------------------------	
elseif flight_status == 5 or flight_status == 6 then		
	
	
	-- TKS sync
	if get(tks_course_set) ~= 0 and v_var["tks_set_counter"] > 600 then
		v_var["tks_set_counter"] = 0
		--v_var["setting_tks_said"] = true
		
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["set_ort_course"][lang], 2}
	

	end
	
	if get(tks_course_set) == 0 then v_var["tks_set_counter"] = v_var["tks_set_counter"] + passed_time end
	
	-- gear down procedure
	v_var["gear_deployed"] = get(gear1_deploy) == 1 and get(gear2_deploy) == 1 and get(gear3_deploy) == 1
	v_var["gear_retracted"] = get(gear1_deploy) < 0.1 and get(gear2_deploy) < 0.1 and get(gear3_deploy) < 0.1
	
	if not v_var["gear_down_cpt_said"] and v_var["gear_retracted"] and get(rv5_alt) < 500 and v_var["ias_now"] < 450 then
		v_var["gear_down_cpt_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["gear_down"][lang], 1}
	
	end
	
	if not v_var["gear_down_cop_said"] and v_var["gear_down_cpt_said"] and get(gear_lever) == 1 then
		v_var["gear_down_cop_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["down_gear"][lang], 1}
	
	end
	
	if not v_var["gear_down_fact_cop_said"] and v_var["gear_deployed"] and v_var["gear_down_cop_said"] then
		v_var["gear_down_fact_cop_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["gear_down"][lang], 1}
	
	end	
	
	
	if v_var["gear_deployed"] and v_var["gear_down_fact_cop_said"] then
		v_var["gear_down_counter"] = v_var["gear_down_counter"] + passed_time
	else v_var["gear_down_counter"] = 0
	
	end	
	
	if not v_var["set_gear_ntr_2_said"] and v_var["gear_down_counter"] > 15 then
		v_var["set_gear_ntr_2_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {eng_tbl["gear_neutr"][lang], 2}
	
	end	
	
	
	if not v_var["gear_ntr_2_said"] and v_var["set_gear_ntr_2_said"] and get(gear_lever) == 0 then
		v_var["gear_ntr_2_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cop_tbl["gear_lever_neutr"][lang], 2}
		phrases_tbl[num+1] = {eng_tbl["gear_down"][lang], 2}
	end	
	
	-- lites
	if not v_var["extend_lites_said"] and v_var["gear_down_cpt_said"] and v_var["flaps_last_L"] > 27 and get(landing_ext_set_L) + get(landing_ext_set_R) == 0 and v_var["ias_now"] < 300 then
		v_var["extend_lites_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["lights_out"][lang], 2}
	
	end
	
	if not v_var["lites_full_said"] and v_var["extend_lites_said"] and v_var["flaps_last_L"] > 27 and get(rv5_alt) < 200 then
		v_var["lites_full_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["lights_landing"][lang], 2}
	
	end		
	
	
	
	
	
	-- navigator's altitude callouts -- 
	if v_var["vvi_now"] < 0.5 then
	
		if not v_var["call_1_said"] and get(rv5_alt) < 1.5 and not v_var["on_ground"] then
			v_var["call_1_said"] = true
			
			v_var["call_10_said"] = true
			v_var["call_5_said"] = true
			v_var["call_3_said"] = true
			v_var["call_2_said"] = true
			
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["1m"][lang], 2}
				
		end
		
		if not v_var["call_2_said"] and get(rv5_alt) < 2.5 and not v_var["on_ground"] then
			v_var["call_2_said"] = true
			
			v_var["call_10_said"] = true
			v_var["call_5_said"] = true
			v_var["call_3_said"] = true
			
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["2m"][lang], 0.5}
				
		end
		
		if not v_var["call_3_said"] and get(rv5_alt) < 4 and not v_var["on_ground"] then
			v_var["call_3_said"] = true
			
			v_var["call_10_said"] = true
			v_var["call_5_said"] = true			
			
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["3m"][lang], 0.5}
				
		end
		
		if not v_var["call_5_said"] and get(rv5_alt) < 6 and not v_var["on_ground"] then
			v_var["call_5_said"] = true
			
			v_var["call_10_said"] = true
			
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["5m"][lang], 0.5}
				
		end
		
		if not v_var["call_10_said"] and get(rv5_alt) < 11 and not v_var["on_ground"] then
			v_var["call_10_said"] = true
			
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["10m"][lang], 1}
				
		end
		
		

	else
		v_var["call_10_said"] = false
		v_var["call_5_said"] = false
		v_var["call_3_said"] = false
		v_var["call_2_said"] = false
		v_var["call_1_said"] = false
	
	
	end	
	
	if get(rv5_alt) > 20 then
		v_var["call_10_said"] = false
		v_var["call_5_said"] = false
		v_var["call_3_said"] = false
		v_var["call_2_said"] = false
		v_var["call_1_said"] = false
	end
	
	-- decission
	if not v_var["rating_said"] and not v_var["on_ground"] and v_var["vvi_now"] < 0 and (get(rv_angle) - get(dh_set) < 40 or get(rv5_alt) < 60) and get(rv5_alt) < 300 then
		v_var["rating_said"] = true
		
		add_important({nav_tbl["score"][lang], 1})
		
	end
	
	if not v_var["decision_said"] and not v_var["on_ground"] and v_var["vvi_now"] < 0 and get(rv_lamp) > 0 and get(rv_test_btn) ~= 1 and get(rv5_alt) < 300 then
		v_var["decision_said"] = true
		
		add_important({nav_tbl["minimums"][lang], 1})
		
	end	
	
	
	
	
	
	
	
	----------------------------------------------
	-- TOGA -- 7
	----------------------------------------------
	
elseif flight_status == 7 then		
	
	flight_status = 2 -- switch to Take-off state
	
	

	
	
	----------------------------------------------
	-- after touch down -- 8
	----------------------------------------------
	
elseif flight_status == 8 then		
	
	-- spoilers
	if not v_var["spoilers_said"] and get(spoilers_lever) > 0.5 and get(spoilers_inn_left) > 0.5 and get(spoilers_inn_right) > 0.5 then
		v_var["spoilers_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["spoilers_out"][lang], 2}
	
	elseif get(spoilers_lever) < 0.1 and get(spoilers_inn_left) < 0.1 and get(spoilers_inn_right) < 0.1 then
		v_var["spoilers_said"] = false
	
	end
	
	-- reverse
	if not v_var["set_reverse_said"] and not v_var["reverse_off_said"] and get(revers_flap_L) < 0.1 and get(revers_flap_R) < 0.1 then
		v_var["set_reverse_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["reverse"][lang], 2}
	end
	
	if not v_var["reverse_off_said"] and get(revers_flap_L) > 0.8 and get(revers_flap_R) > 0.8 and v_var["ias_now"] < 160 then
		v_var["reverse_off_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["reverse_off"][lang], 2}
	end	
	
	-- flaps remove
	if not v_var["remove_flaps_said"] and get(groundspeed) < 10 then
		v_var["remove_flaps_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["remove_flaps_lights"][lang], 3}	
	
	end	
	

		
	
	
	
	
	
	----------------------------------------------
	-- on ramp -- 9
	----------------------------------------------
	
elseif flight_status == 9 then		
	
	-- brakes set
	if not v_var["on_brakes_said"] and get(groundspeed) < 1 and get(parking_brake) == 1 then
		v_var["on_brakes_said"] = true
		local num = find_empty()
		phrases_tbl[num] = {cpt_tbl["parking_brakes"][lang], 3}
		
	end
	
	
	
	
	
	
	
	
	
	
end	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	reset_timer = reset_timer + passed_time
	
	if get(reset_crew) == 1 then reset_timer = 0 end
	
end