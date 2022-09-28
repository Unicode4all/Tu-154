-- this is before lineup checklist
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
defineProperty("course_ga_1", globalPropertyf("tu154ce/tks/course_ga_1")) -- курс на ГА1
defineProperty("course_ga_2", globalPropertyf("tu154ce/tks/course_ga_2")) -- курс на ГА2
defineProperty("course_bgmk_1", globalPropertyf("tu154ce/tks/course_bgmk_1")) -- курс на БГМК1
defineProperty("course_bgmk_2", globalPropertyf("tu154ce/tks/course_bgmk_2")) -- курс на БГМК2

defineProperty("pitot_heat_1", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_1")) -- обогрев ППД лев
defineProperty("pitot_heat_2", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_2")) -- обогрев ППД прав
defineProperty("pitot_heat_3", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_3")) -- обогрев ППД АБСУ

defineProperty("xpdr_mode", globalPropertyf("sim/cockpit/radios/transponder_mode"))

defineProperty("to_ready", globalPropertyi("tu154ce/checklist/to_ready")) -- лампа горит





local checklist_started = false
local stage = 0
local stage_status = 0 -- 0 question, 1+ - answers. 1 usually is false.

local speak_timer = 0

function checklist_5()

	--local passed = get(frame_time)
	
	--print(checklist_started)
	
	-- start the checklist
	if not checklist_started and get(checklist_selected) == 5 then 
		checklist_started = true 
		stage = 1
		
		-- declare checklist
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["takeoff_start"][lang], 2}
		speak_timer = 1
		
	end
	
	-- another checklist started
	if get(checklist_selected) ~= 5 then 
		checklist_started = false
		stage = 0
		stage_status = 0 
	end
	
	
	-- move stages
	if checklist_started then
		if stage == 1 and get(fishka_13) == 1 then 
			stage = 100 stage_status = 0 
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["checklist_completed"][lang], 2}
		end -- end checklist
	end
	
	
	
	------------------------------
	-- question 1. ready for takeoff --
	---------------------------------
	if stage == 1 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["ready_takeoff"][lang], 2}
			
			phrases_tbl[num+1] = {eng_tbl["ready"][lang], 1}
			
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer. Nav
		if stage_status == 1 and (math.abs(get(course_ga_1) - get(course_ga_2)) > 0.5 or math.abs(get(course_bgmk_1) - get(course_bgmk_2)) > 0.5) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer. Nav
		if (stage_status == 1 or stage_status == 2) and math.abs(get(course_ga_1) - get(course_ga_2)) < 0.5 and math.abs(get(course_bgmk_1) - get(course_bgmk_2)) < 0.5 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["TKS_ready"][lang], 2}
			local crs = math.floor(get(course_ga_1) + 0.5)
			while crs <= 0 do crs = crs + 360 end
			while crs > 360 do crs = crs - 360 end
			
			nav_say_num(crs, 3, lang)
			phrases_tbl[num+4] = {nav_tbl["ready"][lang], 2}
			
			
			speak_timer = 6
			stage_status = 3 -- next
		end
		
		-- false answer. Cop
		if stage_status == 1 and get(pitot_heat_1) + get(pitot_heat_2) + get(pitot_heat_3) < 3 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 4
		end		
		
		-- true answer. Cop
		if (stage_status == 3 or stage_status == 4) and get(pitot_heat_1) + get(pitot_heat_2) + get(pitot_heat_3) == 3 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["ready"][lang], 2}
		
			speak_timer = 3
			stage_status = 5 -- next
		end		
		
		
		-- false answer. Cpt
		if stage_status == 1 and (get(xpdr_mode) ~= 2 or get(to_ready) == 1) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 6
		end		
		
		-- true answer. Cpt
		if (stage_status == 5 or stage_status == 6) and get(xpdr_mode) == 2 and get(to_ready) == 0 then
			local num = find_empty()
			phrases_tbl[num] = {cpt_tbl["ready_to_takeoff"][lang], 5}
		
			speak_timer = 6
			stage_status = 10 -- finish
		end		
		
		
		
		
	
	end
	
	-- move fishka 13
	if stage == 1 and stage_status == 10 and speak_timer < 0.1 then set(fishka_13, 1) end

	
	
	
	
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