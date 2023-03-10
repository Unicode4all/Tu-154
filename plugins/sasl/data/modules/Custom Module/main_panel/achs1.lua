
-- source datarefs
defineProperty("utc_time", globalPropertyf("sim/time/zulu_time_sec"))
defineProperty("sim_run_time", globalPropertyf("sim/time/total_running_time_sec"))
--defineProperty("world_green", globalPropertyf("sim/graphics/misc/cockpit_light_level_g"))  -- green component of natural light in cockpit
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- clock 1 - captain
defineProperty("needle_hours_1", globalPropertyf("tu154ce/gauges/acs1/needle_hours"))
defineProperty("needle_mins_1", globalPropertyf("tu154ce/gauges/acs1/needle_mins"))

defineProperty("flight_timer_hours_1", globalPropertyf("tu154ce/gauges/acs1/flight_timer_hours"))
defineProperty("flight_timer_mins_1", globalPropertyf("tu154ce/gauges/acs1/flight_timer_mins"))

defineProperty("stopwatch_mins_1", globalPropertyf("tu154ce/gauges/acs1/stopwatch_mins"))
defineProperty("needle_secs_1", globalPropertyf("tu154ce/gauges/acs1/needle_secs"))

defineProperty("LK1", globalPropertyi("tu154ce/gauges/acs1/left_knob_press"))
defineProperty("RK1", globalPropertyi("tu154ce/gauges/acs1/right_knob_press"))
defineProperty("flag_pos_1", globalPropertyi("tu154ce/gauges/acs1/flag_pos"))

-- clock 2 - copilot
defineProperty("needle_hours_2", globalPropertyf("tu154ce/gauges/acs2/needle_hours"))
defineProperty("needle_mins_2", globalPropertyf("tu154ce/gauges/acs2/needle_mins"))

defineProperty("flight_timer_hours_2", globalPropertyf("tu154ce/gauges/acs2/flight_timer_hours"))
defineProperty("flight_timer_mins_2", globalPropertyf("tu154ce/gauges/acs2/flight_timer_mins"))

defineProperty("stopwatch_mins_2", globalPropertyf("tu154ce/gauges/acs2/stopwatch_mins"))
defineProperty("needle_secs_2", globalPropertyf("tu154ce/gauges/acs2/needle_secs"))

defineProperty("LK2", globalPropertyi("tu154ce/gauges/acs2/left_knob_press"))
defineProperty("RK2", globalPropertyi("tu154ce/gauges/acs2/right_knob_press"))
defineProperty("flag_pos_2", globalPropertyi("tu154ce/gauges/acs2/flag_pos"))

-- clock 3 - engineer
defineProperty("needle_hours_3", globalPropertyf("tu154ce/gauges/acs3/needle_hours"))
defineProperty("needle_mins_3", globalPropertyf("tu154ce/gauges/acs3/needle_mins"))

defineProperty("flight_timer_hours_3", globalPropertyf("tu154ce/gauges/acs3/flight_timer_hours"))
defineProperty("flight_timer_mins_3", globalPropertyf("tu154ce/gauges/acs3/flight_timer_mins"))

defineProperty("stopwatch_mins_3", globalPropertyf("tu154ce/gauges/acs3/stopwatch_mins"))
defineProperty("needle_secs_3", globalPropertyf("tu154ce/gauges/acs3/needle_secs"))

defineProperty("LK3", globalPropertyi("tu154ce/gauges/acs3/left_knob_press"))
defineProperty("RK3", globalPropertyi("tu154ce/gauges/acs3/right_knob_press"))
defineProperty("flag_pos_3", globalPropertyi("tu154ce/gauges/acs3/flag_pos"))

--defineProperty("fan_volume_ratio", globalPropertyf("sim/operation/sound/fan_volume_ratio")) -- 


-- failures
defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled"))

defineProperty("acs1_fail", globalPropertyi("tu154ce/failures/acs1_fail"))
defineProperty("acs2_fail", globalPropertyi("tu154ce/failures/acs2_fail"))
defineProperty("acs3_fail", globalPropertyi("tu154ce/failures/acs3_fail"))


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- sounds
local btn_click = loadSample('Custom Sounds/acs_btn.wav')
--local tik_tak = loadSample('Custom Sounds/acs_tik_tik.wav')

--if get(xplane_version) < 120000 then playSample(tik_tak, true) end  -- clock now ticks :)
--setSampleGain(tik_tak, 0)





-- local variables
-- chrono variables
local sec_mode_1 = 0 -- chrono mode. 0 - reset, 1 - run, 2 - hold
local sec_mode_2 = 0 -- chrono mode
local sec_mode_3 = 0 -- chrono mode

local chrono_sec_angle_1 = 0 -- chrono needle
local chrono_sec_angle_2 = 0 -- chrono needle
local chrono_sec_angle_3 = 0 -- chrono needle

local chrono_min_angle_1 = 0 -- chrono needle
local chrono_min_angle_2 = 0 -- chrono needle
local chrono_min_angle_3 = 0 -- chrono needle

local sec_time_1 = 0 -- chrono counter
local sec_time_2 = 0 -- chrono counter
local sec_time_3 = 0 -- chrono counter

local start_sec_1 = 0 -- time, when chrono started
local start_sec_2 = 0 -- time, when chrono started
local start_sec_3 = 0 -- time, when chrono started

-- flight timer variables
local flight_mode_1 = 0
local flight_mode_2 = 0
local flight_mode_3 = 0

local flight_time_1 = 0
local flight_time_2 = 0
local flight_time_3 = 0

local flight_hour_angle_1 = 0
local flight_hour_angle_2 = 0
local flight_hour_angle_3 = 0

local flight_min_angle_1 = 0
local flight_min_angle_2 = 0
local flight_min_angle_3 = 0

local start_flight_1 = 0
local start_flight_2 = 0
local start_flight_3 = 0


--[[
-- create handlers for knobs --
-- returns curent pressed button, if need.
local knobNum = 0 -- number of pressed knob
local function getKnobState()
	return knobNum
end

--]]

local knob_last = 0

-- works with dataref, when it being changed
local function knob_work()
	
	
	local knob_summ = get(LK1) + get(RK1) + get(LK2) + get(RK2) + get(LK3) + get(RK3)
	
	-- do nothing if buttons released
	if knob_summ == 0 then 
		knob_last = 0
		return 
	end
	
	-- calculate on press
if knob_summ ~= knob_last then if get(xplane_version) < 120000 then playSample(btn_click, false) end
	
	knob_last = knob_summ
	
	
	-- set clock modes
	local sim_time = get(sim_run_time)  -- take actual sim time in seconds
	local main_time = get(utc_time)  -- take actual UTC time
	if get(LK1) == 1 then 
		flight_mode_1 = flight_mode_1 + 1
		if flight_mode_1 > 2 then flight_mode_1 = 0 end
		start_flight_1 = sim_time
		--print(flight_mode_1)
	elseif get(RK1) == 1 then 
		sec_mode_1 = sec_mode_1 + 1
		if sec_mode_1 > 2 then sec_mode_1 = 0 end
		start_sec_1 = sim_time
	elseif get(LK2) == 1 then 
		flight_mode_2 = flight_mode_2 + 1
		if flight_mode_2 > 2 then flight_mode_2 = 0 end
		start_flight_2 = sim_time
	elseif get(RK2) == 1 then 
		sec_mode_2 = sec_mode_2 + 1
		if sec_mode_2 > 2 then sec_mode_2 = 0 end
		start_sec_2 = sim_time
	elseif get(LK3) == 1 then 
		flight_mode_3 = flight_mode_3 + 1
		if flight_mode_3 > 2 then flight_mode_3 = 0 end
		start_flight_3 = sim_time
	elseif get(RK3) == 1 then 
		sec_mode_3 = sec_mode_3 + 1
		if sec_mode_3 > 2 then sec_mode_3 = 0 end
		start_sec_3 = sim_time
	end

end
		
end




function update()
	
	knob_work()
	
	local sim_time = get(sim_run_time)  -- take actual sim time in seconds
	local main_time = get(utc_time)  -- take actual UTC time
	local fail_enabled = get(failures_enabled)
	local fail_1 = get(acs1_fail)
	local fail_2 = get(acs2_fail)
	local fail_3 = get(acs3_fail)
	
	-- mute sound when sim is paused
	--if get(frame_time) == 0 then setSampleGain(tik_tak, 0) end
	

local MASTER = get(ismaster) ~= 1	
	

	


	
	-- set main time angles
	local main_sec_angle = main_time * 360 / 60
	local main_min_angle = main_sec_angle / 60
	local main_hour_angle = main_min_angle / 12
	
	if fail_enabled * fail_1 == 0 then set(needle_hours_1, main_hour_angle) end
	if fail_enabled * fail_2 == 0 then set(needle_hours_2, main_hour_angle) end
	if fail_enabled * fail_3 == 0 then set(needle_hours_3, main_hour_angle) end
	
	if fail_enabled * fail_1 == 0 then set(needle_mins_1, main_min_angle) end
	if fail_enabled * fail_2 == 0 then set(needle_mins_2, main_min_angle) end
	if fail_enabled * fail_3 == 0 then set(needle_mins_3, main_min_angle) end

if MASTER then
	
	-- set chronometer angles 1
	if sec_mode_1 == 0 then 
        sec_time_1 = 0
		chrono_min_angle_1 = sec_time_1 
		chrono_sec_angle_1 = sec_time_1
    elseif sec_mode_1 == 1 then 
		sec_time_1 = sim_time - start_sec_1
		sec_time_1 = math.floor(sec_time_1 * 5) / 5
		
        chrono_min_angle_1 = sec_time_1 * 360 / (60 * 60)
		chrono_sec_angle_1 = chrono_min_angle_1 * 60
    else
        chrono_min_angle_1 = sec_time_1 * 360 / (60 * 60)
		chrono_sec_angle_1 = chrono_min_angle_1 * 60
    end	
	
	if fail_enabled * fail_1 == 0 then
		set(needle_secs_1, chrono_sec_angle_1)
		set(stopwatch_mins_1, chrono_min_angle_1)
	end
	
	
	-- set chronometer angles 2
	if sec_mode_2 == 0 then 
        sec_time_2 = 0
		chrono_min_angle_2 = sec_time_2
		chrono_sec_angle_2 = sec_time_2
    elseif sec_mode_2 == 1 then 
		sec_time_2 = sim_time - start_sec_2
		sec_time_2 = math.floor(sec_time_2 * 5) / 5
		
        chrono_min_angle_2 = sec_time_2 * 360 / (60 * 60)
		chrono_sec_angle_2 = chrono_min_angle_2 * 60
    else
        chrono_min_angle_2 = sec_time_2 * 360 / (60 * 60)
		chrono_sec_angle_2 = chrono_min_angle_2 * 60
    end	
	
	if fail_enabled * fail_2 == 0 then
		set(needle_secs_2, chrono_sec_angle_2)
		set(stopwatch_mins_2, chrono_min_angle_2)
	end

	-- set chronometer angles 3
	if sec_mode_3 == 0 then 
        sec_time_3 = 0
		chrono_min_angle_3 = sec_time_3
		chrono_sec_angle_3 = sec_time_3
    elseif sec_mode_3 == 1 then 
		sec_time_3 = sim_time - start_sec_3
		sec_time_3 = math.floor(sec_time_3 * 5) / 5
		
        chrono_min_angle_3 = sec_time_3 * 360 / (60 * 60)
		chrono_sec_angle_3 = chrono_min_angle_3 * 60
    else
        chrono_min_angle_3 = sec_time_3 * 360 / (60 * 60)
		chrono_sec_angle_3 = chrono_min_angle_3 * 60
    end	
	
	if fail_enabled * fail_3 == 0 then
		set(needle_secs_3, chrono_sec_angle_3)
		set(stopwatch_mins_3, chrono_min_angle_3)
	end

	-- set flight timer angles 1
	if flight_mode_1 == 0 then 
        flight_time_1 = 0
        flight_hour_angle_1 = flight_time_1 
		flight_min_angle_1 = flight_time_1 
		
		set(flag_pos_1, -1)
    elseif flight_mode_1 == 1 then 
        flight_time_1 = sim_time - start_flight_1
        flight_hour_angle_1 = flight_time_1 * 360 / (60 * 60 * 12)
		flight_min_angle_1 = flight_hour_angle_1 * 12
		
		set(flag_pos_1, 1)
    else
        flight_hour_angle_1 = flight_time_1 * 360 / (60 * 60 * 12)
		flight_min_angle_1 = flight_hour_angle_1 * 12
		
		set(flag_pos_1, 0)
    end
	
	if fail_enabled * fail_1 == 0 then
		set(flight_timer_mins_1, flight_min_angle_1)
		set(flight_timer_hours_1, flight_hour_angle_1)
	end

	-- set flight timer angles 2
	if flight_mode_2 == 0 then 
        flight_time_2 = 0
        flight_hour_angle_2 = flight_time_2 
		flight_min_angle_2 = flight_time_2
		
		set(flag_pos_2, -1)
    elseif flight_mode_2 == 1 then 
        flight_time_2 = sim_time - start_flight_2
        flight_hour_angle_2 = flight_time_2 * 360 / (60 * 60 * 12)
		flight_min_angle_2 = flight_hour_angle_2 * 12
		
		set(flag_pos_2, 1)
    else
        flight_hour_angle_2 = flight_time_2 * 360 / (60 * 60 * 12)
		flight_min_angle_2 = flight_hour_angle_2 * 12
		
		set(flag_pos_2, 0)
    end

	if fail_enabled * fail_2 == 0 then
		set(flight_timer_mins_2, flight_min_angle_2)
		set(flight_timer_hours_2, flight_hour_angle_2)
	end
	
	-- set flight timer angles 3
	if flight_mode_3 == 0 then 
        flight_time_3 = 0
        flight_hour_angle_3 = flight_time_3 
		flight_min_angle_3 = flight_time_3
		
		set(flag_pos_3, -1)
    elseif flight_mode_3 == 1 then 
        flight_time_3 = sim_time - start_flight_3
        flight_hour_angle_3 = flight_time_3 * 360 / (60 * 60 * 12)
		flight_min_angle_3 = flight_hour_angle_3 * 12
		
		set(flag_pos_3, 1)
    else
        flight_hour_angle_3 = flight_time_3 * 360 / (60 * 60 * 12)
		flight_min_angle_3 = flight_hour_angle_3 * 12
		
		set(flag_pos_3, 0)
    end

	if fail_enabled * fail_3 == 0 then
		set(flight_timer_mins_3, flight_min_angle_3)
		set(flight_timer_hours_3, flight_hour_angle_3)
	end	
	
	
	--setSampleGain(tik_tak, 100 * get(fan_volume_ratio))
end	
	
end


