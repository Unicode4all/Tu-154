-- this is before start checklist
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


-- check sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("mars_on", globalPropertyi("tu154ce/switchers/ovhd/mars_on"))  -- МАРС

defineProperty("door1", globalPropertyf("tu154ce/lights/left_front_pax_door")) -- левая передняя дверь открыта
defineProperty("door2", globalPropertyf("tu154ce/lights/left_mid_pax_door")) -- левая средняя дверь открыта
defineProperty("door3", globalPropertyf("tu154ce/lights/right_mid_pax_door")) -- средняя средняя дверь открыта
defineProperty("door4", globalPropertyf("tu154ce/lights/cargo_front_door")) -- передний багажный люк
defineProperty("door5", globalPropertyf("tu154ce/lights/cargo_back_door")) -- задний багажный люк

defineProperty("msrp_27_L_cc", globalPropertyf("tu154ce/msrp/msrp_27_L_cc")) -- нагрузка на сеть
defineProperty("msrp_27_R_cc", globalPropertyf("tu154ce/msrp/msrp_27_R_cc")) -- нагрузка на сеть

defineProperty("rv_flag", globalPropertyi("tu154ce/gauges/alt/radioalt_flag_left"))  -- RV flag

defineProperty("pump_tank2_left", globalPropertyi("tu154ce/switchers/fuel/pump_tank2_left")) -- насосы бака 2
defineProperty("pump_tank2_right", globalPropertyi("tu154ce/switchers/fuel/pump_tank2_right")) -- насосы бака 2
defineProperty("pump_tank3_left", globalPropertyi("tu154ce/switchers/fuel/pump_tank3_left")) -- насосы бака 3
defineProperty("pump_tank3_right", globalPropertyi("tu154ce/switchers/fuel/pump_tank3_right")) -- насосы бака 3
defineProperty("pump_tank4", globalPropertyi("tu154ce/switchers/fuel/pump_tank4")) -- насосы бака 4
defineProperty("pump_tank1_1", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_1")) -- насосы бака 1
defineProperty("pump_tank1_2", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_2")) -- насосы бака 1
defineProperty("pump_tank1_3", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_3")) -- насосы бака 1
defineProperty("pump_tank1_4", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_4")) -- насосы бака 1

defineProperty("gs_press_1", globalPropertyf("tu154ce/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154ce/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154ce/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154ce/hydro/gs_press_4")) -- давление в ГС4

defineProperty("gear_brake_press_L", globalPropertyf("tu154ce/gauges/console/gear_brake_press_L")) -- давление тормозов лев
defineProperty("gear_brake_press_R", globalPropertyf("tu154ce/gauges/console/gear_brake_press_R")) -- давление тормозов прав

defineProperty("trimm_zero_course", globalPropertyf("tu154ce/lights/trimm_zero_course")) -- нетрально курс
defineProperty("trimm_zero_roll", globalPropertyf("tu154ce/lights/trimm_zero_roll")) -- нетрально крен
defineProperty("trimm_zero_pitch", globalPropertyf("tu154ce/lights/trimm_zero_pitch")) -- нетрально тангаж

defineProperty("cg_pos_actual", globalPropertyf("tu154ce/misc/cg_pos_actual")) -- актуальное положение CG
defineProperty("weight_actual", globalPropertyf("tu154ce/misc/weight_actual")) -- актуальная масса

defineProperty("v1_15", globalPropertyi("tu154ce/speeds/v1_15")) -- 
defineProperty("vr_15", globalPropertyi("tu154ce/speeds/vr_15")) -- 
defineProperty("v2_15", globalPropertyi("tu154ce/speeds/v2_15")) -- 
defineProperty("v1_28", globalPropertyi("tu154ce/speeds/v1_28")) -- 
defineProperty("vr_28", globalPropertyi("tu154ce/speeds/vr_28")) -- 
defineProperty("v2_28", globalPropertyi("tu154ce/speeds/v2_28")) -- 


defineProperty("stab_setting", globalPropertyi("tu154ce/controll/stab_setting")) -- положение центровки для стаба. 0 - З, 1 - С, 2 - П	1


local checklist_started = false
local stage = 0
local stage_status = 0 -- 0 question, 1+ - answers. 1 usually is false.

local speak_timer = 0

function checklist_1()

	--local passed = get(frame_time)
	
	--print(checklist_started)
	
	-- start the checklist
	if not checklist_started and get(checklist_selected) == 1 then 
		checklist_started = true 
		stage = 1
		
		-- declare checklist
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["befor_eng_run"][lang], 2}
		speak_timer = 2
		
	end
	
	-- another checklist started
	if get(checklist_selected) ~= 1 then 
		checklist_started = false
		stage = 0
		stage_status = 0 
	end
	
	-- move stages
	if checklist_started then
		if stage == 1 and get(fishka_1) == 0 then stage = 2 stage_status = 0 end -- move further if cap is closed
		if stage == 2 and get(fishka_2) == 0 then stage = 3 stage_status = 0 end -- move further if cap is closed
		if stage == 3 and get(fishka_3) == 0 then stage = 4 stage_status = 0 end -- move further if cap is closed
		if stage == 4 and get(fishka_4) == 0 then stage = 5 stage_status = 0 end -- move further if cap is closed
		if stage == 5 and get(fishka_5) == 0 then stage = 6 stage_status = 0 end -- move further if cap is closed
		if stage == 6 and get(fishka_6) == 0 then stage = 7 stage_status = 0 end -- move further if cap is closed
		if stage == 7 and get(fishka_7) == 0 then stage = 8 stage_status = 0 end -- move further if cap is closed
		if stage == 8 and get(fishka_8) == 0 then stage = 9 stage_status = 0 end -- move further if cap is closed
		if stage == 9 and get(fishka_9) == 0 then 
			stage = 100 stage_status = 0 
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["checklist_completed"][lang], 2}
		end -- end checklist
	end
	--print(stage)
	
	------------------------------
	-- question 1. Recorder --
	---------------------------------
	if stage == 1 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["recorder"][lang], 1}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(mars_on) ~= 1 and get(bus27_volt_left) < 13 and get(bus27_volt_right) < 13 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(mars_on) == 1 and (get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13) then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["turned_on"][lang], 2}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 1
	if stage == 1 and stage_status == 10 and speak_timer < 0.1 then set(fishka_1, 0) end
	

	--------------------------------
	-- question 2. Keys, Rod --
	---------------------------------
	if stage == 2 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["plugs_keys_rod"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		--[[
		-- false answer
		if stage_status == 1 and get(mars_on) ~= 1 then
			-- say false answer once
			stage_status = 2
		end
		--]]
		-- true answer
		if (stage_status == 1 or stage_status == 2) then
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["on_board"][lang], 1}
			
			speak_timer = 2
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 2
	if stage == 2 and stage_status == 10 and speak_timer < 0.1 then set(fishka_2, 0) end	
	
	
	------------------------------
	-- question 3. Doors --
	---------------------------------
	if stage == 3 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["doors"][lang], 1}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(door1) + get(door2) + get(door3) + get(door4) + get(door5) > 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(door1) + get(door2) + get(door3) + get(door4) + get(door5) == 0 then
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["closed_tablo_off"][lang], 3}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 3
	if stage == 3 and stage_status == 10 and speak_timer < 0.1 then set(fishka_3, 0) end	
	
	

	------------------------------
	-- question 4. MSRP, SSOS, RV #1 --
	---------------------------------
	if stage == 4 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["msrp_ssos_rv1"][lang], 3}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(msrp_27_L_cc) + get(msrp_27_R_cc) == 0 or get(rv_flag) == 1) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(msrp_27_L_cc) + get(msrp_27_R_cc) > 0 and get(rv_flag) == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["switch_on_date"][lang], 3}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 4
	if stage == 4 and stage_status == 10 and speak_timer < 0.1 then set(fishka_4, 0) end		

	

	------------------------------
	-- question 5. Fuel pumps --
	---------------------------------
	if stage == 5 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fuel_pumps"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(pump_tank1_1) + get(pump_tank1_2) + get(pump_tank1_3) + get(pump_tank1_4) < 4 or 
			get(pump_tank2_left) + get(pump_tank2_right) + get(pump_tank3_left) + get(pump_tank3_right) < 4) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(pump_tank1_1) + get(pump_tank1_2) + get(pump_tank1_3) + get(pump_tank1_4) == 4 and 
			get(pump_tank2_left) + get(pump_tank2_right) + get(pump_tank3_left) + get(pump_tank3_right) == 4 then
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["pumps_on"][lang], 3}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 5
	if stage == 5 and stage_status == 10 and speak_timer < 0.1 then set(fishka_5, 0) end	
	
	
	------------------------------
	-- question 6. Hydraulics --
	---------------------------------
	if stage == 6 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["pressure_hydraulic_systems"][lang], 4}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(gs_press_1) < 200 or get(gs_press_2) < 200 or get(gs_press_3) < 200) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(gs_press_1) >= 200 and get(gs_press_2) >= 200 and get(gs_press_3) >= 200 then
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["210"][lang], 2}
			
			speak_timer = 2
			stage_status = 3 -- next
		end



		
		-- false answer
		if stage_status == 3 and (get(gear_brake_press_L) < 100 or get(gear_brake_press_R) < 100) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 4
		end
		
		-- true answer
		if (stage_status == 3 or stage_status == 4) and get(gear_brake_press_L) >= 100 and get(gear_brake_press_R) >= 100 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["120"][lang], 2}
			
			speak_timer = 2
			stage_status = 5 -- next
		end



		-- false answer
		if stage_status == 5 and get(gs_press_4) < 180 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 6
		end
		
		-- true answer
		if (stage_status == 5 or stage_status == 6) and get(gs_press_4) >= 180 then
			local num = find_empty()
			if get(gs_press_4) >= 200 then phrases_tbl[num] = {eng_tbl["210"][lang], 2}
			else phrases_tbl[num] = {eng_tbl["180"][lang], 2} end
			
			speak_timer = 2
			stage_status = 10 -- finish
		end		
	
	end
	
	-- move fishka 6
	if stage == 6 and stage_status == 10 and speak_timer < 0.1 then set(fishka_6, 0) end		
	
	
	


	------------------------------
	-- question 7. Trimmers --
	------------------------------
	if stage == 7 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["trim"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(trimm_zero_course) < 0.2 or get(trimm_zero_roll) < 0.2 or get(trimm_zero_pitch) < 0.2) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(trimm_zero_course) > 0.2 and get(trimm_zero_roll) > 0.2 and get(trimm_zero_pitch) > 0.2 then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["neutral"][lang], 2}
			
			speak_timer = 2
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 7
	if stage == 7 and stage_status == 10 and speak_timer < 0.1 then set(fishka_7, 0) end





	------------------------------
	-- question 8. Takeoff data --
	---------------------------------
	if stage == 8 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["takeoff_data"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end

		
		-- true answer
		if stage_status == 1 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["weight"][lang], 1}
			
			cop_say_num(math.floor(get(weight_actual)/1000 + 0.5), 3, lang)
			
			phrases_tbl[num+4] = {cop_tbl["cg_pos"][lang], 1}
			
			cop_say_num(math.floor(get(cg_pos_actual)+0.5), 2, lang)
			
			
			phrases_tbl[num+7] = {nav_tbl["V1"][lang], 1}
			
			nav_say_num(math.floor(get(v1_15)+0.5), 3, lang)
			
			
			phrases_tbl[num+11] = {nav_tbl["Vr"][lang], 1}
			
			nav_say_num(math.floor(get(vr_15)+0.5), 3, lang)
			
			
			phrases_tbl[num+15] = {nav_tbl["V2"][lang], 1}
			
			nav_say_num(math.floor(get(v2_15)+0.5), 3, lang)
			
			speak_timer = 13
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 8
	if stage == 8 and stage_status == 10 and speak_timer < 0.1 then set(fishka_8, 0) end




	------------------------------
	-- question 9. Stab setting --
	------------------------------
	if stage == 9 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["stabilizer"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end

		
		-- true answer
		if (stage_status == 1 or stage_status == 2) then
			local num = find_empty()
			
			if get(stab_setting) == 0 then
				phrases_tbl[num] = {cpt_tbl["stab_set_b"][lang], 2}
			elseif get(stab_setting) == 1 then
				phrases_tbl[num] = {cpt_tbl["stab_set_m"][lang], 2}
			else 
				phrases_tbl[num] = {cpt_tbl["stab_set_f"][lang], 2}
			end
			speak_timer = 2
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 9
	if stage == 9 and stage_status == 10 and speak_timer < 0.1 then set(fishka_9, 0) end




	
	
	
	
	
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