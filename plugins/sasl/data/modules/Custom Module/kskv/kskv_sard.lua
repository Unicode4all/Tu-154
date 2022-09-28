-- this is pressure control logic

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time
defineProperty("xp_version", globalPropertyi("sim/version/xplane_internal_version"))


-- internal
defineProperty("air_usage_L", globalPropertyf("tu154ce/bleed/air_usage_L")) -- расход воздуха лев
defineProperty("air_usage_R", globalPropertyf("tu154ce/bleed/air_usage_R")) -- расход воздуха прав

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("sard_panel_lit", globalPropertyf("tu154ce/lights/sard_panel_lit")) -- светимость панели САРД

defineProperty("start_sys_work", globalPropertyf("tu154ce/start/start_sys_work")) -- работа системы запуска

-- controls
defineProperty("sard_cabin_press_set", globalPropertyf("tu154ce/switchers/sard/sard_cabin_press_set")) -- установка давления в кабине
defineProperty("sard_abs_press_set", globalPropertyf("tu154ce/switchers/sard/sard_abs_press_set")) --установка абсолютного давления
defineProperty("sard_diff_set", globalPropertyf("tu154ce/switchers/sard/sard_diff_set")) -- установка перепада давлений
defineProperty("sard_spd_set", globalPropertyf("tu154ce/switchers/sard/sard_spd_set")) -- установка скорости работы САРД

defineProperty("emerg_decompress", globalPropertyi("tu154ce/switchers/airbleed/emerg_decompress")) -- сброс давления

defineProperty("sard_disable", globalPropertyi("tu154ce/switchers/eng/sard_disable")) -- ерекрытие клапана сброса воздуха

-- windows
defineProperty("cockpit_window_left", globalPropertyf("tu154ce/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154ce/anim/cockpit_window_right")) -- открытие форточки

defineProperty("pax_door_1", globalPropertyf("tu154ce/anim/pax_door_1")) -- положение передних пасс дверей
defineProperty("pax_door_2", globalPropertyf("tu154ce/anim/pax_door_2")) -- положение средних пасс дверей
defineProperty("pax_door_3", globalPropertyf("tu154ce/anim/pax_door_3")) -- положение правых аварийных дверей




-- failures
defineProperty("sard_valve_fail", globalPropertyi("tu154ce/failures/sard_valve_fail")) -- отказ выпускного клапана


-- current altitude
defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters
defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg

-- results
defineProperty("dump_to_altitude_on", globalPropertyi("sim/cockpit2/pressurization/actuators/dump_to_altitude_on")) -- Dump pressurization to the current altitude, 0 or 1.
defineProperty("cabin_altitude_ft", globalPropertyf("sim/cockpit2/pressurization/actuators/cabin_altitude_ft")) -- Cabin altitude commanded, feet.
defineProperty("cabin_vvi_fpm", globalPropertyf("sim/cockpit2/pressurization/actuators/cabin_vvi_fpm")) -- Cabin VVI commanded, feet.

defineProperty("dump_all_on", globalPropertyi("sim/cockpit2/pressurization/actuators/dump_all_on"))


-- current state
defineProperty("cabin_alt_now_ft", globalPropertyf("sim/cockpit2/pressurization/indicators/cabin_altitude_ft")) -- Cabin altitude actually occurring, feet
defineProperty("pressure_diff_psi", globalPropertyf("sim/cockpit2/pressurization/indicators/pressure_diffential_psi")) -- pounds/square_inch	Cabin differential pressure, psi.

defineProperty("acf_has_press_controls", globalPropertyf("sim/aircraft/view/acf_has_press_controls")) --


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




set(acf_has_press_controls, 1)

local press_alt_tbl = {{ -100000, 1000000 },    -- bugs walkaround
{  525, 3000 }, -- 0.0
{ 560, 2500 },   --
{ 597, 2000 }, -- 
{ 635, 1500 }, -- 
{ 674, 1000 }, -- 
{ 714, 500 }, -- 
{ 760, 0 }, -- 
{ 806, -500 }, -- 
{  10000000, -100000 }}    -- bugs walkaround

				  
				  
local press_reg = 0 -- pressure valve position. 0 - closed, 1 - fully open
local cab_alt_need = -200
--local sys_alt = get(cabin_alt_now_ft) * 0.3048 -- calculated cabin alt meters
local decomp_last = 0

function update()
	local passed = get(frame_time)
	local XP11 = get(xp_version) > 11000	
	
	
	local power_L = get(bus27_volt_left) > 13
	local power_R = get(bus27_volt_right) > 13
	
	-- current state
	local acf_alt = get(msl_alt) + (29.92 - get(msl_press)) * 1000 * 0.3048  -- calculate barometric altitude in meters
	local current_alt = get(cabin_alt_now_ft) * 0.3048 -- cabin alt meters
	
	local airflow = get(air_usage_L) + get(air_usage_R)
	local current_diff = get(pressure_diff_psi) * 0.0778-- 0.07031  -- pressure in kg/cm2
	local alt_set = interpolate(press_alt_tbl, get(sard_cabin_press_set))
	local diff_set = get(sard_diff_set)
	
	-- calculate change speed
	--local change_spd = math.abs(current_alt - sys_alt) * 0.05 + 1 -- 50 m/s per 1000m of differense
	
	-- calculate slow decompress of the cabin
	local slow_decomp_coef = 1--(acf_alt / 12000) * (-7) + 8
	local slow_decomp = (acf_alt - current_alt) * passed * slow_decomp_coef

	
	-- calculate airflow
	local flow_alt_coef = 1--acf_alt * 0.017 / 12000 + 0.002 -- 0.002 - 0.019
	local airflow_comp = (acf_alt - 10500 - current_alt) * passed * airflow * flow_alt_coef
	
	-- calculate automatic pressure dump
	if acf_alt < alt_set + 200 then 
		if current_alt < acf_alt - 200 then press_reg = 1
		else press_reg = 0 end
	elseif current_diff < diff_set then
		if current_alt < alt_set then press_reg = 1
		else press_reg = 0  end
	--[[else
		if current_diff > diff_set then press_reg = 1
		else press_reg = 0 end--]]
	end
	if current_diff > diff_set then press_reg = 1 end
	
	local dumpall = 0
	
	-- calculate fast decompress of the cabin
	local fast_decomp = 0 -- 500 - 100
	local fast_decomp_coef = (acf_alt / 12000) * (-400) + 500
	local start_sys = get(start_sys_work) == 1
	if (get(emerg_decompress) == 1 or press_reg == 1) and get(sard_valve_fail) == 0 and get(sard_disable) == 0 and power_R and not start_sys then 
		fast_decomp = current_alt + (acf_alt - current_alt) * passed * fast_decomp_coef
		dumpall = dumpall + 1
		--set(dump_all_on, 1)
	end	
	
	-- windows open
	local windows_decomp = 0
	local cabin_vvi = 10000
	if get(cockpit_window_left) + get(cockpit_window_right) + get(pax_door_1) + get(pax_door_2) + get(pax_door_3) > 0.2 then
		windows_decomp = current_alt + (acf_alt - current_alt) * passed * 1000
		cabin_vvi = 100000
		--set(dump_all_on, 1)
		dumpall = dumpall + 1
	end
	
	
	-- calculate result alt
	local sys_alt = current_alt + airflow_comp + slow_decomp + fast_decomp + windows_decomp
	
	--print(acf_alt, "  ", alt_set, "  ", current_diff, "  ", sys_alt)

local MASTER = get(ismaster) ~= 1	
	

--if MASTER then	

	--set(cabin_vvi_fpm, change_spd * 196.8504)
	set(cabin_vvi_fpm, cabin_vvi)	
	set(cabin_altitude_ft, sys_alt / 0.3048)
	
	if dumpall > 0 then set(dump_all_on, 1) else set(dump_all_on, 0) end
	--set(cabin_altitude_ft, 420)
	--print(get(emerg_decompress))
--end

	set(sard_panel_lit, get(bus115_1_volt) / 115)
	
end