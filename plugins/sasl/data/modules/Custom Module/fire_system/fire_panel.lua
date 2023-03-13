-- this is fire system panel
-- controls
defineProperty("lamp_test", globalPropertyi("tu154ce/buttons/lamp_test_fire_panel")) -- кнопка проверки ламп на пожарной панели	0
defineProperty("lamp_test_2", globalPropertyi("tu154ce/buttons/lamp_test_engines")) -- кнопка проверки ламп на пожарной панели	0
defineProperty("smoke_test", globalPropertyi("tu154ce/buttons/eng/smoke_test")) -- проверка датчиков дыма
defineProperty("ext_test", globalPropertyi("tu154ce/buttons/eng/ext_test")) -- проверка огнетушителей


defineProperty("lamp_test_front", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп передней панели

defineProperty("fire_ext_1", globalPropertyi("tu154ce/buttons/eng/fire_ext_1")) -- очередь тушения пожара
defineProperty("fire_ext_2", globalPropertyi("tu154ce/buttons/eng/fire_ext_2")) -- очередь тушения пожара
defineProperty("fire_ext_3", globalPropertyi("tu154ce/buttons/eng/fire_ext_3")) -- очередь тушения пожара
defineProperty("cold_eng_1", globalPropertyi("tu154ce/buttons/eng/cold_eng_1")) -- подача хладона
defineProperty("cold_eng_2", globalPropertyi("tu154ce/buttons/eng/cold_eng_2")) -- подача хладона
defineProperty("cold_eng_3", globalPropertyi("tu154ce/buttons/eng/cold_eng_3")) -- подача хладона
defineProperty("cold_apu", globalPropertyi("tu154ce/buttons/eng/cold_apu")) -- подача хладона
defineProperty("neutral_gas", globalPropertyi("tu154ce/buttons/eng/neutral_gas")) -- нейтральный газ

defineProperty("fire_sensor_sel", globalPropertyi("tu154ce/switchers/eng/fire_sensor_sel")) -- выбор группы датчиков
defineProperty("fire_place_sel", globalPropertyi("tu154ce/switchers/eng/fire_place_sel")) -- выбор отсека

defineProperty("fire_main_switch", globalPropertyi("tu154ce/switchers/eng/fire_main_switch")) -- выключатель пожарной системы
defineProperty("fire_buzzer", globalPropertyi("tu154ce/switchers/eng/fire_buzzer")) -- пожарная сирена
defineProperty("fire_buzzer_cap", globalPropertyi("tu154ce/switchers/eng/fire_buzzer_cap")) -- пожарная сирена

-- lamps
defineProperty("smoke_1", globalPropertyf("tu154ce/lights/fire/smoke_1")) -- дым в отсеках
defineProperty("smoke_2", globalPropertyf("tu154ce/lights/fire/smoke_2")) -- дым в отсеках
defineProperty("smoke_zone2_left", globalPropertyf("tu154ce/lights/fire/smoke_zone2_left")) -- дым в отсеках
defineProperty("smoke_zone2_right", globalPropertyf("tu154ce/lights/fire/smoke_zone2_right")) -- дым в отсеках
defineProperty("smoke_zone3", globalPropertyf("tu154ce/lights/fire/smoke_zone3")) -- дым в отсеках
defineProperty("smoke_zone4", globalPropertyf("tu154ce/lights/fire/smoke_zone4")) -- дым в отсеках
defineProperty("smoke_zone5_left", globalPropertyf("tu154ce/lights/fire/smoke_zone5_left")) -- дым в отсеках
defineProperty("smoke_zone5_right", globalPropertyf("tu154ce/lights/fire/smoke_zone5_right")) -- дым в отсеках
defineProperty("smoke_zone6", globalPropertyf("tu154ce/lights/fire/smoke_zone6")) -- дым в отсеках

defineProperty("fire_eng_1", globalPropertyf("tu154ce/lights/fire/fire_eng_1")) -- пожар в двигателе
defineProperty("fire_eng_2", globalPropertyf("tu154ce/lights/fire/fire_eng_2")) -- пожар в двигателе
defineProperty("fire_eng_3", globalPropertyf("tu154ce/lights/fire/fire_eng_3")) -- пожар в двигателе

defineProperty("overheat_eng_1", globalPropertyf("tu154ce/lights/fire/overheat_eng_1")) -- перегрев двигателя
defineProperty("overheat_eng_2", globalPropertyf("tu154ce/lights/fire/overheat_eng_2")) -- перегрев двигателя
defineProperty("overheat_eng_3", globalPropertyf("tu154ce/lights/fire/overheat_eng_3")) -- перегрев двигателя

defineProperty("fuel_off_eng_1", globalPropertyf("tu154ce/lights/fire/fuel_off_eng_1")) -- топливо закрыто
defineProperty("fuel_off_eng_2", globalPropertyf("tu154ce/lights/fire/fuel_off_eng_2")) -- топливо закрыто
defineProperty("fuel_off_eng_3", globalPropertyf("tu154ce/lights/fire/fuel_off_eng_3")) -- топливо закрыто

defineProperty("check_overheat", globalPropertyf("tu154ce/lights/fire/check_overheat")) -- проверь перегрев и дым
defineProperty("fire_apu", globalPropertyf("tu154ce/lights/fire/fire_apu")) -- пожар ВСУ
defineProperty("turn_on_spz", globalPropertyf("tu154ce/lights/fire/turn_on_spz")) -- включи СПЗ


defineProperty("button_fire_eng_1", globalPropertyf("tu154ce/lights/button/fire_eng_1")) -- тушение пожара двиг 1
defineProperty("button_fire_eng_2", globalPropertyf("tu154ce/lights/button/fire_eng_2")) -- тушение пожара двиг 2
defineProperty("button_fire_eng_3", globalPropertyf("tu154ce/lights/button/fire_eng_3")) -- тушение пожара двиг 3
defineProperty("button_fire_apu", globalPropertyf("tu154ce/lights/button/fire_apu")) -- тушение пожара ВСУ
defineProperty("button_fire_ng", globalPropertyf("tu154ce/lights/button/fire_ng")) -- тушение пожара НГ
defineProperty("button_fire_turn_3", globalPropertyf("tu154ce/lights/button/fire_turn_3")) -- тушение пожара двиг 1
defineProperty("button_fire_turn_2", globalPropertyf("tu154ce/lights/button/fire_turn_2")) -- тушение пожара двиг 1
defineProperty("button_fire_turn_1", globalPropertyf("tu154ce/lights/button/fire_turn_1")) -- тушение пожара двиг 1


defineProperty("throttle_1_fire", globalPropertyf("tu154ce/lights/small/throttle_1_fire")) -- лампа пожара на РУД
defineProperty("throttle_2_fire", globalPropertyf("tu154ce/lights/small/throttle_2_fire")) -- лампа пожара на РУД
defineProperty("throttle_3_fire", globalPropertyf("tu154ce/lights/small/throttle_3_fire")) -- лампа пожара на РУД

defineProperty("fire_lamp", globalPropertyf("tu154ce/lights/fire")) -- ПОЖАР



defineProperty("eng1_dangerous_vibro", globalPropertyf("tu154ce/lights/engines/eng1_dangerous_vibro")) -- опасная вибрация
defineProperty("eng2_dangerous_vibro", globalPropertyf("tu154ce/lights/engines/eng2_dangerous_vibro")) -- опасная вибрация
defineProperty("eng3_dangerous_vibro", globalPropertyf("tu154ce/lights/engines/eng3_dangerous_vibro")) -- опасная вибрация




defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- other sources


defineProperty("ext_used_1", globalPropertyi("tu154ce/fire/ext_used_1")) -- огнетушитель использован
defineProperty("ext_used_2", globalPropertyi("tu154ce/fire/ext_used_2")) -- огнетушитель использован
defineProperty("ext_used_3", globalPropertyi("tu154ce/fire/ext_used_3")) -- огнетушитель использован

defineProperty("ng_used", globalPropertyi("tu154ce/fire/ng_used")) -- НГ использован

defineProperty("valve_open_1", globalPropertyi("tu154ce/fire/valve_open_1")) -- кран тушения двиг 1
defineProperty("valve_open_2", globalPropertyi("tu154ce/fire/valve_open_2")) -- кран тушения двиг 2
defineProperty("valve_open_3", globalPropertyi("tu154ce/fire/valve_open_3")) -- кран тушения двиг 3
defineProperty("valve_open_4", globalPropertyi("tu154ce/fire/valve_open_4")) -- кран тушения ВСУ

defineProperty("engine_fire_state_1", globalPropertyi("tu154ce/fire/engine_fire_state_1")) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
defineProperty("engine_fire_state_2", globalPropertyi("tu154ce/fire/engine_fire_state_2")) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
defineProperty("engine_fire_state_3", globalPropertyi("tu154ce/fire/engine_fire_state_3")) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
defineProperty("engine_fire_state_4", globalPropertyi("tu154ce/fire/engine_fire_state_4")) -- состояние ВСУ. 0 - норм, 1 - перегрев, 2 - пожар

defineProperty("engine_fuel_cut_1", globalPropertyi("tu154ce/fire/engine_fuel_cut_1")) -- топливо перекрыто
defineProperty("engine_fuel_cut_2", globalPropertyi("tu154ce/fire/engine_fuel_cut_2")) -- топливо перекрыто
defineProperty("engine_fuel_cut_3", globalPropertyi("tu154ce/fire/engine_fuel_cut_3")) -- топливо перекрыто

defineProperty("fire_vlv_open_1", globalPropertyf("tu154ce/fuel/fire_vlv_open_1")) -- пожарный кран открыт
defineProperty("fire_vlv_open_2", globalPropertyf("tu154ce/fuel/fire_vlv_open_2")) -- пожарный кран открыт
defineProperty("fire_vlv_open_3", globalPropertyf("tu154ce/fuel/fire_vlv_open_3")) -- пожарный кран открыт

defineProperty("fire_detected", globalPropertyi("tu154ce/fire/fire_detected")) -- обнаружен пожар
defineProperty("fire_siren", globalPropertyi("tu154ce/fire/fire_siren")) -- работа сирены
include("smooth_light.lua")
-- sounds
local rotary_sound = loadSample('Custom Sounds/plastic_switch.wav')
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

local passed = get(frame_time)


local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(fire_main_switch, 0)

	end
	
	notLoaded = false
end


local lamp_test_last = get(lamp_test)
local smoke_test_last = get(smoke_test)
local ext_test_last = get(ext_test)
local fire_ext_1_last = get(fire_ext_1)
local fire_ext_2_last = get(fire_ext_2)
local fire_ext_3_last = get(fire_ext_3)
local cold_eng_1_last = get(cold_eng_1)
local cold_eng_2_last = get(cold_eng_2)
local cold_eng_3_last = get(cold_eng_3)
local cold_apu_last = get(cold_apu)
local neutral_gas_last = get(neutral_gas)

local fire_sensor_sel_last = get(fire_sensor_sel)
local fire_place_sel_last = get(fire_place_sel)

local fire_main_switch_last = get(fire_main_switch)
local fire_buzzer_last = get(fire_buzzer)

local fire_buzzer_cap_last = get(fire_buzzer_cap)


local function swichers_check()

	local lamp_test_sw = get(lamp_test)
	local smoke_test_sw = get(smoke_test)
	local ext_test_sw = get(ext_test)
	local fire_ext_1_sw = get(fire_ext_1)
	local fire_ext_2_sw = get(fire_ext_2)
	local fire_ext_3_sw = get(fire_ext_3)
	local cold_eng_1_sw = get(cold_eng_1)
	local cold_eng_2_sw = get(cold_eng_2)
	local cold_eng_3_sw = get(cold_eng_3)
	local cold_apu_sw = get(cold_apu)
	local neutral_gas_sw = get(neutral_gas)

	local fire_sensor_sel_sw = get(fire_sensor_sel)
	local fire_place_sel_sw = get(fire_place_sel)

	local fire_main_switch_sw = get(fire_main_switch)
	local fire_buzzer_sw = get(fire_buzzer)

	local fire_buzzer_cap_sw = get(fire_buzzer_cap)
	
	
	
	
	local changes_but = lamp_test_sw + smoke_test_sw + ext_test_sw + fire_ext_1_sw + fire_ext_2_sw + fire_ext_3_sw
	changes_but = changes_but + cold_eng_1_sw + cold_eng_2_sw + cold_eng_3_sw + cold_apu_sw + neutral_gas_sw
	
	changes_but = changes_but - lamp_test_last - smoke_test_last - ext_test_last - fire_ext_1_last - fire_ext_2_last - fire_ext_3_last
	changes_but = changes_but - cold_eng_1_last - cold_eng_2_last - cold_eng_3_last - cold_apu_last - neutral_gas_last
	
	if changes_but ~= 0 then  end -- play sound
	
	local changes_rot = fire_sensor_sel_sw + fire_place_sel_sw - fire_sensor_sel_last - fire_place_sel_last
	
	if changes_rot ~= 0 then --[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]] end -- play sound
	
	local changes_sw = fire_main_switch_sw + fire_buzzer_sw - fire_main_switch_last - fire_buzzer_last
	
	if changes_sw ~= 0 then  end -- play sound
	
	if fire_buzzer_cap_sw ~= fire_buzzer_cap_last then  end -- play sound
	
	
	if fire_buzzer_cap_sw == 0 then set(fire_buzzer, 1) end
	
	
	lamp_test_last = lamp_test_sw
	smoke_test_last = smoke_test_sw
	ext_test_last = ext_test_sw
	fire_ext_1_last = fire_ext_1_sw
	fire_ext_2_last = fire_ext_2_sw
	fire_ext_3_last = fire_ext_3_sw
	cold_eng_1_last = cold_eng_1_sw
	cold_eng_2_last = cold_eng_2_sw
	cold_eng_3_last = cold_eng_3_sw
	cold_apu_last = cold_apu_sw
	neutral_gas_last = neutral_gas_sw
	
	
	fire_sensor_sel_last = fire_sensor_sel_sw
	fire_place_sel_last = fire_place_sel_sw

	fire_main_switch_last = fire_main_switch_sw
	fire_buzzer_last = fire_buzzer_sw

	fire_buzzer_cap_last = fire_buzzer_cap_sw



end

local sheck_smoke_lit = false
local check_smoke_counter = 0

local fire_lit = false
local fire_counter = 0


local function lamps()

	local power_sw = get(fire_main_switch)
	local test_btn = get(lamp_test) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)-- * power_sw
	local test_btn_2 = get(lamp_test_2) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)-- * power_sw
	
	local test_btn_frnt = get(lamp_test_front) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)-- * power_sw
	
	
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local smoke_test_but = get(smoke_test)
	
	local smoke_1_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_1, smooth_light(smoke_1_brt, get(smoke_1)))
	
	local smoke_2_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_2, smooth_light(smoke_2_brt, get(smoke_2)))

	local smoke_zone2_left_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone2_left, smooth_light(smoke_zone2_left_brt, get(smoke_zone2_left)))
	
	local smoke_zone2_right_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone2_right, smooth_light(smoke_zone2_right_brt, get(smoke_zone2_right)))

	local smoke_zone3_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone3, smooth_light(smoke_zone3_brt, get(smoke_zone3)))
	
	local smoke_zone4_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone4, smooth_light(smoke_zone4_brt, get(smoke_zone4)))
	
	local smoke_zone5_left_brt = math.max(smoke_test_but * power_sw * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone5_left, smooth_light(smoke_zone5_left_brt, get(smoke_zone5_left)))
	
	local smoke_zone5_right_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone5_right, smooth_light(smoke_zone5_right_brt, get(smoke_zone5_right)))
	
	local smoke_zone6_brt = math.max(smoke_test_but * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone6, smooth_light(smoke_zone6_brt, get(smoke_zone6)))
	
	
	local eng_fire_1 = get(engine_fire_state_1)
	local eng_fire_2 = get(engine_fire_state_2)
	local eng_fire_3 = get(engine_fire_state_3)
	
	
	local fire_eng_1_brt = 0
	if eng_fire_1 == 2 then fire_eng_1_brt = 1 end
	fire_eng_1_brt = math.max(fire_eng_1_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_eng_1, smooth_light(fire_eng_1_brt, get(fire_eng_1)))
	
	local fire_eng_2_brt = 0
	if eng_fire_2 == 2 then fire_eng_2_brt = 1 end
	fire_eng_2_brt = math.max(fire_eng_2_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_eng_2, smooth_light(fire_eng_2_brt, get(fire_eng_2)))
	
	local fire_eng_3_brt = 0
	if eng_fire_3 == 2 then fire_eng_3_brt = 1 end
	fire_eng_3_brt = math.max(fire_eng_3_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_eng_3, smooth_light(fire_eng_3_brt, get(fire_eng_3)))
	
	local overheat_eng_1_brt = 0
	if eng_fire_1 > 0 then overheat_eng_1_brt = 1 end
	overheat_eng_1_brt = math.max(overheat_eng_1_brt * power_sw * lamps_brt * day_night, test_btn)
	set(overheat_eng_1, smooth_light(overheat_eng_1_brt, get(overheat_eng_1)))
	
	local overheat_eng_2_brt = 0
	if eng_fire_2 > 0 then overheat_eng_2_brt = 1 end
	overheat_eng_2_brt = math.max(overheat_eng_2_brt * power_sw * lamps_brt * day_night, test_btn)
	set(overheat_eng_2, smooth_light(overheat_eng_2_brt, get(overheat_eng_2)))
	
	local overheat_eng_3_brt = 0
	if eng_fire_3 > 0 then overheat_eng_3_brt = 1 end
	overheat_eng_3_brt = math.max(overheat_eng_3_brt * power_sw * lamps_brt * day_night, test_btn)
	set(overheat_eng_3, smooth_light(overheat_eng_3_brt, get(overheat_eng_3)))


	local throttle_1_fire_brt = 0
	if eng_fire_1 > 0 or get(eng1_dangerous_vibro) > 0 then throttle_1_fire_brt = 1 end
	throttle_1_fire_brt = math.max(throttle_1_fire_brt * lamps_brt, test_btn)
	set(throttle_1_fire, smooth_light(throttle_1_fire_brt, get(throttle_1_fire)))

	local throttle_2_fire_brt = 0
	if eng_fire_2 > 0 or get(eng2_dangerous_vibro) > 0 then throttle_2_fire_brt = 1 end
	throttle_2_fire_brt = math.max(throttle_2_fire_brt * lamps_brt, test_btn)
	set(throttle_2_fire, smooth_light(throttle_2_fire_brt, get(throttle_2_fire)))
	
	local throttle_3_fire_brt = 0
	if eng_fire_3 > 0 or get(eng3_dangerous_vibro) > 0 then throttle_3_fire_brt = 1 end
	throttle_3_fire_brt = math.max(throttle_3_fire_brt * lamps_brt, test_btn)
	set(throttle_3_fire, smooth_light(throttle_3_fire_brt, get(throttle_3_fire)))

	

	local fuel_off_eng_1_brt = 0
	if get(fire_vlv_open_1) < 0.5 then fuel_off_eng_1_brt = 1 end
	fuel_off_eng_1_brt = math.max(fuel_off_eng_1_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fuel_off_eng_1, smooth_light(fuel_off_eng_1_brt, get(fuel_off_eng_1)))
	
	local fuel_off_eng_2_brt = 0
	if get(fire_vlv_open_2) < 0.5 then fuel_off_eng_2_brt = 1 end
	fuel_off_eng_2_brt = math.max(fuel_off_eng_2_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fuel_off_eng_2, smooth_light(fuel_off_eng_2_brt, get(fuel_off_eng_2)))
	
	local fuel_off_eng_3_brt = 0
	if get(fire_vlv_open_3) < 0.5 then fuel_off_eng_3_brt = 1 end
	fuel_off_eng_3_brt = math.max(fuel_off_eng_3_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fuel_off_eng_3, smooth_light(fuel_off_eng_3_brt, get(fuel_off_eng_3)))
	
	local fire_det = get(fire_detected)
	if fire_det == 1 and get(fire_siren) == 0 then 
		sheck_smoke_lit = true
	elseif fire_det == 1 then
		check_smoke_counter = check_smoke_counter + passed
		if check_smoke_counter > 0.4 then
			check_smoke_counter = 0
			sheck_smoke_lit = not sheck_smoke_lit
		end
	else 
		sheck_smoke_lit = false 
	end
		
	local check_overheat_brt = 0
	if sheck_smoke_lit then check_overheat_brt = 1 end
	check_overheat_brt = math.max(check_overheat_brt * lamps_brt * day_night, test_btn)
	set(check_overheat, smooth_light(check_overheat_brt, get(check_overheat)))
	
	local fire_apu_brt = 0
	if get(engine_fire_state_4) > 0 then fire_apu_brt = 1 end
	fire_apu_brt = math.max(fire_apu_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_apu, smooth_light(fire_apu_brt, get(fire_apu)))
	
	local turn_on_spz_brt = math.max((1 - power_sw) * lamps_brt * day_night, test_btn)
	set(turn_on_spz, smooth_light(turn_on_spz_brt, get(turn_on_spz)))
	
	
	
	local button_fire_eng_1_brt = math.max(get(valve_open_1) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_eng_1, smooth_light(button_fire_eng_1_brt, get(button_fire_eng_1)))
	
	local button_fire_eng_2_brt = math.max(get(valve_open_2) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_eng_2, smooth_light(button_fire_eng_2_brt, get(button_fire_eng_2)))
	
	local button_fire_eng_3_brt = math.max(get(valve_open_3) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_eng_3, smooth_light(button_fire_eng_3_brt, get(button_fire_eng_3)))
	
	local button_fire_apu_brt = math.max(get(valve_open_4) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_apu, smooth_light(button_fire_apu_brt, get(button_fire_apu)))
	
	local button_fire_ng_brt = math.max(get(ng_used) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_ng, smooth_light(button_fire_ng_brt, get(button_fire_ng)))
	
	local ext_test_but = get(ext_test)
	
	local button_fire_turn_3_brt = math.max(math.max(get(ext_used_3), ext_test_but) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_turn_3, smooth_light(button_fire_turn_3_brt, get(button_fire_turn_3)))
	
	local button_fire_turn_2_brt = math.max(math.max(get(ext_used_2), ext_test_but) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_turn_2, smooth_light(button_fire_turn_2_brt, get(button_fire_turn_2)))

	local button_fire_turn_1_brt = math.max(math.max(get(ext_used_1), ext_test_but) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_turn_1, smooth_light(button_fire_turn_1_brt, get(button_fire_turn_1)))
	
	
	if fire_det == 1 then
		fire_counter = fire_counter + passed
		if fire_counter > 0.4 then
			fire_counter = 0
			fire_lit = not fire_lit
		end
	else 
		fire_lit = false 
	end
		
	local fire_lamp_brt = 0
	if fire_lit then fire_lamp_brt = 1 end
	fire_lamp_brt = math.max(fire_lamp_brt * lamps_brt * day_night, test_btn_frnt)
	set(fire_lamp, smooth_light(fire_lamp_brt, get(fire_lamp)))



end





local sim_start_timer = 0

function update()
	
	passed = get(frame_time)
	
	-- reset switchers
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	
		swichers_check() -- make them sound
	end
	
	lamps()
	
	
	
end