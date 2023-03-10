-- this is the brakes system

defineProperty("have_pedals", globalPropertyi("tu154ce/have_pedals"))


-- hydro
defineProperty("gs_press_1", globalPropertyf("tu154ce/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154ce/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154ce/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154ce/hydro/gs_press_4")) -- давление в ГС4

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- sim brakes
defineProperty("l_brake_add", globalPropertyf("sim/flightmodel/controls/l_brake_add")) -- Left Brake
defineProperty("r_brake_add", globalPropertyf("sim/flightmodel/controls/r_brake_add")) -- Right Brake
defineProperty("parkbrake", globalPropertyf("sim/flightmodel/controls/parkbrake")) -- Parking Brake
defineProperty("parkbrake_2", globalPropertyf("sim/cockpit2/controls/parking_brake_ratio")) -- Parking Brake


--defineProperty("l_brake_add", globalPropertyf("tu154ce/SC/controls/l_brake_add")) 
--defineProperty("r_brake_add", globalPropertyf("tu154ce/SC/controls/r_brake_add")) 
--defineProperty("parkbrake", globalPropertyf("tu154ce/SC/controls/parkbrake")) 



--[[
defineProperty("l_brake_add_2", globalPropertyf("sim/cockpit2/controls/left_brake_ratio")) -- Left Brake
defineProperty("r_brake_add_2", globalPropertyf("sim/cockpit2/controls/right_brake_ratio")) -- Right Brake
defineProperty("parkbrake_2", globalPropertyf("sim/cockpit2/controls/parking_brake_ratio")) -- Parking Brake
--]]

-- controls
defineProperty("gear_blocks", globalPropertyf("tu154ce/anim/gear_blocks")) -- Parking Brake

defineProperty("brake_emerg", globalPropertyf("tu154ce/controlls/brake_emerg")) -- аварийный тормоз
defineProperty("brake_emerg_L", globalPropertyf("tu154ce/controlls/brake_emerg_L")) -- аварийный тормоз
defineProperty("brake_emerg_R", globalPropertyf("tu154ce/controlls/brake_emerg_R")) -- аварийный тормоз


-- sim/cockpit2/controls/parking_brake_ratio

-- animation
defineProperty("parking_brake", globalPropertyi("tu154ce/controll/parking_brake")) -- ручка фиксации тормоза

defineProperty("brake_L", globalPropertyf("tu154ce/controlls/brake_L")) -- 
defineProperty("brake_R", globalPropertyf("tu154ce/controlls/brake_R")) -- 

defineProperty("int_brakes_L", globalPropertyf("tu154ce/brakes/int_brakes_L")) -- реальное положение тормоза
defineProperty("int_brakes_R", globalPropertyf("tu154ce/brakes/int_brakes_R")) -- реальное положение тормоза

--defineProperty("int_brakes_L", globalPropertyf("tu154ce/SC/brakes/int_brakes_L")) 
--defineProperty("int_brakes_R", globalPropertyf("tu154ce/SC/brakes/int_brakes_R")) 

-- sim/operation/override/override_gearbrake
defineProperty("overr", globalPropertyi("sim/operation/override/override_gearbrake")) -- 


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


-- failures
defineProperty("brake_heat_left", globalPropertyf("tu154ce/failures/brake_heat_left")) -- Температура тормозов
defineProperty("brake_heat_right", globalPropertyf("tu154ce/failures/brake_heat_right")) -- Температура тормозов
defineProperty("brake_runtime_left", globalPropertyf("tu154ce/failures/brake_runtime_left")) -- Наработка тормозных колодок
defineProperty("brake_runtime_right", globalPropertyf("tu154ce/failures/brake_runtime_right")) -- Наработка тормозных колодок

defineProperty("rel_lbrakes", globalPropertyi("sim/operation/failures/rel_lbrakes")) -- Отказ тормозов
defineProperty("rel_rbrakes", globalPropertyi("sim/operation/failures/rel_rbrakes")) -- Отказ тормозов

defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled"))

-- enviroment
defineProperty("speed", globalPropertyf("sim/flightmodel/position/groundspeed"))
defineProperty("thermo", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) -- outside temperature
defineProperty("gear_vent_set", globalPropertyi("tu154ce/switchers/eng/gear_fan")) -- вентиляция шасси

defineProperty("gear2_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
defineProperty("gear3_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear


set(brake_runtime_left, 1)
set(brake_runtime_right, 1)

-- sound
local brake_hnd_on = loadSample('Custom Sounds/parking_on.wav')
local brake_hnd_off = loadSample('Custom Sounds/parking_off.wav')

local termo_coef = {
{0, 1},
{100, 1.5},
{200, 2},
{300, 5},
{1000, 50},
{1000000, 500}
}


-- sim/joystick/joystick_axis_assignments



--[[

-- create tables of axies
local axies_asgn = {}
for i = 0, 500 do

	axies_asgn[i+1] = globalProperty("sim/joystick/joystick_axis_assignments["..i.."]") -- 

end

local axies_val = {}
for i = 0, 500 do

	axies_val[i+1] = globalProperty("sim/joystick/joystick_axis_values["..i.."]") -- 

end

local axies_inv = {}
for i = 0, 500 do

	axies_inv[i+1] = globalProperty("sim/joystick/joystick_axis_reverse["..i.."]") -- 

end

--]]

local joy_work_L = globalProperty("sim/joystick/joy_mapped_axis_avail[6]")
local joy_work_R = globalProperty("sim/joystick/joy_mapped_axis_avail[7]")

local joy_value_L = globalProperty("sim/joystick/joy_mapped_axis_value[6]")
local joy_value_R = globalProperty("sim/joystick/joy_mapped_axis_value[7]")

-- now we need to find axies of brakes on pedals, if there are any

local left_pedal_num = nil
local right_pedal_num = nil

--[[
local function find_pedals()
	
	
	
	for i = 0, 500 do
		
		local assign = get(axies_asgn[i+1])
		
		if not left_pedal_num and assign == 6 then 
			left_pedal_num = i+1 
			--print("left "..left_pedal_num) 
		end
		if not right_pedal_num and assign == 7 then 
			right_pedal_num = i+1 
			--print("right "..right_pedal_num) 
		end

		if left_pedal_num ~= nil and right_pedal_num ~= nil then break end
	end
	

end
--]]



local sim_brake = 0
local passed = 0
local comm_brake = 0
regular_brk_comm = findCommand("sim/flight_controls/brakes_regular")

local termo_left = get(thermo)
local termo_right = get(thermo)


function regular_brk_hnd(phase)
	if 1 == phase then -- hold
		set(parking_brake, 0)
		sim_brake = sim_brake + passed * 2
		if sim_brake > 1 then sim_brake = 1 end
	else 
		sim_brake = 0
		if get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0)
			set(r_brake_add, 0)
		end
	end
	
	return 0
end

registerCommandHandler(regular_brk_comm, 0, regular_brk_hnd)


max_brk_comm = findCommand("sim/flight_controls/brakes_max")

function max_brk_hnd(phase)
	if 1 == phase then -- hold
		set(parking_brake, 0)
		sim_brake = sim_brake + passed * 4
		if sim_brake > 1 then sim_brake = 1 end
	else 
		sim_brake = 0
		if get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0)
			set(r_brake_add, 0)
		end
	end
	
	return 0
end

registerCommandHandler(max_brk_comm, 0, max_brk_hnd)


park_brk_max_comm = findCommand("sim/flight_controls/brakes_toggle_max")

function park_brk_max_hnd(phase)
	if 0 == phase then -- toggle
		local brk = 1 - get(parking_brake)
		
		if brk == 0 and get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0) -- release pedals
			set(r_brake_add, 0) -- release pedals
		end
		
		--if brk == 0 then if get(xplane_version) < 120000 then playSample(brake_hnd_off, 0) end else if get(xplane_version) < 120000 then playSample(brake_hnd_on, false) end end
		
		set(parking_brake, brk)
	else 
		
	end
	
	return 0
end

registerCommandHandler(park_brk_max_comm, 0, park_brk_max_hnd)


park_brk_reg_comm = findCommand("sim/flight_controls/brakes_toggle_regular")

function park_brk_reg_hnd(phase)
	if 0 == phase then -- toggle
		local brk = 1 - get(parking_brake)
		
		if brk == 0 and get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0) -- release pedals
			set(r_brake_add, 0) -- release pedals
		end
		
		--if brk == 0 then if get(xplane_version) < 120000 then playSample(brake_hnd_off, 0) end else if get(xplane_version) < 120000 then playSample(brake_hnd_on, false) end end
		
		set(parking_brake, brk)
	else 
		
	end
	
	return 0
end

registerCommandHandler(park_brk_reg_comm, 0, park_brk_reg_hnd)


--[[
sim/flight_controls/left_brake                     Hold brake left.
sim/flight_controls/right_brake                    Hold brake right.

--]]

local left_brk_cmd = findCommand("sim/flight_controls/left_brake")
local right_brk_cmd = findCommand("sim/flight_controls/right_brake")

local left_brk = 0
local right_brk = 0

function left_brk_cmd_hnd(phase)
	if 1 == phase then -- hold
		left_brk = left_brk + passed * 2
		if left_brk > 1 then left_brk = 1 end
		set(parking_brake, 0)
		
	else 
		left_brk = 0
	end
	
	return 0
end

function right_brk_cmd_hnd(phase)
	if 1 == phase then -- hold
		right_brk = right_brk + passed * 2
		if right_brk > 1 then right_brk = 1 end
		set(parking_brake, 0)
	else 
		right_brk = 0
	end
	
	return 0
end

registerCommandHandler(left_brk_cmd, 0, left_brk_cmd_hnd)
registerCommandHandler(right_brk_cmd, 0, right_brk_cmd_hnd)





-- сделать переменную для рычага парковки. завязать ее на команды.
-- сделать переменную для колодок шасси
-- считать тормоз для левого и правого шасси исходя из положения педалей, парковочного рычага и аварийных рычагов.
-- считать суммарный тормоз с учетом блоков.
-- в сим пишем:
-- на отдельные колеса результат тормозов от педалей, рычагов, парковочного рычага
-- на парковочный тормоз пишем колодки шасси
-- добавить обработчики команд торможения



set(parking_brake, 1)
set(overr, 1)

local park_lever_last = get(parking_brake)
local e_brake_last = get(brake_emerg)



local axisCheckTimer = 0

local fail_counter = 0
local check_time = math.random(15, 30)

local resetTimer = 0

set(joy_value_L, 0)
set(joy_value_R, 0)

function update()
	passed = get(frame_time)

	-- controls
	-- pedals
	local brake_1 = get(joy_value_L)
	local brake_2 = get(joy_value_R)
	
	--[[
	-- define numbers of pedal axies, if any
	axisCheckTimer = axisCheckTimer + passed
	if axisCheckTimer > 5 then
		left_pedal_num = nil
		right_pedal_num = nil
		
		--if get(have_pedals) == 1 then find_pedals() end
		find_pedals()
		axisCheckTimer = 0
	end
	

	-- read value of axies
	if left_pedal_num then 
		brake_1 = get(axies_val[left_pedal_num]) 
		if get(axies_inv[left_pedal_num]) == 1 then brake_1 = 1 - brake_1 end
	
	end
	if right_pedal_num then 
		brake_2 = get(axies_val[right_pedal_num]) 
		if get(axies_inv[right_pedal_num]) == 1 then brake_2 = 1 - brake_2 end
	end
	
	--]]

	
	
	
	
	-- parking brake
	local park_lvr = get(parking_brake)
	
	-- emerg brakes
	local e_brake = get(brake_emerg)
	
	-- reset pedals, when park brake released
	if (park_lever_last ~= park_lvr and park_lvr == 0) --[[ or (e_brake_last ~= e_brake and e_brake < 0.05) --]] then 
		brake_1 = 0
		brake_2 = 0
	end	
	
	-- sounds
	if park_lever_last ~= park_lvr then
		if park_lvr == 1 then if get(xplane_version) < 120000 then playSample(brake_hnd_on, false) end
		else if get(xplane_version) < 120000 then playSample(brake_hnd_off, false) end end
	
	end
	
	
	park_lever_last = park_lvr
	e_brake_last = e_brake


	-- blocks
	local blocks = get(gear_blocks)
	

	-- pressures
	local main_press = math.min(get(gs_press_1) / 120, 1)
	local emer_press = math.min(get(gs_press_4) / 120, 1)
	
	

	local left_blake = math.max(brake_1 * main_press, sim_brake * main_press, left_brk * main_press)--, park_lvr * main_press) 
	local right_blake = math.max(brake_2 * main_press, sim_brake * main_press, right_brk * main_press)--, park_lvr * main_press) 
	
	
	
	local park = math.max(blocks * 5, e_brake * emer_press, park_lvr * main_press)
	
	--
	
	
	-- bug workaround
	if left_blake < 0.07 then left_blake = 0 end
	if right_blake < 0.07 then right_blake = 0 end
	
	-- failures
	left_blake = left_blake * bool2int(get(rel_lbrakes) ~= 6)
	right_blake = right_blake * bool2int(get(rel_rbrakes) ~= 6)

if get(ismaster) ~= 1 then			
	local FAIL = get(failures_enabled)
	
	FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
	
	if FAIL > 0 then
		fail_counter = fail_counter + passed
		
		if fail_counter > check_time then
			fail_counter = 0
			check_time = math.random(15, 30)
			
			-- random failures
			if get(rel_lbrakes) ~= 1 then set(rel_lbrakes, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_rbrakes) ~= 1 then set(rel_rbrakes, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			-- runtime failure
			if get(brake_runtime_left) == 0 and left_blake > 0.1 then
				if get(rel_lbrakes) ~= 1 then set(rel_lbrakes, bool2int(math.random() < 0.1) * 6) end
			end
			
			if get(brake_runtime_right) == 0 and right_blake > 0.1 then
				if get(rel_rbrakes) ~= 1 then set(rel_rbrakes, bool2int(math.random() < 0.1) * 6) end
			end
			
		
		end
		
		if get(gear2_deflect) > 0.05 then
			set(brake_runtime_left, math.max(0, get(brake_runtime_left) - passed * left_blake * get(speed) * 0.00002 * interpolate(termo_coef, math.max(0, termo_left))))
		end
		
		if get(gear3_deflect) > 0.05 then
			set(brake_runtime_right, math.max(0, get(brake_runtime_right) - passed * right_blake * get(speed) * 0.00002 * interpolate(termo_coef, math.max(0, termo_right))))
		end
		
	else
		
		set(brake_runtime_left, 1)
		set(brake_runtime_right, 1)
		
		set(rel_lbrakes, 0)
		set(rel_rbrakes, 0)
	end
	

end	
	
	termo_left = termo_left + left_blake * get(speed) * 0.9 * bool2int(get(gear2_deflect) > 0.05) * passed 
	termo_left = termo_left + (get(thermo) - termo_left) * passed * (1 + get(gear_vent_set) * 4) * 0.01
	
	termo_right = termo_right + right_blake * get(speed) * 0.9 * bool2int(get(gear3_deflect) > 0.05) * passed 
	termo_right = termo_right + (get(thermo) - termo_right) * passed * (1 + get(gear_vent_set) * 4) * 0.01
	
	set(brake_heat_left, termo_left)
	set(brake_heat_right, termo_right)
	

	
	
	
	
local have_control = get(hascontrol_1) ~= 1

if have_control then
	-- set results
	set(l_brake_add, left_blake)
	set(r_brake_add, right_blake)
	set(int_brakes_L, math.max(left_blake, park))
	set(int_brakes_R, math.max(right_blake, park))
	set(parkbrake, park)
	set(parkbrake_2, park)
	
	if brake_1 > 0.8 and brake_2 > 0.8 then set(parking_brake, 0) end -- release park lever, if pedals pressed.
	
	--print(park_lvr, "  ", park, "  ", get(parkbrake_2))
	
end

	--set(parkbrake, 1)
	
	
	-- set pedals animation
	
	--local parkAnim = park_lvr
	--if park == 5 then parkAnim = 0 end
	
	set(brake_L, math.max(left_blake, brake_1, park_lvr))
	set(brake_R, math.max(right_blake, brake_2, park_lvr))
	
	

	
--[[	
	-- reset all axies
	if get(have_pedals) == 1 then 
		resetTimer = resetTimer + passed
	else
		resetTimer = 0
	end
	
	if resetTimer > 5 then
		for i = 0, 500 do
			--print(get(axies_asgn[i+1]))
			
			set(axies_asgn[i+1], 0)
			set(axies_inv[i+1], 0)
		end
		resetTimer = 0
	end
--]]	
	
end

function onAvionicsDone()
	set(overr, 0)
end
