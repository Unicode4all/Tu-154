-- this is aux ahz logic
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

--defineProperty("pitch_sim", globalPropertyf("sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot"))
--defineProperty("roll_sim", globalPropertyf("sim/cockpit2/gauges/indicators/roll_electric_deg_pilot"))

defineProperty("pitch_sim", globalPropertyf("sim/flightmodel/position/theta"))
defineProperty("roll_sim", globalPropertyf("sim/flightmodel/position/phi"))

--[[
sim/flightmodel/position/theta	float	y	degrees	The pitch relative to the plane normal to the Y axis in degrees
sim/flightmodel/position/phi	float	y	degrees	The roll of the aircraft in degrees
--]]
defineProperty("N1", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))   
defineProperty("N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))
defineProperty("N3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))


-- controls
defineProperty("pitch_corr_hdl", globalPropertyf("tu154ce/gauges/ahz/pitch_corr_C")) -- коррекция тангажа на АГР + вправо
defineProperty("agr_on", globalPropertyi("tu154ce/switchers/ovhd/agr_on")) -- выключатель

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1"))

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154ce/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))

-- fail
defineProperty("agr_fail", globalPropertyi("tu154ce/failures/agr_fail")) -- отказ


-- results
defineProperty("res_pitch", globalPropertyf("tu154ce/gauges/ahz/pitch_C")) -- тангаж на АГР + нос вверх
defineProperty("res_roll", globalPropertyf("tu154ce/gauges/ahz/roll_C")) -- крен на АГР + в право

defineProperty("agr_cc", globalPropertyf("tu154ce/ahz/agr_cc")) -- ток


defineProperty("ahz_flag", globalPropertyf("tu154ce/gauges/ahz/ahz_flag_C")) -- тангаж на АГР + нос вверх

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local initial_roll_err = 0 --math.random(-20, 20) * real_num -- initial error, ehich will be decreased to 0 after connecting power
local roll_corr = 0  -- correction for errors and arrest
local roll_show = 0  -- result roll
local roll_off = 0 --math.random(-2, 2) * real_num -- determine the direction for AG fall
local initial_pitch_err = 0 --math.random(-30, 30) * real_num -- initial error, ehich will be decreased to 0 after connecting power
local pitch_corr = 0  -- correction for errors and arrest
local pitch_show = 0  -- result roll
local pitch_off = 0 --math.random(-2, 2) * real_num -- determine the direction for AG fall
local arrest = 0  -- variable for arresting process
local arrest_push = false -- validate if arrest button is pushed
local pitch_rot = 0
local ahz_fail = true
local fail = 0
local power_roll = 0 --get(roll_right)
local power_pitch = 0 --get(pitch_right)

local time_counter = 0
local notLoaded = true

local roll_show_2 = roll_show
local pitch_show_2 = pitch_show


function update()
	local passed = get(frame_time)
	
	local power = get(bus27_volt_left) > 13 and get(bus36_volt_pts250_1) > 30 and get(agr_on) == 1 and get(agr_fail) == 0
	
	set(agr_cc, bool2int(power))
	
	time_counter = time_counter + passed	

	-- set initial AHZ position
	if time_counter > 0.3 and time_counter < 0.4 and notLoaded and get(N1) < 10 and get(N2) < 10 and get(N3) < 10 then
		initial_roll_err = math.random(-30, 30)
		roll_off = math.random(-1, 1)
		initial_pitch_err = math.random(-30, 30)
		pitch_off = math.random(-1, 1)
		
		notLoaded = false
	elseif time_counter > 0.3 and time_counter < 0.4 and notLoaded then 
		roll_off = math.random(-1, 1)
		pitch_off = math.random(-1, 1)	
	
		notLoaded = false	
	end
	
	-- calculate roll and pitch for power off
	if not power then
		power_roll = get(roll_sim)
		power_pitch = get(pitch_sim)
	end -- if no power, then horizon will remain its position
	
	
	-- calculate power ON and OFF initial roll and pitch
	if not power then
		if math.abs(initial_roll_err) < 30 then initial_roll_err = initial_roll_err + passed * roll_off * 0.1 end
		if math.abs(initial_pitch_err) < 30 then initial_pitch_err = initial_pitch_err + passed * pitch_off * 0.1 end
	else
		if initial_roll_err > 0.1 then initial_roll_err = initial_roll_err - passed * 0.3
		elseif initial_roll_err < -0.1 then initial_roll_err = initial_roll_err + passed * 0.3
		else initial_roll_err = 0 end
		if initial_pitch_err > 0.1 then initial_pitch_err = initial_pitch_err - passed * 0.3
		elseif initial_pitch_err < -0.1 then initial_pitch_err = initial_pitch_err + passed * 0.3
		else initial_pitch_err = 0 end
		
		-- reset all errors and correction after some time
		if power_roll > 0.05 then power_roll = power_roll - passed * 0.1
		elseif power_roll < -0.05 then power_roll = power_roll + passed * 0.1 
		else power_roll = 0 end
		
		if power_pitch > 0.05 then power_pitch = power_pitch - passed * 0.1
		elseif power_pitch < -0.05 then power_pitch = power_pitch + passed * 0.1 
		else power_pitch = 0 end
		
		if roll_corr > 0.05 then roll_corr = roll_corr - 0.1 * passed
		elseif roll_corr < -0.05 then roll_corr = roll_corr + 0.1 * passed 
		else roll_corr = 0 end
		
		if pitch_corr > 0.05 then pitch_corr = pitch_corr - 0.1 * passed
		elseif pitch_corr < -0.05 then pitch_corr = pitch_corr + 0.1 * passed 
		else pitch_corr = 0 end
		
	end
	
	--[[
	-- arresting mechanism
	if arrest > 0 and power then
		-- set new correction
		
		if math.abs(initial_roll_err) < 0.1 then
			if roll_show > 0.1 then roll_corr = roll_corr + 6 * passed
			elseif roll_show < -0.1 then roll_corr = roll_corr - 6 * passed end
		end
		if math.abs(initial_pitch_err) < 0.1 then
			if pitch_show > 0.1 then pitch_corr = pitch_corr + 6 * passed
			elseif pitch_show < -0.1 then pitch_corr = pitch_corr - 6 * passed end
		end
		
		-- reset errors
		if power_roll > 0.1 then power_roll = power_roll - passed
		elseif power_roll < -0.1 then power_roll = power_roll + passed end
		if power_pitch > 0.1 then power_pitch = power_pitch - passed
		elseif power_pitch < -0.1 then power_pitch = power_pitch + passed end

		if initial_roll_err > 0.1 then initial_roll_err = initial_roll_err - passed * 6
		elseif initial_roll_err < -0.1 then initial_roll_err = initial_roll_err + passed * 6 end
		if initial_pitch_err > 0.1 then initial_pitch_err = initial_pitch_err - passed * 6
		elseif initial_pitch_err < -0.1 then initial_pitch_err = initial_pitch_err + passed * 6 end
		
	end	
	
	--]]
	
	
	
	-- main formula for curent position
	roll_show = get(roll_sim) - power_roll + initial_roll_err - roll_corr
	pitch_show = get(pitch_sim) - power_pitch + initial_pitch_err - pitch_corr - get(pitch_corr_hdl) * 20
	-- final result is a summ of power position, initial error of gauge, collective error of gauge and correction of this error
	
	if pitch_show > 90 then pitch_show = 90
	elseif pitch_show < -90 then pitch_show = -90 end

	-- slow down indication
	local roll_delta = roll_show - roll_show_2
	if roll_delta > 180 then roll_delta = roll_delta - 360
	elseif roll_delta < -180 then roll_delta = roll_delta + 360 end
	
	roll_show_2 = roll_show_2 + (roll_delta) * passed * 8
	
	pitch_show_2 = pitch_show_2 + (pitch_show - pitch_show_2) * passed * 8
	
	
	-- flag logic
	local flag = bool2int(not power or math.abs(initial_roll_err) + math.abs(initial_pitch_err) + math.abs(power_roll) + math.abs(power_pitch) > 5)
	
local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	
	
	-- set results
	set(res_pitch, pitch_show_2)
	set(res_roll, roll_show_2)
	
	set(ahz_flag, flag)

	
end
	
end
