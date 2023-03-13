-- this TAWS panel logic

-- panel controls
defineProperty("but_view", globalPropertyi("tu154ce/buttons/srpbz/but_view")) -- кнопка ВИД
defineProperty("but_empty", globalPropertyi("tu154ce/buttons/srpbz/but_empty")) -- кнопка -
defineProperty("but_down", globalPropertyi("tu154ce/buttons/srpbz/but_down")) -- кнопка масштаб вниз
defineProperty("but_up", globalPropertyi("tu154ce/buttons/srpbz/but_up")) -- масштаб вверх
defineProperty("brightness", globalPropertyf("tu154ce/rotary/srpbz/brightness")) -- ручка яркости

-- overhead controls
defineProperty("egpws_alarm_1", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_1")) -- сигнализация СРПБЗ общ
defineProperty("egpws_alarm_2", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_2")) -- сигнализация СРПБЗ
defineProperty("egpws_alarm_1_cap", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_1_cap")) -- сигнализация СРПБЗ общ
defineProperty("egpws_alarm_2_cap", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_2_cap")) -- сигнализация СРПБЗ 
defineProperty("egpws_relief", globalPropertyi("tu154ce/switchers/ovhd/egpws_relief")) -- рельеф
defineProperty("egpws_mode", globalPropertyi("tu154ce/switchers/ovhd/egpws_mode")) -- QNH - QFE

defineProperty("egpws_control", globalPropertyi("tu154ce/buttons/ovhd/egpws_control")) -- кнопка контроля СРПБЗ
defineProperty("egpws_contr_gs", globalPropertyi("tu154ce/buttons/ovhd/egpws_contr_gs")) -- контроль СРПБЗ глиссада


-- lamps
defineProperty("pull_up_lamp", globalPropertyf("tu154ce/lights/pull_up")) -- тяни вверх
defineProperty("check_alt_left_lamp", globalPropertyf("tu154ce/lights/check_alt_left")) -- тяни вверх
defineProperty("check_alt_right_lamp", globalPropertyf("tu154ce/lights/check_alt_right")) -- тяни вверх
defineProperty("warning_terrain_lamp", globalPropertyf("tu154ce/lights/warning_terrain")) -- тяни вверх
defineProperty("gs_low_lamp", globalPropertyf("tu154ce/lights/gs_low")) -- тяни вверх
defineProperty("srpbz_fail_lamp", globalPropertyf("tu154ce/lights/srpbz_fail")) -- тяни вверх

-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп панели ВСУ
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

defineProperty("taws_message", globalPropertyi("tu154ce/taws/taws_message")) -- 
-- 0 - none, 1 - Pull UP, 2 - alt callout, 3 - Pull Up, 4 - Terrain, 5 - Terrain Ahead, 6 - Too low, Terrain, 
-- 7 - Alt collout, 8 - Too low, Gear, 9 - Too low, Flaps, 10 - Check altitude, 11 - Sink Rate, 12 - Don't sink, 13 - Glideslope

defineProperty("taws_alt_left", globalPropertyi("tu154ce/taws/taws_alt_left")) -- сравни высоту на левом высотомере
defineProperty("taws_alt_right", globalPropertyi("tu154ce/taws/taws_alt_right")) -- сравни высоту на правом высотомере

defineProperty("mode_set", globalPropertyi("tu154ce/taws/mode_set")) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения, 5 - тест, 6 - игра, 10 - отказ


-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

include("smooth_light.lua")
-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')

local passed = get(frame_time)


-- sound the buttons
local but_view_last = get(but_view)
local but_empty_last = get(but_empty)
local but_down_last = get(but_down)
local but_up_last = get(but_up)
local egpws_control_last = get(egpws_control)
local egpws_contr_gs_last = get(egpws_contr_gs)



local function buttons_check()

	local but_view_sw = get(but_view)
	local but_empty_sw = get(but_empty)
	local but_down_sw = get(but_down)
	local but_up_sw = get(but_up)
	local egpws_control_sw = get(egpws_control)
	local egpws_contr_gs_sw = get(egpws_contr_gs)	

	local change = but_view_sw + but_empty_sw + but_down_sw + but_up_sw + egpws_control_sw + egpws_contr_gs_sw
	change = change - but_view_last - but_empty_last - but_down_last - but_up_last - egpws_control_last - egpws_contr_gs_last
	
	if change ~= 0 then
		
	end
	

	but_view_last = but_view_sw
	but_empty_last = but_empty_sw
	but_down_last = but_down_sw
	but_up_last = but_up_sw
	egpws_control_last = egpws_control_sw
	egpws_contr_gs_last = egpws_contr_gs_sw
	

end


local egpws_alarm_1_last = get(egpws_alarm_1)
local egpws_alarm_2_last = get(egpws_alarm_2)
local egpws_relief_last = get(egpws_relief)
local egpws_mode_last = get(egpws_mode)

local egpws_alarm_1_cap_last = get(egpws_alarm_1_cap)
local egpws_alarm_2_cap_last = get(egpws_alarm_2_cap)



local function switchers_check()

	local egpws_alarm_1_sw = get(egpws_alarm_1)
	local egpws_alarm_2_sw = get(egpws_alarm_2)
	local egpws_relief_sw = get(egpws_relief)
	local egpws_mode_sw = get(egpws_mode)
	
	local changes = egpws_alarm_1_sw + egpws_alarm_2_sw + egpws_relief_sw + egpws_mode_sw
	changes = changes - egpws_alarm_1_last - egpws_alarm_2_last - egpws_relief_last - egpws_mode_last
	
	if changes ~= 0 then
		playSample (switcher_sound, false)
	end
	
	-- caps
	local egpws_alarm_1_cap_sw = get(egpws_alarm_1_cap)
	local egpws_alarm_2_cap_sw = get(egpws_alarm_2_cap)
	
	if egpws_alarm_1_cap_sw + egpws_alarm_2_cap_sw - egpws_alarm_1_cap_last - egpws_alarm_2_cap_last ~= 0 then
		
	end
	
	
	egpws_alarm_1_last = egpws_alarm_1_sw
	egpws_alarm_2_last = egpws_alarm_2_sw
	egpws_relief_last = egpws_relief_sw
	egpws_mode_last = egpws_mode_sw
	
	egpws_alarm_1_cap_last = egpws_alarm_1_cap_sw
	egpws_alarm_2_cap_last = egpws_alarm_2_cap_sw

end




local pull_up_lit = 0
local pull_up_counter = 0

local check_alt_left_lit = 0
local check_alt_left_counter = 0

local check_alt_right_lit = 0
local check_alt_right_counter = 0

local terrain_lit = 0
local terrain_counter = 0

local gs_lit = 0
local gs_counter = 0

local fail_lit = 0
local fail_counter = 0

local function lamps()

	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	
	local taws_msg = get(taws_message)
	local alarm = get(egpws_alarm_1)
	
	
	-- pull up
	local pull_up = taws_msg == 1
	
	pull_up_counter = pull_up_counter + passed
	
	if pull_up and pull_up_counter > 0.5 then 
		pull_up_lit = 1 - pull_up_lit
		pull_up_counter = 0
	elseif not pull_up then pull_up_lit = 0 end
	
	local pull_up_lamp_brt = math.max(pull_up_lit * lamps_brt * alarm, test_btn)

	set(pull_up_lamp, smooth_light(pull_up_lamp_brt, get(pull_up_lamp)))
	
	
	-- check alt left
	local check_alt_left = get(taws_alt_left) == 1
	
	check_alt_left_counter = check_alt_left_counter + passed
	
	if check_alt_left and check_alt_left_counter > 0.5 then 
		check_alt_left_lit = 1 - check_alt_left_lit
		check_alt_left_counter = 0
	elseif not check_alt_left then check_alt_left_lit = 0 end
	
	local check_alt_left_lamp_brt = math.max(check_alt_left_lit * lamps_brt * alarm, test_btn)
	set(check_alt_left_lamp, smooth_light(check_alt_left_lamp_brt, get(check_alt_left_lamp)))
	
	
	
	
	-- check alt right
	local check_alt_right = get(taws_alt_right) == 1
	
	check_alt_right_counter = check_alt_right_counter + passed
	
	if check_alt_right and check_alt_right_counter > 0.5 then 
		check_alt_right_lit = 1 - check_alt_right_lit
		check_alt_right_counter = 0
	elseif not check_alt_right then check_alt_right_lit = 0 end
	
	local check_alt_right_lamp_brt = math.max(check_alt_right_lit * lamps_brt * alarm, test_btn)
	set(check_alt_right_lamp, smooth_light(check_alt_right_lamp_brt, get(check_alt_right_lamp)))
	
	
	-- terrain
	local terrain = taws_msg == 4 or taws_msg == 5 or taws_msg == 6
	
	terrain_counter = terrain_counter + passed
	
	if terrain and terrain_counter > 0.5 then 
		terrain_lit = 1 - terrain_lit
		terrain_counter = 0
	elseif not terrain then terrain_lit = 0 end
	
	local warning_terrain_lamp_brt = math.max(terrain_lit * lamps_brt * alarm, test_btn)
	set(warning_terrain_lamp, smooth_light(warning_terrain_lamp_brt, get(warning_terrain_lamp)))
	
	
	-- glideslope
	local gs = taws_msg == 13
	
	gs_counter = gs_counter + passed
	
	if gs and gs_counter > 0.5 then 
		gs_lit = 1 - gs_lit
		gs_counter = 0
	elseif not gs then gs_lit = 0 end
	
	local gs_low_lamp_brt = math.max(gs_lit * lamps_brt * alarm, test_btn)
	set(gs_low_lamp, smooth_light(gs_low_lamp_brt, get(gs_low_lamp)))
	
	
	
	-- failure
	local fail = get(mode_set) == 5 or get(mode_set) == 10 -- test or fail
	
	fail_counter = fail_counter + passed
	
	if fail and fail_counter > 0.5 then 
		fail_lit = 1 - fail_lit
		fail_counter = 0
	elseif not fail then fail_lit = 0 end
	
	local srpbz_fail_lamp_brt = math.max(fail_lit * lamps_brt, test_btn) -- fake
	set(srpbz_fail_lamp, smooth_light(srpbz_fail_lamp_brt, get(srpbz_fail_lamp)))
end






function update()
	
	passed = get(frame_time)
	
	buttons_check()
	switchers_check()
	
	lamps()
	
	if get(brightness) < 0.1 then set(brightness, 0.1) end

end