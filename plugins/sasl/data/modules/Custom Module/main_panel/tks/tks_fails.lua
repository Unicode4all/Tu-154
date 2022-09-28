-- TKS fails
defineProperty("gyro_fail_1", globalPropertyi("sim/operation/failures/rel_ss_dgy"))
defineProperty("gyro_fail_2", globalPropertyi("sim/operation/failures/rel_cop_dgy"))

defineProperty("tks_km1_fail", globalPropertyi("tu154ce/failures/tks_km1_fail"))
defineProperty("tks_km2_fail", globalPropertyi("tu154ce/failures/tks_km2_fail"))
defineProperty("tks_bgmk1_fail", globalPropertyi("tu154ce/failures/tks_bgmk1_fail"))
defineProperty("tks_bgmk2_fail", globalPropertyi("tu154ce/failures/tks_bgmk2_fail"))





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
			if get(gyro_fail_1) ~= 6 then set(gyro_fail_1, bool2int(math.random() < 0.0001 * FAIL * 0.3) * 6) end
			if get(gyro_fail_2) ~= 6 then set(gyro_fail_2, bool2int(math.random() < 0.0001 * FAIL * 0.3) * 6) end
			
			if get(tks_km1_fail) ~= 1 then set(tks_km1_fail, bool2int(math.random() < 0.0001 * FAIL * 0.3) * 1) end
			if get(tks_km2_fail) ~= 1 then set(tks_km2_fail, bool2int(math.random() < 0.0001 * FAIL * 0.3) * 1) end
			if get(tks_bgmk1_fail) ~= 1 then set(tks_bgmk1_fail, bool2int(math.random() < 0.0001 * FAIL * 0.3) * 1) end
			if get(tks_bgmk2_fail) ~= 1 then set(tks_bgmk2_fail, bool2int(math.random() < 0.0001 * FAIL * 0.3) * 1) end

					

		
		
		end
		
		-- dependent failures
		

		
		
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(gyro_fail_1, 0)
		set(gyro_fail_2, 0)
		set(tks_km1_fail, 0)
		set(tks_km2_fail, 0)
		set(tks_bgmk1_fail, 0)
		set(tks_bgmk2_fail, 0)


	
	end
	
	
	
end

end