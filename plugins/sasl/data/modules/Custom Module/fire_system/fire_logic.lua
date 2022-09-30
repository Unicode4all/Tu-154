-- this is fire system's logic

-- sim variables
defineProperty("sim_engine_on_fire1", globalPropertyi("sim/operation/failures/rel_engfir0"))  -- left engine on fire
defineProperty("sim_engine_on_fire2", globalPropertyi("sim/operation/failures/rel_engfir1"))  -- mid engine on fire
defineProperty("sim_engine_on_fire3", globalPropertyi("sim/operation/failures/rel_engfir2"))  -- right engine on fire


defineProperty("sim_engine_ext1", globalProperty("sim/cockpit2/engine/actuators/fire_extinguisher_on[0]"))  -- left engine fire extinguiher
defineProperty("sim_engine_ext2", globalProperty("sim/cockpit2/engine/actuators/fire_extinguisher_on[1]"))  -- mid engine fire extinguiher
defineProperty("sim_engine_ext3", globalProperty("sim/cockpit2/engine/actuators/fire_extinguisher_on[2]"))  -- right engine fire extinguiher

-- controls
defineProperty("lamp_test", globalPropertyi("tu154ce/buttons/lamp_test_fire_panel")) -- кнопка проверки ламп на пожарной панели	0
defineProperty("smoke_test", globalPropertyi("tu154ce/buttons/eng/smoke_test")) -- проверка датчиков дыма
defineProperty("ext_test", globalPropertyi("tu154ce/buttons/eng/ext_test")) -- проверка огнетушителей


defineProperty("fire_ext_1", globalPropertyi("tu154ce/buttons/eng/fire_ext_1")) -- очередь тушения пожара
defineProperty("fire_ext_2", globalPropertyi("tu154ce/buttons/eng/fire_ext_2")) -- очередь тушения пожара
defineProperty("fire_ext_3", globalPropertyi("tu154ce/buttons/eng/fire_ext_3")) -- очередь тушения пожара
defineProperty("cold_eng_1", globalPropertyi("tu154ce/buttons/eng/cold_eng_1")) -- подача хладона
defineProperty("cold_eng_2", globalPropertyi("tu154ce/buttons/eng/cold_eng_2")) -- подача хладона
defineProperty("cold_eng_3", globalPropertyi("tu154ce/buttons/eng/cold_eng_3")) -- подача хладона
defineProperty("cold_apu", globalPropertyi("tu154ce/buttons/eng/cold_apu")) -- подача хладона
defineProperty("neutral_gas", globalPropertyi("tu154ce/buttons/eng/neutral_gas")) -- нейтральный газ

defineProperty("fire_sensor_sel", globalPropertyi("tu154ce/switchers/eng/fire_sensor_sel")) -- выбор группы датчиков
defineProperty("fire_place_sel", globalPropertyi("tu154ce/switchers/eng/fire_place_sel")) -- выбор отсека

defineProperty("fire_main_switch", globalPropertyi("tu154ce/switchers/eng/fire_main_switch")) -- выключатель пожарной системы
defineProperty("fire_buzzer", globalPropertyi("tu154ce/switchers/eng/fire_buzzer")) -- пожарная сирена

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("fire_sys_cc", globalPropertyf("tu154ce/fire/fire_sys_cc")) -- потребление тока пожарной системой



-- results
defineProperty("ext_used_1", globalPropertyi("tu154ce/fire/ext_used_1")) -- огнетушитель использован
defineProperty("ext_used_2", globalPropertyi("tu154ce/fire/ext_used_2")) -- огнетушитель использован
defineProperty("ext_used_3", globalPropertyi("tu154ce/fire/ext_used_3")) -- огнетушитель использован

defineProperty("ng_used", globalPropertyi("tu154ce/fire/ng_used")) -- НГ использован

defineProperty("valve_open_1", globalPropertyi("tu154ce/fire/valve_open_1")) -- кран тушения двиг 1
defineProperty("valve_open_2", globalPropertyi("tu154ce/fire/valve_open_2")) -- кран тушения двиг 2
defineProperty("valve_open_3", globalPropertyi("tu154ce/fire/valve_open_3")) -- кран тушения двиг 3
defineProperty("valve_open_4", globalPropertyi("tu154ce/fire/valve_open_4")) -- кран тушения ВСУ

defineProperty("engine_fire_state_1", globalPropertyi("tu154ce/fire/engine_fire_state_1")) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
defineProperty("engine_fire_state_2", globalPropertyi("tu154ce/fire/engine_fire_state_2")) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
defineProperty("engine_fire_state_3", globalPropertyi("tu154ce/fire/engine_fire_state_3")) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
defineProperty("engine_fire_state_4", globalPropertyi("tu154ce/fire/engine_fire_state_4")) -- состояние ВСУ. 0 - норм, 1 - перегрев, 2 - пожар

defineProperty("fire_detected", globalPropertyi("tu154ce/fire/fire_detected")) -- обнаружен пожар

defineProperty("fire_siren", globalPropertyi("tu154ce/fire/fire_siren")) -- работа сирены



defineProperty("fire_vlv_open_1", globalPropertyf("tu154ce/fuel/fire_vlv_open_1")) -- пожарный кран открыт
defineProperty("fire_vlv_open_2", globalPropertyf("tu154ce/fuel/fire_vlv_open_2")) -- пожарный кран открыт
defineProperty("fire_vlv_open_3", globalPropertyf("tu154ce/fuel/fire_vlv_open_3")) -- пожарный кран открыт



defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local valve_1 = get(valve_open_1)
local valve_2 = get(valve_open_2)
local valve_3 = get(valve_open_3)
local valve_4 = get(valve_open_4)

local valves_open = 0 -- open valves counter


set(sim_engine_ext1, 0)
set(sim_engine_ext2, 0)
set(sim_engine_ext3, 0)


function update()

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	



	local power27L = get(bus27_volt_left) > 13
	local power27R = get(bus27_volt_right) > 13
	
	if power27L and get(fire_main_switch) == 1 then
		
		-- set destination manually
		if get(cold_eng_1) == 1 then valve_1 = 1 end
		if get(cold_eng_2) == 1 then valve_2 = 1 end
		if get(cold_eng_3) == 1 then valve_3 = 1 end
		if get(cold_apu) == 1 then valve_4 = 1 end
		
		-- set destination automatically
		local fire_1 = get(sim_engine_on_fire1) == 6
		local fire_2 = get(sim_engine_on_fire2) == 6
		local fire_3 = get(sim_engine_on_fire3) == 6
		
		if fire_1 then valve_1 = 1 end
		if fire_2 then valve_2 = 1 end
		if fire_3 then valve_3 = 1 end
		
		-- use neutral gas
		if get(neutral_gas) == 1 then set(ng_used, 1) end
		
		-- extinguishers work
		valves_open = valve_1 + valve_2 + valve_3 + valve_4
		
		local ext_1_ready = get(ext_used_1) == 0
		local ext_2_ready = get(ext_used_2) == 0
		local ext_3_ready = get(ext_used_3) == 0
		
		local fire_1_but = get(fire_ext_1) == 1
		local fire_2_but = get(fire_ext_2) == 1
		local fire_3_but = get(fire_ext_3) == 1
		
		-- engine 1
		if valve_1 == 1 then
			if ext_1_ready and (get(fire_vlv_open_1) < 0.5 or fire_1_but)then -- automatically use ext 1 or by button
				set(ext_used_1, 1) -- use extinguisher
				set(sim_engine_ext1, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire1, 0) -- remove fire fail
				end
			end
			
			if ext_2_ready and fire_2_but then -- use ext 2
				set(ext_used_2, 1) -- use extinguisher
				set(sim_engine_ext1, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire1, 0) -- remove fire fail
				end
			end

			if ext_3_ready and fire_3_but then -- use ext 3
				set(ext_used_3, 1) -- use extinguisher
				set(sim_engine_ext1, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire1, 0) -- remove fire fail
				end
			end
			
		end


		-- engine 2
		if valve_2 == 1 then
			if ext_1_ready and (get(fire_vlv_open_2) < 0.5 or fire_1_but)then -- automatically use ext 1 or by button
				set(ext_used_1, 1) -- use extinguisher
				set(sim_engine_ext2, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire2, 0) -- remove fire fail
				end
			end
			
			if ext_2_ready and fire_2_but then -- use ext 2
				set(ext_used_2, 1) -- use extinguisher
				set(sim_engine_ext2, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire2, 0) -- remove fire fail
				end
			end

			if ext_3_ready and fire_3_but then -- use ext 3
				set(ext_used_3, 1) -- use extinguisher
				set(sim_engine_ext2, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire2, 0) -- remove fire fail
				end
			end
			
		end		

		
		-- engine 3
		if valve_3 == 1 then
			if ext_1_ready and (get(fire_vlv_open_3) < 0.5 or fire_1_but)then -- automatically use ext 1 or by button
				set(ext_used_1, 1) -- use extinguisher
				set(sim_engine_ext3, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire3, 0) -- remove fire fail
				end
			end
			
			if ext_2_ready and fire_2_but then -- use ext 2
				set(ext_used_2, 1) -- use extinguisher
				set(sim_engine_ext3, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire3, 0) -- remove fire fail
				end
			end

			if ext_3_ready and fire_3_but then -- use ext 3
				set(ext_used_3, 1) -- use extinguisher
				set(sim_engine_ext3, 1)
				if math.random() < 0.98 / valves_open then 
					set(sim_engine_on_fire3, 0) -- remove fire fail
				end
			end
			
		end	
		
		-- same way for APU
		
		
		
		-- fire siren
		if fire_1 or fire_2 or fire_3 or get(smoke_test) == 1 then
			set(fire_detected, 1)
			set(fire_siren, get(fire_buzzer))
		
		else
			set(fire_detected, 0)
			set(fire_siren, 0)
		end
		
		if fire_1 then set(engine_fire_state_1, 2)
		else set(engine_fire_state_1, 0) end
		
		if fire_2 then set(engine_fire_state_2, 2)
		else set(engine_fire_state_2, 0) end
		
		if fire_3 then set(engine_fire_state_3, 2)
		else set(engine_fire_state_3, 0) end
		
		--[[if fire_4 then set(engine_fire_state_4, 2)
		else set(engine_fire_state_4, 0) end--]]
		
		set(fire_sys_cc, 0.8)
	else
		-- reset valves state
		valve_1 = 0
		valve_2 = 0
		valve_3 = 0
		valve_4 = 0
		
		valves_open = 0
		
		set(fire_detected, 0)
		set(fire_siren, 0)	
		
		set(engine_fire_state_1, 0)
		set(engine_fire_state_2, 0)
		set(engine_fire_state_3, 0)
		set(engine_fire_state_4, 0)
		
		set(fire_sys_cc, 0)
	end
	
	



	--set results
	set(valve_open_1, valve_1)
	set(valve_open_2, valve_2)
	set(valve_open_3, valve_3)
	set(valve_open_4, valve_4)

end

end