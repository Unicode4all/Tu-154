-- this is turn indicator
defineProperty("turn", globalPropertyf("sim/cockpit2/gauges/indicators/turn_rate_heading_deg_pilot"))
defineProperty("slip", globalPropertyf("sim/flightmodel/misc/slip"))

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- power
defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("eup_on", globalPropertyi("tu154ce/switchers/ovhd/eup_on"))

-- fail
defineProperty("eup_fail", globalPropertyi("sim/operation/failures/rel_ss_tsi"))



-- results
defineProperty("slip_rate_ind", globalPropertyf("tu154ce/gauges/misc/slip_rate_ind")) -- индикатор скольжения
defineProperty("turn_rate_ind", globalPropertyf("tu154ce/gauges/misc/turn_rate_ind")) -- индикатор разворота

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local slip_act = 0
local turn_act = 0

function update()

local MASTER = get(ismaster) ~= 1

	local passed = get(frame_time)
	-- slip ind
	slip_act = slip_act + (get(slip) - slip_act) * passed * 0.8
	
	
	
	
	if slip_act > 7 then slip_act = 7
	elseif slip_act < -7 then slip_act = -7 end
	
if MASTER then set(slip_rate_ind, slip_act) end
	
	-- turn rate
	local power = get(bus27_volt) > 13 and get(eup_on) == 1 and get(eup_fail) < 6
	local turn_need = 0
	if power then turn_need = get(turn) * 1.5 end
	
	turn_act = turn_act + (turn_need - turn_act) * passed * 2
	
	if turn_act > 50 then turn_act = 50
	elseif turn_act < -50 then turn_act = -50 end
	
	
if MASTER then set(turn_rate_ind, turn_act) end
	



end