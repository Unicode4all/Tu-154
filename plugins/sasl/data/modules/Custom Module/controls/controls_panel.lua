-- this is flight controls panel

-- controls
defineProperty("stab_man_cap", globalPropertyi("tu154ce/controll/stab_man_cap")) -- крышка управления стабилизатором
defineProperty("stab_manual", globalPropertyi("tu154ce/controll/stab_manual")) -- уплавение стабилизатором. 0 - нейтр, +1 - кабрирование
defineProperty("stab_setting", globalPropertyi("tu154ce/controll/stab_setting")) -- положение центровки для стаба. 0 - З, 1 - С, 2 - П	1
defineProperty("ail_trimm_sw", globalPropertyi("tu154ce/controll/ail_trimm_sw")) -- переключатель триммера элеронов
defineProperty("rudd_trimm_sw", globalPropertyi("tu154ce/controll/rudd_trimm_sw")) -- переключатель триммера РН
defineProperty("contr_force_cap", globalPropertyi("tu154ce/controll/contr_force_cap")) -- крышка переключателя загружателя РВ РН
defineProperty("contr_force_set", globalPropertyi("tu154ce/controll/contr_force_set")) -- переключатель загружателя РВ РН. -1 - полет, 0 авто, +1 - взлет-посадка

defineProperty("nosewheel_turn_enable", globalPropertyi("tu154ce/switchers/nosewheel_turn_enable")) -- выключатель поворота передней стойки на штурвале
defineProperty("nosewheel_turn_sel", globalPropertyi("tu154ce/switchers/nosewheel_turn_sel")) -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63
defineProperty("nosewheel_turn_cap", globalPropertyi("tu154ce/switchers/nosewheel_turn_cap")) -- вкрышка переключателя угла поворота
defineProperty("slat_man", globalPropertyi("tu154ce/switchers/slat_man")) -- ручное управление предкрылками. -1 - уборка, 0 выкл, +1 - выпуск
defineProperty("slat_man_cap", globalPropertyi("tu154ce/switchers/slat_man_cap")) -- крышка ручного урпавления предкрылками
defineProperty("flaps_sel", globalPropertyi("tu154ce/switchers/flaps_sel")) -- выбор режимов работы закрылков. -1 - выкл, 0 - авт, +1 - ручное
defineProperty("flaps_sel_cap", globalPropertyi("tu154ce/switchers/flaps_sel_cap")) -- крышка выбора работы закрылков
defineProperty("gears_retr_lock", globalPropertyi("tu154ce/switchers/gears_retr_lock")) -- блокировка уборки шасси
defineProperty("gears_retr_lock_cap", globalPropertyi("tu154ce/switchers/gears_retr_lock_cap")) -- крышка блокировки уборки шасси
defineProperty("gears_ext_3GS", globalPropertyi("tu154ce/switchers/gears_ext_3GS")) -- выпуск шасси от 3ГС	
defineProperty("gears_ext_3GS_cap", globalPropertyi("tu154ce/switchers/gears_ext_3GS_cap")) -- крышка выпуска шасси от 3ГС

defineProperty("buster_on_1", globalPropertyi("tu154ce/switchers/console/buster_on_1")) -- выключатель бустера
defineProperty("buster_on_2", globalPropertyi("tu154ce/switchers/console/buster_on_2")) -- выключатель бустера
defineProperty("buster_on_3", globalPropertyi("tu154ce/switchers/console/buster_on_3")) -- выключатель бустера
defineProperty("busters_cap", globalPropertyi("tu154ce/switchers/console/busters_cap")) -- крышка выключателей бустеров

defineProperty("elev_trimm_switcher", globalPropertyi("tu154ce/controll/elev_trimm_switcher")) -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование

defineProperty("emerg_elev_trimm", globalPropertyi("tu154ce/switchers/console/emerg_elev_trimm")) -- аварийное управление триммером
defineProperty("emerg_elev_trimm_cap", globalPropertyi("tu154ce/switchers/console/emerg_elev_trimm_cap")) -- аварийное управление триммером

defineProperty("lamp_test", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка теста ламп
defineProperty("lamp_test_eng", globalPropertyi("tu154ce/buttons/lamp_test_upper_gear")) -- кнопка теста ламп


defineProperty("flaps_lever", globalPropertyf("tu154ce/controll/flaps_lever")) -- sim flaps ratio control. use for axis and commands
defineProperty("gear_lever", globalPropertyi("tu154ce/controll/gear_lever")) -- ручка выпуска шасси. -1 - уборка, 0 - нейтр, +1 - выпуск

defineProperty("anim_rud1", globalPropertyf("tu154ce/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154ce/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154ce/controlls/throttle_3")) -- РУД 3

-- gauges
defineProperty("stab_ind", globalPropertyf("tu154ce/gauges/misc/stab_ind")) -- индикатор положения стаб
defineProperty("elevator_ind", globalPropertyf("tu154ce/gauges/misc/elevator_ind")) -- индикатор положения стаб
defineProperty("flap_left_ind", globalPropertyf("tu154ce/gauges/misc/flap_left_ind")) -- индикатор положения стаб
defineProperty("flap_right_ind", globalPropertyf("tu154ce/gauges/misc/flap_right_ind")) -- индикатор положения стаб

-- lamps
defineProperty("stab_work", globalPropertyf("tu154ce/lights/stab_work")) -- стабилиз включен
defineProperty("flaps_1_valve", globalPropertyf("tu154ce/lights/flaps_1_valve")) -- закрылки 1 ПК
defineProperty("flaps_2_valve", globalPropertyf("tu154ce/lights/flaps_2_valve")) -- закрылки 2 ПК
defineProperty("spoilers_mid_left", globalPropertyf("tu154ce/lights/spoilers_mid_left")) -- интерцепторы средн лев
defineProperty("spoilers_mid_right", globalPropertyf("tu154ce/lights/spoilers_mid_right")) -- интерцепторы средн прав
defineProperty("spoilers_inn_left", globalPropertyf("tu154ce/lights/spoilers_inn_left")) -- интерцепторы внутр лев
defineProperty("spoilers_inn_right", globalPropertyf("tu154ce/lights/spoilers_inn_right")) -- интерцепторы внутр прав

defineProperty("flaps_unsync", globalPropertyf("tu154ce/lights/flaps_unsync")) -- рассинхр закрылки
defineProperty("slats_unsync", globalPropertyf("tu154ce/lights/slats_unsync")) -- рассинхр предкр
defineProperty("slats_extended", globalPropertyf("tu154ce/lights/slats_extended")) -- предкрылки выпущены

defineProperty("to_rudder", globalPropertyf("tu154ce/lights/to_rudder")) -- взлет-посадка РН
defineProperty("to_elevator", globalPropertyf("tu154ce/lights/to_elevator")) -- взлет-посадка РВ
defineProperty("trimm_zero_course", globalPropertyf("tu154ce/lights/trimm_zero_course")) -- нетрально курс
defineProperty("trimm_zero_roll", globalPropertyf("tu154ce/lights/trimm_zero_roll")) -- нетрально крен
defineProperty("trimm_zero_pitch", globalPropertyf("tu154ce/lights/trimm_zero_pitch")) -- нетрально тангаж

defineProperty("gears_not_ext", globalPropertyf("tu154ce/lights/gears_not_ext")) -- шасси не выпущенны
defineProperty("gears_red_left", globalPropertyf("tu154ce/lights/gears_red_left")) -- шасси 
defineProperty("gears_red_front", globalPropertyf("tu154ce/lights/gears_red_front")) -- шасси 
defineProperty("gears_red_right", globalPropertyf("tu154ce/lights/gears_red_right")) -- шасси 
defineProperty("gears_green_left", globalPropertyf("tu154ce/lights/gears_green_left")) -- шасси 
defineProperty("gears_green_front", globalPropertyf("tu154ce/lights/gears_green_front")) -- шасси 
defineProperty("gears_green_right", globalPropertyf("tu154ce/lights/gears_green_right")) -- шасси 

defineProperty("gears_red_left_eng", globalPropertyf("tu154ce/lights/gears_red_left_eng")) -- шасси 
defineProperty("gears_red_front_eng", globalPropertyf("tu154ce/lights/gears_red_front_eng")) -- шасси 
defineProperty("gears_red_right_eng", globalPropertyf("tu154ce/lights/gears_red_right_eng")) -- шасси 
defineProperty("gears_green_left_eng", globalPropertyf("tu154ce/lights/gears_green_left_eng")) -- шасси 
defineProperty("gears_green_front_eng", globalPropertyf("tu154ce/lights/gears_green_front_eng")) -- шасси 
defineProperty("gears_green_right_eng", globalPropertyf("tu154ce/lights/gears_green_right_eng")) -- шасси 


-- sources
defineProperty("elevator_L", globalPropertyf("sim/flightmodel/controls/hstab1_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("elevator_R", globalPropertyf("sim/flightmodel/controls/hstab2_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("stab_pos", globalPropertyf("sim/flightmodel2/controls/elevator_trim")) -- sim pitch trimmer
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too

defineProperty("spd_brk_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_spo1def")) -- inner speedbrake left Degrees
defineProperty("spd_brk_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_spo1def")) -- inner speedbrake right Degrees

defineProperty("spd_brk_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_spo2def")) -- middle speedbrake left Degrees
defineProperty("spd_brk_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_spo2def")) -- middle speedbrake right Degrees

defineProperty("int_pitch_trim", globalPropertyf("tu154ce/trimmers/int_pitch_trim")) -- положение триммера руля высоты
defineProperty("int_roll_trim", globalPropertyf("tu154ce/trimmers/int_roll_trim")) -- положение триммера элеронов
defineProperty("int_yaw_trim", globalPropertyf("tu154ce/trimmers/int_yaw_trim")) -- положение триммера руля направления

defineProperty("control_force_pos", globalPropertyf("tu154ce/controls/control_force_pos")) -- положение загружателя РВ. 0 - выклчюен, 1 - подключен
defineProperty("control_force_pos_rud", globalPropertyf("tu154ce/controls/control_force_pos_rud")) -- положение загружателя РН. 0 - выклчюен, 1 - подключен

defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 


defineProperty("indicated_airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- приборная скорость
defineProperty("machno", globalPropertyf("sim/flightmodel/misc/machno")) -- скорость Маха

defineProperty("anim_rud1", globalPropertyf("tu154ce/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154ce/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154ce/controlls/throttle_3")) -- РУД 3

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

-- other datarefs
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- control surfaces

--defineProperty("slats", globalPropertyf("sim/flightmodel/controls/slatrat")) -- slats position. this one works
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set"))
defineProperty("rv5_alt_L", globalPropertyf("tu154ce/misc/rv5_alt_left"))  -- высота на левом высотомере
defineProperty("rv5_alt_R", globalPropertyf("tu154ce/misc/rv5_alt_right"))  -- высота на левом высотомере


-- alarm
defineProperty("main_gear_flaps", globalPropertyi("tu154ce/alarm/main_gear_flaps")) -- не взлетное положение закрылков или не выпущенны шасси

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

include("smooth_light.lua")



-- sounds
local rotary_sound = loadSample('Custom Sounds/plastic_switch.wav')
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')

local passed = get(frame_time)

local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(buster_on_1, 0)
		set(buster_on_2, 0)
		set(buster_on_3, 0)
		
		set(busters_cap, 1)
		
		set(nosewheel_turn_sel, 1)
		set(nosewheel_turn_cap, 1)
		
	end
	
	notLoaded = false
end


local stab_work_lit = false
local stab_work_timer = 0
local stab_pos_last = get(stab_pos)

local forcer_lit = false
local forcer_timer = 0

local forcer_rud_lit = false
local forcer_timer_rud = 0

local flap_L_pos_last = 0
local flap_R_pos_last = 0

local slats_lit = false
local slats_timer = 0
local slats_last = 0

local gear_timer = 0

local function lamps()
	local day_night = 1 - get(day_night_set) * 0.8
	local test_btn = get(lamp_test) * math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	local test_btn_eng = get(lamp_test_eng) * math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	
	local stab_work_brt = 0
	local stab_pos_now = get(stab_pos)
	
	--print(stab_pos_now, stab_pos_now - stab_pos_last)
	if math.abs(stab_pos_now - stab_pos_last) > 0.01 * passed then 
		stab_work_timer = stab_work_timer + passed
		if stab_work_timer > 0.5 then
			stab_work_timer = 0
			stab_work_lit = not stab_work_lit
		end
	else
		stab_work_timer = 0
		stab_work_lit = false
	end
	if stab_work_lit then stab_work_brt = 1 end
	stab_work_brt = math.max(stab_work_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(stab_work, smooth_light(stab_work_brt, get(stab_work))) end

	stab_pos_last = stab_pos_now
	
	--  - get(flap_inn_R)
	local flap_pos_now_L = get(flap_inn_L)
	local flap_pos_now_R = get(flap_inn_R)
	
	local flaps_1_valve_brt = 0--math.min(1, get(flap_inn_L))
	if flap_L_pos_last ~= flap_pos_now_L then flaps_1_valve_brt = 1 end
	flaps_1_valve_brt = math.max(flaps_1_valve_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(flaps_1_valve, smooth_light(flaps_1_valve_brt, get(flaps_1_valve))) end
	
	local flaps_2_valve_brt = 0--math.min(1, get(flap_inn_R))
	if flap_R_pos_last ~= flap_pos_now_R then flaps_2_valve_brt = 1 end
	flaps_2_valve_brt = math.max(flaps_2_valve_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(flaps_2_valve, smooth_light(flaps_2_valve_brt, get(flaps_2_valve))) end
	
	flap_L_pos_last = flap_pos_now_L
	flap_R_pos_last = flap_pos_now_R
		
	local spoilers_mid_left_brt = math.min(1, get(spd_brk_mid_L))
	spoilers_mid_left_brt = math.max(spoilers_mid_left_brt * lamps_brt, test_btn)
	set(spoilers_mid_left, smooth_light(spoilers_mid_left_brt, get(spoilers_mid_left)))

	local spoilers_mid_right_brt = math.min(1, get(spd_brk_mid_R))
	spoilers_mid_right_brt = math.max(spoilers_mid_right_brt * lamps_brt, test_btn) 
	set(spoilers_mid_right, smooth_light(spoilers_mid_right_brt, get(spoilers_mid_right)))

	local spoilers_inn_left_brt = math.min(1, get(spd_brk_inn_L))
	spoilers_inn_left_brt = math.max(spoilers_inn_left_brt * lamps_brt, test_btn) 
	set(spoilers_inn_left, smooth_light(spoilers_inn_left_brt, get(spoilers_inn_left)))	

	local spoilers_inn_right_brt = math.min(1, get(spd_brk_inn_R))
	spoilers_inn_right_brt = math.max(spoilers_inn_right_brt * lamps_brt, test_btn)
	set(spoilers_inn_right, smooth_light(spoilers_inn_right_brt, get(spoilers_inn_right)))		
	
	
	
	local flaps_unsync_brt = 0
	if math.abs(flap_pos_now_L - flap_pos_now_R) >= 3 then flaps_unsync_brt = 1 end
	flaps_unsync_brt = math.max(flaps_unsync_brt * lamps_brt, test_btn)
	set(flaps_unsync, smooth_light(flaps_unsync_brt, get(flaps_unsync)))

	local slats_unsync_brt = 0
	slats_unsync_brt = math.max(slats_unsync_brt * lamps_brt, test_btn)
	set(slats_unsync, smooth_light(slats_unsync_brt, get(slats_unsync)))

	local slats_extended_brt = 0
	local slats_now = get(slats)
	if math.abs(slats_now - slats_last) ~= 0 then 
		slats_timer = slats_timer + passed
		if slats_timer > 0.5 then
			slats_timer = 0
			slats_lit = not slats_lit
		end
	elseif slats_now > 0.1 then
			slats_timer = 0
			slats_lit = true	
	else
		stab_work_timer = 0
		slats_lit = false
	end
	if slats_lit then slats_extended_brt = 1 end

	slats_last = slats_now
	slats_extended_brt = math.max(slats_extended_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(slats_extended, smooth_light(slats_extended_brt, get(slats_extended))) end	
	

	
	local to_rudder_brt = 0
	local to_elevator_brt = 0
	
	-- elevator forcer
	local forcer_pos = get(control_force_pos)	
	if forcer_pos < 1 and forcer_pos > 0 then 
		forcer_timer = forcer_timer + passed 
		if forcer_timer > 0.5 then
			forcer_timer = 0
			forcer_lit = not forcer_lit
		end
	elseif forcer_pos == 0 then
		forcer_lit = true
	else 
		forcer_lit = false
	end
	
	if forcer_lit then 
		--to_rudder_brt = 1 
		to_elevator_brt = 1
	end	
	
	-- rudder forcer
	local forcer_rud_pos = get(control_force_pos_rud)
	if forcer_rud_pos < 1 and forcer_rud_pos > 0 then 
		forcer_timer_rud = forcer_timer_rud + passed 
		if forcer_timer_rud > 0.5 then
			forcer_timer_rud = 0
			forcer_rud_lit = not forcer_rud_lit
		end
	elseif forcer_rud_pos == 0 then
		forcer_rud_lit = true
	else 
		forcer_rud_lit = false
	end
	
	if forcer_rud_lit then 
		to_rudder_brt = 1 
		--to_elevator_brt = 1
	end		
	
	
	to_rudder_brt = math.max(to_rudder_brt * lamps_brt, test_btn)
	set(to_rudder, smooth_light(to_rudder_brt, get(to_rudder)))
	
	to_elevator_brt = math.max(to_elevator_brt * lamps_brt, test_btn)
	set(to_elevator, smooth_light(to_elevator_brt, get(to_elevator)))

	local trimm_zero_course_brt = 0
	if math.abs(get(int_yaw_trim)) < 0.002 then trimm_zero_course_brt = 1 end
	trimm_zero_course_brt = math.max(trimm_zero_course_brt * lamps_brt, test_btn)
	set(trimm_zero_course, smooth_light(trimm_zero_course_brt, get(trimm_zero_course)))

	local trimm_zero_roll_brt = 0
	if math.abs(get(int_roll_trim)) < 0.002 then trimm_zero_roll_brt = 1 end
	trimm_zero_roll_brt = math.max(trimm_zero_roll_brt * lamps_brt, test_btn)
	set(trimm_zero_roll, smooth_light(trimm_zero_roll_brt, get(trimm_zero_roll)))	

	local trimm_zero_pitch_brt = 0
	if math.abs(get(int_pitch_trim)) < 0.004 then trimm_zero_pitch_brt = 1 end
	trimm_zero_pitch_brt = math.max(trimm_zero_pitch_brt * lamps_brt, test_btn)
	set(trimm_zero_pitch, smooth_light(trimm_zero_pitch_brt, get(trimm_zero_pitch))) 

	local gear_F_pos = get(gear1_deploy)
	local gear_L_pos = get(gear2_deploy)
	local gear_R_pos = get(gear3_deploy)
	
	local gear_not_ext = (gear_F_pos < 0.99 or gear_L_pos < 0.99 or gear_R_pos < 0.99) and (get(indicated_airspeed) * 1.852 < 325 and math.min(get(rv5_alt_L), get(rv5_alt_R)) < 250)
	gear_not_ext = gear_not_ext and (get(anim_rud1) + get(anim_rud2) + get(anim_rud3) < 2 and get(gear_lever) <= 0) 
	-- any gear not on lock, speed less than 325 and throttles set les than 90%
	
	
	if gear_not_ext then
		gear_timer = gear_timer + passed
	else
		gear_timer = 0
	end
	
	if gear_timer > 0.6 then gear_timer = 0 end
	
	
	local gears_not_ext_brt = math.max(bool2int(gear_timer > 0.3) * lamps_brt, test_btn) 
	
	
	
	set(gears_not_ext, smooth_light(gears_not_ext_brt, get(gears_not_ext))) 
	
	local gears_red_left_brt = bool2int(gear_L_pos < 0.99 and gear_L_pos > 0.01)
	gears_red_left_brt = math.max(gears_red_left_brt * lamps_brt, test_btn)
	set(gears_red_left, smooth_light(gears_red_left_brt, get(gears_red_left))) 
	
	local gears_red_front_brt = bool2int(gear_F_pos < 0.99 and gear_F_pos > 0.01)
	gears_red_front_brt = math.max(gears_red_front_brt * lamps_brt, test_btn)
	set(gears_red_front, smooth_light(gears_red_front_brt, get(gears_red_front))) 
	
	local gears_red_right_brt = bool2int(gear_R_pos < 0.99 and gear_R_pos > 0.01)
	gears_red_right_brt = math.max(gears_red_right_brt * lamps_brt, test_btn)
	set(gears_red_right, smooth_light(gears_red_right_brt, get(gears_red_right))) 
	
	local gears_green_left_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_left_brt = math.max(gears_green_left_brt * lamps_brt, test_btn)
	set(gears_green_left, smooth_light(gears_green_left_brt, get(gears_green_left))) 
	
	local gears_green_front_brt = bool2int(gear_F_pos >= 0.99)
	gears_green_front_brt = math.max(gears_green_front_brt * lamps_brt, test_btn)
	set(gears_green_front, smooth_light(gears_green_front_brt, get(gears_green_front))) 
	
	local gears_green_right_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_right_brt = math.max(gears_green_right_brt * lamps_brt, test_btn)
	set(gears_green_right, smooth_light(gears_green_right_brt, get(gears_green_right))) 
	
	
	
	local gears_red_left_eng_brt = bool2int(gear_L_pos < 0.99 and gear_L_pos > 0.01)
	gears_red_left_eng_brt = math.max(gears_red_left_eng_brt * lamps_brt, test_btn_eng)
	set(gears_red_left_eng, smooth_light(gears_red_left_eng_brt, get(gears_red_left_eng))) 
	
	local gears_red_front_eng_brt = bool2int(gear_F_pos < 0.99 and gear_F_pos > 0.01)
	gears_red_front_eng_brt = math.max(gears_red_front_eng_brt * lamps_brt, test_btn_eng)
	set(gears_red_front_eng, smooth_light(gears_red_front_eng_brt, get(gears_red_front_eng))) 
	
	local gears_red_right_eng_brt = bool2int(gear_R_pos < 0.99 and gear_R_pos > 0.01)
	gears_red_right_eng_brt = math.max(gears_red_right_eng_brt * lamps_brt, test_btn_eng)
	set(gears_red_right_eng, smooth_light(gears_red_right_eng_brt, get(gears_red_right_eng))) 
	
	local gears_green_left_eng_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_left_eng_brt = math.max(gears_green_left_eng_brt * lamps_brt, test_btn_eng)
	set(gears_green_left_eng, smooth_light(gears_green_left_eng_brt, get(gears_green_left_eng))) 
	
	local gears_green_front_eng_brt = bool2int(gear_F_pos >= 0.99)
	gears_green_front_eng_brt = math.max(gears_green_front_eng_brt * lamps_brt, test_btn_eng)
	set(gears_green_front_eng, smooth_light(gears_green_front_eng_brt, get(gears_green_front_eng))) 
	
	local gears_green_right_eng_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_right_eng_brt = math.max(gears_green_right_eng_brt * lamps_brt, test_btn_eng)
	set(gears_green_right_eng, smooth_light(gears_green_right_eng_brt, get(gears_green_right_eng))) 
	
	
	
	
	
	
	
	
	-- alarm
	local sound_alarm = gear_not_ext or ((flap_pos_now_L < 14 or flap_pos_now_R < 14 or slats_now < 0.5) and math.max(get(anim_rud1), get(anim_rud2), get(anim_rud3)) > 0.7 and math.max(get(deflection_mtr_2), get(deflection_mtr_3)) > 0.05)
	
	set(main_gear_flaps, bool2int(sound_alarm))
	
	

end



local stab_ind_act = 0
local elev_ind_act = 0
local flap_ind_L_act = 0
local flap_ind_R_act = 0

local mach_tbl = {
{-10, 1},
{0, 1},
{0.1, 1},
{0.25, 0.5},
{0.34, 0.28},
{0.38, 0.22},
{0.5, 0.21},
{0.6, 0.21}, -- fail
{0.7, 0.2},
{0.8, 0.19}, 
{0.9, 0.13},
{1, 0.1},
{10, 0.1}}

local function gauges()
	-- add power here
	local stabil_ind = 0
	local elev_ind = 0
	local flap_ind_L = 0
	local flap_ind_R = 0
	
	--print(get(stab_pos))
	
	if get(bus36_volt_left) > 30 then
		stabil_ind = get(stab_pos) * 5.5
		elev_ind = -get(elevator_L)
		flap_ind_L = get(flap_inn_L)
		flap_ind_R = get(flap_inn_R)
	end
	
	-- calculate correction for elevator
	local ias = get(indicated_airspeed) * 1.852
	local mach = get(machno)
	
	local elev_coef = 1 
	if mach < 1 then elev_coef = 1 / interpolate(mach_tbl, mach)
	else elev_coef = 1/0.1 end
	
	
	
	
	
	
	stab_ind_act = stab_ind_act + (stabil_ind - stab_ind_act) * passed * 10
	elev_ind_act = elev_ind_act + (elev_ind * elev_coef - elev_ind_act) * passed * 10
	flap_ind_L_act = flap_ind_L_act + (flap_ind_L - flap_ind_L_act) * passed * 10
	flap_ind_R_act = flap_ind_R_act + (flap_ind_R - flap_ind_R_act) * passed * 10
	
	
	set(stab_ind, stab_ind_act)
	set(elevator_ind, elev_ind_act)
	set(flap_left_ind, flap_ind_L_act)
	set(flap_right_ind, flap_ind_R_act)
	
end


local stab_man_cap_last = get(stab_man_cap)
local contr_force_cap_last = get(contr_force_cap)
local nosewheel_turn_cap_last = get(nosewheel_turn_cap)
local slat_man_cap_last = get(slat_man_cap)
local gears_retr_lock_cap_last = get(gears_retr_lock_cap)
local gears_ext_3GS_cap_last = get(gears_ext_3GS_cap)
local busters_cap_last = get(busters_cap)
local flaps_sel_cap_last = get(flaps_sel_cap)
local emerg_elev_trimm_cap_last = get(emerg_elev_trimm_cap)

local function caps_check()

	local stab_man_cap_sw = get(stab_man_cap)
	local contr_force_cap_sw = get(contr_force_cap)
	local nosewheel_turn_cap_sw = get(nosewheel_turn_cap)
	local slat_man_cap_sw = get(slat_man_cap)
	local gears_retr_lock_cap_sw = get(gears_retr_lock_cap)
	local gears_ext_3GS_cap_sw = get(gears_ext_3GS_cap)
	local busters_cap_sw = get(busters_cap)
	local flaps_sel_cap_sw = get(flaps_sel_cap)
	local emerg_elev_trimm_cap_sw = get(emerg_elev_trimm_cap)
	
	if busters_cap_sw == 0 and get(buster_on_1) * get(buster_on_2) * get(buster_on_3) == 0 then 
		set(busters_cap, 1) 
		busters_cap_sw = 1
	end
	
	local changes = stab_man_cap_sw + contr_force_cap_sw + nosewheel_turn_cap_sw + slat_man_cap_sw + gears_retr_lock_cap_sw + gears_ext_3GS_cap_sw + busters_cap_sw + flaps_sel_cap_sw + emerg_elev_trimm_cap_sw
	
	changes = changes - stab_man_cap_last - contr_force_cap_last - nosewheel_turn_cap_last - slat_man_cap_last - gears_retr_lock_cap_last - gears_ext_3GS_cap_last - busters_cap_last - flaps_sel_cap_last - emerg_elev_trimm_cap_last
	
	if changes ~= 0 then  end
	

	stab_man_cap_last = stab_man_cap_sw
	contr_force_cap_last = contr_force_cap_sw
	nosewheel_turn_cap_last = nosewheel_turn_cap_sw
	slat_man_cap_last = slat_man_cap_sw
	gears_retr_lock_cap_last = gears_retr_lock_cap_sw
	gears_ext_3GS_cap_last = gears_ext_3GS_cap_sw
	busters_cap_last = busters_cap_sw
	flaps_sel_cap_last = flaps_sel_cap_sw
	emerg_elev_trimm_cap_last = emerg_elev_trimm_cap_sw
	
	-- set switchers under caps
	if nosewheel_turn_cap_sw == 0 then set(nosewheel_turn_sel, 0) end
	if contr_force_cap_sw == 0 then set(contr_force_set, 0) end
	if gears_retr_lock_cap_sw == 0 then set(gears_retr_lock, 0) end
	if flaps_sel_cap_sw == 0 then set(flaps_sel, 0) end
	if gears_ext_3GS_cap_sw == 0 then set(gears_ext_3GS, 0) end
end



local stab_manual_last = get(stab_manual)
local stab_setting_last = get(stab_setting)
local ail_trimm_sw_last = get(ail_trimm_sw)
local rudd_trimm_sw_last = get(rudd_trimm_sw)
local contr_force_set_last = get(contr_force_set)
local nosewheel_turn_enable_last = get(nosewheel_turn_enable)
local nosewheel_turn_sel_last = get(nosewheel_turn_sel)
local slat_man_last = get(slat_man)
local flaps_sel_last = get(flaps_sel)
local gears_retr_lock_last = get(gears_retr_lock)
local gears_ext_3GS_last = get(gears_ext_3GS)
local buster_on_1_last = get(buster_on_1)
local buster_on_2_last = get(buster_on_2)
local buster_on_3_last = get(buster_on_3)
local emerg_elev_trimm_last = get(emerg_elev_trimm)

local function swichers_check()

	local stab_manual_sw = get(stab_manual)
	local stab_setting_sw = get(stab_setting)
	local ail_trimm_sw_sw = get(ail_trimm_sw)
	local rudd_trimm_sw_sw = get(rudd_trimm_sw)
	local contr_force_set_sw = get(contr_force_set)
	local nosewheel_turn_enable_sw = get(nosewheel_turn_enable)
	local nosewheel_turn_sel_sw = get(nosewheel_turn_sel)
	local slat_man_sw = get(slat_man)
	local flaps_sel_sw = get(flaps_sel)
	local gears_retr_lock_sw = get(gears_retr_lock)
	local gears_ext_3GS_sw = get(gears_ext_3GS)
	local buster_on_1_sw = get(buster_on_1)
	local buster_on_2_sw = get(buster_on_2)
	local buster_on_3_sw = get(buster_on_3)
	local emerg_elev_trimm_sw = get(emerg_elev_trimm)
	
	
	
	local changes = stab_manual_sw + stab_setting_sw + ail_trimm_sw_sw + rudd_trimm_sw_sw + contr_force_set_sw + nosewheel_turn_enable_sw + emerg_elev_trimm_sw
	changes = changes + nosewheel_turn_sel_sw + slat_man_sw + flaps_sel_sw + gears_retr_lock_sw + gears_ext_3GS_sw + buster_on_1_sw + buster_on_2_sw + buster_on_3_sw
	
	changes = changes - stab_manual_last - stab_setting_last - ail_trimm_sw_last - rudd_trimm_sw_last - contr_force_set_last - nosewheel_turn_enable_last - nosewheel_turn_sel_last
	changes = changes - slat_man_last - flaps_sel_last - gears_retr_lock_last - gears_ext_3GS_last - buster_on_1_last - buster_on_2_last - buster_on_3_last - emerg_elev_trimm_last
	
	if changes ~= 0 then  end

	stab_manual_last = stab_manual_sw
	stab_setting_last = stab_setting_sw
	ail_trimm_sw_last = ail_trimm_sw_sw
	rudd_trimm_sw_last = rudd_trimm_sw_sw
	contr_force_set_last = contr_force_set_sw
	nosewheel_turn_enable_last = nosewheel_turn_enable_sw
	nosewheel_turn_sel_last = nosewheel_turn_sel_sw
	slat_man_last = slat_man_sw
	flaps_sel_last = flaps_sel_sw
	gears_retr_lock_last = gears_retr_lock_sw
	gears_ext_3GS_last = gears_ext_3GS_sw
	buster_on_1_last = buster_on_1_sw
	buster_on_2_last = buster_on_2_sw
	buster_on_3_last = buster_on_3_sw
	emerg_elev_trimm_last = emerg_elev_trimm_sw


end




local sim_start_timer = 0

function update()
	passed = get(frame_time)
	sim_start_timer = sim_start_timer + passed
	
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	
		swichers_check() -- make them sound
		caps_check() -- make them sound
	end	
	
	gauges()
	lamps()

end






