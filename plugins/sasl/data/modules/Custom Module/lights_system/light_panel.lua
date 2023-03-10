-- this is panel logic for lights system


-- define controls datarefs
defineProperty("mid_left_panel_int_set", globalPropertyf("tu154ce/lights/mid_left_panel_int_set")) -- регулятор встроенного освещения передней панели КВС
defineProperty("left_panel_int_set", globalPropertyf("tu154ce/lights/left_panel_int_set")) --  регулятор встроенного освещения левой панели
defineProperty("right_panel_int_set", globalPropertyf("tu154ce/lights/right_panel_int_set")) -- регулятор встроенного освещения правой панели
defineProperty("mid_right_panel_int_set", globalPropertyf("tu154ce/lights/mid_right_panel_int_set")) -- регулятор встроенного освещения передней панели 2П
defineProperty("ovhd_panel_int_set", globalPropertyf("tu154ce/lights/ovhd_panel_int_set")) -- регулятор встроенного освещения верхней панели

defineProperty("cabinl_flood_set", globalPropertyf("tu154ce/lights/cabinl_flood_set")) -- выключатель освещения кабины
defineProperty("azs_panel_flood_set", globalPropertyf("tu154ce/lights/azs_panel_flood_set")) -- выключатель освещения панели АЗС


defineProperty("cargo_light_1_set", globalPropertyf("tu154ce/lights/cargo_light_1_set")) -- выключатель освещения грузового отсека
defineProperty("cargo_light_2_set", globalPropertyf("tu154ce/lights/cargo_light_2_set")) -- выключатель освещения грузового отсека
defineProperty("tech_light_set", globalPropertyf("tu154ce/lights/tech_light_set")) -- выключатель освещения технического отсека
defineProperty("gear_nacelle_light_set", globalPropertyf("tu154ce/lights/gear_nacelle_light_set")) -- выключатель освещения гондол шасси

defineProperty("nav_lights_set", globalPropertyi("tu154ce/lights/nav_lights_set")) -- выключатель нав огней
defineProperty("strobe_set", globalPropertyi("tu154ce/lights/strobe_set")) -- выключатель красных маяков
defineProperty("wing_light_left_set", globalPropertyi("tu154ce/lights/wing_light_left_set")) -- выключатель подсвета порогов и крыла
defineProperty("wing_light_right_set", globalPropertyi("tu154ce/lights/wing_light_right_set")) -- выключатель подсвета порогов и крыла
defineProperty("tail_light_set", globalPropertyi("tu154ce/lights/tail_light_set")) -- выключатель подсвета хвоста
defineProperty("day_night_set", globalPropertyi("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


defineProperty("landing_ext_set_L", globalPropertyi("tu154ce/lights/landing_ext_set_L")) -- выпуск фар лев
defineProperty("landing_ext_set_R", globalPropertyi("tu154ce/lights/landing_ext_set_R")) -- выпуск фар прав
defineProperty("landing_mode_set_L", globalPropertyi("tu154ce/lights/landing_mode_set_L")) -- режим фар лев. -1 - рулежный, 0 - выкл, +1 - посадочный
defineProperty("landing_mode_set_R", globalPropertyi("tu154ce/lights/landing_mode_set_R")) -- режим фар прав
defineProperty("light_signal_set", globalPropertyi("tu154ce/lights/light_signal_set")) -- сигнал в полете


defineProperty("sign_belts", globalPropertyi("tu154ce/switchers/ovhd/sign_belts")) -- транспарант пристегните ремни
defineProperty("sign_nosmoke", globalPropertyi("tu154ce/switchers/ovhd/sign_nosmoke")) -- транспарант пристегните ремни
defineProperty("sign_exit", globalPropertyi("tu154ce/switchers/ovhd/sign_exit")) -- транспарант пристегните ремни

defineProperty("landing_light_off", globalPropertyi("tu154ce/lights/landing_light_off")) -- выключатель фар
defineProperty("landing_light_off_cap", globalPropertyi("tu154ce/lights/landing_light_off_cap")) -- выключатель фар




-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- last variables
local mid_left_panel_last = get(mid_left_panel_int_set)
local left_panel_last = get(left_panel_int_set)
local right_panel_last = get(right_panel_int_set)
local mid_right_panel_last = get(mid_right_panel_int_set)
local ovhd_panel_last = get(ovhd_panel_int_set)

local cabinl_flood_last = get(cabinl_flood_set)
local azs_panel_flood_last = get(azs_panel_flood_set)

local cargo_1_last = get(cargo_light_1_set)
local cargo_2_last = get(cargo_light_2_set)
local tech_light_last = get(tech_light_set)
local gear_nacelle_last = get(gear_nacelle_light_set)
local day_night_last = get(day_night_set)

local nav_lights_last = get(nav_lights_set)
local strobe_last = get(strobe_set)
local wing_light_left_last = get(wing_light_left_set)
local wing_light_right_last = get(wing_light_right_set)
local tail_light_last = get(tail_light_set)

local landing_ext_last_L = get(landing_ext_set_L)
local landing_ext_last_R = get(landing_ext_set_R)
local landing_mode_last_L = get(landing_mode_set_L)
local landing_mode_last_R = get(landing_mode_set_R)
local light_signal_last = get(light_signal_set)

local sign_belts_last = get(sign_belts)
local sign_nosmoke_last = get(sign_nosmoke)
local sign_exit_last = get(sign_exit)

local lights_off_last = get(landing_light_off)
local lights_cap_last = get(landing_light_off_cap)



-- sound files
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local rotary_sound = loadSample('Custom Sounds/rot_click_big.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')

local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(nav_lights_set, 0)
		set(strobe_set, 0)
		set(wing_light_left_set, 0)
		set(wing_light_right_set, 0)
		set(tail_light_set, 0)
		set(sign_belts, 0)
		set(sign_nosmoke, 0)
		set(sign_exit, 0)
	end
	--print("works")
	notLoaded = false
end

local sim_start_timer = 0

function update()
	passed = get(frame_time)
	
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	end
	
	-- current state
	local mid_left_panel = get(mid_left_panel_int_set)
	local left_panel = get(left_panel_int_set)
	local right_panel = get(right_panel_int_set)
	local mid_right_panel = get(mid_right_panel_int_set)
	local ovhd_panel = get(ovhd_panel_int_set)

	local cabinl_flood = get(cabinl_flood_set)
	local azs_panel_flood = get(azs_panel_flood_set)
	
	local cargo_1 = get(cargo_light_1_set)
	local cargo_2 = get(cargo_light_2_set)
	local tech_light = get(tech_light_set)
	local gear_nacelle = get(gear_nacelle_light_set)	
	local day_night = get(day_night_set)
	
	local nav_lights = get(nav_lights_set)
	local strobe = get(strobe_set)
	local wing_light_left = get(wing_light_left_set)
	local wing_light_right = get(wing_light_right_set)
	local tail_light = get(tail_light_set)

	local landing_ext_L = get(landing_ext_set_L)
	local landing_ext_R = get(landing_ext_set_R)
	local landing_mode_L = get(landing_mode_set_L)
	local landing_mode_R = get(landing_mode_set_R)
	local light_signal = get(light_signal_set)
	
	local sign_belts_sw = get(sign_belts)
	local sign_nosmoke_sw = get(sign_nosmoke)
	local sign_exit_sw = get(sign_exit)
	
	local lights_off = get(landing_light_off)
	local lights_cap = get(landing_light_off_cap)
	
	
	
	-- check changes and play sounds
	if mid_left_panel + left_panel + right_panel + mid_right_panel + ovhd_panel - mid_left_panel_last - left_panel_last - right_panel_last - mid_right_panel_last - ovhd_panel_last ~= 0 then
		--[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]]
	end

	local switchers = cabinl_flood + azs_panel_flood - cabinl_flood_last - azs_panel_flood_last + cargo_1 + cargo_2 + tech_light + gear_nacelle - cargo_1_last - cargo_2_last - tech_light_last - gear_nacelle_last
	switchers = switchers + day_night - day_night_last + nav_lights + strobe + wing_light_left + wing_light_right + tail_light
	switchers = switchers - nav_lights_last - strobe_last - wing_light_left_last - wing_light_right_last - tail_light_last
	switchers = switchers + landing_ext_L + landing_ext_R + landing_mode_L + landing_mode_R + light_signal
	switchers = switchers - landing_ext_last_L - landing_ext_last_R - landing_mode_last_L - landing_mode_last_R - light_signal_last
	switchers = switchers + sign_belts_sw + sign_nosmoke_sw + sign_exit_sw - sign_belts_last - sign_nosmoke_last - sign_exit_last + lights_off - lights_off_last
	
	if switchers ~= 0 then
		
	end
	
	if lights_cap ~= lights_cap_last then
		
	end
	
	if lights_cap == 0 then set(landing_light_off, 0) end
	
	
	
	-- save current state
	mid_left_panel_last = mid_left_panel
	left_panel_last = left_panel
	right_panel_last = right_panel
	mid_right_panel_last = mid_right_panel
	ovhd_panel_last = ovhd_panel

	cabinl_flood_last = cabinl_flood
	azs_panel_flood_last = azs_panel_flood
	
	cargo_1_last = cargo_1
	cargo_2_last = cargo_2
	tech_light_last = tech_light
	gear_nacelle_last = gear_nacelle
	day_night_last = day_night

	nav_lights_last = nav_lights
	strobe_last = strobe
	wing_light_left_last = wing_light_left
	wing_light_right_last = wing_light_right
	tail_light_last = tail_light

	landing_ext_last_L = landing_ext_L
	landing_ext_last_R = landing_ext_R
	landing_mode_last_L = landing_mode_L
	landing_mode_last_R = landing_mode_R
	light_signal_last = light_signal
	
	sign_belts_last = sign_belts_sw
	sign_nosmoke_last = sign_nosmoke_sw
	sign_exit_last = sign_exit_sw
	
	lights_off_last = lights_off
	lights_cap_last = lights_cap

end