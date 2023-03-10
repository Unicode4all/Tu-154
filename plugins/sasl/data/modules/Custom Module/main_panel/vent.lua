-- this is cockpit ventilator angle calculations

-- define property table

defineProperty("vent_1", globalPropertyf("tu154ce/anim/cockpit_vent_1"))
defineProperty("vent_2", globalPropertyf("tu154ce/anim/cockpit_vent_2"))
defineProperty("vent_3", globalPropertyf("tu154ce/anim/cockpit_vent_3"))

--[[
tu154ce/anim/cockpit_vent_1
tu154ce/anim/cockpit_vent_2
tu154ce/anim/cockpit_vent_3

--]]

defineProperty("vent_1_sw", globalPropertyi("tu154ce/switchers/ovhd/vent_1"))
defineProperty("vent_2_sw", globalPropertyi("tu154ce/switchers/ovhd/vent_2"))
defineProperty("vent_3_sw", globalPropertyi("tu154ce/switchers/ovhd/vent_3"))

--[[
tu154ce/switchers/ovhd/vent_1
tu154ce/switchers/ovhd/vent_2
tu154ce/switchers/ovhd/vent_3

--]]

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) 

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time
defineProperty("cam_in_cockpit", globalPropertyi("sim/graphics/view/view_is_external"))

defineProperty("fan_volume_ratio", globalPropertyf("sim/operation/sound/fan_volume_ratio")) -- 


local vent1_spd = 0
local vent2_spd = 0
local vent3_spd = 0

local UP_SPD = 500
local DN_SPD = 100
local MAX_SPD = 1500  -- deg per second

function update()
	local passed = get(frame_time)
	local power = get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13
	
	-- vent 1
	if power and get(vent_1_sw) == 1 then vent1_spd = vent1_spd + UP_SPD * passed
	else vent1_spd = vent1_spd - DN_SPD * passed end
	
	if vent1_spd > MAX_SPD then vent1_spd = MAX_SPD
	elseif vent1_spd < 0 then vent1_spd = 0 end
	
	local vent_1_deg = get(vent_1) + vent1_spd * passed
	
	while vent_1_deg > 360 do vent_1_deg = vent_1_deg - 360 end
	
	set(vent_1, vent_1_deg)
	---------

	-- vent 2
	if power and get(vent_2_sw) == 1 then vent2_spd = vent2_spd + UP_SPD * passed
	else vent2_spd = vent2_spd - DN_SPD * passed end
	
	if vent2_spd > MAX_SPD then vent2_spd = MAX_SPD
	elseif vent2_spd < 0 then vent2_spd = 0 end
	
	local vent_2_deg = get(vent_2) + vent2_spd * passed
	while vent_2_deg > 360 do vent_2_deg = vent_2_deg - 360 end
	set(vent_2, vent_2_deg)
	---------	
	
	-- vent 3
	if power and get(vent_3_sw) == 1 then vent3_spd = vent3_spd + UP_SPD * passed
	else vent3_spd = vent3_spd - DN_SPD * passed end
	
	if vent3_spd > MAX_SPD then vent3_spd = MAX_SPD
	elseif vent3_spd < 0 then vent3_spd = 0 end
	
	local vent_3_deg = get(vent_3) + vent3_spd * passed
	while vent_3_deg > 360 do vent_3_deg = vent_3_deg - 360 end
	set(vent_3, vent_3_deg)
	---------


	

end


