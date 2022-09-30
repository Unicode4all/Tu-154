-- this is fuel tanks manipulating logic

-- fuel quantity
defineProperty("tank1_w",  globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight
defineProperty("tank4_w",  globalProperty("sim/flightmodel/weight/m_fuel[1]")) -- fuel weight
defineProperty("tank2R_w", globalProperty("sim/flightmodel/weight/m_fuel[2]")) -- fuel weight
defineProperty("tank2L_w", globalProperty("sim/flightmodel/weight/m_fuel[3]")) -- fuel weight
defineProperty("tank3R_w", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel weight
defineProperty("tank3L_w", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel weight

defineProperty("tank_all", globalPropertyf("sim/flightmodel/weight/m_fuel_total")) -- total fuel weight

-- fuel tanks pumps control
defineProperty("tank1_pump", globalProperty("sim/cockpit2/fuel/fuel_tank_pump_on[0]"))
defineProperty("tank4_pump", globalProperty("sim/cockpit2/fuel/fuel_tank_pump_on[1]"))
defineProperty("tank2R_pump", globalProperty("sim/cockpit2/fuel/fuel_tank_pump_on[2]"))
defineProperty("tank2L_pump", globalProperty("sim/cockpit2/fuel/fuel_tank_pump_on[3]"))
defineProperty("tank3R_pump", globalProperty("sim/cockpit2/fuel/fuel_tank_pump_on[4]"))
defineProperty("tank3L_pump", globalProperty("sim/cockpit2/fuel/fuel_tank_pump_on[5]"))

defineProperty("fuel_trans", globalPropertyi("tu154ce/switchers/fuel/fuel_trans")) -- краны резервой перекачки
defineProperty("fuel_porc", globalPropertyi("tu154ce/switchers/fuel/fuel_porc")) -- принуд порц

-- fuel pumps work
defineProperty("pump_tank2_left_work", globalPropertyi("tu154ce/fuel/pump_tank2_left_work")) -- number of working pumps
defineProperty("pump_tank2_right_work", globalPropertyi("tu154ce/fuel/pump_tank2_right_work"))
defineProperty("pump_tank3_left_work", globalPropertyi("tu154ce/fuel/pump_tank3_left_work"))
defineProperty("pump_tank3_right_work", globalPropertyi("tu154ce/fuel/pump_tank3_right_work"))
defineProperty("pump_tank4_work", globalPropertyi("tu154ce/fuel/pump_tank4_work"))
defineProperty("pump_tank1_1_work", globalPropertyi("tu154ce/fuel/pump_tank1_1_work"))
defineProperty("pump_tank1_2_work", globalPropertyi("tu154ce/fuel/pump_tank1_2_work"))
defineProperty("pump_tank1_3_work", globalPropertyi("tu154ce/fuel/pump_tank1_3_work"))
defineProperty("pump_tank1_4_work", globalPropertyi("tu154ce/fuel/pump_tank1_4_work"))

defineProperty("reserv_trans", globalPropertyi("tu154ce/fuel/reserv_trans"))

defineProperty("apu_burn_fuel", globalPropertyi("tu154ce/elec/apu_burning_fuel")) -- ВСУ работает и сжигает топливо

-- fuel flow per engine
defineProperty("ENGN_FF_1", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]")) -- FF from sim kg/second
defineProperty("ENGN_FF_2", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]")) -- FF from sim kg/second
defineProperty("ENGN_FF_3", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[2]")) -- FF from sim kg/second

-- altitude
defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters

defineProperty("gear_defl_L", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- проседание стойки шасси
defineProperty("gear_defl_R", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- проседание стойки шасси

-- failures
defineProperty("rel_fuelcap", globalPropertyi("sim/operation/failures/rel_fuelcap")) -- Fuel Cap left off
defineProperty("fuel_porc_fail", globalPropertyi("tu154ce/failures/fuel_porc_fail"))
-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- test
defineProperty("test", globalPropertyf("sim/operation/failures/rel_fuepmp0")) -- можно использвать этот отказ для выключения двигателей через микстуру и пожарные краны

defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27



-- расход топлива для ВСУ - 160-240 кг/ч в зависимости от нагрузки.

-- make active tank 1 only
set(tank1_pump, 1)
set(tank4_pump, 0)
set(tank2R_pump, 0)
set(tank2L_pump, 0)
set(tank3R_pump, 0)
set(tank3L_pump, 0)

function onAvionicsDone()
	
	set(tank1_pump, 1)
	set(tank4_pump, 1)
	set(tank2R_pump, 1)
	set(tank2L_pump, 1)
	set(tank3R_pump, 1)
	set(tank3L_pump, 1)	

end


local passed = get(frame_time)

local porc_open = false
local transfer = false -- fuel goes aside porc

local tank_all_last = get(tank_all)
local tank_all_calc_last = get(tank_all)
local calc_counter = 0

-- fuel tanks ammount
local tank1_qty = get(tank1_w)
local tank4_qty = get(tank4_w)
local tank2L_qty = get(tank2L_w)
local tank2R_qty = get(tank2R_w)
local tank3L_qty = get(tank3L_w)
local tank3R_qty = get(tank3R_w)

local trans_pos = 0

-- fuel pumps random
local tank2L_rnd = math.random(95, 105) * 0.01
local tank2R_rnd = math.random(95, 105) * 0.01
local tank3L_rnd = math.random(95, 105) * 0.01
local tank3R_rnd = math.random(95, 105) * 0.01

function update()
	passed = get(frame_time)
	
	-- fuel tanks ammount
	local tank1_qty = get(tank1_w)
	local tank4_qty = get(tank4_w)
	local tank2L_qty = get(tank2L_w)
	local tank2R_qty = get(tank2R_w)
	local tank3L_qty = get(tank3L_w)
	local tank3R_qty = get(tank3R_w)	
	local power27 = get(bus27_volt_right) > 13
--[[	
	-- test fuel flow
	local tank_all_now = get(tank_all)
	local tank_all_calc = tank1_qty + tank4_qty + tank2L_qty + tank2R_qty + tank3L_qty + tank3R_qty
	calc_counter = calc_counter + passed
	if calc_counter > 5 then
		print(get(ENGN_FF_1) + get(ENGN_FF_2) + get(ENGN_FF_3))
		print((tank_all_last - tank_all_now) / calc_counter, (tank_all_calc_last - tank_all_calc) / calc_counter, tank_all_now)
		tank_all_last = tank_all_now
		tank_all_calc_last = tank_all_calc
		calc_counter = 0
	end
--]]	
	-- check tank 1 quantity
	local tank1_full = tank1_qty >= 3300
	
	-- porcioner manipulations
	if (tank1_qty < 3150 and get(fuel_porc_fail) == 0) or (get(fuel_porc) == 1 and power27 and not tank1_full) then porc_open = true -- open porc
	elseif tank1_full then porc_open = false end -- close it
	
	-- reserv fuel transfer
	if get(fuel_trans) == 1 and trans_pos < 1 and power27 then
		trans_pos = trans_pos + passed
	elseif trans_pos > 0 and power27 then
		trans_pos = trans_pos - passed
	end
	
	transfer = trans_pos > 0.9
	set(reserv_trans, bool2int(trans_pos > 0.9))
	
	-- calculate fuel pumps speed depending on altitude
	local spd = 1.55 - get(msl_alt) * 1.11 / 14000 -- kg/sec
	-- check pumps work
	local pump2L = get(pump_tank2_left_work) * spd * tank2L_rnd -- tank can give fuel
	local pump2R = get(pump_tank2_right_work) * spd * tank2R_rnd -- tank can give fuel
	local pump3L = get(pump_tank3_left_work) * spd * tank3L_rnd -- tank can give fuel
	local pump3R = get(pump_tank3_right_work) * spd * tank3R_rnd -- tank can give fuel	
	local pump4 = get(pump_tank4_work) * spd -- tank can give fuel	
	
	-- transfer fuel from othe tanks
	if porc_open or (transfer and not tank1_full) then
		-- take fuel from tanks 2, 3, 4
		tank2L_qty = tank2L_qty - passed * pump2L
		tank2R_qty = tank2R_qty - passed * pump2R
		tank3L_qty = tank3L_qty - passed * pump3L
		tank3R_qty = tank3R_qty - passed * pump3R
		tank4_qty = tank4_qty - passed * pump4
		-- give it to tank 1
		tank1_qty = tank1_qty + (pump2L + pump2R + pump3L + pump3R + pump4) * passed
	-- transfer fuel from tank 1 to tank 2 on ground
	elseif transfer and tank1_full and (tank2L_qty < 9500 or tank2R_qty < 9500) and get(gear_defl_L) + get(gear_defl_R) > 0.05 then
		local tank2L_take = bool2int(tank2L_qty < 9500)
		local tank2R_take = bool2int(tank2R_qty < 9500)
		-- take fuel from tanks 3 and 4 
		tank2L_qty = tank2L_qty - passed * pump2L
		tank2R_qty = tank2R_qty - passed * pump2R
		tank3L_qty = tank3L_qty - passed * pump3L
		tank3R_qty = tank3R_qty - passed * pump3R
		tank4_qty = tank4_qty - passed * pump4		
		-- move it to tanks 2
		tank2L_qty = tank2L_qty + (pump2L + pump2R + pump3L + pump3R + pump4) * passed / (tank2L_take + tank2R_take)
		tank2R_qty = tank2R_qty + (pump2L + pump2R  + pump3L + pump3R + pump4) * passed / (tank2L_take + tank2R_take)
	end
	
	-- take fuel for APU
	if get(apu_burn_fuel) == 1 then 
		tank1_qty = tank1_qty - passed * 0.0556
	end
	
	
	
	
	-- limit fuel amount in tanks
	if tank1_qty > 3350 then tank1_qty = 3350 end
	if tank2L_qty > 9550 then tank2L_qty = 9550 end
	if tank2R_qty > 9550 then tank2R_qty = 9550 end
	if tank3L_qty > 5425 then tank3L_qty = 5425 end
	if tank3R_qty > 5425 then tank3R_qty = 5425 end
	if tank4_qty > 6600 then tank4_qty = 6600 end
	
	-- set results
	set(tank1_w, tank1_qty)
	set(tank4_w, tank4_qty)
	set(tank2L_w, tank2L_qty)
	set(tank2R_w, tank2R_qty)
	set(tank3L_w, tank3L_qty)
	set(tank3R_w, tank3R_qty)
	
	-- fix stupid failures
	set(rel_fuelcap, 0)

end


