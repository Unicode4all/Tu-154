-- this is fuel to engines logic

-- controls
defineProperty("fire_valve_1", globalPropertyi("tu154ce/switchers/fuel/fire_valve_1")) -- пожарный кран
defineProperty("fire_valve_2", globalPropertyi("tu154ce/switchers/fuel/fire_valve_2")) -- пожарный кран
defineProperty("fire_valve_3", globalPropertyi("tu154ce/switchers/fuel/fire_valve_3")) -- пожарный кран

-- pumps
defineProperty("pump_tank1_1_work", globalPropertyi("tu154ce/fuel/pump_tank1_1_work"))
defineProperty("pump_tank1_2_work", globalPropertyi("tu154ce/fuel/pump_tank1_2_work"))
defineProperty("pump_tank1_3_work", globalPropertyi("tu154ce/fuel/pump_tank1_3_work"))
defineProperty("pump_tank1_4_work", globalPropertyi("tu154ce/fuel/pump_tank1_4_work"))

-- mixture hamdles
defineProperty("eng_mix_1", globalProperty("sim/cockpit2/engine/actuators/mixture_ratio[0]")) -- положение рычагов смеси в симе
defineProperty("eng_mix_2", globalProperty("sim/cockpit2/engine/actuators/mixture_ratio[1]")) -- положение рычагов смеси в симе
defineProperty("eng_mix_3", globalProperty("sim/cockpit2/engine/actuators/mixture_ratio[2]")) -- положение рычагов смеси в симе

-- animation
defineProperty("fuel_cutoff_1", globalPropertyf("tu154ce/controlls/fuel_cutoff_1")) -- рычаг пожарного крана
defineProperty("fuel_cutoff_2", globalPropertyf("tu154ce/controlls/fuel_cutoff_2")) -- рычаг пожарного крана
defineProperty("fuel_cutoff_3", globalPropertyf("tu154ce/controlls/fuel_cutoff_3")) -- рычаг пожарного крана

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- results
defineProperty("eng_fuel_press_1", globalPropertyi("tu154ce/fuel/eng_fuel_press_1")) -- топливо может быть подано в двигатель. без учета стоп-кранов
defineProperty("eng_fuel_press_2", globalPropertyi("tu154ce/fuel/eng_fuel_press_2")) -- топливо может быть подано в двигатель. без учета стоп-кранов
defineProperty("eng_fuel_press_3", globalPropertyi("tu154ce/fuel/eng_fuel_press_3")) -- топливо может быть подано в двигатель. без учета стоп-кранов

defineProperty("fire_vlv_open_1", globalPropertyf("tu154ce/fuel/fire_vlv_open_1")) -- пожарный кран открыт
defineProperty("fire_vlv_open_2", globalPropertyf("tu154ce/fuel/fire_vlv_open_2")) -- пожарный кран открыт
defineProperty("fire_vlv_open_3", globalPropertyf("tu154ce/fuel/fire_vlv_open_3")) -- пожарный кран открыт

defineProperty("engine_1_fuel", globalPropertyf("sim/operation/failures/rel_fuepmp0")) -- полное перекрытие топлива в двигатели
defineProperty("engine_2_fuel", globalPropertyf("sim/operation/failures/rel_fuepmp1")) -- полное перекрытие топлива в двигатели
defineProperty("engine_3_fuel", globalPropertyf("sim/operation/failures/rel_fuepmp2")) -- полное перекрытие топлива в двигатели

defineProperty("engine_1_fuel2", globalPropertyf("sim/operation/failures/rel_ele_fuepmp0")) -- полное перекрытие топлива в двигатели
defineProperty("engine_2_fuel2", globalPropertyf("sim/operation/failures/rel_ele_fuepmp1")) -- полное перекрытие топлива в двигатели
defineProperty("engine_3_fuel2", globalPropertyf("sim/operation/failures/rel_ele_fuepmp2")) -- полное перекрытие топлива в двигатели





-- failures
defineProperty("eng_fuel_pmp_fail_1", globalPropertyi("tu154ce/failures/eng_fuel_pmp_fail_1"))
defineProperty("eng_fuel_pmp_fail_2", globalPropertyi("tu154ce/failures/eng_fuel_pmp_fail_2"))
defineProperty("eng_fuel_pmp_fail_3", globalPropertyi("tu154ce/failures/eng_fuel_pmp_fail_3"))

defineProperty("eng_fuel_fluctuation_1", globalPropertyi("sim/operation/failures/rel_fuelfl0"))
defineProperty("eng_fuel_fluctuation_2", globalPropertyi("sim/operation/failures/rel_fuelfl1"))
defineProperty("eng_fuel_fluctuation_3", globalPropertyi("sim/operation/failures/rel_fuelfl2"))


--defineProperty("igniter_on_1", globalProperty("sim/cockpit2/engine/actuators/igniter_on[0]"))

defineProperty("fuel_in_1", globalPropertyi("tu154ce/start/fuel_in_1")) -- подача топлива от системы запуска
defineProperty("fuel_in_2", globalPropertyi("tu154ce/start/fuel_in_2")) -- подача топлива от системы запуска
defineProperty("fuel_in_3", globalPropertyi("tu154ce/start/fuel_in_3")) -- подача топлива от системы запуска


defineProperty("elevation", globalPropertyf("sim/flightmodel/position/elevation"))




-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


local rod_on = loadSample('Custom Sounds/ROD_ON.wav')
local rod_off = loadSample('Custom Sounds/ROD_OFF.wav')


local valve_1 = 0.7
local valve_2 = 0.7
local valve_3 = 0.7

local press_count_1 = 1
local press_count_2 = 1
local press_count_3 = 1

local mix_1_last = get(eng_mix_1)
local mix_2_last = get(eng_mix_2)
local mix_3_last = get(eng_mix_3)


function update()

	local passed = get(frame_time)
	
	-- mixture logic
	local mix_1 = get(eng_mix_1)
	local mix_2 = get(eng_mix_2)
	local mix_3 = get(eng_mix_3)
	
	-- set animation
	set(fuel_cutoff_1, mix_1)
	set(fuel_cutoff_2, mix_2)
	set(fuel_cutoff_3, mix_3)
	
	-- set sound
	if mix_1 ~= mix_1_last and mix_1 == 1 then if get(xplane_version) < 120000 then playSample(rod_on, false) end
	elseif mix_1 ~= mix_1_last and mix_1_last == 1 then if get(xplane_version) < 120000 then playSample(rod_off, false) end end
	
	if mix_2 ~= mix_2_last and mix_2 == 1 then if get(xplane_version) < 120000 then playSample(rod_on, false) end
	elseif mix_2 ~= mix_2_last and mix_2_last == 1 then if get(xplane_version) < 120000 then playSample(rod_off, false) end end
	
	if mix_3 ~= mix_3_last and mix_3 == 1 then if get(xplane_version) < 120000 then playSample(rod_on, false) end
	elseif mix_3 ~= mix_3_last and mix_3_last == 1 then if get(xplane_version) < 120000 then playSample(rod_off, false) end end
	
	
	
	mix_1_last = mix_1
	mix_2_last = mix_2
	mix_3_last = mix_3
	
	
	-- fire valves logic
	valve_1 = valve_1 + (get(fire_valve_1) * 2 - 1) * passed * 0.5
	valve_2 = valve_2 + (get(fire_valve_2) * 2 - 1) * passed * 0.5
	valve_3 = valve_3 + (get(fire_valve_3) * 2 - 1) * passed * 0.5

	-- set limits
	if valve_1 > 1 then valve_1 = 1
	elseif valve_1 < 0 then valve_1 = 0 end
	
	if valve_2 > 1 then valve_2 = 1
	elseif valve_2 < 0 then valve_2 = 0 end
	
	if valve_3 > 1 then valve_3 = 1
	elseif valve_3 < 0 then valve_3 = 0 end
	
	-- calculate pressure
	local press_1 = get(eng_fuel_press_1)
	local press_2 = get(eng_fuel_press_2)
	local press_3 = get(eng_fuel_press_3)
	
	if get(pump_tank1_1_work) + get(pump_tank1_2_work) + get(pump_tank1_3_work) + get(pump_tank1_4_work) > 0 then
		if valve_1 > 0.7 then 
			press_count_1 = press_count_1 + passed * 0.2
			if press_count_1 > 1 then press_count_1 = 1 press_1 = 1 end
		else press_count_1 = 0 press_1 = 0 end
		
		if valve_2 > 0.7 then 
			press_count_2 = press_count_2 + passed * 0.2
			if press_count_2 > 1 then press_count_2 = 1 press_2 = 1 end
		else press_count_2 = 0 press_2 = 0 end
		
		if valve_3 > 0.7 then 
			press_count_3 = press_count_3 + passed * 0.2
			if press_count_3 > 1 then press_count_3 = 1 press_3 = 1 end
		else press_count_3 = 0 press_3 = 0 end
		
		
	else
		press_1 = 0
		press_2 = 0
		press_3 = 0
		
		press_count_1 = 0
		press_count_2 = 0
		press_count_3 = 0
	end


local MSL = get(elevation)

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	

	
	-- cut fuel when fire valves and mixture levers are closed
	if mix_1 < 0.6 or valve_1 < 0.5 or get(fuel_in_1) == 0 or (press_1 == 0 and (get(eng_fuel_pmp_fail_1) == 1 or MSL > 9500)) then 
		set(engine_1_fuel, 6) set(engine_1_fuel2, 6)
	else set(engine_1_fuel, 0) set(engine_1_fuel2, 0) end
	
	if mix_2 < 0.6 or valve_2 < 0.5 or get(fuel_in_2) == 0 or (press_2 == 0 and (get(eng_fuel_pmp_fail_2) == 1 or MSL > 9500)) then 
		set(engine_2_fuel, 6) set(engine_2_fuel2, 6)
	else set(engine_2_fuel, 0) set(engine_2_fuel2, 0) end
	
	if mix_3 < 0.6 or valve_3 < 0.5 or get(fuel_in_3) == 0 or (press_3 == 0 and (get(eng_fuel_pmp_fail_3) == 1 or MSL > 9500)) then 
		set(engine_3_fuel, 6) set(engine_3_fuel2, 6)
	else set(engine_3_fuel, 0) set(engine_3_fuel2, 0) end
	
	
	-- set fuel fluctuation
	set(eng_fuel_fluctuation_1, 6 * bool2int(press_1 == 0 and MSL > 7000))
	set(eng_fuel_fluctuation_2, 6 * bool2int(press_2 == 0 and MSL > 7000))
	set(eng_fuel_fluctuation_3, 6 * bool2int(press_3 == 0 and MSL > 7000))
	
	-- set results
	set(eng_fuel_press_1, press_1)
	set(eng_fuel_press_2, press_2)
	set(eng_fuel_press_3, press_3)
	
	set(fire_vlv_open_1, valve_1)
	set(fire_vlv_open_2, valve_2)
	set(fire_vlv_open_3, valve_3)

end


end