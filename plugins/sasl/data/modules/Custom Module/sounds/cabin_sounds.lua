-- this is the main cabin sounds logic

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time"))               -- flight time

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment


-- logic sources

-- RV
defineProperty("dh_set_L", globalPropertyf("tu154ce/gauges/alt/radioalt_dh_left"))        -- DH angle
defineProperty("dh_set_R", globalPropertyf("tu154ce/gauges/alt/radioalt_dh_right"))       -- DH angle
defineProperty("rv_angle_L", globalPropertyf("tu154ce/gauges/alt/radioalt_needle_left"))  -- RV needle
defineProperty("rv_angle_R", globalPropertyf("tu154ce/gauges/alt/radioalt_needle_right")) -- RV needle

defineProperty("rv5_dh_signal_left", globalPropertyi("tu154ce/misc/rv5_dh_signal_left"))
defineProperty("rv5_dh_signal_right", globalPropertyi("tu154ce/misc/rv5_dh_signal_right"))


-- ABSU
defineProperty("roll_main_mode", globalPropertyi("tu154ce/absu/roll_main_mode"))     -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154ce/absu/pitch_main_mode"))   -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("stu_mode", globalPropertyi("tu154ce/absu/stu_mode"))                 -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб,

defineProperty("absu_fail_signal", globalPropertyi("tu154ce/absu/absu_fail_signal")) -- сигнал на сирену

-- alarm overall
defineProperty("main_gear_flaps", globalPropertyi("tu154ce/alarm/main_gear_flaps")) -- не взлетное положение закрылков или не выпущенны шасси
defineProperty("main_pressure", globalPropertyi("tu154ce/alarm/main_pressure"))     -- разгерметизация или перенаддув кабины
defineProperty("speaker_auasp", globalPropertyi("tu154ce/alarm/speaker_auasp"))     -- предельный угол атаки или перегрузки
defineProperty("speaker_fuel", globalPropertyi("tu154ce/alarm/speaker_fuel"))       -- остаток топлива 2500 в баке 1
defineProperty("speaker_speed", globalPropertyi("tu154ce/alarm/speaker_speed"))     -- предельная скорость
defineProperty("speaker_absu", globalPropertyi("tu154ce/alarm/speaker_absu"))       -- отключение режимов или отказы АБСУ

defineProperty("fire_siren", globalPropertyi("tu154ce/fire/fire_siren"))            -- работа сирены

-- controls
defineProperty("srd_buzzer", globalPropertyi("tu154ce/switchers/eng/srd_buzzer"))           -- сирена СРД
defineProperty("fuel_buzzer", globalPropertyi("tu154ce/switchers/eng/fuel_buzzer"))         -- сирена топл

defineProperty("srd_buzzer_cap", globalPropertyi("tu154ce/switchers/eng/srd_buzzer_cap"))   -- сирена СРД
defineProperty("fuel_buzzer_cap", globalPropertyi("tu154ce/switchers/eng/fuel_buzzer_cap")) -- сирена СРД

defineProperty("srd_buzzer_test", globalPropertyi("tu154ce/buttons/eng/srd_buzzer_test"))   -- кнопка проверки


-- МРП
defineProperty("outer_marker", globalPropertyi("sim/cockpit/misc/outer_marker_lit")) -- runway markers
defineProperty("middle_marker", globalPropertyi("sim/cockpit/misc/middle_marker_lit"))
defineProperty("inner_marker", globalPropertyi("sim/cockpit/misc/inner_marker_lit"))

-- lights
defineProperty("light_open_left", globalPropertyf("tu154ce/anim/light_open_left"))         -- light open
defineProperty("light_open_right", globalPropertyf("tu154ce/anim/light_open_right"))       -- light open

defineProperty("airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- indicated airspeed in KTS

-- power
defineProperty("bus27_volt_L", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_R", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("bus27_source_left", globalPropertyf("tu154ce/elec/bus27_source_left"))   -- источник сети. 0 - ничего. 1 - ВУ1, 2 - ВУрезерв, 3 - батареи 1 и 3, 6 - соседняя сеть
defineProperty("bus27_source_right", globalPropertyf("tu154ce/elec/bus27_source_right")) -- источник сети. 0 - ничего. 1 - ВУ2, 2 - ВУрезерв, 3 - батареи 2 и 4, 6 - соседняя сеть

defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))                  -- Position of pilot's head relative to CG

-- air kond
defineProperty("air_usage_L", globalPropertyf("tu154ce/bleed/air_usage_L")) -- расход воздуха лев
defineProperty("air_usage_R", globalPropertyf("tu154ce/bleed/air_usage_R")) -- расход воздуха прав

-- gears
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) --
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) --
defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed"))                      -- GS, m/s

-- flaps
defineProperty("flaps_lever", globalPropertyf("tu154ce/controll/flaps_lever")) -- sim flaps ratio control. use for axis and commands


-- loudness
defineProperty("engine_volume_ratio", globalPropertyf("sim/operation/sound/engine_volume_ratio"))   --
defineProperty("prop_volume_ratio", globalPropertyf("sim/operation/sound/prop_volume_ratio"))       --
defineProperty("ground_volume_ratio", globalPropertyf("sim/operation/sound/ground_volume_ratio"))   --
defineProperty("weather_volume_ratio", globalPropertyf("sim/operation/sound/weather_volume_ratio")) --
defineProperty("warning_volume_ratio", globalPropertyf("sim/operation/sound/warning_volume_ratio")) --
defineProperty("radio_volume_ratio", globalPropertyf("sim/operation/sound/radio_volume_ratio"))     --
defineProperty("fan_volume_ratio", globalPropertyf("sim/operation/sound/fan_volume_ratio"))         --


-- failures
defineProperty("main_alarm_fail", globalPropertyi("tu154ce/failures/main_alarm_fail"))       -- отказ сирены
defineProperty("speaker_alarm_fail", globalPropertyi("tu154ce/failures/speaker_alarm_fail")) -- отказ сирены

-- define sources
defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster"))         -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


long_horn = globalPropertyia("tu154ce/sound/long_horn")
short_horn = globalPropertyia("tu154ce/sound/short_horn")
absu_alarm = globalPropertyi("tu154ce/sound/absu_alarm")
overspeed = globalPropertyi("tu154ce/sound/overspeed")
rv5_alarm = globalPropertyi("tu154ce/sound/rad_alt")
vbe_alarm = globalPropertyi("tu154ce/sound/vbe")

flaps_horn = globalPropertyia("tu154ce/sound/flaps")
srd_horn = globalPropertyia("tu154ce/sound/srd")

-- sound sources
--if xplane_version < 120000 then
local absu_sound = loadSample('Custom Sounds/short_speaker.wav') --
local long_speaker = loadSample('Custom Sounds/long_speaker.wav')
local inverters = loadSample('Custom Sounds/inverters.wav')      --
local long_sirena = loadSample('Custom Sounds/long_siren.wav')
local short_sirena = loadSample('Custom Sounds/short_siren.wav')
local bell = loadSample('Custom Sounds/mrp_bell.wav')             --
local rv5_tone = loadSample('Custom Sounds/rv5_tone.wav')         --
local lights_noise = loadSample('Custom Sounds/lights_noise.wav') --
local air_cond_noise = loadSample('Custom Sounds/air_noise.wav')  --
local taxi_noise = loadSample('Custom Sounds/roll_inn.wav')       --

local flaps_sound = loadSample('Custom Sounds/flaps_hnd.wav')     --
--end





local RV_counter = 0
local RV_played = true

local absu_last = get(roll_main_mode) + get(pitch_main_mode)
local stu_last = get(stu_mode)

local invert_counter = 0
if get(xplane_version) < 120000 then playSample(inverters, true) end
setSampleGain(inverters, 0)

local short_siren_timer = 0
local short_speaker_timer = 0
local long_speaker_timer = 0

if get(xplane_version) < 120000 then playSample(air_cond_noise, true) end
setSampleGain(air_cond_noise, 0)


local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')


local switchers_last = 0
local caps_last = 0
local buttons_last = 0

local fail_counter = 0
local check_time = math.random(15, 30)

function update()
	local passed = get(frame_time)

	local run = bool2int(passed ~= 0)

	local external = get(external_view)

	local power = get(bus27_volt_L) > 13 or get(bus27_volt_R) > 13

	local warn_vl = get(warning_volume_ratio)


	-----------------------------
	-- misc controls --
	-----------------------------

	local switchers = get(srd_buzzer) + get(fuel_buzzer)

	if switchers ~= switchers_last then
	end

	switchers_last = switchers


	local caps = get(srd_buzzer_cap) + get(fuel_buzzer_cap)

	if caps ~= caps_last then
	end

	caps_last = caps


	local buttons = get(srd_buzzer_test)

	if buttons ~= buttons_last then
	end

	buttons_last = buttons












	----------------------
	-- RadioAltimeter --
	----------------------

	local RV_must_play = get(rv5_dh_signal_left) == 1 or get(rv5_dh_signal_right) == 1 and power

	if RV_must_play and not RV_played and external == 0 then
		RV_counter = 7 -- seconds to play tone
		RV_played = true
	end

	if not RV_must_play then
		RV_played = false
		RV_counter = 0
	end

	RV_counter = RV_counter - passed
	if not isSamplePlaying(rv5_tone) and RV_counter > 0 then if get(xplane_version) < 120000 then playSample(rv5_tone, true) end end
	if RV_counter <= 0 then if get(xplane_version) < 120000 then stopSample(rv5_tone) end end

	setSampleGain(rv5_tone, 1000 * warn_vl)

	-------------------
	-- main alarm --
	-------------------

	if (get(main_gear_flaps) == 1 or get(fire_siren) == 1) and power and get(srd_buzzer) == 1 and external == 0 and get(main_alarm_fail) == 0 then -- continous buzz
		if not isSamplePlaying(long_sirena) and get(xplane_version) < 120000 then if get(xplane_version) < 120000 then playSample(long_sirena, true) end end
		set(alarm_flaps, 1)
		--if get(xplane_version) < 120000 then stopSample(short_sirena) end
	elseif get(srd_buzzer) == 1 and get(main_pressure) == 1 and power and external == 0 and get(main_alarm_fail) == 0 then
		short_siren_timer = short_siren_timer + passed

		if not isSamplePlaying(long_sirena) and short_siren_timer > 0.2 and get(xplane_version) < 120000 then
			playSample(
				long_sirena, true)
		end
		set(alarm_srd, 1)
		
		if short_siren_timer > 0.4 then
			short_siren_timer = 0
			if get(xplane_version) < 120000 then stopSample(long_sirena) end
		end

		--if get(xplane_version) < 120000 then stopSample(long_sirena) end
	else
		if get(xplane_version) < 120000 then
			if get(xplane_version) < 120000 then stopSample(long_sirena) end
		end

		set(alarm_flaps, 0)
		set(alarm_srd, 0)
		--if get(xplane_version) < 120000 then stopSample(short_sirena) end
	end

	if passed == 0 or external == 1 then
		if get(xplane_version) < 120000 then
			if get(xplane_version) < 120000 then stopSample(long_sirena) end
		end
	end

	if short_siren_timer > 0.4 then short_siren_timer = 0 end

	if get(xplane_version) < 120000 then
		setSampleGain(long_sirena, 1000 * warn_vl)
	end

	------------------
	-- speaker alarm --
	------------------

	local absu_now = get(roll_main_mode) + get(pitch_main_mode)
	local stu_now = get(stu_mode)



	if power and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 and get(absu_fail_signal) == 1 then -- ABSU fails
		if not isSamplePlaying(absu_sound) then if get(xplane_version) < 120000 then playSample(absu_sound, false) end end
		set(alarm_absu, 1)
		if get(xplane_version) < 120000 then stopSample(long_speaker) end
	elseif get(speaker_auasp) == 1 and power and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 then -- long buzzer
		if get(xplane_version) < 120000 then
			if not isSamplePlaying(long_speaker) then if get(xplane_version) < 120000 then playSample(long_speaker, true) end end
			if get(xplane_version) < 120000 then stopSample(absu_sound) end
			set(alarm_auasp, 1)
		else
			set(alarm_fire, 1)
		end
	elseif (get(speaker_fuel) == 1 or get(speaker_speed) == 1) and power and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 then
		short_speaker_timer = short_speaker_timer + passed

		if not isSamplePlaying(long_speaker) and short_speaker_timer > 0.3 then if get(xplane_version) < 120000 then playSample(long_speaker, true) end end
		set(alarm_ospeed, 1)
		if short_speaker_timer > 0.6 then
			short_speaker_timer = 0
			if get(xplane_version) < 120000 then stopSample(long_speaker) end
		end
		if get(xplane_version) < 120000 then stopSample(absu_sound) end
	elseif ((absu_now ~= absu_last and absu_now < 4) or (stu_last >= 3 and stu_now <= 2)) and power and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 then
		set(alarm_absu, 1)
		if get(xplane_version) < 120000 then
			if get(xplane_version) < 120000 then playSample(absu_sound, false) end 
		if get(xplane_version) < 120000 then stopSample(long_speaker) end
		end
		
	else
		if get(xplane_version) < 120000 then stopSample(long_speaker) end
		set(alarm_absu, 0)
		set(alarm_ospeed, 0)
		set(alarm_fire, 0)
		--if get(xplane_version) < 120000 then stopSample(absu_sound) end
	end

	absu_last = absu_now
	stu_last = stu_now



	
	setSampleGain(long_speaker, 1000 * warn_vl)
	if get(speaker_auasp) == 1 and power and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 then
		set(alarm_auasp, 1)
	else
		set(alarm_auasp, 0)
	end

	----------------------
	-- markers sound --
	----------------------

	local inner = get(inner_marker) == 1
	local middle = get(middle_marker) == 1
	local outer = get(outer_marker) == 1

	local mrp_power = power -- need to extend this logic for MRP

	if (inner or middle or outer) and mrp_power and external == 0 then
		if not isSamplePlaying(bell) then if get(xplane_version) < 120000 then playSample(bell, false) end end
		set(alarm_marker)
	else
		--if get(xplane_version) < 120000 then stopSample(bell) end
	end

	setSampleGain(bell, 1000 * warn_vl)

	------------------
	-- power noise --
	-----------------
	local fan_vl = get(fan_volume_ratio)


	local vu_L = get(bus27_source_left)
	local vu_R = get(bus27_source_right)

	if power then
		invert_counter = invert_counter + passed
	else
		invert_counter = invert_counter - passed * 0.3
	end

	if invert_counter > 1 then
		invert_counter = 1
	elseif invert_counter < 0 then
		invert_counter = 0
	end

	local dist = -get(pilot_Z) + 9

	setSampleGain(inverters,
		fan_vl * invert_counter * 200 * (bool2int(vu_L == 1 or vu_L == 2) + bool2int(vu_R == 1 or vu_R == 2)) *
		(1 - external) * math.max(dist - 25, 0) * 0.2 * run)
	setSamplePitch(inverters, invert_counter * 800 + 200)

	if passed == 0 or external == 1 then
		setSampleGain(inverters, 0)
	end

	-----------------------
	-- air cond noise --
	-----------------------
	local air_usage = get(air_usage_L) + get(air_usage_R)
	setSampleGain(air_cond_noise, fan_vl * math.min(600, air_usage) * 1 * (1 - external) * run)
	setSamplePitch(air_cond_noise, 1000)


	-----------------------
	-- taxi noise --
	-----------------------
	local taxi_gain = bool2int(math.max(get(deflection_mtr_2), get(deflection_mtr_3)) > 0.001) *
		math.max(get(groundspeed) - 50, 0) * (1 - external)
	local taxi_pitch = 1000 + (get(groundspeed) - 80) * 3

	-- 80 m/s

	if taxi_gain > 0 then
		if not isSamplePlaying(taxi_noise) then if get(xplane_version) < 120000 then playSample(taxi_noise, true) end end
	else
		if get(xplane_version) < 120000 then stopSample(taxi_noise) end
	end

	setSampleGain(taxi_noise, taxi_gain * 10 * get(ground_volume_ratio))
	setSamplePitch(taxi_noise, taxi_pitch)




	--------------------
	-- lights noise --
	--------------------

	local light_L = get(light_open_left)
	local light_R = get(light_open_right)
	local IAS = get(airspeed)

	if light_L + light_R > 0.1 then
		if not isSamplePlaying(lights_noise) then if get(xplane_version) < 120000 then playSample(lights_noise, true) end end

		local gain = math.max(IAS - 150, 0) * (light_L + light_R) * (1 - external) * 1 * get(weather_volume_ratio)

		setSampleGain(lights_noise, gain)

		setSamplePitch(lights_noise, 250 + IAS * 1)
	else
		if get(xplane_version) < 120000 then stopSample(lights_noise) end
	end


	local MASTER = get(ismaster) ~= 1


	if MASTER then
		local FAIL = get(failures_enabled)
		FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
		-- check failures
		if FAIL > 0 then
			fail_counter = fail_counter + passed

			if fail_counter > check_time then
				fail_counter = 0
				check_time = math.random(15, 30)

				-- random failures
				if get(main_alarm_fail) ~= 1 then set(main_alarm_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
				if get(speaker_alarm_fail) ~= 1 then
					set(speaker_alarm_fail,
						bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1)
				end
			end

			-- dependent failures
		else
			-- no failures enabled
			fail_counter = 0

			set(main_alarm_fail, 0)
			set(speaker_alarm_fail, 0)
		end
	end
end
