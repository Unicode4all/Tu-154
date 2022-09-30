-- this is simple RUD logic

-- sim/version/xplane_internal_version
defineProperty("xp_version", globalPropertyi("sim/version/xplane_internal_version"))
-- controls
--defineProperty("tro_comm_1", globalProperty("sim/flightmodel/engine/ENGN_thro[0]"))
--defineProperty("tro_comm_2", globalProperty("sim/flightmodel/engine/ENGN_thro[1]"))
--defineProperty("tro_comm_3", globalProperty("sim/flightmodel/engine/ENGN_thro[2]"))

defineProperty("tro_comm_1", globalPropertyf("tu154ce/SC/engine/ENGN_thro_0")) 
defineProperty("tro_comm_2", globalPropertyf("tu154ce/SC/engine/ENGN_thro_1")) 
defineProperty("tro_comm_3", globalPropertyf("tu154ce/SC/engine/ENGN_thro_2"))


defineProperty("sim_rud_1", globalProperty("sim/flightmodel/engine/ENGN_thro_use[0]"))
defineProperty("sim_rud_2", globalProperty("sim/flightmodel/engine/ENGN_thro_use[1]"))
defineProperty("sim_rud_3", globalProperty("sim/flightmodel/engine/ENGN_thro_use[2]"))

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine

defineProperty("eng_modL", globalProperty("sim/flightmodel/engine/ENGN_propmode[0]")) -- reverse on left engine feather=0,normal=1,beta=2,reverse=3
defineProperty("eng_modR", globalProperty("sim/flightmodel/engine/ENGN_propmode[2]")) -- reverse on right engine feather=0,normal=1,beta=2,reverse=3



defineProperty("anim_rud1", globalPropertyf("tu154ce/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154ce/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154ce/controlls/throttle_3")) -- РУД 3

defineProperty("anim_rud1_ENG", globalPropertyf("tu154ce/controlls/throttle_1_ENG")) -- РУД 1 БИ
defineProperty("anim_rud2_ENG", globalPropertyf("tu154ce/controlls/throttle_2_ENG")) -- РУД 2 БИ
defineProperty("anim_rud3_ENG", globalPropertyf("tu154ce/controlls/throttle_3_ENG")) -- РУД 3 БИ

defineProperty("revers_L", globalPropertyf("tu154ce/controlls/revers_L")) -- рычаг реверса лев
defineProperty("revers_R", globalPropertyf("tu154ce/controlls/revers_R")) -- рычаг реверса прав




defineProperty("throttle_lock", globalPropertyf("tu154ce/controlls/throttle_lock")) -- рычаг фиксации РУД

defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- barometric alt. maybe in feet, maybe in meters.
defineProperty("baro_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg

defineProperty("rud_1_spd", globalPropertyf("tu154ce/absu/rud_1_spd")) -- скорость изменения положения рычага
defineProperty("rud_2_spd", globalPropertyf("tu154ce/absu/rud_2_spd")) -- скорость изменения положения рычага
defineProperty("rud_3_spd", globalPropertyf("tu154ce/absu/rud_3_spd")) -- скорость изменения положения рычага

-- failures
defineProperty("comsta0", globalPropertyi("sim/operation/failures/rel_comsta0")) -- compressor stall
defineProperty("comsta1", globalPropertyi("sim/operation/failures/rel_comsta1"))
defineProperty("comsta2", globalPropertyi("sim/operation/failures/rel_comsta2"))


-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("outside_air_temp", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) -- 

defineProperty("rev_fail", globalPropertyi("sim/operation/failures/rel_revloc1")) -- reverse fail for logic
defineProperty("rev_fail_2", globalPropertyi("sim/operation/failures/rel_revers1")) -- reverse fail for logic
defineProperty("override", globalPropertyi("sim/operation/override/override_throttles"))


-- engine result power
defineProperty("acf_tmax", globalPropertyf("sim/aircraft/engine/acf_tmax")) -- engines power


defineProperty("throttle_ratio_all", globalPropertyf("sim/cockpit2/engine/actuators/throttle_ratio_all")) -- all throttles


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



set(override, 1) -- use it for take control via plugin

local XP11 = get(xp_version) > 11000

set(sim_rud_1, 0.04)
set(sim_rud_2, 0.04)
set(sim_rud_3, 0.04)

if XP11 then
	set(sim_rud_1, 0.25)
	set(sim_rud_2, 0.25)
	set(sim_rud_3, 0.25)
end

-- reference table
local forward_table = {{ -10000, 0.00 }, -- BUGS workaround
                  {  0.0, 0.02 },	-- IDLE - 60.5%
				  {  0.5, 0.38 },	-- 0.42 - 82.5%
				  {  0.6, 0.55}, -- 0.6 - 86.5%
				  {  0.65, 0.637 }, -- 0.7 - 88.75%
                  {  0.7, 0.805}, -- 0.9 - 91.9%
           	      {  0.8, 0.886 }, -- nominal 93.5%
				  {  1.0, 0.975 },	-- TO 95%
				  {  1.1, 1.0 },	-- TO
				  {  1.2, 1.2 },	-- TO
          	      {  100000, 1.3 }} -- BUGS workaround
				  
local reverse_table = {{ -10000, 0.04 }, -- BUGS workaround
                  {  0.0, 0.18 },	-- IDLE
				  {  0.5, 0.18 },	-- small reverse
				  {  0.6, 0.8}, -- reverse
           	      {  1.0, 0.8 }, -- reverse
          	      {  100000, 0.8 }} -- BUGS workaround
				  
				  
local rud_T_tbl = {{ -10000, 10 }, -- BUGS workaround
                  {  -60, 10 },	-- -60ºC
				   {  0, 1}, -- 0ºC
				  {  40, 0.4}, -- +40ºC
				  {  60, 0.3}, -- +60ºC
          	      {  100000, 0.1 }} -- BUGS workaround

				  
local thro_1_pos = 0
local thro_2_pos = 0
local thro_3_pos = 0

local thro_1_pos_ENG = 0
local thro_3_pos_ENG = 0

local rev_L_pos = 0
local rev_R_pos = 0


local joy_pos_last_1 = get(tro_comm_1)
local joy_pos_last_2 = get(tro_comm_2)
local joy_pos_last_3 = get(tro_comm_3)

-- these throttles goes to engine control
local virtual_rud_1 = 0.02
local virtual_rud_2 = 0.02
local virtual_rud_3 = 0.02

local virtual_rud_1_act = 0.02
local virtual_rud_2_act = 0.02
local virtual_rud_3_act = 0.02

local joy_rud_pos_1 = get(tro_comm_1)
local joy_rud_pos_2 = get(tro_comm_2)
local joy_rud_pos_3 = get(tro_comm_3)


rev_comm = findCommand("sim/engines/thrust_reverse_toggle")

function rev_comm_hnd(phase)
	if 0 == phase then -- hold
		set(throttle_ratio_all, 0)
		
	end
	
	return 0
end

registerCommandHandler(rev_comm, 0, rev_comm_hnd)






function update()
	
	--print(XP11)
	
	
	
	local passed = get(frame_time)
	local stop_lever = get(throttle_lock) -- temp for stopor lever
	
	--local rev_L = get(revers_flap_L) > 0.5
	--local rev_R = get(revers_flap_R) > 0.5
	
	local rev_L = get(eng_modL) == 3
	local rev_R = get(eng_modR) == 3
	
	local T_coef = interpolate(rud_T_tbl, get(outside_air_temp))
	local T_coef_1 = T_coef
	if rev_L then T_coef_1 = T_coef_1 / 1.5 end
	
	local T_coef_3 = T_coef
	if rev_R then T_coef_3 = T_coef_3 / 1.5 end
	
	local joy_rud_MAX_1 = 1
	local joy_rud_MIN_1 = 0.02 -- 0.04 for ground lever and speed 0, 0.3 for H 11km and speed 0.8M

	local joy_rud_MAX_2 = 1
	local joy_rud_MIN_2 = 0.02

	local joy_rud_MAX_3 = 1
	local joy_rud_MIN_3 = 0.02

	if XP11 then
		
		joy_rud_MIN_1 = 0.175 -- 0.12 to have 61%
		joy_rud_MIN_2 = 0.175
		joy_rud_MIN_3 = 0.175
		
	end

	
	-- calculate height coef
	local alt = get(msl_alt) * 3.28083 -- MSL alt in feet
	local alt_baro = alt * 0.3048 + (29.92 - get(baro_press)) * 1000 * 0.3048 -- in meters
	
	local height_coef = line(alt_baro, 0, 1, 11000, 1.6) -- 1.233
	
	if XP11 then height_coef = line(alt_baro, 0, 1, 11000, 0.975) end -- 0.975 - 8238 lb
	
	-- 151520 high
	-- 108288 low
	
	
	-- calculate maximum positions of virtual ruds for engine surge
	local stall_1 = get(comsta0) == 6
	if stall_1 then 
		joy_rud_MAX_1 = 0.05 
		joy_rud_MIN_1 = 0
	end

	local stall_2 = get(comsta1) == 6
	if stall_2 then 
		joy_rud_MAX_2 = 0.05 
		joy_rud_MIN_2 = 0
	end

	local stall_3 = get(comsta2) == 6
	if stall_3 then 
		joy_rud_MAX_3 = 0.05 
		joy_rud_MIN_3 = 0 
	end	

	
	
	
	-- add ABSU speeds
	local rud_spd_1 = get(rud_1_spd)
	local rud_spd_2 = get(rud_2_spd)
	local rud_spd_3 = get(rud_3_spd)
	
	-- joy throttles position. 
	local joy_pos_1 = get(tro_comm_1)
	local joy_pos_2 = get(tro_comm_2)
	local joy_pos_3 = get(tro_comm_3)
	
	
	-- take controls of RUDs
	if rud_spd_1 ~= 0 then
		joy_rud_pos_1 = joy_rud_pos_1 + rud_spd_1 * passed
	elseif math.abs(joy_pos_1 - joy_pos_last_1) > 0.001 then
		joy_rud_pos_1 = joy_pos_1
	end
	
	if rud_spd_2 ~= 0 then
		joy_rud_pos_2 = joy_rud_pos_2 + rud_spd_2 * passed
	elseif math.abs(joy_pos_2 - joy_pos_last_2) > 0.001 then
		joy_rud_pos_2 = joy_pos_2
	end
	
	if rud_spd_3 ~= 0 then
		joy_rud_pos_3 = joy_rud_pos_3 + rud_spd_3 * passed
	elseif math.abs(joy_pos_3 - joy_pos_last_3) > 0.001 then
		joy_rud_pos_3 = joy_pos_3
	end
	
	
	-- try to fix noisy joysticks. need to work here more
	if math.abs(joy_pos_last_1 - joy_pos_1) > 0.001 then joy_pos_last_1 = joy_pos_1 end
	if math.abs(joy_pos_last_2 - joy_pos_2) > 0.001 then joy_pos_last_2 = joy_pos_2 end
	if math.abs(joy_pos_last_3 - joy_pos_3) > 0.001 then joy_pos_last_3 = joy_pos_3 end

	
	-- limit RUD
	if joy_rud_pos_1 > 1 then joy_rud_pos_1 = 1
	elseif joy_rud_pos_1 < 0 then joy_rud_pos_1 = 0 end
	
	if joy_rud_pos_2 > 1 then joy_rud_pos_2 = 1
	elseif joy_rud_pos_2 < 0 then joy_rud_pos_2 = 0 end
	
	if joy_rud_pos_3 > 1 then joy_rud_pos_3 = 1
	elseif joy_rud_pos_3 < 0 then joy_rud_pos_3 = 0 end
	
	
	
	if stop_lever < 0.2 then
		-- set left lever

		if rev_L then
			thro_1_pos = 0
			thro_1_pos_ENG = -interpolate(reverse_table, joy_rud_pos_1) * 0.4
			rev_L_pos = -thro_1_pos_ENG * 2.5
			virtual_rud_1 = joy_rud_MIN_1 + (joy_rud_MAX_1 - joy_rud_MIN_1) * interpolate(reverse_table, joy_rud_pos_1)
		else
			thro_1_pos = joy_rud_pos_1
			thro_1_pos_ENG = joy_rud_pos_1
			rev_L_pos = 0
			virtual_rud_1 = joy_rud_MIN_1 + (joy_rud_MAX_1 - joy_rud_MIN_1) * interpolate(forward_table, joy_rud_pos_1)
		end
		-- set middle lever

		if rev_L or rev_R then 
			thro_2_pos = 0
			virtual_rud_2 = joy_rud_MIN_2 + (joy_rud_MAX_2 - joy_rud_MIN_2) * interpolate(forward_table, joy_rud_MIN_2)
		else
			thro_2_pos = joy_rud_pos_2
			virtual_rud_2 = joy_rud_MIN_2 + (joy_rud_MAX_2 - joy_rud_MIN_2) * interpolate(forward_table, joy_rud_pos_2)
		end

		-- set right lever
		if rev_R then
			thro_3_pos = 0
			thro_3_pos_ENG = -interpolate(reverse_table, joy_rud_pos_3) * 0.4
			rev_R_pos = -thro_3_pos_ENG * 2.5
			virtual_rud_3 = joy_rud_MIN_3 + (joy_rud_MAX_3 - joy_rud_MIN_3) * interpolate(reverse_table, joy_rud_pos_3)
		else
			thro_3_pos = joy_rud_pos_3
			thro_3_pos_ENG = joy_rud_pos_3
			rev_R_pos = 0
			virtual_rud_3 = joy_rud_MIN_3 + (joy_rud_MAX_3 - joy_rud_MIN_3) * interpolate(forward_table, joy_rud_pos_3)
		end
	end
	
	-- simulate turbine spoolup
	if virtual_rud_1_act < virtual_rud_1 then -- spool-up
		virtual_rud_1_act = virtual_rud_1_act - (virtual_rud_1_act - virtual_rud_1) * passed * T_coef_1
	else -- spool-down
		virtual_rud_1_act = virtual_rud_1_act - (virtual_rud_1_act - virtual_rud_1) * passed
	end
	
	if virtual_rud_2_act < virtual_rud_2 then -- spool-up
		virtual_rud_2_act = virtual_rud_2_act - (virtual_rud_2_act - virtual_rud_2) * passed * T_coef
	else -- spool-down
		virtual_rud_2_act = virtual_rud_2_act - (virtual_rud_2_act - virtual_rud_2) * passed
	end
	
	if virtual_rud_3_act < virtual_rud_3 then -- spool-up
		virtual_rud_3_act = virtual_rud_3_act - (virtual_rud_3_act - virtual_rud_3) * passed * T_coef_3
	else -- spool-down
		virtual_rud_3_act = virtual_rud_3_act - (virtual_rud_3_act - virtual_rud_3) * passed
	end
	
	
	-- height correction of throttle. iddle/TO
	local thro_high_1 = line(virtual_rud_1_act, 0, 0.35, 1, 1.1)
	local thro_high_2 = line(virtual_rud_2_act, 0, 0.35, 1, 1.1)
	local thro_high_3 = line(virtual_rud_3_act, 0, 0.35, 1, 1.1)

if XP11 then
	--[[
	thro_high_1 = line(virtual_rud_1_act, 0, 0.54, 1, 1.1)
	thro_high_2 = line(virtual_rud_2_act, 0, 0.54, 1, 1.1)
	thro_high_3 = line(virtual_rud_3_act, 0, 0.54, 1, 1.1)
	--]]
	
	thro_high_1 = line(virtual_rud_1_act, 0, 0.525, 1, 1.07)
	thro_high_2 = line(virtual_rud_2_act, 0, 0.525, 1, 1.07)
	thro_high_3 = line(virtual_rud_3_act, 0, 0.525, 1, 1.07)
	
end

	
	local thro_1 = line(alt_baro, 0, virtual_rud_1_act, 11000, thro_high_1)
	local thro_2 = line(alt_baro, 0, virtual_rud_2_act, 11000, thro_high_2)
	local thro_3 = line(alt_baro, 0, virtual_rud_3_act, 11000, thro_high_3)
	
	
	
	
	
	
local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	
	-- set results
	-- set animation
	set(anim_rud1, thro_1_pos)
	set(anim_rud2, thro_2_pos)
	set(anim_rud3, thro_3_pos)

	set(anim_rud1_ENG, thro_1_pos_ENG)
	set(anim_rud2_ENG, thro_2_pos)
	set(anim_rud3_ENG, thro_3_pos_ENG)
	
	set(throttle_lock, stop_lever)
	
	set(revers_L, rev_L_pos)
	set(revers_R, rev_R_pos)
	
	-- sim throttles
	set(sim_rud_1, thro_1)--virtual_rud_1_act)
	set(sim_rud_2, thro_2)--virtual_rud_2_act)
	set(sim_rud_3, thro_3)--virtual_rud_3_act)

end
	
	set(rev_fail, 6) -- set failure for eng 2 reverse
	set(rev_fail_2, 6)
	
	-- set engine power
	set(acf_tmax, 108288 * height_coef)
	
	--print(height_coef,"   ", alt_baro)
	
end













function onAvionicsDone()
	set(override, 0)
	print("throttles released")
end