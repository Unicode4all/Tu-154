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

defineProperty("stab_ind", globalPropertyf("tu154ce/gauges/misc/stab_ind")) -- индикатор положения стаб
defineProperty("elevator_ind", globalPropertyf("tu154ce/gauges/misc/elevator_ind")) -- индикатор положения стаб
defineProperty("flap_left_ind", globalPropertyf("tu154ce/gauges/misc/flap_left_ind")) -- индикатор положения стаб
defineProperty("flap_right_ind", globalPropertyf("tu154ce/gauges/misc/flap_right_ind")) -- индикатор положения стаб
defineProperty("slats_extended", globalPropertyf("tu154ce/lights/slats_extended")) -- предкрылки выпущены

defineProperty("joy_pitch", globalPropertyf("tu154ce/SC/yoke_pitch_ratio")) 

defineProperty("gears_green_left", globalPropertyf("tu154ce/lights/gears_green_left")) -- шасси 
defineProperty("gears_green_front", globalPropertyf("tu154ce/lights/gears_green_front")) -- шасси 
defineProperty("gears_green_right", globalPropertyf("tu154ce/lights/gears_green_right")) -- шасси 
defineProperty("gear_lever", globalPropertyi("tu154ce/controll/gear_lever")) -- ручка выпуска шасси. -1 - уборка, 0 - нейтр, +1 - выпуск

defineProperty("to_rudder", globalPropertyf("tu154ce/lights/to_rudder")) -- взлет-посадка РН
defineProperty("to_elevator", globalPropertyf("tu154ce/lights/to_elevator")) -- взлет-посадка РВ

defineProperty("landing_ext_set_L", globalPropertyi("tu154ce/lights/landing_ext_set_L")) -- выпуск фар лев
defineProperty("landing_ext_set_R", globalPropertyi("tu154ce/lights/landing_ext_set_R")) -- выпуск фар прав




local checklist_started = false
local stage = 0
local stage_status = 0 -- 0 question, 1+ - answers. 1 usually is false.

local speak_timer = 0

function checklist_9()

	--local passed = get(frame_time)
	
	--print(checklist_started)
	
	-- start the checklist
	if not checklist_started and get(checklist_selected) == 9 then 
		checklist_started = true 
		stage = 1
		
		-- declare checklist
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["befor_DPRM"][lang], 3}
		speak_timer = 3
		
	end
	
	-- another checklist started
	if get(checklist_selected) ~= 9 then 
		checklist_started = false
		stage = 0
		stage_status = 0 
	end
	
	-- move stages
	if checklist_started then
		if stage == 1 and get(fishka_10) == 1 then stage = 2 stage_status = 0 end -- move further if cap is closed
		if stage == 2 and get(fishka_11) == 1 then stage = 3 stage_status = 0 end -- move further if cap is closed
		if stage == 3 and get(fishka_12) == 1 then stage = 4 stage_status = 0 end -- move further if cap is closed
		if stage == 4 and get(fishka_13) == 1 then stage = 5 stage_status = 0 end -- move further if cap is closed
		if stage == 5 and get(fishka_14) == 1 then 
			stage = 100 stage_status = 0 
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["checklist_completed"][lang], 2}
		end -- end checklist
	end
	--print(stage)
	
	---------------------------------
	-- question 1. Flaps and slats --
	---------------------------------
	if stage == 1 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["flaps"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(flap_left_ind) < 26 or get(flap_right_ind) < 26 or get(slats_extended) == 0)  then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(flap_left_ind) > 26 and get(flap_right_ind) > 26 and get(slats_extended) > 0.1  then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["ext_flaps_"][lang], 1.5}
			cop_say_num(math.floor(get(flap_left_ind)+0.5), 2, lang)
			
			speak_timer = 4
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 10
	if stage == 1 and stage_status == 10 and speak_timer < 0.1 then set(fishka_10, 1) end


	---------------------------------
	-- question 2. Stab RV --
	---------------------------------
	if stage == 2 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["stabilizer_RV"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (math.abs(get(joy_pitch)) > 0.1 or get(elevator_ind) > 6 or get(elevator_ind) < -2) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and math.abs(get(joy_pitch)) <= 0.1 and get(elevator_ind) < 6 and get(elevator_ind) > -2 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["synced"][lang], 2}
			
			speak_timer = 2
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 11
	if stage == 2 and stage_status == 10 and speak_timer < 0.1 then set(fishka_11, 1) end


	---------------------------------
	-- question 3. Gears --
	---------------------------------
	if stage == 3 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["gear"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(gears_green_left) * get(gears_green_front) * get(gears_green_right) == 0 or get(gear_lever) ~= 0) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(gears_green_left) * get(gears_green_front) * get(gears_green_right) ~= 0 and get(gear_lever) == 0 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["ext_green_neutr"][lang], 3}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	end
	
	-- move fishka 12
	if stage == 3 and stage_status == 10 and speak_timer < 0.1 then set(fishka_12, 1) end


	
	---------------------------------
	-- question 4. Contr force --
	---------------------------------
	if stage == 4 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["RV_RN"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(to_rudder) * get(to_elevator) == 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(to_rudder) + get(to_elevator) > 0.2 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["off_tablo_lit"][lang], 2}

			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 13
	if stage == 4 and stage_status == 10 and speak_timer < 0.1 then set(fishka_13, 1) end


	
	
	---------------------------------
	-- question 5. Lights --
	---------------------------------
	if stage == 5 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["landing_lights"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(landing_ext_set_L) * get(landing_ext_set_R) == 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(landing_ext_set_L) * get(landing_ext_set_R) == 1 then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["extended"][lang], 2}

			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 14
	if stage == 5 and stage_status == 10 and speak_timer < 0.1 then set(fishka_14, 1) end
	
	
	
	
	
	
	
	
	
	
	
	
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




