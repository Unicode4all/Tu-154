-- this is various lamps, that connects different gauges and systems

-- power and test buttons

defineProperty("lamp_test", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп на передней панели	0
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))





-- lamps
defineProperty("dh_lamp", globalPropertyf("tu154ce/lights/decision_height")) -- высота принятия решения Н
defineProperty("to_not_ready", globalPropertyf("tu154ce/lights/to_not_ready")) -- к взлету не готов
defineProperty("fuel_less_2500", globalPropertyf("tu154ce/lights/fuel_less_2500")) -- остаток топлива 2500
defineProperty("sso_danger", globalPropertyf("tu154ce/lights/sso_danger")) -- ССО опасно
defineProperty("sso_connect", globalPropertyf("tu154ce/lights/sso_connect")) -- ССО связь
defineProperty("speed_high", globalPropertyf("tu154ce/lights/speed_high")) -- предел скорости
--
defineProperty("damper_course", globalPropertyf("tu154ce/lights/damper_course")) -- демпер курс
defineProperty("damper_roll", globalPropertyf("tu154ce/lights/damper_roll")) -- демпер крен
defineProperty("damper_pitch", globalPropertyf("tu154ce/lights/damper_pitch")) -- демпер тангаж

defineProperty("no_reserve_c", globalPropertyf("tu154ce/lights/no_reserve_c")) -- нет резерва К
defineProperty("no_reserve_g", globalPropertyf("tu154ce/lights/no_reserve_g")) -- нет резерва Г

defineProperty("msg_lamp", globalPropertyf("tu154ce/lights/msg_lamp")) -- MSG
defineProperty("wpt_lamp", globalPropertyf("tu154ce/lights/wpt_lamp")) -- WPT
defineProperty("stuard_call", globalPropertyf("tu154ce/lights/stuard_call")) -- вызов БП

defineProperty("sns_lamp", globalPropertyf("tu154ce/lights/sns_lamp")) -- СНС


-- sources
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

-- DH
defineProperty("dh_set_L", globalPropertyf("tu154ce/gauges/alt/radioalt_dh_left"))  -- DH angle
defineProperty("rv_angle_L", globalPropertyf("tu154ce/gauges/alt/radioalt_needle_left"))  -- RV needle
defineProperty("dh_set_R", globalPropertyf("tu154ce/gauges/alt/radioalt_dh_right"))  -- DH angle
defineProperty("rv_angle_R", globalPropertyf("tu154ce/gauges/alt/radioalt_needle_right"))  -- RV needle

defineProperty("rv5_dh_signal_left", globalPropertyi("tu154ce/misc/rv5_dh_signal_left"))
defineProperty("rv5_dh_signal_right", globalPropertyi("tu154ce/misc/rv5_dh_signal_right"))



-- TakeOff ready
defineProperty("nosewheel_steer_on", globalPropertyi("sim/cockpit2/controls/nosewheel_steer_on"))
defineProperty("nosewheel_turn_sel", globalPropertyi("tu154ce/switchers/nosewheel_turn_sel")) -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63

defineProperty("cargo_1", globalPropertyf("tu154ce/anim/cargo_1")) -- положение багажной двери 1. 0 - закрыта, 1 - открыта
defineProperty("cargo_2", globalPropertyf("tu154ce/anim/cargo_2")) -- положение багажной двери 1. 0 - закрыта, 1 - открыта
defineProperty("pax_door_1", globalPropertyf("tu154ce/anim/pax_door_1")) -- положение передних пасс дверей
defineProperty("pax_door_2", globalPropertyf("tu154ce/anim/pax_door_2")) -- положение средних пасс дверей
defineProperty("pax_door_3", globalPropertyf("tu154ce/anim/pax_door_3")) -- положение правых аварийных дверей

defineProperty("busters_cap", globalPropertyi("tu154ce/switchers/console/busters_cap")) -- крышка выключателей бустеров

defineProperty("spd_brk_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_spo1def")) -- inner speedbrake left Degrees
defineProperty("spd_brk_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_spo1def")) -- inner speedbrake right Degrees
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too

defineProperty("gear2_deflect", globalPropertyf("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
defineProperty("gear3_deflect", globalPropertyf("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear

-- fuel 2500
defineProperty("tank1_w", globalPropertyf("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight

-- speed
defineProperty("ias_L", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot")) -- indicated airspeed in KTS
defineProperty("ias_R", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot"))

defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters
defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg
defineProperty("mach_sim", globalPropertyf("sim/flightmodel/misc/machno")) -- Mach number
defineProperty("rel_pitot", globalPropertyi("sim/operation/failures/rel_pitot")) -- Pitot 1 - Blockage
defineProperty("rel_pitot2", globalPropertyi("sim/operation/failures/rel_pitot2")) -- Pitot 2 - Blockage

-- KLN
defineProperty("WPTalert", globalPropertyi("tu154ce/xap/KLN90/WPT"))
defineProperty("MSGalert", globalPropertyi("tu154ce/xap/KLN90/MSG"))

defineProperty("speaker_speed", globalPropertyi("tu154ce/alarm/speaker_speed")) -- предельная скорость

-- ABSU
defineProperty("damp_roll_lamp", globalPropertyi("tu154ce/absu/damp_roll_lamp")) -- 
defineProperty("damp_pitch_lamp", globalPropertyi("tu154ce/absu/damp_pitch_lamp")) -- 
defineProperty("damp_yaw_lamp", globalPropertyi("tu154ce/absu/damp_yaw_lamp")) -- 
defineProperty("roll_contr_lamp", globalPropertyi("tu154ce/absu/roll_contr_lamp")) -- 
defineProperty("pitch_contr_lamp", globalPropertyi("tu154ce/absu/pitch_contr_lamp")) -- 
defineProperty("man_roll_lamp", globalPropertyi("tu154ce/absu/man_roll_lamp")) -- 
defineProperty("man_pitch_lamp", globalPropertyi("tu154ce/absu/man_pitch_lamp")) -- 
defineProperty("man_toga_lamp", globalPropertyi("tu154ce/absu/man_toga_lamp")) -- 

defineProperty("absu_landing_on", globalPropertyi("tu154ce/switchers/console/absu_landing_on")) -- стрелки посадка
defineProperty("roll_main_mode", globalPropertyi("tu154ce/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154ce/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб


-- CourseMP
defineProperty("nav_cs_flag", globalPropertyi("tu154ce/radio/nav1_cs_flag"))
defineProperty("nav_gs_flag", globalPropertyi("tu154ce/radio/nav1_gs_flag"))

defineProperty("nav1_pow_cc", globalPropertyf("tu154ce/radio/nav1_pow_cc")) -- потребление тока от КурсМП
defineProperty("nav2_pow_cc", globalPropertyf("tu154ce/radio/nav2_pow_cc")) -- потребление тока от КурсМП
defineProperty("nav1_fail", globalPropertyi("tu154ce/failures/nav1_fail")) -- fail
defineProperty("nav2_fail", globalPropertyi("tu154ce/failures/nav2_fail")) -- fail

-- ready
defineProperty("to_ready", globalPropertyi("tu154ce/checklist/to_ready")) -- лампа горит








local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

local button_last = 0

local DH = 0

local to_not_ready_counter = 0
local to_not_ready_lit = 0

local fuel2500_counter = 0
local fuel2500_lit = 0

local WPT_counter = 0
local WPT_lit = 0

local MSG_counter = 0
local MSG_lit = 0

local TO_notReadyAct = 0


function update()
	
	
	local passed = get(frame_time)
	
	-- power and controlls
	local test_btn = get(lamp_test)-- 
	if button_last ~= test_btn then playSample(button_sound, 0) end
	button_last = test_btn
	test_btn = test_btn * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	
	
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	
	
	-- DH lamp
	DH = math.max(get(rv5_dh_signal_left), get(rv5_dh_signal_right))
	
	
	--if dh_L < 1 and dh_R < 1 then DH = 0 end
	
	local dh_lamp_brt = math.max(DH * lamps_brt, test_btn)
	set(dh_lamp, dh_lamp_brt)
	
	
	-- TO not ready
	local TO_ready = get(nosewheel_steer_on) == 1 and get(nosewheel_turn_sel) == 0 and get(busters_cap) == 0
	TO_ready = TO_ready and get(cargo_1) + get(cargo_2) + get(pax_door_1) + get(pax_door_2) + get(pax_door_2) + get(pax_door_3) == 0
	TO_ready = TO_ready and get(spd_brk_inn_L) + get(spd_brk_inn_R) < 1 and get(slats) > 0.9
	TO_ready = TO_ready or (get(gear2_deflect) < 0.05 or get(gear3_deflect) < 0.05)
	
	
	if not TO_ready then
		to_not_ready_counter = to_not_ready_counter + passed
		if to_not_ready_counter > 0.3 then 
			to_not_ready_lit = 1 - to_not_ready_lit
			to_not_ready_counter = 0
		end
		set(to_ready, 1)
	else
		to_not_ready_counter = 0
		to_not_ready_lit = 0
		set(to_ready, 0)
	end
	
	TO_notReadyAct = TO_notReadyAct + (to_not_ready_lit - TO_notReadyAct) * passed * 10
	
	
	local to_not_ready_brt = math.max(TO_notReadyAct * lamps_brt, test_btn)
	set(to_not_ready, to_not_ready_brt)
	
	-- fuel 2500
	if get(tank1_w) < 2500 then 
		fuel2500_counter = fuel2500_counter + passed
		if fuel2500_counter > 0.3 then 
			fuel2500_lit = 1 - fuel2500_lit
			fuel2500_counter = 0
		end
		
	else
		fuel2500_counter = 0
		fuel2500_lit = 0
	end
	
	local fuel_less_2500_brt = math.max(fuel2500_lit * lamps_brt, test_btn)
	set(fuel_less_2500, fuel_less_2500_brt)
	
	-- overspeed
	local alt_std_mtr = (get(msl_alt) * 3.28083 + (29.92 - get(msl_press)) * 1000) / 3.28083  -- calculate altitude in meters above standart pressure
	
	local ias = get(ias_L) * 1.852 -- km/h
	if get(rel_pitot) == 6 then ias = get(ias_R) * 1.852 end -- temp automatic switch
	
	local mach = get(mach_sim)
	
	local over_spd = (alt_std_mtr < 7000 and ias > 600) or (alt_std_mtr >= 7000 and alt_std_mtr < 10300 and ias > 575) or (alt_std_mtr >= 10300 and mach > 0.88)
	
	set(speaker_speed, bool2int(over_spd))
	
	local speed_high_brt = math.max(bool2int(over_spd) * lamps_brt, test_btn)
	set(speed_high, speed_high_brt)
	
	
	-- KLN	
	if get(MSGalert) == 1 then
		MSG_counter = MSG_counter + passed
		if MSG_counter > 0.3 then 
			MSG_lit = 1 - MSG_lit
			MSG_counter = 0
		end
	else
		MSG_counter = 0
		MSG_lit = 0
	end
	
	
	local msg_lamp_brt = math.max(MSG_lit * lamps_brt, test_btn)
	set(msg_lamp, msg_lamp_brt)
	
	
	if get(WPTalert) == 1 then
		WPT_counter = WPT_counter + passed
		if WPT_counter > 0.3 then 
			WPT_lit = 1 - WPT_lit
			WPT_counter = 0
		end
	else
		WPT_counter = 0
		WPT_lit = 0
	end	
	
	
	
	local wpt_lamp_brt = math.max(WPT_lit * lamps_brt, test_btn)
	set(wpt_lamp, wpt_lamp_brt)
	
	-- dampers
	local damper_course_brt = math.max(get(damp_yaw_lamp) * lamps_brt, test_btn)
	set(damper_course, damper_course_brt)
	
	local damper_roll_brt = math.max(get(damp_roll_lamp) * lamps_brt, test_btn)
	set(damper_roll, damper_roll_brt)
	
	local damper_pitch_brt = math.max(get(damp_pitch_lamp) * lamps_brt, test_btn)
	set(damper_pitch, damper_pitch_brt)
	
	-- CourseMP
	local no_reserve_c_brt = math.max(bool2int(get(absu_landing_on) == 1 and (get(nav1_fail) == 1 or get(nav2_fail) == 1 or get(nav1_pow_cc) == 0 or get(nav2_pow_cc) == 0)) * lamps_brt, test_btn)
	set(no_reserve_c, no_reserve_c_brt)
	
	local no_reserve_g_brt = math.max(bool2int(get(absu_landing_on) == 1 and (get(nav1_fail) == 1 or get(nav2_fail) == 1 or get(nav1_pow_cc) == 0 or get(nav2_pow_cc) == 0)) * lamps_brt, test_btn)
	set(no_reserve_g, no_reserve_g_brt)
	
	
	
	--[[
	local no_reserve_c_brt = math.max(get(nav_cs_flag) * bool2int(get(roll_main_mode) > 0 and get(pitch_main_mode) > 0 and get(absu_landing_on) == 1) * lamps_brt, test_btn)
	set(no_reserve_c, no_reserve_c_brt)
	
	local no_reserve_g_brt = math.max(get(nav_gs_flag) * bool2int(get(roll_main_mode) > 0 and get(pitch_main_mode) > 0 and get(absu_landing_on) == 1) * lamps_brt, test_btn)
	set(no_reserve_g, no_reserve_g_brt)
	--]]
	
	
	
	--------------------------
	-- fake lamps --
	--------------------------
	
	local sso_danger_brt = math.max(0 * lamps_brt, test_btn)
	set(sso_danger, sso_danger_brt)
	
	local sso_connect_brt = math.max(0 * lamps_brt, test_btn)
	set(sso_connect, sso_connect_brt)
	
	local stuard_call_brt = math.max(0 * lamps_brt, test_btn)
	set(stuard_call, stuard_call_brt)
	
	--local sns_lamp_brt = math.max(0 * lamps_brt, test_btn)
	--set(sns_lamp, sns_lamp_brt)
	
	
	

end