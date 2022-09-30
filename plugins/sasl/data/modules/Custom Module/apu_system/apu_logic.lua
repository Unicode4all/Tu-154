-- this is APU calculations

-- controls
defineProperty("apu_main_switch", globalPropertyi("tu154ce/switchers/eng/apu_main_switch")) -- выключатель ВСУ
defineProperty("apu_start_mode", globalPropertyi("tu154ce/switchers/eng/apu_start_mode")) -- режим запуска ВСУ
defineProperty("apu_air_bleed", globalPropertyi("tu154ce/switchers/eng/apu_air_bleed")) -- переключение заслонки отбора воздуха. -1 - закрыть, 0 - нейтр, +1 - открыть
defineProperty("apu_start", globalPropertyi("tu154ce/buttons/eng/apu_start")) -- кнопка старта ВСУ
defineProperty("apu_stop", globalPropertyi("tu154ce/buttons/eng/apu_stop")) -- кнопка стоп ВСУ

-- internal DataRefs
defineProperty("apu_n1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ
defineProperty("apu_oil_t", globalPropertyf("tu154ce/eng/apu_oil_t")) -- температура масла ВСУ
defineProperty("apu_oil_q", globalPropertyf("tu154ce/eng/apu_oil_q")) -- количество масла ВСУ
defineProperty("apu_oil_p", globalPropertyf("tu154ce/eng/apu_oil_p")) -- давление масла ВС
defineProperty("apu_egt", globalPropertyf("tu154ce/eng/apu_egt")) -- температура выходных газов ВСУ

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27
defineProperty("gen4_amp_bus", globalPropertyf("tu154ce/elec/gen4_amp"))

defineProperty("apu_system_on", globalPropertyi("tu154ce/eng/apu_system_on"))

defineProperty("apu_fuel_last", globalPropertyf("tu154ce/eng/apu_fuel_last")) -- остаток топлива в двигателе

-- fuel weight in tank 1
defineProperty("tank1_w", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight

-- results
defineProperty("apu_air_press", globalPropertyf("tu154ce/eng/apu_air_press")) -- давление воздуха для запуска двигателей
defineProperty("apu_air_doors", globalPropertyf("tu154ce/eng/apu_air_doors")) -- положение створок для накачки воздуха
defineProperty("apu_fuel_p", globalPropertyf("tu154ce/eng/apu_fuel_p")) -- давление топлива ВСУ

defineProperty("apu_start_bus", globalPropertyf("tu154ce/elec/apu_start_bus")) -- напряжение в сети ВСУ
defineProperty("apu_start_cc", globalPropertyf("tu154ce/elec/apu_start_cc")) -- потребление тока стартером ВСУ
defineProperty("apu_start_seq", globalPropertyi("tu154ce/elec/apu_start_seq")) -- идет процесс запуска ВСУ
defineProperty("fuel_pumps_27_cc", globalPropertyf("tu154ce/elec/fuel_pumps_27_cc")) -- нагрузка на сеть 27в от топливных насосо

defineProperty("apu_doors", globalPropertyf("tu154ce/anim/apu_doors")) -- положение створок ВСУ. 0 - закрыты, 1 - открыты.

defineProperty("apu_burn_fuel", globalPropertyi("tu154ce/elec/apu_burning_fuel")) -- ВСУ работает и сжигает топливо

-- engine #2 bleed
defineProperty("eng_airvalve_2", globalPropertyf("tu154ce/bleed/eng_airvalve_2")) -- открытие отбора воздуха от двигателя
defineProperty("rpm_high_2", globalPropertyf("tu154ce/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2


-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- sim DataRefs
defineProperty("outside_air_temp", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) -- 
defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- barometric alt. maybe in feet, maybe in meters.
defineProperty("baro_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressure at sea level in.Hg


defineProperty("reset_state",globalPropertyi("tu154ce/reset_state")) -- сброс состояния самолета

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


-- failures
defineProperty("apu_start_fail",globalPropertyi("tu154ce/failures/apu_start_fail")) -- отказ стартера
defineProperty("apu_gen_fail",globalPropertyi("tu154ce/failures/apu_gen_fail")) -- отказ генератора
defineProperty("apu_runtime",globalPropertyf("tu154ce/failures/apu_runtime")) -- время наработки
defineProperty("apu_fail_oilt",globalPropertyi("tu154ce/failures/apu_fail_oilt")) -- отказ по температуре масла
defineProperty("apu_fail_egt",globalPropertyi("tu154ce/failures/apu_fail_egt")) -- отказ по ТВГ
defineProperty("apu_fail_fuel_left",globalPropertyi("tu154ce/failures/apu_fail_fuel_left")) -- отказ пр остатку топлива в камере при запуске
defineProperty("apu_fail",globalPropertyi("tu154ce/failures/apu_fail")) -- отказ по наработке
defineProperty("apu_press_fail", globalPropertyi("tu154ce/failures/apu_press_fail")) -- отказ отбора воздуха от двигателя

defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled"))

set(apu_runtime, math.random(280,320) * 3600)


local RPM = 0 -- 0..100
local oil_q = 1
set(apu_oil_q, 1)
local apu_burns_fuel = false -- true, when apu is started and burns fuel
local apd_work_time = 100 -- seconds from starting the start sequence

local apu_doors_pos = get(apu_doors)
local bleed_doors_pos = get(apu_air_doors)

local apu_burning_fuel = 0
local apu_starter = 0

local starter_work = 1 -- 0, when starter failed
local starter_worked = false

local apu_emerg_off = 0
local apu_fail_last_fuel = 1 -- 0, when APU failed
local apu_fail_EGT = 1 -- 0, when APU failed
local apu_fail_OIL_T = 1 -- 0, when APU failed
local starter_RPM_check = false

local egt_current = get(outside_air_temp)
local apu_temp = get(outside_air_temp)
local oil_temp = get(outside_air_temp)

local fuel_last = get(apu_fuel_last)

local oil_temp_counter = 0

local minusTimer = 0
	
local off_tbl = {{ -500, 30},  -- bugs workaround
				  { -10, 30 },  -- 
				  { 0, 0 },  -- 
            	  { 3,  -5 },   --
				  { 4,  -0.18 },   --
				  { 5,  -0.18 },   --
				  { 10,  -0.25 },   -- 
				  { 20,  -2 },   --
				  { 30,  -3 },   --
				  { 40, -5 },  --
				  { 55, -7 },  --
				  { 60, -20 },  --				  
				  { 100, -20 },  --
				  { 120, -50 },  -- 
          		  { 1000, -100 }}   -- bugs workaround
				  
local starter_tbl = {{ -500, 20},  -- bugs workaround
				  { 0, 10 },  -- 
            	  { 3,  8 },   -- 
				  { 15,  4 },   -- 
				  { 20,  5 },   -- 
				  { 23, 2.5 },  -- 
				  { 30, 0 },  -- 
          		  { 1000, 0 }}   -- bugs workaround	  
				  
local fuel_tbl = {{ -500, 0},  -- bugs workaround
				  { 0, 0 },  -- 
				  { 15,  0 },   -- 
				  { 20,  1 },   -- 
				  { 30, 5 },   --
				  { 55, 10 },  -- 
				  { 60, 30 },  --
				  { 98, 30 },  -- 
				  { 102, 0 },  --
          		  { 1000, 0 }}   -- bugs workaround	  
				  
local oil_temp_tbl = {{ -500, 10},  -- bugs workaround
				  { -50, 1.6 },  -- 
				  { -30,  1.4 },   -- 
				  { -25,  1.25 },   -- 
				  { 30, 1 },   --
				  { 150, 0.9 },   --
          		  { 1000, 0.7 }}   -- bugs workaround	 
local false_bleed = 0


			  
function update()
	

		
	local passed = get(frame_time)
	-- set the power
	--[[
	-- reset failures
	if get(reset_state) == 1 and not reset then
		set(apu_fail_fuel_left, 0)
		set(apu_fail_egt, 0)
		set(apu_fail_oilt, 0)
		
		apu_fail_last_fuel = 1
		apu_fail_EGT = 1
		apu_fail_OIL_T = 1
		
		print("APU failures reset")
	end
	--]]
	
	-- sync data
	RPM = get(apu_n1)
	oil_q = get(apu_oil_q)
	oil_temp = get(apu_oil_t)
	apu_doors_pos = get(apu_doors)
	bleed_doors_pos = get(apu_air_doors)
	apu_burning_fuel = get(apu_burn_fuel)
	egt_current = get(apu_egt)
	
local MASTER = get(ismaster) ~= 1		

if MASTER then
	
	
	apu_fail_last_fuel = 1 - get(apu_fail_fuel_left)
	apu_fail_EGT = 1 - get(apu_fail_egt)
	apu_fail_OIL_T = 1 - get(apu_fail_oilt)
	
	local mode_sw = get(apu_start_mode)
	local main_sw = get(apu_main_switch)
	local power_apu = get(apu_start_bus)	
	
	local bus_L = get(bus27_volt_left)
	local bus_R = get(bus27_volt_right)
	
	-- check power for APU system
	local system_on = 0
	if bus_R > 13 and main_sw == 1 then system_on = 1 end
	
	-- set external doors
	apu_doors_pos = apu_doors_pos + bus_L * (system_on * 2 - 1) * passed / (27 * 3)
	-- set limits
	if apu_doors_pos > 1 then apu_doors_pos = 1
	elseif apu_doors_pos < 0 then apu_doors_pos = 0 end
	
	-- air bleed doors
	if bus_R > 13 and RPM > 92 and get(apu_press_fail) == 0 then
		bleed_doors_pos = bleed_doors_pos + get(apu_air_bleed) * passed * 0.2
	elseif bus_R > 13 then
		bleed_doors_pos = bleed_doors_pos - passed * 0.2
	end
	-- set limits
	if bleed_doors_pos > 1 then bleed_doors_pos = 1
	elseif bleed_doors_pos < 0 then bleed_doors_pos = 0 end
	
	-- calculate fuel pressure
	local fuel_current = 0
	--if fuel_press > 0.6 then fuel_current = 15 end
	
	local fuel_press = get(apu_fuel_p)
	if mode_sw * system_on == 1 and power_apu > 13 and get(tank1_w) > 150 then 
		fuel_press = fuel_press + passed * 1
		 fuel_current = 15
	else 
		fuel_press = fuel_press - passed * 1 
		fuel_current = 0
	end
	
	--print(mode_sw, system_on, power_apu)
	
	if fuel_press > 1 then fuel_press = 1
	elseif fuel_press < 0 then fuel_press = 0 end
	

	-- calculate starter work flag
	apd_work_time = apd_work_time + passed
	
	if (apd_work_time > 32 or RPM > 45) and not starter_worked then -- automatic starter disconnect
		apu_starter = 0
		starter_worked = true
	elseif apd_work_time < 32 and apd_work_time > 1 and not starter_worked then -- connect starter
		apu_starter = 1
		--print("starter", apu_starter, apd_work_time, RPM, apu_fail_last_fuel, apu_fail_EGT, apu_fail_OIL_T, starter_RPM_check, starter_work)
	end
	
	-- end starting proccess
	if RPM > 92 then
		apu_starter = 0
		apd_work_time = 100
	end
	
	-- reset starter worked flag
	if RPM > 92 or apd_work_time > 32 then 
		starter_worked = false
	end
	
	-- calculate fuel intro
	if RPM > 21 and apd_work_time < 32 and fuel_press > 0.8 and apu_starter == 1 then
		if fuel_last > 0.1 and apu_burning_fuel == 0 then -- fuel last failure
			local rand = math.random (100 - fuel_last * 80)
			print("previous start was faulty and there may be some fuel left inside the APU")
			print("calculating failure. if result is less than 20 then - fail")
			print("possibility", 100 - fuel_last * 80, "calculated number" ,rand)
			if rand < 20 then
				apu_fail_last_fuel = 0
				set(apu_fail_fuel_left, 1)
				print("failure occured")
				print("APU failed because of too much fuel in it before start")
				print("next time make a cold start if you failed to start APU before")
				print("and don't try to start it before it completely stopped")
			else 
				print("you are lucky")
				print("but next time make a cold start if you failed to start APU before")
				print("and don't try to start it before it completely stopped")
			end
		end
		
		if egt_current > 150 and apu_burning_fuel == 0 then -- EGT failure
			print("you starting a very hot APU. calculating failure possibility")
			local rand =  math.random(350 - egt_current)
			print("if result is less than 50 then - fail")
			print("possibility", 350 - egt_current, "calculated number", rand)
			if rand < 50 then 
				apu_fail_EGT = 0
				set(apu_fail_egt, 1)
				print("APU failed because it was started being too hot")
				print("next time wait untill it cooled down to less than +150ºC")
				print("or make cold start to cool it down")
			else
				print("you are lucky")
				print("but next time wait untill it cooled down to less than +150ºC")
				print("or make cold start to cool it down")
			end
		end
		
		apu_burning_fuel = 1
	elseif fuel_press < 0.5 then
		apu_burning_fuel = 0
	end
	
	-- reset APU fail by EGT
	if egt_current < 150 then set(apu_fail_egt, 0) end

	
	
	-- calculate fuel cut and starter stop
	if get(apu_stop) == 1 or (apd_work_time > 32 and RPM < 45) or power_apu < 5 then 
		apu_burning_fuel = 0
		apd_work_time = 100
		apu_starter = 0
	end		
	
	-- start button
	if power_apu > 13 and system_on == 1 and get(apu_start) == 1 and apd_work_time > 35 and apu_doors_pos > 0.9 then
		apd_work_time = 0
		starter_RPM_check = false
		--print("start button", apd_work_time)
	end
	
	-- define starting sequence
	if apd_work_time < 35 and starter_work * apu_starter == 1 then
		set(apu_start_seq, 1)
	else set(apu_start_seq, 0) end
	
	-- set failure for starter
	if apd_work_time < 2 and apu_starter == 1 and RPM > 20 and starter_work == 1 and not starter_RPM_check then
		local rand = math.random(50 - RPM)
		print("you tried to start APU when its RPM was more than 20%")
		print("calculating failure possibility")
		print("if result is less than 5 then - fail")
		print("possibility", 50 - RPM, "calculated number", rand)
		if rand < 5 then
			starter_work = 0
			print("starter fail")
			print("next time let APU to stop completely before start it again")
		else
			print("you are lucky")
			print("but next time let APU to stop completely before start it again")
		end
		starter_RPM_check = true
	end
	
	-- oil temperature coef. 0.9 for hot oil and 1.25 for cold. may use more, but in that case, APU may not start at all.
	local t_stop_coef = interpolate(oil_temp_tbl, oil_temp)
	

	
	-- calculate fuel, last from previous start
	if apu_burning_fuel == 1 and apu_fail_last_fuel == 1 then fuel_last = 1.2 end
	
	fuel_last = fuel_last - (math.abs(RPM * 0.01) ^ 0.7) * 0.12 * passed
	fuel_last = fuel_last - apu_burning_fuel * 0.1 * passed
	
	if fuel_last < 0 then 
		fuel_last = 0 
		if apu_fail_last_fuel == 0 then
			apu_burning_fuel = 0
		end
	end

	-- check altitude
	local real_alt = get(msl_alt) + (29.92 - get(baro_press)) * 304.800919279572547
	if real_alt > 4500 and apu_burning_fuel == 1 then 
		apu_burning_fuel = 0 
		fuel_last = fuel_last + 0.5
	end
	
	set(apu_fuel_last, fuel_last)
	
	-- calculate failure fr high oil temperature
	if oil_temp > 115 then
		oil_q = oil_q - passed * 0.002
		oil_temp_counter = oil_temp_counter + passed
		if oil_temp_counter > 10 and apu_fail_OIL_T == 1 then
			local rand = math.random(155 - oil_temp)
			print("oil temperature is too high. oil cunsumption increased. may fail")
			print("oil temperature =", oil_temp, "oil quantity =", oil_q, "current possibility =", rand, "fail when less than 5")
			if rand < 5 then 
				apu_fail_OIL_T = 0
				set(apu_fail_oilt, 1)
				print("APU failed because of too high oil temperature")
			end
			oil_temp_counter = 0
		end
	end
	
	-- set APU RPM random when both APU and engine #2 airbleed is open
	local bleed_eng = get(eng_airvalve_2) * get(rpm_high_2) * bleed_doors_pos * (math.random(0, 100) - 51) * 0.00004
	false_bleed = false_bleed + (bleed_eng - false_bleed) * passed * 0.5
	
	
	
	-- set new RPM depending on starter and fuel burning
	RPM = RPM + interpolate(off_tbl, RPM) * t_stop_coef * (2 - apu_fail_last_fuel) * (2 - apu_fail_EGT) * (3 - apu_fail_OIL_T * 2) * passed -- stopping force
	RPM = RPM + interpolate(starter_tbl, RPM) * apu_starter * starter_work * apu_fail_EGT * apu_fail_OIL_T * (1 - get(apu_start_fail)) * (1 - get(apu_fail)) * passed -- starter force
	RPM = RPM + interpolate(fuel_tbl, RPM) * apu_burning_fuel * (1 - apu_emerg_off) * apu_fail_last_fuel * apu_fail_EGT * apu_fail_OIL_T * (1 - get(apu_fail)) * passed -- fuel burning force
	RPM = RPM * (false_bleed + 1)
	--print(false_bleed, RPM)
	
	-- calculate APU starter current
	local start_current = apu_starter * 600 / (1 + math.max(RPM - 10, 0) / 5)
	if starter_work == 0 then start_current = apu_starter * 200 end
	
	-- calculate EGT
	local out_temp = get(outside_air_temp)
	local egt_heat_spd = (1000 - egt_current) * 0.1 * apu_burning_fuel * (bleed_doors_pos * 0.25 + 1) * (get(gen4_amp_bus) * 0.0012 + 1) * (3 - apu_fail_last_fuel * 2)
	egt_heat_spd = egt_heat_spd - false_bleed * 2000
	local egt_cool_spd = (egt_current - apu_temp) * (0.5 + ((RPM * 0.01)^1.05) * 1.5) * 0.09
	
	egt_current = egt_current + (egt_heat_spd - egt_cool_spd) * passed
	
	-- calculate APU temperature
	local apu_heat_spd = (egt_current * 0.5 - apu_temp) * 0.005 * (2 - math.abs(RPM) * 0.01)
	local apu_cool_spd = (apu_temp - out_temp) * (0.05 + 1.95 * (math.abs(RPM) * 0.01)^0.5) * 0.001
	
	apu_temp = apu_temp + (apu_heat_spd - apu_cool_spd) * passed
	
	-- oil temperature. need to improve
	local oil_heat_spd = (apu_temp - oil_temp) * 0.55 * (1.2 - oil_q * 0.2) ^ 3
	local oil_cool_spd = (oil_temp - out_temp) * 0.6
	
	oil_temp = oil_temp + (oil_heat_spd - oil_cool_spd) * passed
	
	
	-- red signs. resets only after disabling APU switcher
	local start_seq = get(apu_start_seq) == 1
	
	--if get(apu_oil_p) < 1 then apu_emerg_off = 1 end
	if (start_seq and egt_current > 700) or (not start_seq and egt_current > 570) then apu_emerg_off = 1 end
	if RPM > 105 then apu_emerg_off = 1 end
	
	-- reset red signs
	if system_on == 0 then apu_emerg_off = 0 end
	

	
	-- set results
	if get(failures_enabled) > 0 then
	
		minusTimer = minusTimer + passed * RPM * 0.01
		
		if minusTimer >= 1 then
			minusTimer = 0
			set(apu_runtime, math.max(0, get(apu_runtime) - 1)) 
		end
	
	else 
		set(apu_runtime, 300*3600)
		set(apu_fail_fuel_left, 0)
		set(apu_fail_egt, 0)
		set(apu_fail_oilt, 0)
		set(apu_start_fail, 0)
	end
	
	
	set(apu_system_on, system_on)
	
	set(apu_n1, RPM)
	set(apu_air_doors, bleed_doors_pos)
	set(apu_doors, apu_doors_pos)
	set(apu_oil_t, oil_temp)
	set(apu_oil_q, oil_q) -- temp
	set(apu_oil_p, oil_q * 3) -- temp
	set(apu_egt, egt_current)
	set(apu_fuel_p, fuel_press) 
	set(apu_start_cc, start_current) 
	set(fuel_pumps_27_cc, fuel_current)
	set(apu_burn_fuel, apu_burning_fuel)
	-- test
	--set(apu_temp_gau, fuel_last * 1000)
end
	
end
