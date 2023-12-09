-- this is water panel on engineer's upper part

-- controls
defineProperty("wing_light", globalPropertyi("tu154ce/switchers/eng/wing_light")) -- габаритные наземные огни на крыле
--defineProperty("door_heat", globalPropertyi("tu154ce/switchers/eng/door_heat")) -- обогрев дверей
defineProperty("gear_fan", globalPropertyi("tu154ce/switchers/eng/gear_fan")) -- вентиляция шасси
defineProperty("galley_heat", globalPropertyi("tu154ce/switchers/eng/galley_heat")) -- обогрев слива кухни
defineProperty("lavatory_heat", globalPropertyi("tu154ce/switchers/eng/lavatory_heat")) -- обогрев слива туалетов
defineProperty("water_meter", globalPropertyi("tu154ce/switchers/eng/water_meter")) -- уровень воды в баке
defineProperty("water_compressor_1", globalPropertyi("tu154ce/switchers/eng/water_compressor_1")) -- обогрев слива кухни
defineProperty("water_compressor_2", globalPropertyi("tu154ce/switchers/eng/water_compressor_2")) -- обогрев слива кухни
defineProperty("tail_temp_signal", globalPropertyi("tu154ce/switchers/eng/tail_temp_signal")) -- сигнал температуры хвостового отсека
defineProperty("tail_temp_heat", globalPropertyi("tu154ce/switchers/eng/tail_temp_heat")) -- обогрев АРД

defineProperty("tail_temp_signal_control_1", globalPropertyi("tu154ce/buttons/eng/tail_temp_signal_control_1")) -- контроль сигнала температуры хвостового отсека
defineProperty("tail_temp_signal_control_2", globalPropertyi("tu154ce/buttons/eng/tail_temp_signal_control_2")) -- контроль сигнала температуры хвостового отсека

defineProperty("lamp_test_eng_up_1", globalPropertyi("tu154ce/buttons/lamp_test_eng_up_1"))
defineProperty("lamp_test_eng_up_2", globalPropertyi("tu154ce/buttons/lamp_test_eng_up_2"))



defineProperty("water_pressure", globalPropertyf("tu154ce/gauges/eng/water_pressure")) -- давление воды

-- lamps
defineProperty("water_level_1", globalPropertyf("tu154ce/lights/water_level_1")) -- уровень воды 1
defineProperty("water_level_12", globalPropertyf("tu154ce/lights/water_level_12")) -- уровень воды 1
defineProperty("water_level_14", globalPropertyf("tu154ce/lights/water_level_14")) -- уровень воды 1
defineProperty("water_level_0", globalPropertyf("tu154ce/lights/water_level_0")) -- уровень воды 1

defineProperty("tail_temp_high", globalPropertyf("tu154ce/lights/small/tail_temp_high")) -- 
defineProperty("lavatory_heat_lamp", globalPropertyf("tu154ce/lights/small/lavatory_heat")) -- 
defineProperty("galley_heat_lamp", globalPropertyf("tu154ce/lights/small/galley_heat")) -- 

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- gears
defineProperty("deploy_ratio_1", globalProperty("sim/flightmodel2/gear/deploy_ratio[0]")) -- 
defineProperty("deploy_ratio_2", globalProperty("sim/flightmodel2/gear/deploy_ratio[1]")) -- 
defineProperty("deploy_ratio_3", globalProperty("sim/flightmodel2/gear/deploy_ratio[2]")) -- 

defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed")) -- GS, m/s

-- results
defineProperty("water_lvl", globalPropertyf("tu154ce/misc/water_level")) -- уровень воды


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

include("smooth_light.lua")

local switch_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')
local btn_click = loadSample('Custom Sounds/plastic_btn.wav')
local rot_click = loadSample('Custom Sounds/rot_click.wav')
local plastic_sound = loadSample('Custom Sounds/plastic_switch.wav')

local passed = get(frame_time)


local switchers_last = 0
local buttons_last = 0

local function controls()

	local switchers = get(wing_light) + get(gear_fan) + get(galley_heat) + get(lavatory_heat) + get(water_meter) + get(water_compressor_1)
	switchers = switchers + get(water_compressor_2) + get(tail_temp_signal) + get(tail_temp_heat)
	
	if switchers ~= switchers_last then if sasl.getXPVersion() < 12 then playSample(switch_sound, false) end end
	
	switchers_last = switchers
	
	local buttons = get(tail_temp_signal_control_1) + get(tail_temp_signal_control_2) + get(lamp_test_eng_up_1) + get(lamp_test_eng_up_2)

	if buttons ~= buttons_last then if sasl.getXPVersion() < 12 then playSample(btn_click, false) end end
	
	buttons_last = buttons



end


local water_level = math.random()

set(water_lvl, water_level)


local function lamps()

	local lamps_brt = math.max((math.max(get(bus27_volt_right), get(bus27_volt_left))  - 10) / 18.5, 0)
	local test_btn = get(lamp_test_eng_up_1) * math.max((get(bus27_volt_right)  - 10) / 18.5, 0)
	local test_btn_2 = get(lamp_test_eng_up_2) * math.max((get(bus27_volt_right)  - 10) / 18.5, 0)
	
	local MASTER = get(ismaster) ~= 1	
	
	water_level = get(water_lvl)
	
	-- fake water consumption in flight
	if get(deploy_ratio_1) < 0.1 and get(deploy_ratio_2) < 0.1 and get(deploy_ratio_3) < 0.1 then
		water_level = water_level - get(frame_time) * (get(water_compressor_1) + get(water_compressor_2)) / (8 * 3600)
	elseif get(groundspeed) < 0.1 then 
		water_level = water_level + get(frame_time) / (0.1 * 3600)
	
	end
	
	if water_level < 0 then water_level = 0 
	elseif water_level > 1 then water_level = 1
	end
	
	if MASTER then set(water_lvl, water_level) end
	
	
	local level_meter = get(water_meter) == 1

	local water_level_1_brt = math.max(bool2int(water_level >= 0.9 and level_meter) * lamps_brt, test_btn, test_btn_2) -- temp
	set(water_level_1, smooth_light(water_level_1_brt, get(water_level_1)))
	
	local water_level_12_brt = math.max(bool2int(water_level < 0.9 and water_level >= 0.5 and level_meter) * lamps_brt, test_btn, test_btn_2) -- temp
	set(water_level_12, smooth_light(water_level_12_brt, get(water_level_12)))
	
	local water_level_14_brt = math.max(bool2int(water_level < 0.5 and water_level >= 0.25 and level_meter) * lamps_brt, test_btn, test_btn_2) -- temp
	set(water_level_14, smooth_light(water_level_14_brt, get(water_level_14)))
	
	local water_level_0_brt = math.max(bool2int(water_level < 0.25 and water_level >= 0 and level_meter) * lamps_brt, test_btn, test_btn_2) -- temp
	set(water_level_0, smooth_light(water_level_0_brt, get(water_level_0)))
	
	local tail_temp_high_brt = math.max(bool2int(get(tail_temp_signal_control_1) + get(tail_temp_signal_control_2) > 0) * get(tail_temp_signal) * lamps_brt, test_btn) -- temp
	set(tail_temp_high, smooth_light(tail_temp_high_brt, get(tail_temp_high)))
	
	local lavatory_heat_brt = math.max(bool2int(get(lavatory_heat) < 0) * lamps_brt, test_btn) -- temp get(lavatory_heat)
	set(lavatory_heat_lamp, smooth_light(lavatory_heat_brt, get(lavatory_heat_lamp)))
	
	local galley_heat_brt = math.max(bool2int(get(galley_heat) < 0) * lamps_brt, test_btn) -- temp
	set(galley_heat_lamp, smooth_light(galley_heat_brt, get(galley_heat_lamp)))
	
	
	
	
end

local press_act = 0

function update()

	controls()
	lamps()
	
	passed = get(frame_time)
	
	local power = (get(bus27_volt_right) + get(bus27_volt_left)) / 2 > 13
	local press = 0
	if power then
		press = (get(water_compressor_1) + get(water_compressor_2)) * bool2int(water_level > 0.1) * 70
	end

	press_act = press_act + (press - press_act) * passed

	set(water_pressure, press_act)



end

