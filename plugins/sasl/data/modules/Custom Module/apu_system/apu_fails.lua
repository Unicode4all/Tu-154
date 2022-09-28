-- this is logic of APU failures

-- there are few cases of failures:
-- +++ oil temperature >115C leads to oil burning and APU destruction. maybe - fire
-- +++ starting the APU when it's own temperature is above 150C leads to its destruction. maybe - fire
-- +++ fuel inside the APU before it starts can lead to rapid EGT grow and may leads to its destruction. maybe - fire




-- failures logic


defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled"))
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

-- failures
defineProperty("apu_start_fail",globalPropertyi("tu154ce/failures/apu_start_fail")) -- отказ стартера
defineProperty("apu_gen_fail",globalPropertyi("tu154ce/failures/apu_gen_fail")) -- отказ генератора
defineProperty("apu_fail_oilt",globalPropertyi("tu154ce/failures/apu_fail_oilt")) -- отказ по температуре масла
defineProperty("apu_fail_egt",globalPropertyi("tu154ce/failures/apu_fail_egt")) -- отказ по ТВГ
defineProperty("apu_fail_fuel_left",globalPropertyi("tu154ce/failures/apu_fail_fuel_left")) -- отказ пр остатку топлива в камере при запуске
defineProperty("apu_fail",globalPropertyi("tu154ce/failures/apu_fail")) -- отказ по наработке
defineProperty("apu_press_fail", globalPropertyi("tu154ce/failures/apu_press_fail")) -- отказ отбора воздуха от двигателя



local fail_counter = 0
local check_time = math.random(15, 30)


function update()
	
	local passed = get(frame_time)
	

	
if get(ismaster) ~= 1 then
	
	
	
	local FAIL = get(failures_enabled)
	
	FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
	-- check failures
	if FAIL > 0 then
		
		fail_counter = fail_counter + passed
		
		if fail_counter > check_time then
			fail_counter = 0
			check_time = math.random(15, 30)
			
			-- random failures
			if get(apu_start_fail) ~= 1 then set(apu_start_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(apu_gen_fail) ~= 1 then set(apu_gen_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			--if get(apu_fail_oilt) ~= 1 then set(apu_fail_oilt, bool2int(math.random() < 0.000001) * 1) end
			--if get(apu_fail_egt) ~= 1 then set(apu_fail_egt, bool2int(math.random() < 0.000001) * 1) end
			--if get(apu_fail_fuel_left) ~= 1 then set(apu_fail_fuel_left, bool2int(math.random() < 0.000001) * 1) end
			if get(apu_fail) ~= 1 then set(apu_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			--if get(apu_press_fail) ~= 1 then set(apu_press_fail, bool2int(math.random() < 0.000001) * 1) end
			
			-- runtime failure
			if get(apu_runtime) == 0 then
				if get(apu_fail) ~= 1 then set(apu_fail, bool2int(math.random() < 0.01 * FAIL * 0.3) * 1) end
			end
			
			
		
		end
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(apu_start_fail, 0)
		set(apu_gen_fail, 0)
		set(apu_fail_oilt, 0)
		set(apu_fail_egt, 0)
		set(apu_fail_fuel_left, 0)
		set(apu_fail, 0)
		set(apu_press_fail, 0)
	
	
	end


end



end