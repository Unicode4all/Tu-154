-- Radio fails

defineProperty("rel_adf1", globalPropertyi("sim/operation/failures/rel_adf1"))
defineProperty("rel_adf2", globalPropertyi("sim/operation/failures/rel_adf2"))
defineProperty("nav1_fail", globalPropertyi("tu154ce/failures/nav1_fail"))
defineProperty("nav2_fail", globalPropertyi("tu154ce/failures/nav2_fail"))
defineProperty("dme1_fail", globalPropertyi("tu154ce/failures/dme1_fail"))
defineProperty("dme2_fail", globalPropertyi("tu154ce/failures/dme2_fail"))

defineProperty("mrp_fail", globalPropertyi("tu154ce/failures/mrp_fail"))






-- define sources
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time
defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control





local fail_counter = 0
local check_time = math.random(15, 30)





function update()
	local passed = get(frame_time)
	
local MASTER = get(ismaster) ~= 1	
	

if MASTER then	

	
	local FAIL = get(failures_enabled)
	FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
	-- check failures
	if FAIL > 0 then
		
		fail_counter = fail_counter + passed
		
		if fail_counter > check_time then
			fail_counter = 0
			check_time = math.random(15, 30)
			
			-- random failures
			if get(rel_adf1) ~= 6 then set(rel_adf1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_adf2) ~= 6 then set(rel_adf2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(nav1_fail) ~= 1 then set(nav1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(nav2_fail) ~= 1 then set(nav2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(dme1_fail) ~= 1 then set(dme1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(dme2_fail) ~= 1 then set(dme2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(mrp_fail) ~= 1 then set(mrp_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end


		
		end
		
		-- dependent failures
		

		
		
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(rel_adf1, 0)
		set(rel_adf2, 0)
		set(nav1_fail, 0)
		set(nav2_fail, 0)
		set(dme1_fail, 0)
		set(dme2_fail, 0)
		set(mrp_fail, 0)


	
	end
	
	
	
end

end