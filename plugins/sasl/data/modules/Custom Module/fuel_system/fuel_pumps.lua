-- this is fuel pumps logic

-- fuel ammount
defineProperty("tank1_w",  globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight
defineProperty("tank4_w",  globalProperty("sim/flightmodel/weight/m_fuel[1]")) -- fuel weight
defineProperty("tank2R_w", globalProperty("sim/flightmodel/weight/m_fuel[2]")) -- fuel weight
defineProperty("tank2L_w", globalProperty("sim/flightmodel/weight/m_fuel[3]")) -- fuel weight
defineProperty("tank3R_w", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel weight
defineProperty("tank3L_w", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel weight

-- controls
defineProperty("pump_tank2_left", globalPropertyi("tu154ce/switchers/fuel/pump_tank2_left")) -- насосы бака 2
defineProperty("pump_tank2_right", globalPropertyi("tu154ce/switchers/fuel/pump_tank2_right")) -- насосы бака 2
defineProperty("pump_tank3_left", globalPropertyi("tu154ce/switchers/fuel/pump_tank3_left")) -- насосы бака 3
defineProperty("pump_tank3_right", globalPropertyi("tu154ce/switchers/fuel/pump_tank3_right")) -- насосы бака 3
defineProperty("pump_tank4", globalPropertyi("tu154ce/switchers/fuel/pump_tank4")) -- насосы бака 4
defineProperty("pump_tank1_1", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_1")) -- насосы бака 1
defineProperty("pump_tank1_2", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_2")) -- насосы бака 1
defineProperty("pump_tank1_3", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_3")) -- насосы бака 1
defineProperty("pump_tank1_4", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_4")) -- насосы бака 1

defineProperty("fuel_level", globalPropertyi("tu154ce/switchers/fuel/fuel_level")) -- автомат выравнивания
defineProperty("fuel_flow_mode", globalPropertyi("tu154ce/switchers/fuel/fuel_flow_mode")) -- режим расходомера. ручное - автомат
defineProperty("fuel_flow_on", globalPropertyi("tu154ce/switchers/fuel/fuel_flow_on")) -- автомат расхода


-- power sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27
defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154ce/elec/bus115_2_volt"))

-- failures
defineProperty("fuel_auto_fail", globalPropertyi("tu154ce/failures/fuel_auto_fail"))
defineProperty("fuel_level_fail", globalPropertyi("tu154ce/failures/fuel_level_fail"))

defineProperty("fuel_pump_2l_fail", globalPropertyi("tu154ce/failures/fuel_pump_2l_fail")) -- number of failed pumps
defineProperty("fuel_pump_2r_fail", globalPropertyi("tu154ce/failures/fuel_pump_2r_fail"))
defineProperty("fuel_pump_3l_fail", globalPropertyi("tu154ce/failures/fuel_pump_3l_fail"))
defineProperty("fuel_pump_3r_fail", globalPropertyi("tu154ce/failures/fuel_pump_3r_fail"))
defineProperty("fuel_pump_1_fail", globalPropertyi("tu154ce/failures/fuel_pump_1_fail"))
defineProperty("fuel_pump_4_fail", globalPropertyi("tu154ce/failures/fuel_pump_4_fail"))


-- results
defineProperty("pump_tank2_left_work", globalPropertyi("tu154ce/fuel/pump_tank2_left_work")) -- number of working pumps
defineProperty("pump_tank2_right_work", globalPropertyi("tu154ce/fuel/pump_tank2_right_work")) -- number of working pumps
defineProperty("pump_tank3_left_work", globalPropertyi("tu154ce/fuel/pump_tank3_left_work")) -- number of working pumps
defineProperty("pump_tank3_right_work", globalPropertyi("tu154ce/fuel/pump_tank3_right_work")) -- number of working pumps
defineProperty("pump_tank4_work", globalPropertyi("tu154ce/fuel/pump_tank4_work")) -- number of working pumps
defineProperty("pump_tank1_1_work", globalPropertyi("tu154ce/fuel/pump_tank1_1_work"))
defineProperty("pump_tank1_2_work", globalPropertyi("tu154ce/fuel/pump_tank1_2_work"))
defineProperty("pump_tank1_3_work", globalPropertyi("tu154ce/fuel/pump_tank1_3_work"))
defineProperty("pump_tank1_4_work", globalPropertyi("tu154ce/fuel/pump_tank1_4_work"))

defineProperty("auto_tanks_turn", globalPropertyi("tu154ce/fuel/auto_tanks_turn")) -- 0 = none, 1 = 2, 2 = 2+3, 3 = 3, 4 = 4
--defineProperty("auto_tank_level", globalPropertyi("tu154ce/fuel/auto_tank_level")) -- выравнивание в баках. -2 - 2L, -3 - 3L, +3 - 3R, +2 - 2R	0

defineProperty("auto_tank_level_2", globalPropertyi("tu154ce/fuel/auto_tank_level_2")) -- выравнивание в баках 2. -1 = L, 0 = none, +1 = R	0
defineProperty("auto_tank_level_3", globalPropertyi("tu154ce/fuel/auto_tank_level_3")) -- выравнивание в баках 3. -1 = L, 0 = none, +1 = R	0


defineProperty("fuel_pumps_115_1_cc", globalPropertyf("tu154ce/elec/fuel_pumps_115_1_cc")) -- нагрузка на сеть 1 от топливных насосов
defineProperty("fuel_pumps_115_3_cc", globalPropertyf("tu154ce/elec/fuel_pumps_115_3_cc")) -- нагрузка на сеть 3 от топливных насосов

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- fuel press after pumps
local pump_1_1_P = 1
local pump_1_2_P = 1
local pump_1_3_P = 1
local pump_1_4_P = 1

local pump_2L_P = 1
local pump_2R_P = 1

local pump_3L_P = 1
local pump_3R_P = 1

local pump_4_P = 1


function update()
	local passed = get(frame_time)
	
	-- check power
	local power_27L = get(bus27_volt_left) > 13
	local power_27R = get(bus27_volt_right) > 13
	local power115 = get(bus115_1_volt) > 110
	
	-- fuel quantity
	local tank_qty_2L = get(tank2L_w)
	local tank_qty_2R = get(tank2R_w)
	local tank_qty_3L = get(tank3L_w)
	local tank_qty_3R = get(tank3R_w)
	local tank_qty_4 = get(tank4_w)
	
	-- tanks has fuel
	local fuel_1 = get(tank1_w) > 150
	local fuel_2L = tank_qty_2L > 60
	local fuel_2R = tank_qty_2R > 60
	local fuel_3L = tank_qty_3L > 200
	local fuel_3R = tank_qty_3R > 200
	local fuel_4 = tank_qty_4 > 50
	

	
	-- main pumps logic
	local pump2L_work = 0
	local pump2R_work = 0
	local pump3L_work = 0
	local pump3R_work = 0
	local pump4_work = 0
	
	local pump1_1_work = 0
	local pump1_2_work = 0
	local pump1_3_work = 0
	local pump1_4_work = 0

	local tank_level_2 = 0
	local tank_level_3 = 0
	
	
	
	-- calculate automatic cue mode
	local tanks_turn = 0 -- 0 = none, 1 = 2, 2 = 2+3, 3 = 3, 4 = 4
	if (power_27L or power_27R) and get(fuel_flow_on) == 1 and get(fuel_auto_fail) == 0 then
		if tank_qty_2L + tank_qty_2R > 7400 then tanks_turn = 1
		elseif tank_qty_2L + tank_qty_2R <= 7400 and (fuel_2L or fuel_2R) and (fuel_3L or fuel_3R) then tanks_turn = 2
		elseif fuel_3L or fuel_3R then tanks_turn = 3
		elseif fuel_2L or fuel_2R then tanks_turn = 1
		elseif fuel_4 then tanks_turn = 4
		end
	end
	
	
	-- manipulate pumps by automatic cue
	if power115 then
		if tanks_turn > 0 and get(fuel_flow_mode) == 1 then -- automatic mode
			if tanks_turn == 1 then
				-- tank 2
				if tank_qty_2L > 500 then pump2L_work = math.max(0, 2 - get(fuel_pump_2l_fail))
				elseif fuel_2L then pump2L_work = math.max(0, get(pump_tank2_left) * 2 - get(fuel_pump_2l_fail)) end
		
				if tank_qty_2R > 500 then pump2R_work = math.max(0, 2 - get(fuel_pump_2r_fail))
				elseif fuel_2R then pump2R_work = math.max(0, get(pump_tank2_right) * 2 - get(fuel_pump_2r_fail)) end
				
			elseif tanks_turn == 2 then
				-- tank 2
				if tank_qty_2L > 500 then pump2L_work = math.max(0, 2 - get(fuel_pump_2l_fail))
				elseif fuel_2L then pump2L_work = math.max(0, get(pump_tank2_left) * 2 - get(fuel_pump_2l_fail)) end
		
				if tank_qty_2R > 500 then pump2R_work = math.max(0, 2 - get(fuel_pump_2r_fail))
				elseif fuel_2R then pump2R_work = math.max(0, get(pump_tank2_right) * 2 - get(fuel_pump_2r_fail)) end
			
				-- tank 3
				if tank_qty_3L > 2200 then pump3L_work = math.max(0, 3 - get(fuel_pump_3l_fail))
				elseif fuel_3L then pump3L_work = math.max(0, get(pump_tank3_left) * 3 - get(fuel_pump_3l_fail)) end
		
				if tank_qty_3R > 2200 then pump3R_work = math.max(0, 3 - get(fuel_pump_3r_fail))
				elseif fuel_3R then pump3R_work = math.max(0, get(pump_tank3_right) * 3 - get(fuel_pump_3r_fail)) end
				
			elseif tanks_turn == 3 then
				-- tank 3
				if tank_qty_3L > 2200 then pump3L_work = math.max(0, 3 - get(fuel_pump_3l_fail))
				elseif fuel_3L then pump3L_work = math.max(0, get(pump_tank3_left) * 3 - get(fuel_pump_3l_fail)) end
		
				if tank_qty_3R > 2200 then pump3R_work = math.max(0, 3 - get(fuel_pump_3r_fail))
				elseif fuel_3R then pump3R_work = math.max(0, get(pump_tank3_right) * 3 - get(fuel_pump_3r_fail)) end
			
			elseif tanks_turn == 4 then
				-- tank 4
				if tank_qty_4 > 600 then pump4_work = math.max(0, 2 - get(fuel_pump_4_fail))
				elseif fuel_4 then pump4_work = math.max(0, get(pump_tank4) * 2 - get(fuel_pump_4_fail)) end
			
			end
			
		else -- manual mode
			
			if fuel_2L then pump2L_work = math.max(0, get(pump_tank2_left) * 2 - get(fuel_pump_2l_fail)) end
			if fuel_2R then pump2R_work = math.max(0, get(pump_tank2_right) * 2 - get(fuel_pump_2r_fail)) end
			
			if fuel_3L then pump3L_work = math.max(0, get(pump_tank3_left) * 3 - get(fuel_pump_3l_fail)) end
			if fuel_3R then pump3R_work = math.max(0, get(pump_tank3_right) * 3 - get(fuel_pump_3r_fail)) end
			
			if fuel_4 then pump4_work = math.max(0, get(pump_tank4) * 2 - get(fuel_pump_4_fail)) end
			
			--print(pump3L_work.."  "..pump3R_work)
			
			
		end
		
		
		-- leveling logic. 		
		if get(fuel_level) == 1 and get(fuel_level_fail) == 0 then
			if tank_qty_2R - tank_qty_2L > 350 then
				tank_level_2 = -1
				pump2L_work = 0
			elseif tank_qty_2L - tank_qty_2R > 350 then
				tank_level_2 = 1
				pump2R_work = 0	
			else
				tank_level_2 = 0
			end
			
			if tank_qty_3R - tank_qty_3L > 300 then
				tank_level_3 = -1
				pump3L_work = 0
			elseif tank_qty_3L - tank_qty_3R > 300 then
				tank_level_3 = 1
				pump3R_work = 0	
			else
				tank_level_3 = 0
			end
		
		end
		
		
		
		-- pumps 1 works separately from atomatics
		if fuel_1 then
			pump1_1_work = get(pump_tank1_1) * bool2int(get(fuel_pump_1_fail) < 1)
			pump1_2_work = get(pump_tank1_2) * bool2int(get(fuel_pump_1_fail) < 4)
			pump1_3_work = get(pump_tank1_3) * bool2int(get(fuel_pump_1_fail) < 3)
			pump1_4_work = get(pump_tank1_4) * bool2int(get(fuel_pump_1_fail) < 2)
		end
	
	end
	
	

	
	-- calculate pressures
	if pump2L_work > 0 and pump_2L_P < 1 then pump_2L_P = pump_2L_P + passed * 0.8
	elseif pump_2L_P > 0 then pump_2L_P = pump_2L_P - passed * 0.8 end

	if pump2R_work > 0 and pump_2R_P < 1 then pump_2R_P = pump_2R_P + passed * 0.8
	elseif pump_2R_P > 0 then pump_2R_P = pump_2R_P - passed * 0.8 end	

	if pump3L_work > 0 and pump_3L_P < 1 then pump_3L_P = pump_3L_P + passed * 0.8
	elseif pump_3L_P > 0 then pump_3L_P = pump_3L_P - passed * 0.8 end

	if pump3R_work > 0 and pump_3R_P < 1 then pump_3R_P = pump_3R_P + passed * 0.8
	elseif pump_3R_P > 0 then pump_3R_P = pump_3R_P - passed * 0.8 end	
	
	if pump4_work > 0 and pump_4_P < 1 then pump_4_P = pump_4_P + passed * 0.8
	elseif pump_4_P > 0 then pump_4_P = pump_4_P - passed * 0.8 end	
	
	if pump1_1_work == 1 and pump_1_1_P < 1 then pump_1_1_P = pump_1_1_P + passed * 0.8
	elseif pump_1_1_P > 0 then pump_1_1_P = pump_1_1_P - passed * 0.8 end		

	if pump1_2_work == 1 and pump_1_2_P < 1 then pump_1_2_P = pump_1_2_P + passed * 0.8
	elseif pump_1_2_P > 0 then pump_1_2_P = pump_1_2_P - passed * 0.8 end		

	if pump1_3_work == 1 and pump_1_3_P < 1 then pump_1_3_P = pump_1_3_P + passed * 0.8
	elseif pump_1_3_P > 0 then pump_1_3_P = pump_1_3_P - passed * 0.8 end	
	
	if pump1_4_work == 1 and pump_1_4_P < 1 then pump_1_4_P = pump_1_4_P + passed * 0.8
	elseif pump_1_4_P > 0 then pump_1_4_P = pump_1_4_P - passed * 0.8 end	
	
	-- calculate electrics
	local bus_1_load = (pump1_1_work + pump1_3_work) * 8.3 + (pump4_work + pump2L_work * 0.5 + pump2R_work * 0.5 + (pump3L_work * 0.3 + pump3R_work * 0.3) * 2) * 2.6
	local bus_3_load = (pump1_2_work + pump1_4_work) * 8.3 + (pump4_work + pump2L_work * 0.5 + pump2R_work * 0.5 + pump3L_work * 0.3 + pump3R_work * 0.3) * 2.6
	
	-- pump for APU consumes 15A from 27v bus
	
	
	-- set results
	set(pump_tank2_left_work, math.max(0, bool2int(pump_2L_P > 0.9) * 2 - get(fuel_pump_2l_fail)))
	set(pump_tank2_right_work, math.max(0, bool2int(pump_2R_P > 0.9) * 2 - get(fuel_pump_2r_fail)))
	set(pump_tank3_left_work, math.max(0, bool2int(pump_3L_P > 0.9) * 3 - get(fuel_pump_3l_fail)))
	set(pump_tank3_right_work, math.max(0, bool2int(pump_3R_P > 0.9) * 3 - get(fuel_pump_3r_fail)))
	set(pump_tank4_work, math.max(0, bool2int(pump_4_P > 0.9) * 2 - get(fuel_pump_4_fail)))
	set(pump_tank1_1_work, bool2int(pump_1_1_P > 0.9))
	set(pump_tank1_2_work, bool2int(pump_1_2_P > 0.9))
	set(pump_tank1_3_work, bool2int(pump_1_3_P > 0.9))
	set(pump_tank1_4_work, bool2int(pump_1_4_P > 0.9))

	set(auto_tanks_turn, tanks_turn)
	set(auto_tank_level_2, tank_level_2)
	set(auto_tank_level_3, tank_level_3)
	
	set(fuel_pumps_115_1_cc, bus_1_load)
	set(fuel_pumps_115_3_cc, bus_3_load)
	
end



