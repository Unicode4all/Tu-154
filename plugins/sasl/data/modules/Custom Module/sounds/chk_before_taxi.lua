-- this is before taxi checklist
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
defineProperty("gen_1_on", globalPropertyi("tu154ce/switchers/eng/gen_1_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_2_on", globalPropertyi("tu154ce/switchers/eng/gen_2_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_3_on", globalPropertyi("tu154ce/switchers/eng/gen_3_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл

defineProperty("bat1_on", globalPropertyi("tu154ce/switchers/eng/bat1_on")) -- батарея 1
defineProperty("bat2_on", globalPropertyi("tu154ce/switchers/eng/bat2_on")) -- батарея 2
defineProperty("bat3_on", globalPropertyi("tu154ce/switchers/eng/bat3_on")) -- батарея 3
defineProperty("bat4_on", globalPropertyi("tu154ce/switchers/eng/bat4_on")) -- батарея 4

defineProperty("gen_fail_1", globalPropertyf("tu154ce/lights/small/gen_fail_1")) -- генератор не работает
defineProperty("gen_fail_2", globalPropertyf("tu154ce/lights/small/gen_fail_2")) -- генератор не работает
defineProperty("gen_fail_3", globalPropertyf("tu154ce/lights/small/gen_fail_3")) -- генератор не работает

defineProperty("left_bus_use_bat", globalPropertyf("tu154ce/lights/small/left_bus_use_bat")) -- левая сеть от батарей
defineProperty("right_bus_use_bat", globalPropertyf("tu154ce/lights/small/right_bus_use_bat")) -- правая сеть от батарей

defineProperty("sard_cabin_press_set", globalPropertyf("tu154ce/switchers/sard/sard_cabin_press_set")) -- установка давления в кабине
defineProperty("skv_bleed_fail_1", globalPropertyf("tu154ce/lights/small/skv_bleed_fail_1")) -- отказ отбора
defineProperty("skv_bleed_fail_2", globalPropertyf("tu154ce/lights/small/skv_bleed_fail_2")) -- отказ отбора
defineProperty("skv_bleed_fail_3", globalPropertyf("tu154ce/lights/small/skv_bleed_fail_3")) -- отказ отбора

defineProperty("skv_bleed_closed_1", globalPropertyf("tu154ce/lights/small/skv_bleed_closed_1")) -- отбор закрыт
defineProperty("skv_bleed_closed_2", globalPropertyf("tu154ce/lights/small/skv_bleed_closed_2")) -- отбор закрыт
defineProperty("skv_bleed_closed_3", globalPropertyf("tu154ce/lights/small/skv_bleed_closed_3")) -- отбор закрыт

defineProperty("nvu_on_lit", globalPropertyf("tu154ce/lights/small/nvu_on")) -- НВУ испр

defineProperty("nav1_pow_cc", globalPropertyf("tu154ce/radio/nav1_pow_cc"))
defineProperty("nav2_pow_cc", globalPropertyf("tu154ce/radio/nav2_pow_cc"))

defineProperty("ark15_L_cc", globalPropertyf("tu154ce/radio/ark15_L_cc")) -- потребление тока АРК
defineProperty("ark15_R_cc", globalPropertyf("tu154ce/radio/ark15_R_cc")) -- потребление тока АРК

defineProperty("xpdr_mode", globalPropertyf("sim/cockpit/radios/transponder_mode"))

defineProperty("buster_on_1", globalPropertyi("tu154ce/switchers/console/buster_on_1")) -- выключатель бустера
defineProperty("buster_on_2", globalPropertyi("tu154ce/switchers/console/buster_on_2")) -- выключатель бустера
defineProperty("buster_on_3", globalPropertyi("tu154ce/switchers/console/buster_on_3")) -- выключатель бустера
defineProperty("busters_cap", globalPropertyi("tu154ce/switchers/console/busters_cap")) -- крышка выключателей бустеров
defineProperty("contr_force_set", globalPropertyi("tu154ce/controll/contr_force_set")) -- переключатель загружателя РВ РН. -1 - полет, 0 авто, +1 - взлет-посадка

defineProperty("mgv_contr_fail", globalPropertyi("tu154ce/bkk/mgv_contr_fail")) -- сигнал с БКК - отказ МГВ контр
defineProperty("pkp_fail_left", globalPropertyi("tu154ce/bkk/pkp_fail_left")) -- сигнал с БКК - отказ левого ПКП
defineProperty("pkp_fail_right", globalPropertyi("tu154ce/bkk/pkp_fail_right")) -- сигнал с БКК - отказ левого ПКП	
defineProperty("pitch_corr_hdl_1", globalPropertyf("tu154ce/gauges/ahz/pitch_corr_L")) -- коррекция тангажа на АГР + вправо
defineProperty("pitch_corr_hdl_2", globalPropertyf("tu154ce/gauges/ahz/pitch_corr_R")) -- коррекция тангажа на АГР + вправо

defineProperty("course_ga_1", globalPropertyf("tu154ce/tks/course_ga_1")) -- курс на ГА1
defineProperty("course_ga_2", globalPropertyf("tu154ce/tks/course_ga_2")) -- курс на ГА2
defineProperty("course_bgmk_1", globalPropertyf("tu154ce/tks/course_bgmk_1")) -- курс на БГМК1
defineProperty("course_bgmk_2", globalPropertyf("tu154ce/tks/course_bgmk_2")) -- курс на БГМК2

defineProperty("absu_work", globalPropertyf("tu154ce/lights/absu_work")) -- испр АБСУ
defineProperty("absu_roll_mode", globalPropertyi("tu154ce/gauges/console/absu_roll_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
defineProperty("absu_pitch_mode", globalPropertyi("tu154ce/gauges/console/absu_pitch_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб

defineProperty("window_heat_1", globalPropertyi("tu154ce/switchers/ovhd/window_heat_1")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_2", globalPropertyi("tu154ce/switchers/ovhd/window_heat_2")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_3", globalPropertyi("tu154ce/switchers/ovhd/window_heat_3")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно






local checklist_started = false
local stage = 0
local stage_status = 0 -- 0 question, 1+ - answers. 1 usually is false.

local speak_timer = 0

function checklist_2()

	--local passed = get(frame_time)
	
	--print(checklist_started)
	
	-- start the checklist
	if not checklist_started and get(checklist_selected) == 2 then 
		checklist_started = true 
		stage = 1
		
		-- declare checklist
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["before_taxiing"][lang], 2}
		speak_timer = 2
		
	end
	
	-- another checklist started
	if get(checklist_selected) ~= 2 then 
		checklist_started = false
		stage = 0
		stage_status = 0 
	end

	-- move stages
	if checklist_started then
		if stage == 1 and get(fishka_11) == 0 then stage = 2 stage_status = 0 end -- move further if cap is closed
		if stage == 2 and get(fishka_12) == 0 then stage = 3 stage_status = 0 end -- move further if cap is closed
		if stage == 3 and get(fishka_13) == 0 then stage = 4 stage_status = 0 end -- move further if cap is closed
		if stage == 4 and get(fishka_14) == 0 then stage = 5 stage_status = 0 end -- move further if cap is closed
		if stage == 5 and get(fishka_15) == 0 then stage = 6 stage_status = 0 end -- move further if cap is closed
		if stage == 6 and get(fishka_16) == 0 then stage = 7 stage_status = 0 end -- move further if cap is closed
		if stage == 7 and get(fishka_17) == 0 then stage = 8 stage_status = 0 end -- move further if cap is closed
		if stage == 8 and get(fishka_18) == 0 then stage = 9 stage_status = 0 end -- move further if cap is closed
		if stage == 9 and get(fishka_19) == 0 then stage = 10 stage_status = 0 end -- move further if cap is closed
		if stage == 10 and get(fishka_20) == 0 then 
			stage = 100 stage_status = 0 
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["checklist_completed"][lang], 2}
		end -- end checklist
	end


	
	
	------------------------------
	-- question 1. Electric system --
	---------------------------------
	if stage == 1 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["elektro_system"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(gen_1_on) + get(gen_2_on) + get(gen_3_on) ~= 3 or get(bat1_on) + get(bat2_on) + get(bat3_on) + get(bat4_on) ~= 4
			or get(gen_fail_1) + get(gen_fail_2) + get(gen_fail_3) > 0 or get(left_bus_use_bat) + get(right_bus_use_bat) > 0) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(gen_1_on) + get(gen_2_on) + get(gen_3_on) == 3 and get(bat1_on) + get(bat2_on) + get(bat3_on) + get(bat4_on) == 4
			and get(gen_fail_1) + get(gen_fail_2) + get(gen_fail_3) == 0 and get(left_bus_use_bat) + get(right_bus_use_bat) == 0 then
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["chk_on"][lang], 2}
			
			speak_timer = 2
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 11
	if stage == 1 and stage_status == 10 and speak_timer < 0.1 then set(fishka_11, 0) end	
	
	
	
	------------------------------
	-- question 2. SRD --
	---------------------------------
	if stage == 2 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["SRD"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (math.abs(get(sard_cabin_press_set) - 650) > 10 or get(skv_bleed_fail_1) + get(skv_bleed_fail_2) + get(skv_bleed_fail_3) +
			get(skv_bleed_closed_1) + get(skv_bleed_closed_2) + get(skv_bleed_closed_3) > 0) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and math.abs(get(sard_cabin_press_set) - 650) <= 10 and get(skv_bleed_fail_1) + get(skv_bleed_fail_2) + get(skv_bleed_fail_3) +
			get(skv_bleed_closed_1) + get(skv_bleed_closed_2) + get(skv_bleed_closed_3) == 0 then
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["press_650_set"][lang], 3}
			
			speak_timer = 4
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 12
	if stage == 2 and stage_status == 10 and speak_timer < 0.1 then set(fishka_12, 0) end	
	
	
	------------------------------
	-- question 3. NAV complex --
	---------------------------------
	if stage == 3 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["navigation_complex"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(nvu_on_lit) == 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(nvu_on_lit) > 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["switch_on"][lang], 2}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 13
	if stage == 3 and stage_status == 10 and speak_timer < 0.1 then set(fishka_13, 0) end	
	
	
	
	
	------------------------------
	-- question 4. CoursMP, NDB --
	---------------------------------
	if stage == 4 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["course_mp_ark"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(nvu_on_lit) == 0 and (get(nav1_pow_cc) == 0 or get(nav2_pow_cc) == 0 or get(ark15_L_cc) == 0 or get(ark15_R_cc) == 0) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(nav1_pow_cc) > 0 and get(nav2_pow_cc) > 0 and get(ark15_L_cc) > 0 and get(ark15_R_cc) > 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["switch_on_1"][lang], 2}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 14
	if stage == 4 and stage_status == 10 and speak_timer < 0.1 then set(fishka_14, 0) end		
	
	
	
	
	------------------------------
	-- question 5. SQUAWK --
	---------------------------------
	if stage == 5 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["UVD"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(xpdr_mode) == 0 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(xpdr_mode) > 0 then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["turned_on"][lang], 2}
			
			speak_timer = 2
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 15
	if stage == 5 and stage_status == 10 and speak_timer < 0.1 then set(fishka_15, 0) end	
	
	
	
	---------------------------------
	-- question 6. Busters --
	---------------------------------
	if stage == 6 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["booster"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(busters_cap) == 1 or get(contr_force_set) ~= 0) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(busters_cap) == 0 and get(contr_force_set) == 0 then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["turned_on_cap_closed_auto"][lang], 3}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 16
	if stage == 6 and stage_status == 10 and speak_timer < 0.1 then set(fishka_16, 0) end		
	
	
	
	---------------------------------
	-- question 7. Horizons --
	---------------------------------
	if stage == 7 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["air_horizons"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(mgv_contr_fail) == 1 or get(pkp_fail_left) == 1 or get(pkp_fail_right) == 1 or
			math.abs(get(pitch_corr_hdl_1)) > 0.1 or math.abs(get(pitch_corr_hdl_2)) > 0.1) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(mgv_contr_fail) == 0 and get(pkp_fail_left) == 0 and get(pkp_fail_right) == 0 and
			math.abs(get(pitch_corr_hdl_1)) < 0.1 and math.abs(get(pitch_corr_hdl_2)) < 0.1 then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["check_lines_fit"][lang], 2}
			phrases_tbl[num+1] = {cop_tbl["chk_lines_up"][lang], 2}
			
			speak_timer = 5
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 17
	if stage == 7 and stage_status == 10 and speak_timer < 0.1 then set(fishka_17, 0) end	



	---------------------------------
	-- question 8. TKS --
	---------------------------------
	if stage == 8 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["TKS"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (math.abs(get(course_ga_1) - get(course_ga_2)) >= 0.5 or math.abs(get(course_bgmk_1) - get(course_bgmk_2)) >= 0.5) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and math.abs(get(course_ga_1) - get(course_ga_2)) < 0.5 and math.abs(get(course_bgmk_1) - get(course_bgmk_2)) < 0.5 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["switch_on_agreed"][lang], 3}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 18
	if stage == 8 and stage_status == 10 and speak_timer < 0.1 then set(fishka_18, 0) end




	---------------------------------
	-- question 9. ABSU --
	---------------------------------
	if stage == 9 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["ABSU"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(absu_work) == 0 or get(absu_roll_mode) ~= 1 or get(absu_pitch_mode) ~= 1) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(absu_work) == 1 and get(absu_roll_mode) == 1 and get(absu_pitch_mode) == 1 then
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["absu_ok"][lang], 3}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 19
	if stage == 9 and stage_status == 10 and speak_timer < 0.1 then set(fishka_19, 0) end


	---------------------------------
	-- question 10. Deicers --
	---------------------------------
	if stage == 10 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["deicing"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 3 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and (get(window_heat_1) + get(window_heat_2) + get(window_heat_3) > -3) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and get(window_heat_1) + get(window_heat_2) + get(window_heat_3) == -3 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["turned_on_2"][lang], 1}
			
			speak_timer = 2
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 19
	if stage == 10 and stage_status == 10 and speak_timer < 0.1 then set(fishka_20, 0) end	
	
	
	
	
	
	
	
	


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





end