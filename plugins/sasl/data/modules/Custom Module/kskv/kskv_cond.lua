-- this is air conditioning part of KSKV logic

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- internal
defineProperty("air_usage_L", globalPropertyf("tu154ce/bleed/air_usage_L")) -- расход воздуха лев
defineProperty("air_usage_R", globalPropertyf("tu154ce/bleed/air_usage_R")) -- расход воздуха прав

defineProperty("hot_tube_t", globalPropertyf("tu154ce/bleed/hot_tube_t")) -- температура горячего воздуха в трубопроводе
defineProperty("door_heat_tube_t", globalPropertyf("tu154ce/bleed/door_heat_tube_t")) -- температура в трубопроводе обогрева дверей
defineProperty("cockpit_tube_t", globalPropertyf("tu154ce/bleed/cockpit_tube_t")) -- температура в трубопроводе в кабину
defineProperty("cabin1_tube_t", globalPropertyf("tu154ce/bleed/cabin1_tube_t")) -- температура в трубопроводе в салон 1
defineProperty("cabin2_tube_t", globalPropertyf("tu154ce/bleed/cabin2_tube_t")) -- температура в трубопроводе в салон 2
defineProperty("cold_tube1_t", globalPropertyf("tu154ce/bleed/cold_tube1_t")) -- температура в трубопроводе 1
defineProperty("cold_tube2_t", globalPropertyf("tu154ce/bleed/cold_tube2_t")) -- температура в трубопроводе 2

defineProperty("cockpit_temp", globalPropertyf("tu154ce/bleed/cockpit_temp")) -- температура в кабине
defineProperty("cabin_1_temp", globalPropertyf("tu154ce/bleed/cabin_1_temp")) -- температура в салоне 1
defineProperty("cabin_2_temp", globalPropertyf("tu154ce/bleed/cabin_2_temp")) -- температура в салоне 2

-- controls
defineProperty("cockpit_temp_set", globalPropertyi("tu154ce/switchers/airbleed/cockpit_temp_set")) -- установка температуры кабины
defineProperty("cabin1_temp_set", globalPropertyi("tu154ce/switchers/airbleed/cabin1_temp_set")) -- установка температуры салона
defineProperty("cabin2_temp_set", globalPropertyi("tu154ce/switchers/airbleed/cabin2_temp_set")) -- установка температуры салона
defineProperty("cockpit_mode_set", globalPropertyi("tu154ce/switchers/airbleed/cockpit_mode_set")) -- становка режима обогрева. 0 - нейтр. 1 - авто, 2 - хол, 3 - гор
defineProperty("cabin1_mode_set", globalPropertyi("tu154ce/switchers/airbleed/cabin1_mode_set")) -- установка режима обогрева
defineProperty("cabin2_mode_set", globalPropertyi("tu154ce/switchers/airbleed/cabin2_mode_set")) -- установка режима обогрева

defineProperty("left_sys_temp_set", globalPropertyi("tu154ce/switchers/airbleed/left_sys_temp_set")) -- установка температуры левой магистрали
defineProperty("right_sys_temp_set", globalPropertyi("tu154ce/switchers/airbleed/right_sys_temp_set")) -- установка температуры правой магистрали
defineProperty("left_sys_mode_set", globalPropertyi("tu154ce/switchers/airbleed/left_sys_mode_set")) -- установка режима левой магистрали
defineProperty("right_sys_mode_set", globalPropertyi("tu154ce/switchers/airbleed/right_sys_mode_set")) -- установка режима правой магистрали

defineProperty("door_heat", globalPropertyi("tu154ce/switchers/eng/door_heat")) -- обогрев дверей

defineProperty("skv_faster_work", globalPropertyi("tu154ce/switchers/airbleed/skv_faster_work")) -- -1 - охлаждение ГК, 0 - выкл, +1 - ускоренноые режимы обогрева

-- sources
defineProperty("termo", globalPropertyf("sim/weather/temperature_ambient_c")) -- тепература воздуха
defineProperty("airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- скорость полета



defineProperty("rpm_high_1", globalPropertyf("tu154ce/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154ce/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154ce/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3
defineProperty("apu_n1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ

defineProperty("eng_valve_1", globalPropertyi("tu154ce/switchers/airbleed/eng_valve_1")) -- отбор воздуха от двигателей
defineProperty("eng_valve_2", globalPropertyi("tu154ce/switchers/airbleed/eng_valve_2")) -- отбор воздуха от двигателей
defineProperty("eng_valve_3", globalPropertyi("tu154ce/switchers/airbleed/eng_valve_3")) -- отбор воздуха от двигателей
defineProperty("apu_air_doors", globalPropertyf("tu154ce/eng/apu_air_doors")) -- положение створок для накачки воздуха

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

-- failures
defineProperty("tth_left_fail", globalPropertyi("tu154ce/failures/tth_left_fail")) -- отказ турбохолодильника
defineProperty("tth_right_fail", globalPropertyi("tu154ce/failures/tth_right_fail")) -- отказ турбохолодильника



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local eng_temp_tbl = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 60, 170 },   --
				  { 100, 180 }, -- 
          	      {  10000000, 200 }}    -- bugs walkaround

local termo_out = get(termo)
local hot_air_T = termo_out
local cold_air_T = termo_out
	
	
local cold_tube_T_L = termo_out
local cold_tube_T_R = termo_out

local cold_tube_reg_L = 0.1 -- regulator
local cold_tube_reg_R = 0.1 -- regulator

local cold_tube_act_L = termo_out
local cold_tube_act_R = termo_out

local door_heat_T = termo_out
local door_heat_reg = 0.0

local cockpit_T = termo_out
local cockpit_tube_temp = termo_out
local cockpit_reg = 0.1

local cabin_1_T = termo_out
local cabin_1_tube_temp = termo_out
local cabin_1_reg = 0.1

local cabin_2_T = termo_out
local cabin_2_tube_temp = termo_out
local cabin_2_reg = 0.1

function update()

	local passed = get(frame_time)
	local power_L = get(bus27_volt_left) > 13
	local power_R = get(bus27_volt_right) > 13
	
	
	local airflow_L = get(air_usage_L)
	local airflow_R = get(air_usage_R)
	
	termo_out = get(termo)
	--local IAS = get(airspeed) * 1.852
	local IAS = math.max(get(airspeed) * 1.852, 0)
	-- calculate hot air temperature
	local eng_vlv_1 = get(eng_valve_1)
	local eng_vlv_2 = get(eng_valve_2)
	local eng_vlv_3 = get(eng_valve_3)
	local eng_vlv_4 = get(apu_air_doors)
	local eng_T_1 = interpolate(eng_temp_tbl, get(rpm_high_1) * eng_vlv_1)
	local eng_T_2 = interpolate(eng_temp_tbl, get(rpm_high_2) * eng_vlv_2)
	local eng_T_3 = interpolate(eng_temp_tbl, get(rpm_high_3) * eng_vlv_3)


	local engines_air_T = termo_out




	
	if eng_vlv_1 + eng_vlv_2 + eng_vlv_3 + eng_vlv_4 > 0 and (airflow_L + airflow_R) > 200 then
		engines_air_T = termo_out * 0.3 + (eng_T_1 + eng_T_2 + eng_T_3 + get(apu_n1) * eng_vlv_4 * 1.5) / (eng_vlv_1 + eng_vlv_2 + eng_vlv_3 + eng_vlv_4)
	end
	
	-- heating the air by compressors
	hot_air_T = hot_air_T + (engines_air_T - hot_air_T) * ((airflow_L + airflow_R) * 0.0001 + 1) * passed * 0.05 
	-- initial cooling of hot air by first air radiator
	hot_air_T = hot_air_T + (termo_out - hot_air_T) * passed * (1 + IAS * 0.001 * (airflow_L + airflow_R) * 0.0001) * 0.02
	
	---------------------------------------------------
	-- calculate cold tubes temperature
	-- put hot air into cold tubes
	cold_tube_T_L = cold_tube_T_L + (hot_air_T - cold_tube_T_L) * ((airflow_L * 0.0001 + 1)) * passed * 0.5
	cold_tube_T_R = cold_tube_T_R + (hot_air_T - cold_tube_T_R) * ((airflow_R * 0.0001 + 1)) * passed * 0.5
		
	-- initial cool by air radiators
	cold_tube_T_L = cold_tube_T_L + (termo_out - cold_tube_T_L) * passed * (1 + IAS * 0.01) * 0.4
	cold_tube_T_R = cold_tube_T_R + (termo_out - cold_tube_T_R) * passed * (1 + IAS * 0.01) * 0.4
	
	-- turbo-coolers
	local tth_L_mode = get(left_sys_mode_set)
	local tth_R_mode = get(right_sys_mode_set)
	
	local tth_L_temp_set = (get(left_sys_temp_set) - 20) * 5
	local tth_R_temp_set = (get(right_sys_temp_set) - 20) * 5
	
	local tth_L_temp = cold_tube_T_L * math.max(1 - airflow_L * 0.002, 0) - 10 * math.min(airflow_L * 0.002, 1)
	if cold_tube_T_L < tth_L_temp then tth_L_temp = cold_tube_T_L end
	
	if get(tth_left_fail) == 1 then tth_L_temp = cold_tube_T_L end
	if power_L then
		if tth_L_mode == 1 then -- auto mode
			if cold_tube_act_L > tth_L_temp_set + 1 then cold_tube_reg_L = cold_tube_reg_L - passed * 0.02
			elseif cold_tube_act_L < tth_L_temp_set - 1 then cold_tube_reg_L = cold_tube_reg_L + passed * 0.02
			end
		elseif tth_L_mode == 2 then
			cold_tube_reg_L = cold_tube_reg_L - passed * 0.1
		elseif tth_L_mode == 3 then
			cold_tube_reg_L = cold_tube_reg_L + passed * 0.1
		end
	end
	-- limits
	if cold_tube_reg_L < 0 then cold_tube_reg_L = 0
	elseif cold_tube_reg_L > 0.6 then cold_tube_reg_L = 0.6 end
	
	local cold_tube_L = hot_air_T * cold_tube_reg_L + tth_L_temp * (1 - cold_tube_reg_L)
	
	cold_tube_act_L = cold_tube_act_L + (cold_tube_L - cold_tube_act_L) * passed * 0.2
	
	---
	local tth_R_temp = cold_tube_T_R * math.max(1 - airflow_R * 0.002, 0) - 10 * math.min(airflow_R * 0.002, 1)
	if cold_tube_T_R < tth_R_temp then tth_R_temp = cold_tube_T_R end
	
	if get(tth_right_fail) == 1 then tth_R_temp = cold_tube_T_R end
	if power_R then
		if tth_R_mode == 1 then -- auto mode
			if cold_tube_act_R > tth_R_temp_set + 1 then cold_tube_reg_R = cold_tube_reg_R - passed * 0.02
			elseif cold_tube_act_R < tth_R_temp_set - 1 then cold_tube_reg_R = cold_tube_reg_R + passed * 0.02
			end
		elseif tth_R_mode == 2 then
			cold_tube_reg_R = cold_tube_reg_R - passed * 0.1
		elseif tth_R_mode == 3 then
			cold_tube_reg_R = cold_tube_reg_R + passed * 0.1
		end
	end
	-- limits 
	if cold_tube_reg_R < 0 then cold_tube_reg_R = 0
	elseif cold_tube_reg_R > 0.6 then cold_tube_reg_R = 0.6 end
	
	local cold_tube_R = hot_air_T * cold_tube_reg_R + tth_R_temp * (1 - cold_tube_reg_R)
	
	cold_tube_act_R = cold_tube_act_R + (cold_tube_R - cold_tube_act_R) * passed * 0.2
	
	-- cold tube temperature
	cold_air_T = cold_air_T + (termo_out - cold_air_T) * passed * 0.01 -- cooling by time
	if airflow_L + airflow_R > 0 then -- replace the air by internal flow
		cold_air_T = cold_air_T + ((cold_tube_act_L * airflow_L + cold_tube_act_R * airflow_R) / (airflow_L + airflow_R) - cold_air_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01
	end
	
	--------------------------------------------------
	-- fast heat or cooling
	local fast_hc_sw = get(skv_faster_work)
	local fast_heat_cool_T = termo_out
	if fast_hc_sw == -1 and power_R then fast_heat_cool_T = cold_air_T
	elseif fast_hc_sw == 1 and power_R then fast_heat_cool_T = hot_air_T end
	
	--------------------------------------------------
	-- door heat temperature
	door_heat_T = door_heat_T + (termo_out - door_heat_T) * passed * 0.01 -- cooling by time
	local door_ht_sw = get(door_heat)
	local door_heat_T_need = cold_air_T * (1 - door_heat_reg) + hot_air_T * door_heat_reg -- regulated temperature in tubes
	if door_ht_sw == 1 then
		door_heat_T = door_heat_T + (door_heat_T_need - door_heat_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01 -- cmooth changing
	end
	-- regulator
	if (door_heat_T > 80 + 5 and power_R) or door_ht_sw == 0 then door_heat_reg = door_heat_reg - passed * 0.1
	elseif door_heat_T < 80 - 5 and power_R and door_ht_sw == 1 then door_heat_reg = door_heat_reg + passed * 0.1 end
	
	-- set limits
	if door_heat_reg > 1 then door_heat_reg = 1
	elseif door_heat_reg < 0 then door_heat_reg = 0 end
	
	--------------------------------------------------
	-- cockpit temperatures
	-- tube temperature
	cockpit_tube_temp = cockpit_tube_temp + (termo_out - cockpit_tube_temp) * passed * 0.01 -- cooling by tine
	local cockpit_tube_need = cold_air_T * (1 - cockpit_reg) + hot_air_T * cockpit_reg -- regulated temperature in tubes
	cockpit_tube_temp = cockpit_tube_temp + (cockpit_tube_need - cockpit_tube_temp) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01 -- cmooth changing

	
	
	cockpit_T = cockpit_T + (termo_out - cockpit_T) * passed * 0.003 -- temperature in cabin will slowly turn to outside temp
	cockpit_T = cockpit_T + (cockpit_tube_temp - cockpit_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00002 -- cmooth changing
	if fast_hc_sw ~= 0 then cockpit_T = cockpit_T + (fast_heat_cool_T - cockpit_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00005 end
	
	-- regulator
	local cockpit_mode = get(cockpit_mode_set)
	local cockpit_T_set = get(cockpit_temp_set)
	if power_L and power_R then
		if cockpit_mode == 1 then
			if cockpit_T > cockpit_T_set + 0.5 then cockpit_reg = cockpit_reg - passed * 0.01
			elseif cockpit_T < cockpit_T_set - 0.5 then cockpit_reg = cockpit_reg + passed * 0.01
			end
		elseif cockpit_mode == 2 then
			cockpit_reg = cockpit_reg - passed * 0.1
		elseif cockpit_mode == 3 then
			cockpit_reg = cockpit_reg + passed * 0.1
		end
	end
	-- limits
	if cockpit_reg > 0.5 then cockpit_reg = 0.5
	elseif cockpit_reg < 0 then cockpit_reg = 0 end


	--------------------------------------------------
	-- cabin_1 temperatures
	-- tube temperature
	cabin_1_tube_temp = cabin_1_tube_temp + (termo_out - cabin_1_tube_temp) * passed * 0.01 -- cooling by tine
	local cabin_1_tube_need = cold_air_T * (1 - cabin_1_reg) + hot_air_T * cabin_1_reg -- regulated temperature in tubes
	cabin_1_tube_temp = cabin_1_tube_temp + (cabin_1_tube_need - cabin_1_tube_temp) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01 -- cmooth changing
	
	cabin_1_T = cabin_1_T + (termo_out - cabin_1_T) * passed * 0.003 -- temperature in cabin will slowly turn to outside temp
	cabin_1_T = cabin_1_T + (cabin_1_tube_temp - cabin_1_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.000007 -- cmooth changing
	
	if fast_hc_sw ~= 0 then cabin_1_T = cabin_1_T + (fast_heat_cool_T - cabin_1_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00005 end
	
	-- regulator
	local cabin_1_mode = get(cabin1_mode_set)
	local cabin_1_T_set = get(cabin1_temp_set)
	
	if power_L and power_R then
		if cabin_1_mode == 1 then
			if cabin_1_T > cabin_1_T_set + 0.5 then cabin_1_reg = cabin_1_reg - passed * 0.01
			elseif cabin_1_T < cabin_1_T_set - 0.5 then cabin_1_reg = cabin_1_reg + passed * 0.01
			end
		elseif cabin_1_mode == 2 then
			cabin_1_reg = cabin_1_reg - passed * 0.1
		elseif cabin_1_mode == 3 then
			cabin_1_reg = cabin_1_reg + passed * 0.1
		end
	end
	-- limits
	if cabin_1_reg > 0.5 then cabin_1_reg = 0.5
	elseif cabin_1_reg < 0 then cabin_1_reg = 0 end	

	--------------------------------------------------
	-- cabin_1 temperatures
	-- tube temperature
	cabin_2_tube_temp = cabin_2_tube_temp + (termo_out - cabin_2_tube_temp) * passed * 0.01 -- cooling by tine
	local cabin_2_tube_need = cold_air_T * (1 - cabin_2_reg) + hot_air_T * cabin_2_reg -- regulated temperature in tubes
	cabin_2_tube_temp = cabin_2_tube_temp + (cabin_2_tube_need - cabin_2_tube_temp) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01 -- cmooth changing
	
	cabin_2_T = cabin_2_T + (termo_out - cabin_2_T) * passed * 0.003 -- temperature in cabin will slowly turn to outside temp
	cabin_2_T = cabin_2_T + (cabin_2_tube_temp - cabin_2_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.000007 -- cmooth changing
	
	if fast_hc_sw ~= 0 then cabin_2_T = cabin_2_T + (fast_heat_cool_T - cabin_2_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00005 end
	
	-- regulator
	local cabin_2_mode = get(cabin2_mode_set)
	local cabin_2_T_set = get(cabin2_temp_set)

	if power_L and power_R then
		if cabin_2_mode == 1 then
			if cabin_2_T > cabin_2_T_set + 0.5 then cabin_2_reg = cabin_2_reg - passed * 0.01
			elseif cabin_2_T < cabin_2_T_set - 0.5 then cabin_2_reg = cabin_2_reg + passed * 0.01
			end
		elseif cabin_2_mode == 2 then
			cabin_2_reg = cabin_2_reg - passed * 0.1
		elseif cabin_2_mode == 3 then
			cabin_2_reg = cabin_2_reg + passed * 0.1
		end
	end
	
	-- limits
	if cabin_2_reg > 0.5 then cabin_2_reg = 0.5
	elseif cabin_2_reg < 0 then cabin_2_reg = 0 end
	
local MASTER = get(ismaster) ~= 1	
	

if MASTER then		
	
	-- results
	set(hot_tube_t, hot_air_T)
	set(cold_tube1_t, cold_tube_act_L)
	set(cold_tube2_t, cold_tube_act_R)
	set(door_heat_tube_t, door_heat_T)
	set(cockpit_tube_t, cockpit_tube_temp)
	set(cockpit_temp, cockpit_T)
	set(cabin1_tube_t, cabin_1_tube_temp)
	set(cabin_1_temp, cabin_1_T)
	set(cabin2_tube_t, cabin_2_tube_temp)
	set(cabin_2_temp, cabin_2_T)	

end
	
end
