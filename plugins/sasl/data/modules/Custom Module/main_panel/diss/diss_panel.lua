-- this is DISS panel - B-57

-- controls
defineProperty("diss_on", globalPropertyi("tu154ce/switchers/ovhd/diss_on")) -- питание ДИСС
defineProperty("diss_mode", globalPropertyi("tu154ce/switchers/ovhd/diss_mode")) -- режим дисс. 0 - море, 1 - суша
defineProperty("nvu_calc_set", globalPropertyi("tu154ce/switchers/ovhd/nvu_calc_set")) -- счисление. -1 - контроль ДИСС в полете, 0 - НВУ по СВС, 1 - НВУ по ДИСС


defineProperty("wind_set", globalPropertyf("tu154ce/rotary/console/wind_set")) -- установка ветра

defineProperty("wind_course_left", globalPropertyi("tu154ce/button/console/wind_course_left")) -- кнопка установки курса ветра 
defineProperty("wind_course_ctr", globalPropertyi("tu154ce/button/console/wind_course_ctr")) -- кнопка установки курса ветра 
defineProperty("wind_course_right", globalPropertyi("tu154ce/button/console/wind_course_right")) -- кнопка установки курса ветра 

defineProperty("wind_spd_left", globalPropertyi("tu154ce/button/console/wind_spd_left")) -- кнопка установки скорости ветра 
defineProperty("wind_spd_ctr", globalPropertyi("tu154ce/button/console/wind_spd_ctr")) -- кнопка установки скорости ветра 
defineProperty("wind_spd_right", globalPropertyi("tu154ce/button/console/wind_spd_right")) -- кнопка установки скорости ветра 

defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп 
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


-- power
defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus115_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в

-- sources
defineProperty("diss_wind_course", globalPropertyf("tu154ce/nvu/diss_wind_course")) -- курс ветра по ДИСС
defineProperty("diss_wind_spd", globalPropertyf("tu154ce/nvu/diss_wind_spd")) -- скорость ветра по ДИСС


defineProperty("diss_mode_set", globalPropertyi("tu154ce/nvu/diss_mode")) -- режим ДИСС. 0 - выкл, 1 - работа, 2 - память, 10 - отказ

-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27



-- panel results
defineProperty("diss_abs_angle_1", globalPropertyf("tu154ce/gauges/misc/diss_abs_angle_1")) -- барабанчик единиц угла
defineProperty("diss_abs_angle_10", globalPropertyf("tu154ce/gauges/misc/diss_abs_angle_10")) -- барабанчик единиц угла
defineProperty("diss_abs_angle_100", globalPropertyf("tu154ce/gauges/misc/diss_abs_angle_100")) -- барабанчик единиц угла
defineProperty("diss_plus_angle_1", globalPropertyf("tu154ce/gauges/misc/diss_plus_angle_1")) -- барабанчик единиц угла
defineProperty("diss_plus_angle_10", globalPropertyf("tu154ce/gauges/misc/diss_plus_angle_10")) -- барабанчик единиц угла
defineProperty("diss_minus_angle_1", globalPropertyf("tu154ce/gauges/misc/diss_minus_angle_1")) -- барабанчик единиц угла
defineProperty("diss_minus_angle_10", globalPropertyf("tu154ce/gauges/misc/diss_minus_angle_10")) -- барабанчик единиц угла
defineProperty("diss_wind_spd_1", globalPropertyf("tu154ce/gauges/misc/diss_wind_spd_1")) -- барабанчик единиц угла
defineProperty("diss_wind_spd_10", globalPropertyf("tu154ce/gauges/misc/diss_wind_spd_10")) -- барабанчик единиц угла
defineProperty("diss_wind_spd_100", globalPropertyf("tu154ce/gauges/misc/diss_wind_spd_100")) -- барабанчик единиц угла

-- lamps
defineProperty("diss_memory", globalPropertyf("tu154ce/lights/diss_memory")) -- память ДИСС


-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm
include("smooth_light.lua")

local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(diss_on, 0)
		set(diss_mode, 0)
		set(nvu_calc_set, 0)
		
	end
	
	notLoaded = false

end








local sw_summ_last = 0

local function switchers()
	
	local diss_on_sw = get(diss_on)
	local diss_mode_sw = get(diss_mode)
	local nvu_mode_sw = get(nvu_calc_set)
	
	local summ = diss_on_sw + diss_mode_sw + nvu_mode_sw
	
	if summ ~= sw_summ_last then  end
	
	sw_summ_last = summ
	

end



local but_summ_last = 0

local function buttons()

	local wind_course_left_sw = get(wind_course_left)
	local wind_course_ctr_sw = get(wind_course_ctr)
	local wind_course_right_sw = get(wind_course_right)
	
	local wind_spd_left_sw = get(wind_spd_left)
	local wind_spd_ctr_sw = get(wind_spd_ctr)
	local wind_spd_right_sw = get(wind_spd_right)

	local summ = wind_course_left_sw + wind_course_ctr_sw + wind_course_right_sw
	summ = summ + wind_spd_left_sw + wind_spd_ctr_sw + wind_spd_right_sw
	
	if summ ~= but_summ_last then  end

	but_summ_last = summ

end





local function lamps()

	
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night

	local diss_memory_brt = math.max(bool2int(get(diss_mode_set) == 2 or get(diss_mode_set) == 10) * lamps_brt, test_btn)
	set(diss_memory, smooth_light(diss_memory_brt, get(diss_memory)))
	
	--set(diss_memory, bool2int(get(diss_mode_set) == 2))

end




function update()

	local passed = get(frame_time)
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end
	
	
	
	-- correction angle
	local corr_angle = get(wind_set)
	
	local cor_plus_1 = math.max(-corr_angle, 0) % 10
	
	local cor_plus_10 = math.floor((math.max(-corr_angle, 0) % 100) * 0.1) + math.max(math.max((cor_plus_1  - 9), 0), 0)
	
	set(diss_plus_angle_1, cor_plus_1)
	set(diss_plus_angle_10, cor_plus_10)

	
	local cor_minus_1 = math.max(corr_angle, 0) % 10
	
	local cor_minus_10 = math.floor((math.max(corr_angle, 0) % 100) * 0.1) + math.max(math.max((cor_minus_1  - 9), 0), 0)
	
	set(diss_minus_angle_1, cor_minus_1)
	set(diss_minus_angle_10, cor_minus_10)
	
	
	-- wind course indication
	local wind_course = get(diss_wind_course) + corr_angle
	
	if wind_course >= 360 then wind_course = wind_course - 360
	elseif wind_course < 0 then wind_course = wind_course + 360 end

	local wind_crs_1 = wind_course % 10
	
	local wind_crs_10 = math.floor((wind_course % 100) * 0.1) + math.max(math.max((wind_crs_1  - 9), 0), 0)
	
	local wind_crs_100 = math.floor((wind_course % 1000) * 0.01) + math.max(math.max((wind_crs_10 - 9), 0), 0)

	set(diss_abs_angle_1, wind_crs_1)
	set(diss_abs_angle_10, wind_crs_10)
	set(diss_abs_angle_100, wind_crs_100)
	
	
	-- wind speed indication
	local wind_speed = get(diss_wind_spd)
	
	local wind_spd_1 = wind_speed % 10
	
	local wind_spd_10 = math.floor((wind_speed % 100) * 0.1) + math.max(math.max((wind_spd_1  - 9), 0), 0)
	
	local wind_spd_100 = math.floor((wind_speed % 1000) * 0.01) + math.max(math.max((wind_spd_10 - 9), 0), 0)

	set(diss_wind_spd_1, wind_spd_1)
	set(diss_wind_spd_10, wind_spd_10)
	set(diss_wind_spd_100, wind_spd_100)
	
	
	
	
	-- functions
	
	switchers()
	
	buttons()
	
	lamps()
	
	





end

