-- this is mach meters logic

-- source
defineProperty("mach", globalPropertyf("sim/flightmodel/misc/machno")) -- Mach number
defineProperty("mach_svs", globalPropertyf("tu154ce/svs/machno")) -- Mach number


defineProperty("rel_pitot", globalPropertyi("sim/operation/failures/rel_pitot")) -- Pitot 1 - Blockage
defineProperty("rel_pitot2", globalPropertyi("sim/operation/failures/rel_pitot2")) -- Pitot 2 - Blockage

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- results
defineProperty("mach_ind_left", globalPropertyf("tu154ce/gauges/speed/mach_left")) -- скорость маха КВС
defineProperty("mach_ind_right", globalPropertyf("tu154ce/gauges/speed/mach_right")) -- скорость маха 2П


local mach_ind_L = 0
local mach_ind_R = 0

local mach_L_act = 0
local mach_R_act = 0


function update()

	local passed = get(frame_time)
	local mach_sim = get(mach)
	
	-----------------
	mach_ind_L = get(mach_svs)
	
	if mach_ind_L > 0.89 then mach_ind_L = 0.89
	elseif mach_ind_L < 0 then mach_ind_L = 0 end
	
	mach_L_act = mach_L_act + (mach_ind_L - mach_L_act) * passed * 10
	
	-----------------
	if get(rel_pitot2) < 6 then mach_ind_R = mach_sim end

	if mach_ind_R > 1.03 then mach_ind_R = 1.03 
	elseif mach_ind_R < 0 then mach_ind_R = 0 end

	mach_R_act = mach_R_act + (mach_ind_R - mach_R_act) * passed * 10
	
	
	set(mach_ind_left, mach_L_act)
	set(mach_ind_right, mach_R_act)




end