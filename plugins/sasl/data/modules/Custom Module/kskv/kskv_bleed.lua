-- this is KSKV logic's air bleed part

-- engines
defineProperty("rpm_high_1", globalPropertyf("tu154ce/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154ce/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154ce/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3
defineProperty("apu_n1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ

-- current altitude
defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters
defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg


-- controls
defineProperty("psvp_left_on", globalPropertyi("tu154ce/switchers/airbleed/psvp_left_on")) -- ПСВП лев
defineProperty("psvp_right_on", globalPropertyi("tu154ce/switchers/airbleed/psvp_right_on")) -- ПСВП прав
defineProperty("psvp_left_on_cap", globalPropertyi("tu154ce/switchers/airbleed/psvp_left_on_cap")) -- ПСВП лев
defineProperty("psvp_right_on_cap", globalPropertyi("tu154ce/switchers/airbleed/psvp_right_on_cap")) -- ПСВП прав
defineProperty("air_valve_left", globalPropertyi("tu154ce/switchers/airbleed/air_valve_left")) -- краны наддува. -1 закр, 0 - нейтр, +1 откр
defineProperty("air_valve_right", globalPropertyi("tu154ce/switchers/airbleed/air_valve_right")) -- краны наддува. -1 закр, 0 - нейтр, +1 откр
defineProperty("emerg_decompress", globalPropertyi("tu154ce/switchers/airbleed/emerg_decompress")) -- сброс давления
defineProperty("emerg_decompress_cap", globalPropertyi("tu154ce/switchers/airbleed/emerg_decompress_cap")) -- сброс давления
defineProperty("eng_valve_1", globalPropertyi("tu154ce/switchers/airbleed/eng_valve_1")) -- отбор воздуха от двигателей
defineProperty("eng_valve_2", globalPropertyi("tu154ce/switchers/airbleed/eng_valve_2")) -- отбор воздуха от двигателей
defineProperty("eng_valve_3", globalPropertyi("tu154ce/switchers/airbleed/eng_valve_3")) -- отбор воздуха от двигателей

-- failures
defineProperty("airbleed_1", globalPropertyi("tu154ce/failures/airbleed_1")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_2", globalPropertyi("tu154ce/failures/airbleed_2")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_3", globalPropertyi("tu154ce/failures/airbleed_3")) -- отказ отбора воздуха от двигателя

defineProperty("psvp_fail_left", globalPropertyi("tu154ce/failures/psvp_fail_left")) -- отказ ПСВП
defineProperty("psvp_fail_right", globalPropertyi("tu154ce/failures/psvp_fail_right")) -- отказ ПСВП



-- sources
defineProperty("gear_defl", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- проседание стойки шасси

-- internal datarefs
defineProperty("air_usage_L", globalPropertyf("tu154ce/bleed/air_usage_L")) -- расход воздуха лев
defineProperty("air_usage_R", globalPropertyf("tu154ce/bleed/air_usage_R")) -- расход воздуха прав

defineProperty("eng_airvalve_1", globalPropertyf("tu154ce/bleed/eng_airvalve_1")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_2", globalPropertyf("tu154ce/bleed/eng_airvalve_2")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_3", globalPropertyf("tu154ce/bleed/eng_airvalve_3")) -- открытие отбора воздуха от двигателя

defineProperty("apu_air_doors", globalPropertyf("tu154ce/eng/apu_air_doors")) -- положение створок для накачки воздуха

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("start_sys_work", globalPropertyf("tu154ce/start/start_sys_work")) -- работа системы запуска

asu_press = globalPropertyf("tu154ce/asu/press")

defineProperty("engine_bleed_sov_1", globalProperty("sim/cockpit2/bleedair/actuators/engine_bleed_sov[0]")) -- открытие отбора воздуха от двигателя
defineProperty("engine_bleed_sov_2", globalProperty("sim/cockpit2/bleedair/actuators/engine_bleed_sov[1]")) -- открытие отбора воздуха от двигателя
defineProperty("engine_bleed_sov_3", globalProperty("sim/cockpit2/bleedair/actuators/engine_bleed_sov[2]")) -- открытие отбора воздуха от двигателя

-- sim/cockpit2/bleedair/actuators/engine_bleed_sov

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control





local air_usage_tbl = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 60, 250 },   --
				  {  65, 400 }, -- 
				  {  70, 600 }, -- 
				  {  80, 1010 }, -- 
				  {  85, 1100 }, -- 
				  {  90, 1190 }, --
				  {  95, 1270 }, --
				  {  100, 1320 }, -- 
          	      {  10000000, 1500 }}    -- bugs walkaround

local passed = get(frame_time)

local main_valve_L = 1
local main_valve_R = 1

local psvp_L = 1
local psvp_R = 1

local flow_left = 0
local flow_right = 0

local smooth_vlv = 0

local counter = 0

local notLoaded = true

local function reset_vars()
	if get(rpm_high_1) < 10 and get(rpm_high_2) < 10 and get(rpm_high_3) < 10 then
		main_valve_L = 0
		main_valve_R = 0

		psvp_L = 0
		psvp_R = 0

		flow_left = 0
		flow_right = 0

		smooth_vlv = 0		
	end
	
	notLoaded = false
end

function update()
	passed = get(frame_time)
	counter = counter + passed
	if counter > 0.3 and notLoaded then reset_vars() end

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	

	
	
	local power_L = get(bus27_volt_left) > 13
	local power_R = get(bus27_volt_right) > 13
	
	-- calculate engines valves position
	local valve_1 = get(eng_airvalve_1)
	local valve_2 = get(eng_airvalve_2)
	local valve_3 = get(eng_airvalve_3)
	
	local valve_fail_1 = get(airbleed_1) == 1
	local valve_fail_2 = get(airbleed_2) == 1
	local valve_fail_3 = get(airbleed_3) == 1
	
	
	if power_L then
		if not valve_fail_1 then valve_1 = valve_1 + (get(eng_valve_1) * 2 - 1) * passed * 0.2
		else valve_1 = valve_1 - passed * 0.2 end

		if valve_1 > 1 then valve_1 = 1
		elseif valve_1 < 0 then valve_1 = 0 end
	end
	
	if power_R then
		if not valve_fail_2 then valve_2 = valve_2 + (get(eng_valve_2) * 2 - 1) * passed * 0.2
		else valve_2 = valve_2 - passed * 0.2 end
		
		if valve_2 > 1 then valve_2 = 1
		elseif valve_2 < 0 then valve_2 = 0 end	 
		
		if not valve_fail_3 then valve_3 = valve_3 + (get(eng_valve_3) * 2 - 1) * passed * 0.2
		else valve_3 = valve_3 - passed * 0.2 end
		
		if valve_3 > 1 then valve_3 = 1
		elseif valve_3 < 0 then valve_3 = 0 end	
	end
	
	-- altitude coef
	local acf_alt = get(msl_alt) + (29.92 - get(msl_press)) * 1000 * 0.3048  -- calculate barometric altitude in meters
	local alt_coef = 1 - acf_alt / 22000
	
	-- calculate engines airbleed
	local eng_airflow_1 = valve_1 * interpolate(air_usage_tbl, get(rpm_high_1)) * alt_coef
	local eng_airflow_2 = valve_2 * interpolate(air_usage_tbl, get(rpm_high_2)) * alt_coef
	local eng_airflow_3 = valve_3 * interpolate(air_usage_tbl, get(rpm_high_3)) * alt_coef
	local eng_airflow_4 = (get(apu_air_doors) * get(apu_n1) * 11 * alt_coef) + get(asu_press) * 111
	
	
	-- calculate main tubes valves
	local main_vlv_power_L = bool2int(power_L)
	local main_vlv_power_R = bool2int(power_R)
	local start_sys = get(start_sys_work) == 1
	if not start_sys then
		main_valve_L = main_valve_L + get(air_valve_left) * passed * 0.1 * main_vlv_power_L 
		main_valve_R = main_valve_R + get(air_valve_right) * passed * 0.1 * main_vlv_power_R 
	else
		main_valve_L = main_valve_L - passed * 0.2 * main_vlv_power_L 
		main_valve_R = main_valve_R - passed * 0.2 * main_vlv_power_R 		
	end
	
	if main_valve_L > 1 then main_valve_L = 1
	elseif main_valve_L < 0 then main_valve_L = 0 end
	
	if main_valve_R > 1 then main_valve_R = 1
	elseif main_valve_R < 0 then main_valve_R = 0 end
	
	-- calculate the PSVP position
	local psvp_power_L = get(psvp_left_on) == 1 and power_L and get(psvp_fail_left) == 0
	local psvp_power_R = get(psvp_right_on) == 1 and power_R and get(psvp_fail_right) == 0
	
	if not psvp_power_L then 
		psvp_L = psvp_L + passed
	else
		if flow_left < 590 then psvp_L = psvp_L + passed * 0.05
		elseif flow_left > 620 then psvp_L = psvp_L - passed * (flow_left - 620) * 0.1
		end
	end

	if not psvp_power_R then 
		psvp_R = psvp_R + passed
	else
		if flow_right < 590 then psvp_R = psvp_R + passed * 0.05
		elseif flow_right > 620 then psvp_R = psvp_R - passed * (flow_right - 620) * 0.1
		end
	end
	
	-- limits
	if psvp_L > 1 then psvp_L = 1
	elseif psvp_L < 0 then psvp_L = 0 end
	
	if psvp_R > 1 then psvp_R = 1
	elseif psvp_R < 0 then psvp_R = 0 end
	
	-- calculate smooth bleed valve position
	local eng_start_sys = false -- add start system here
	if get(gear_defl) > 0.05 and not eng_start_sys and power_R and not start_sys then
		smooth_vlv = smooth_vlv + passed * 0.1
	else
		smooth_vlv = smooth_vlv - passed * 0.1
	end
	
	if smooth_vlv > 0.2 then smooth_vlv = 0.2
	elseif smooth_vlv < 0 then smooth_vlv = 0 end
	
	
	-- calculate tubes airbleed
	flow_left = (eng_airflow_1 + eng_airflow_2 * 0.5 + eng_airflow_4 * 0.5) * math.min(main_valve_L, psvp_L)
	flow_right = (eng_airflow_3 + eng_airflow_2 * 0.5 + eng_airflow_4 * 0.5) * math.min(main_valve_R + smooth_vlv, psvp_R + smooth_vlv, 1)  
	
		-- set results
	set(eng_airvalve_1, valve_1)
	set(eng_airvalve_2, valve_2)
	set(eng_airvalve_3, valve_3)
	
	-- set sim air bleed valves
	set(engine_bleed_sov_1, bool2int(valve_1 > 0.5))
	set(engine_bleed_sov_2, bool2int(valve_2 > 0.5))
	set(engine_bleed_sov_3, bool2int(valve_3 > 0.5))
	
	
	set(air_usage_L, flow_left)
	set(air_usage_R, flow_right)

end	


end