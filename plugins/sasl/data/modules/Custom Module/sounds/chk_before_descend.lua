-- this is before descend checklist
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

-- Source

defineProperty("cg_pos_actual", globalPropertyf("tu154ce/misc/cg_pos_actual")) -- актуальное положение CG
defineProperty("weight_actual", globalPropertyf("tu154ce/misc/weight_actual")) -- актуальная масса

defineProperty("course_mk_1", globalPropertyf("tu154ce/tks/course_mk_1")) -- курс на MK5
defineProperty("course_mk_2", globalPropertyf("tu154ce/tks/course_mk_2")) -- курс на MK5

defineProperty("course_ga_1", globalPropertyf("tu154ce/tks/course_ga_1")) -- курс на ГА1
defineProperty("course_ga_2", globalPropertyf("tu154ce/tks/course_ga_2")) -- курс на ГА2

defineProperty("radioalt_dh_left", globalPropertyf("tu154ce/gauges/alt/radioalt_dh_left")) -- стрелка ВПР радиовысотомера КВС

defineProperty("fuel_meter_summ", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_summ")) -- сумарная масса топлива










local angle2alt = {
{-100000, 0},
{0, 0},
{30, 20},
{80, 50},
{160, 100},
{314, 700},
{340, 800},
{8000000, 1000}
}


local checklist_started = false
local stage = 0
local stage_status = 0 -- 0 question, 1+ - answers. 1 usually is false.

local speak_timer = 0

function checklist_6()

	--local passed = get(frame_time)
	
	--print(checklist_started)
	
	-- start the checklist
	if not checklist_started and get(checklist_selected) == 6 then 
		checklist_started = true 
		stage = 1
		
		-- declare checklist
		local num = find_empty()
		phrases_tbl[num] = {nav_tbl["TOD"][lang], 2}
		speak_timer = 2
		
	end
	
	-- another checklist started
	if get(checklist_selected) ~= 6 then 
		checklist_started = false
		stage = 0
		stage_status = 0 
	end
	
	-- move stages
	if checklist_started then
		if stage == 1 and get(fishka_8) == 0 then stage = 2 stage_status = 0 end -- move further if cap is closed
		if stage == 2 and get(fishka_9) == 0 then stage = 3 stage_status = 0 end -- move further if cap is closed
		if stage == 3 and get(fishka_10) == 0 then stage = 4 stage_status = 0 end -- move further if cap is closed
		if stage == 4 and get(fishka_11) == 0 then stage = 5 stage_status = 0 end -- move further if cap is closed
		if stage == 5 and get(fishka_12) == 0 then 
			stage = 100 stage_status = 0 
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["checklist_completed"][lang], 2}
		end -- end checklist
	end
	--print(stage)
	
	---------------------------------
	-- question 1. Charts --
	---------------------------------
	if stage == 1 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["plan"][lang], 1}
	
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
			phrases_tbl[num] = {cpt_tbl["read"][lang], 2}
			
			speak_timer = 3
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 8
	if stage == 1 and stage_status == 10 and speak_timer < 0.1 then set(fishka_8, 0) end


	---------------------------------
	-- question 2. Landing data --
	---------------------------------
	if stage == 2 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["landing_date"][lang], 2}
	
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
			phrases_tbl[num] = {cop_tbl["weight"][lang], 1}
			
			cop_say_num(math.floor(get(weight_actual)/1000 + 0.5), 3, lang)
			
			phrases_tbl[num+4] = {cop_tbl["cg_pos"][lang], 1}
			
			cop_say_num(math.floor(get(cg_pos_actual)+0.5), 2, lang)
			
			speak_timer = 5
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 9
	if stage == 2 and stage_status == 10 and speak_timer < 0.1 then set(fishka_9, 0) end

	

	---------------------------------
	-- question 3. TKS --
	---------------------------------
	if stage == 3 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["TKS"][lang], 1}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		-- false answer
		if stage_status == 1 and get(mars_on) ~= 1 and (math.abs(get(course_mk_1) - get(course_ga_1)) > 3 or math.abs(get(course_mk_2) - get(course_ga_2)) > 3) then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and math.abs(get(course_mk_1) - get(course_ga_1)) < 3 and math.abs(get(course_mk_2) - get(course_ga_2)) < 3 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["TKS_aligned"][lang], 5}
			
			speak_timer = 6
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 10
	if stage == 3 and stage_status == 10 and speak_timer < 0.1 then set(fishka_10, 0) end




	---------------------------------
	-- question 4. RV setting --
	---------------------------------
	if stage == 4 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["RV"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		local DH = interpolate(angle2alt, get(radioalt_dh_left))
		
		-- false answer
		if stage_status == 1 and get(mars_on) ~= 1 and DH < 400 then
			-- say false answer once
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["fail_"..math.random(1,5)][lang], 1}
			speak_timer = 1
			stage_status = 2
		end
		
		-- true answer
		if (stage_status == 1 or stage_status == 2) and DH >= 400 then
			local num = find_empty()
			phrases_tbl[num] = {cop_tbl["rv_setting"][lang], 1}
			
			cop_say_num(math.floor(DH/10+0.5)*10, 3, lang)
			
			speak_timer = 4
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 11
	if stage == 4 and stage_status == 10 and speak_timer < 0.1 then set(fishka_11, 0) end



	---------------------------------
	-- question 5. Fuel --
	---------------------------------
	if stage == 5 and speak_timer == 0 then
		
		-- ask question
		if stage_status == 0 then
			local num = find_empty()
			phrases_tbl[num] = {nav_tbl["fuel_quantity"][lang], 2}
	
			stage_status = 1 -- question asked
			speak_timer = 2 -- set up time before answer
		end
		
		local DH = interpolate(angle2alt, get(radioalt_dh_left))
		--[[
		-- false answer
		if stage_status == 1 and get(mars_on) ~= 1 and DH < 400 then
			-- say false answer once
			stage_status = 2
		end
		-=]]
		-- true answer
		if (stage_status == 1 or stage_status == 2) then
			
			eng_say_num(math.floor(get(fuel_meter_summ) * 0.001 + 0.5), 2, lang)
			
			local num = find_empty()
			phrases_tbl[num] = {eng_tbl["tonns"][lang], 1}
			
			speak_timer = 4
			stage_status = 10 -- finish
		end
		
	
	end
	
	-- move fishka 12
	if stage == 5 and stage_status == 10 and speak_timer < 0.1 then set(fishka_12, 0) end


	
	
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