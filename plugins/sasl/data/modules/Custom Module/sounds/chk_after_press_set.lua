-- this is after pressure set checklist
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

defineProperty("side",globalPropertyi("tu154ce/checklist/side")) -- какую сторону показывать. 0 - пред взлетом, 1 - перед заходом

defineProperty("fishka_1",globalPropertyi("tu154ce/checklist/fishka_1")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_2",globalPropertyi("tu154ce/checklist/fishka_2")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_3",globalPropertyi("tu154ce/checklist/fishka_3")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_4",globalPropertyi("tu154ce/checklist/fishka_4")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_5",globalPropertyi("tu154ce/checklist/fishka_5")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_6",globalPropertyi("tu154ce/checklist/fishka_6")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_7",globalPropertyi("tu154ce/checklist/fishka_7")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_8",globalPropertyi("tu154ce/checklist/fishka_8")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_9",globalPropertyi("tu154ce/checklist/fishka_9")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_10",globalPropertyi("tu154ce/checklist/fishka_10")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_11",globalPropertyi("tu154ce/checklist/fishka_11")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_12",globalPropertyi("tu154ce/checklist/fishka_12")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_13",globalPropertyi("tu154ce/checklist/fishka_13")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_14",globalPropertyi("tu154ce/checklist/fishka_14")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_15",globalPropertyi("tu154ce/checklist/fishka_15")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_16",globalPropertyi("tu154ce/checklist/fishka_16")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_17",globalPropertyi("tu154ce/checklist/fishka_17")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_18",globalPropertyi("tu154ce/checklist/fishka_18")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_19",globalPropertyi("tu154ce/checklist/fishka_19")) -- положение фишки. 0 - слева, 1 - справа
defineProperty("fishka_20",globalPropertyi("tu154ce/checklist/fishka_20")) -- положение фишки. 0 - слева, 1 - справа

defineProperty("checklist_selected",globalPropertyi("tu154ce/checklist/checklist_selected")) -- выбор чеклиста

-- sources

defineProperty("pressure", globalPropertyf("tu154ce/gauges/alt/vbe_press_left"))  -- pressure in hPa

defineProperty("frequency", globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))  -- set the frequency
defineProperty("nav_pow_cc", globalPropertyf("tu154ce/radio/nav1_pow_cc")) -- потребление тока от КурсМП

defineProperty("obs", globalPropertyf("tu154ce/gauges/compas/pkp_obs_set_L"))  -- set the course

defineProperty("ark15_cc_1", globalPropertyf("tu154ce/radio/ark15_L_cc")) -- потребление тока АРК
defineProperty("ark15_cc_2", globalPropertyf("tu154ce/radio/ark15_R_cc")) -- потребление тока АРК


defineProperty("absu_landing_on", globalPropertyi("tu154ce/switchers/console/absu_landing_on")) -- стрелки посадка
defineProperty("absu_speed_prepare", globalPropertyi("tu154ce/switchers/console/absu_speed_prepare")) -- подготовка

defineProperty("at_1_lamp", globalPropertyf("tu154ce/lights/small/at_1")) -- АТ 1
defineProperty("at_2_lamp", globalPropertyf("tu154ce/lights/small/at_2")) -- АТ 2


local checklist_started = false
local stage = 0
local stage_status = 0 -- 0 question, 1+ - answers. 1 usually is false.

local speak_timer = 0

function checklist_7()

	--local passed = get(frame_time)
	
	--print(checklist_started)
	
	-- start the checklist
	if not checklist_started and get(checklist_selected) == 7 then 
		checklist_started = true 
		stage = 1
		
		-- declare checklist
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["pressure_of_the_airfield"][lang], 3}
		speak_timer = 3
		
	end
	
	-- another checklist started
	if get(checklist_selected) ~= 7 then 
		checklist_started = false
		stage = 0
		stage_status = 0 
	end
	
	-- move stages
	if checklist_started then
		if stage == 1 and get(fishka_15) == 0 then stage = 2 stage_status = 0 end -- move further if cap is closed
		if stage == 2 and get(fishka_16) == 0 then stage = 3 stage_status = 0 end -- move further if cap is closed
		if stage == 3 and get(fishka_17) == 0 then stage = 4 stage_status = 0 end -- move further if cap is closed
		if stage == 4 and get(fishka_18) == 0 then stage = 5 stage_status = 0 end -- move further if cap is closed
		if stage == 5 and get(fishka_19) == 0 then 
			stage = 100 stage_status = 0 
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["checklist_completed"][lang], 2}
		end -- end checklist
	end
	--print(stage)
	
	---------------------------------
	-- question 1. Altimeters --
	---------------------------------
	if stage == 1 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["altimeters"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		--[[
		-- false answer
		if stage_status == 1 and get(mars_on) ~= 1 and get(bus27_volt_left) < 13 and get(bus27_volt_right) < 13 then
			-- say false answer once
			stage_status = 2
		end
		--]]
		-- true answer
		if (stage_status == 1 or stage_status == 2) then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["pressure_set_to"][lang], 1.5}
			capt_say_num(get(pressure), 4, lang)
			
			speak_timer = 5
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 15
	if stage == 1 and stage_status == 10 and speak_timer < 0.1 then set(fishka_15, 0) end



	---------------------------------
	-- question 2. ILS --
	---------------------------------
	if stage == 2 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["course_mp"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
	
		-- false answer
		if stage_status == 1 and get(nav_pow_cc) == 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(nav_pow_cc) ~= 0 then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["turned_on2"][lang], 1}
			capt_say_num(get(frequency), 5, lang)
			
			speak_timer = 5
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 16
	if stage == 2 and stage_status == 10 and speak_timer < 0.1 then set(fishka_16, 0) end



	---------------------------------
	-- question 3. Course PNP --
	---------------------------------
	if stage == 3 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["course_PNP"][lang], 3}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
	--[[
		-- false answer
		if stage_status == 1 then
			-- say false answer once
			stage_status = 2
		end
		--]]
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(nav_pow_cc) ~= 0 then
			--local num = find_empty()
			--phrases_tbl[num] = {cpt_tbl["turned_on2"][lang], 1}
			local crs = math.floor(get(obs) + 0.5)
			if crs == 0 then crs = 360 end
			
			capt_say_num(crs, 3, lang)
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 17
	if stage == 3 and stage_status == 10 and speak_timer < 0.1 then set(fishka_17, 0) end





	---------------------------------
	-- question 4. ARK --
	---------------------------------
	if stage == 4 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["ARK"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
	
		-- false answer
		if stage_status == 1 and get(ark15_cc_1) * get(ark15_cc_2) == 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(ark15_cc_1) ~= 0 and get(ark15_cc_2) ~= 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["switch_on_1"][lang], 2}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 18
	if stage == 4 and stage_status == 10 and speak_timer < 0.1 then set(fishka_18, 0) end



	---------------------------------
	-- question 5. PN5 PN6 --
	---------------------------------
	if stage == 5 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["PN-5_PN-6"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
	
		-- false answer
		if stage_status == 1 and get(absu_landing_on) * get(absu_speed_prepare) * get(at_1_lamp) * get(at_2_lamp) == 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(absu_landing_on) * get(absu_speed_prepare) * get(at_1_lamp) * get(at_2_lamp) ~= 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["prepared"][lang], 2}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 19
	if stage == 5 and stage_status == 10 and speak_timer < 0.1 then set(fishka_19, 0) end









	
	
	speak_timer = speak_timer - passed_time
	
	-- hold timer, if voice que is not empty
	if speak_timer < 0.2 and find_empty() > 1 then speak_timer = phrases_tbl[1][2]
	elseif speak_timer < 0.2 then speak_timer = 0
	end
	

	
	-- end checklist if all stack moved left
	if checklist_started then
		if stage == 100 then
			checklist_started = false
			set(checklist_selected, 0)
			stage = 0
			stage_status = 0
		end
	
	
	end
	
	--print(checklist_started)




end
