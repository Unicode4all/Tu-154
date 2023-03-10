-- this is starting logic

-- controls
defineProperty("starter_cap", globalPropertyi("tu154ce/switchers/eng/starter_cap")) -- крышка панели запуска
defineProperty("starter_switch", globalPropertyi("tu154ce/switchers/eng/starter_switch")) -- выключатель запуска
defineProperty("starter_eng_select", globalPropertyi("tu154ce/switchers/eng/starter_eng_select")) -- выбор двигателя
defineProperty("starter_mode", globalPropertyi("tu154ce/switchers/eng/starter_mode")) -- режим запуска

defineProperty("starter_start", globalPropertyi("tu154ce/buttons/eng/starter_start")) -- кнопка запуска
defineProperty("starter_stop", globalPropertyi("tu154ce/buttons/eng/starter_stop")) -- преркащения запуска

defineProperty("flight_start_1", globalPropertyi("tu154ce/buttons/eng/flight_start_1")) -- запуск в полете
defineProperty("flight_start_2", globalPropertyi("tu154ce/buttons/eng/flight_start_2")) -- запуск в полете
defineProperty("flight_start_3", globalPropertyi("tu154ce/buttons/eng/flight_start_3")) -- запуск в полете

-- default datarefs and commands
defineProperty("sim_igniter1", globalProperty("sim/cockpit2/engine/actuators/igniter_on[0]")) -- igniters on/off
defineProperty("sim_igniter2", globalProperty("sim/cockpit2/engine/actuators/igniter_on[1]")) -- igniters on/off
defineProperty("sim_igniter3", globalProperty("sim/cockpit2/engine/actuators/igniter_on[2]")) -- igniters on/off

defineProperty("sim_ignition1", globalProperty("sim/cockpit2/engine/actuators/ignition_on[0]")) -- ignition on/off
defineProperty("sim_ignition2", globalProperty("sim/cockpit2/engine/actuators/ignition_on[1]")) -- ignition on/off
defineProperty("sim_ignition3", globalProperty("sim/cockpit2/engine/actuators/ignition_on[2]")) -- ignition on/off

defineProperty("sim_starter1", globalProperty("sim/cockpit/engine/starter_duration[1]")) -- time of starter work
defineProperty("sim_starter2", globalProperty("sim/cockpit/engine/starter_duration[0]")) -- time of starter work
defineProperty("sim_starter3", globalProperty("sim/cockpit/engine/starter_duration[2]")) -- time of starter work

defineProperty("sim_start1", globalProperty("sim/flightmodel2/engines/starter_making_torque[1]")) -- time of starter work
defineProperty("sim_start2", globalProperty("sim/flightmodel2/engines/starter_making_torque[0]")) -- time of starter work
defineProperty("sim_start3", globalProperty("sim/flightmodel2/engines/starter_making_torque[2]")) -- time of starter work

starter_1 = findCommand("sim/starters/engage_starter_1")  -- simulator command for starter 1
starter_2 = findCommand("sim/starters/engage_starter_2")  -- simulator command for starter 2
starter_3 = findCommand("sim/starters/engage_starter_3")  -- simulator command for starter 3



-- sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("apu_air_doors", globalPropertyf("tu154ce/eng/apu_air_doors")) -- положение створок для накачки воздуха
defineProperty("apu_n1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ

defineProperty("eng_rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))   
defineProperty("eng_rpm2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("eng_rpm3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))

defineProperty("eng_work1", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]"))
defineProperty("eng_work2", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]"))
defineProperty("eng_work3", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]"))

defineProperty("eng_airvalve_1", globalPropertyf("tu154ce/bleed/eng_airvalve_1")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_2", globalPropertyf("tu154ce/bleed/eng_airvalve_2")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_3", globalPropertyf("tu154ce/bleed/eng_airvalve_3")) -- открытие отбора воздуха от двигателя

defineProperty("tank1_1", globalPropertyi("tu154ce/fuel/pump_tank1_1_work"))
defineProperty("tank1_2", globalPropertyi("tu154ce/fuel/pump_tank1_2_work"))
defineProperty("tank1_3", globalPropertyi("tu154ce/fuel/pump_tank1_3_work"))
defineProperty("tank1_4", globalPropertyi("tu154ce/fuel/pump_tank1_4_work"))

defineProperty("auto_tanks_turn", globalPropertyi("tu154ce/fuel/auto_tanks_turn")) -- 0 = none, 1 = 2, 2 = 2+3, 3 = 3, 4 = 4
defineProperty("fuel_flow_mode", globalPropertyi("tu154ce/switchers/fuel/fuel_flow_mode")) -- режим расходомера. ручное - автомат


-- caps
defineProperty("engine_caps", globalPropertyi("tu154ce/anim/engine_caps"))  -- чехлы и крышки


-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time
defineProperty("sim_run_time", globalPropertyf("sim/time/total_running_time_sec")) -- sim time

-- results
defineProperty("starter_pressure", globalPropertyf("tu154ce/start/starter_pressure")) -- двление в системе запуска

defineProperty("apd_working_1", globalPropertyf("tu154ce/start/apd_working_1")) -- работа системы запуска
defineProperty("apd_working_2", globalPropertyf("tu154ce/start/apd_working_2")) -- работа системы запуска
defineProperty("apd_working_3", globalPropertyf("tu154ce/start/apd_working_3")) -- работа системы запуска

defineProperty("start_sys_work", globalPropertyf("tu154ce/start/start_sys_work")) -- работа системы запуска

defineProperty("fuel_in_1", globalPropertyi("tu154ce/start/fuel_in_1")) -- подача топлива от системы запуска
defineProperty("fuel_in_2", globalPropertyi("tu154ce/start/fuel_in_2")) -- подача топлива от системы запуска
defineProperty("fuel_in_3", globalPropertyi("tu154ce/start/fuel_in_3")) -- подача топлива от системы запуска


-------------
starter_torq = globalPropertyf("sim/aircraft/engine/acf_starter_torque_ratio") -- мощность стартера. 0.18 для нормального запуска
defineProperty("starter_rpm", globalPropertyf("sim/aircraft/engine/acf_starter_max_rpm_ratio")) -- макс обороты стартера 0-1
defineProperty("jet_spoolup_time", globalPropertyf("sim/aircraft/engine/acf_spooltime_jet")) -- время раскрутки двигателя. 5 сек по дефолту


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- XP11 workaround

defineProperty("APU_switch", globalPropertyf("sim/cockpit/engine/APU_switch")) -- APU starter switch 0 = off, 1 = on, 2 = start
defineProperty("APU_running", globalPropertyf("sim/cockpit/engine/APU_running")) -- boolean	APU running - 1 = on, 0 = off.
defineProperty("APU_N1", globalPropertyf("sim/cockpit/engine/APU_N1"))

defineProperty("apu_bleed", globalPropertyf("sim/cockpit2/bleedair/actuators/apu_bleed"))



-- XP 11.10 fix
defineProperty("sim_vers", globalPropertyi("sim/version/xplane_internal_version")) -- версия сима

asu_press = globalPropertyf("tu154ce/asu/press")

bleed_available_center = globalPropertyf("sim/cockpit2/bleedair/indicators/bleed_available_center")
bleed_available_left = globalPropertyf("sim/cockpit2/bleedair/indicators/bleed_available_left")
bleed_available_right = globalPropertyf("sim/cockpit2/bleedair/indicators/bleed_available_right")
--if get(sim_vers) then
--	if get(sim_vers) >= 111000 then
--		set(starter_torq, 0.2)
--	end
--end
set(starter_torq, 0.18)
set(jet_spoolup_time, 5)
set(starter_rpm, 0.24)





--[[
sim/aircraft/engine/acf_starter_torque_ratio	float	y	Ratio	This is the ratio of the engine's maximum torque that the starter applies at its design RPM.
sim/aircraft/engine/acf_starter_max_rpm_ratio	float	y	Ratio	This is the ratio of the engine's max RPM that the starter can spin the engine up to before it loses torque.
--]]

local time_last = get(sim_run_time)  -- time for previous frame

local eng1_start_time = time_last - 100
local eng2_start_time = time_last - 100
local eng3_start_time = time_last - 100

local eng1_starting = false
local eng2_starting = false
local eng3_starting = false

local eng1_starting_air = false
local eng2_starting_air = false
local eng3_starting_air = false

local eng1_rpm_check = false
local eng2_rpm_check = false
local eng3_rpm_check = false

commandEnd(starter_1)
commandEnd(starter_2)
commandEnd(starter_3)

local start_button_pressed = false
local starter_press = 0

local select_last = get(starter_eng_select)

local START_SEQ_TIME = 56 -- overal time for start sequence
local RPM_FOR_FUEL_IN = 16 -- RPM, when fuel opens into engine
local RPM_FOR_IGNITER = 20 -- RPM, when igniters start working
local RPM_APD_OFF = 47

local eng_start_press_t = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- zero pressure
				  {  70, 0.35 }, --
           	      {  83, 1.05 }, -- 
				  {  100, 1.3 },    -- 
          	      {  1000000000, 110 }}    -- bugs walkaround	

	
function update()
	
	--set(APU_N1, 100) -- XP11 bug
	
	starter_press = get(starter_pressure)
	
	local passed = get(frame_time)
	
	local rpm1 = get(eng_rpm1)
	local rpm2 = get(eng_rpm2)
	local rpm3 = get(eng_rpm3)
	
	local time_now = get(sim_run_time)
	
	local blocked = get(engine_caps) == 1
	
	
	-- automatic fuel cutoff if engines shuted down or didn's start properly
	if (time_now - eng1_start_time > START_SEQ_TIME and rpm1 < RPM_APD_OFF) or (blocked and rpm1 >= 5) then 
		set(fuel_in_1, 0) 
		set(sim_ignition1, 0) 
		set(sim_igniter1, 0)
		commandEnd(starter_1)
	end
	if (time_now - eng2_start_time > START_SEQ_TIME and rpm2 < RPM_APD_OFF) or (blocked and rpm2 >= 5) then 
		set(fuel_in_2, 0) 
		set(sim_ignition2, 0) 
		set(sim_igniter2, 0)
		commandEnd(starter_2)
	end
	if (time_now - eng3_start_time > START_SEQ_TIME and rpm3 < RPM_APD_OFF) or (blocked and rpm3 >= 5) then 
		set(fuel_in_3, 0) 
		set(sim_ignition3, 0) 
		set(sim_igniter3, 0)
		commandEnd(starter_3)
	
	end	
	
	local press_1 = get(eng_work1) * get(eng_airvalve_1) * interpolate(eng_start_press_t, rpm1)
	local press_2 = get(eng_work2) * get(eng_airvalve_2) * interpolate(eng_start_press_t, rpm2)
	local press_3 = get(eng_work3) * get(eng_airvalve_3) * interpolate(eng_start_press_t, rpm3)

	local power27L = get(bus27_volt_left) > 13
	local power27R = get(bus27_volt_right) > 13
	
	local start_mode = get(starter_mode)
	local power_sys = get(starter_switch) == 1 and power27L and power27R
	local start_button = get(starter_start) == 1
	local eng_select = get(starter_eng_select)
	
	local stop_button = get(starter_stop) == 1 or eng_select ~= select_last   -- simulate stop sequence, when engine selector changed pos
	

	select_last = eng_select
	
	if power_sys then 
		set(start_sys_work, 1)
		-- air start system logic
		starter_press = starter_press + (get(apu_air_doors) * get(apu_n1) * 0.01 + (press_1 + press_2 + press_3)) * passed
		if get(asu_press) > 0 then
			starter_press = get(asu_press)
		end
		
		-- start engine starting process
		local fuel_system = get(auto_tanks_turn) > 0 and get(fuel_flow_mode) == 1 and get(tank1_1) + get(tank1_2) + get(tank1_3) + get(tank1_4) == 4
		
		set(starter_torq, (starter_press * 0.04))

		if not eng1_starting and not eng2_starting and not eng3_starting and start_button and starter_press > 3 and fuel_system then
			if eng_select == 1 and power27L and rpm1 < RPM_APD_OFF then
				eng1_start_time = time_now
				
				eng1_starting = true
				eng2_starting = false
				eng3_starting = false
				eng1_starting_air = false
				eng2_starting_air = false
				eng3_starting_air = false
			elseif eng_select == 2 and power27R and rpm2 < RPM_APD_OFF then
				eng2_start_time = time_now
				
				eng1_starting = false
				eng2_starting = true
				eng3_starting = false
				eng1_starting_air = false
				eng2_starting_air = false
				eng3_starting_air = false
			elseif eng_select == 3 and power27R and rpm3 < RPM_APD_OFF then
				eng3_start_time = time_now
				
				eng1_starting = false
				eng2_starting = false
				eng3_starting = true
				eng1_starting_air = false
				eng2_starting_air = false
				eng3_starting_air = false
			end
		end
		
	else
		set(start_sys_work, 0)
	end
	
		----------------
		-- engine 1 --
		-----------------
		
	-- start engines on ground
	if eng1_starting and not eng1_starting_air and power27L then
		-- turn on the starter
		if time_now - eng1_start_time > 1 and time_now - eng1_start_time <= START_SEQ_TIME then
			commandBegin(starter_1)

		end 
		
		-- turn OFF starter
		if rpm1 > RPM_APD_OFF or time_now - eng1_start_time > START_SEQ_TIME then
			commandEnd(starter_1)

			eng1_starting = false
		end
		
		-- start fuel
		if rpm1 >= RPM_FOR_FUEL_IN then
			set(fuel_in_1, start_mode)
		end
		
		-- start ignition
		if rpm1 >= RPM_FOR_IGNITER then
			set(sim_ignition1, 1) 
			set(sim_igniter1, 1)			
		end
		
		-- stop button
		if stop_button then
			commandEnd(starter_1)

			eng1_starting = false
			set(sim_ignition1, 0) 
			set(sim_igniter1, 0)
			eng1_start_time = eng1_start_time - 70			
		end
	
	end
	
	-- start process on air
	if not eng1_starting and not eng1_starting_air and get(flight_start_1) == 1 and rpm1 > RPM_FOR_IGNITER and power27L then
		eng1_start_time = time_now
		eng1_starting_air = true
	end
		
	if eng1_starting_air then 
		if time_now - eng1_start_time < START_SEQ_TIME and rpm1 > RPM_FOR_IGNITER and rpm1 < RPM_APD_OFF + 20 then
			set(sim_ignition1, 1) 
			set(sim_igniter1, 1)			
			commandBegin(starter_1)
			set(fuel_in_1, 1)
		else
			commandEnd(starter_1)
			eng1_starting_air = false
		end
	end

		----------------
		-- engine 2 --
		-----------------
		
	-- start engines on ground
	if eng2_starting and not eng2_starting_air and power27R then
		-- turn on the starter
		if time_now - eng2_start_time > 1 and time_now - eng2_start_time <= START_SEQ_TIME then
			commandBegin(starter_2)
		end 
		
		-- turn OFF starter
		if rpm2 > RPM_APD_OFF or time_now - eng2_start_time > START_SEQ_TIME then
			commandEnd(starter_2)
			eng2_starting = false
		end
		
		-- start fuel
		if rpm2 >= RPM_FOR_FUEL_IN then
			set(fuel_in_2, start_mode)
		end
		
		-- start ignition
		if rpm2 >= RPM_FOR_IGNITER then
			set(sim_ignition2, 1) 
			set(sim_igniter2, 1)			
		end
		
		-- stop button
		if stop_button then
			commandEnd(starter_2)
			eng2_starting = false
			set(sim_ignition2, 0) 
			set(sim_igniter2, 0)
			eng2_start_time = eng2_start_time - 70			
		end
	
	end

	-- start process on air
	if not eng2_starting and not eng2_starting_air and get(flight_start_2) == 1 and rpm2 > RPM_FOR_IGNITER and power27R then
		eng2_start_time = time_now
		eng2_starting_air = true
	end
		
	if eng2_starting_air then 
		if time_now - eng2_start_time < START_SEQ_TIME and rpm2 > RPM_FOR_IGNITER and rpm2 < RPM_APD_OFF + 20 then
			set(sim_ignition2, 1) 
			set(sim_igniter2, 1)			
			commandBegin(starter_2)
			set(fuel_in_2, 1)
		else
			commandEnd(starter_2)
			eng2_starting_air = false
		end
	end
	
		----------------
		-- engine 3 --
		-----------------
		
	-- start engines on ground
	if eng3_starting and not eng3_starting_air and power27R then
		-- turn on the starter
		if time_now - eng3_start_time > 1 and time_now - eng3_start_time <= START_SEQ_TIME then
			commandBegin(starter_3)
		end 
		
		-- turn OFF starter
		if rpm3 > RPM_APD_OFF or time_now - eng3_start_time > START_SEQ_TIME then
			commandEnd(starter_3)
			eng3_starting = false
		end
		
		-- start fuel
		if rpm3 >= RPM_FOR_FUEL_IN then
			set(fuel_in_3, start_mode)
		end
		
		-- start ignition
		if rpm3 >= RPM_FOR_IGNITER then
			set(sim_ignition3, 1) 
			set(sim_igniter3, 1)			
		end
		
		-- stop button
		if stop_button then
			commandEnd(starter_3)
			eng3_starting = false
			set(sim_ignition3, 0) 
			set(sim_igniter3, 0)
			eng3_start_time = eng3_start_time - 70			
		end
	
	end

	-- start process on air
	if not eng3_starting and not eng3_starting_air and get(flight_start_3) == 1 and rpm3 > RPM_FOR_IGNITER and power27R then
		eng3_start_time = time_now
		eng3_starting_air = true
	end
		
	if eng3_starting_air then 
		if time_now - eng3_start_time < START_SEQ_TIME and rpm3 > RPM_FOR_IGNITER and rpm3 < RPM_APD_OFF + 20 then
			set(sim_ignition3, 1) 
			set(sim_igniter3, 1)			
			commandBegin(starter_3)
			set(fuel_in_3, 1)
		else
			commandEnd(starter_3)
			eng3_starting_air = false
		end
	end


----------------------------------------	
	-- stop starter (bugs workariond)
	if not eng1_starting and not eng1_starting_air then 
		commandEnd(starter_1)
	end
	if not eng2_starting and not eng2_starting_air then 
		commandEnd(starter_2)
	end
	if not eng3_starting and not eng3_starting_air then 
		commandEnd(starter_3)
	end	
	
	-- reduce starter presure
	starter_press = starter_press - (0.2 * passed) * (starter_press + 1)
	starter_press = starter_press - bool2int(eng1_starting or eng2_starting or eng3_starting) * passed * 0.4
	
	if starter_press > 4.8 then starter_press = 4.8
	elseif starter_press < 0 then starter_press = 0 end
	
	-- results

	if get(ismaster) ~= 1 then

		set(starter_pressure, starter_press)
		set(apd_working_1, bool2int(eng1_starting or eng1_starting_air))
		set(apd_working_2, bool2int(eng2_starting or eng2_starting_air))
		set(apd_working_3, bool2int(eng3_starting or eng3_starting_air))
	
	end

		
end