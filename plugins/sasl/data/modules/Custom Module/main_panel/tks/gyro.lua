-- this is the simple logic of relative gyroscope, used for compases

-- define property table
-- source
defineProperty("true_psi", globalPropertyf("sim/flightmodel/position/true_psi")) -- real course
defineProperty("mag_psi", globalPropertyf("sim/flightmodel/position/mag_psi")) -- mag course

defineProperty("course_mk", globalPropertyf("tu154ce/tks/course_mk_1")) -- курс на MK5

defineProperty("cur", globalPropertyf("sim/cockpit/gyros/psi_ind_degm4")) --

defineProperty("roll", globalPropertyf("sim/flightmodel/position/phi")) --
defineProperty("pitch", globalPropertyf("sim/flightmodel/position/true_theta")) --

defineProperty("latitude", globalPropertyd("sim/flightmodel/position/latitude")) -- real latitude position
defineProperty("longitude", globalPropertyd("sim/flightmodel/position/longitude")) -- The longitude of the aircraft

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- controls
defineProperty("tks_mode", globalPropertyi("tu154ce/switchers/ovhd/tks_mode")) -- режим ТКС 0 - МК, 1 - ГПК, 2 - АК
defineProperty("tks_user", globalPropertyi("tu154ce/switchers/ovhd/tks_mode_left")) -- потребители 0 - контр, 1 - осн
defineProperty("tks_source", globalPropertyi("tu154ce/switchers/ovhd/tks_mode_right")) --  коррекция 0 - контр, 1 - осн
defineProperty("tks_course_set", globalPropertyi("tu154ce/switchers/ovhd/tks_course_set")) -- задатчик курса
defineProperty("tks_corrr_button", globalPropertyi("tu154ce/buttons/ovhd/tks_corrr_button")) -- кнопка согласования
defineProperty("tks_lat_set", globalPropertyf("tu154ce/rotary/ovhd/tks_lat_set")) -- ручка установки широты

defineProperty("tks_on_1", globalPropertyi("tu154ce/switchers/ovhd/tks_on_1")) -- выключатель ТКС 
defineProperty("tks_on_2", globalPropertyi("tu154ce/switchers/ovhd/tks_on_2")) -- выключатель ТКС 
defineProperty("tks_heat", globalPropertyi("tu154ce/switchers/ovhd/tks_heat")) -- обогрев ГА
defineProperty("tks_corr_1", globalPropertyi("tu154ce/switchers/ovhd/tks_corr_1")) -- коррекция БГМК 2
defineProperty("tks_corr_2", globalPropertyi("tu154ce/switchers/ovhd/tks_corr_2")) -- коррекция БГМК 2

defineProperty("stabil_ga_main", globalPropertyi("tu154ce/switchers/ovhd/stabil_ga_main")) -- стабилизация ГА по крену осн
defineProperty("stabil_ga_reserv", globalPropertyi("tu154ce/switchers/ovhd/stabil_ga_reserv")) -- стабилизация ГА резерв


-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154ce/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))


-- fail
defineProperty("fail_1", globalPropertyf("sim/operation/failures/rel_ss_dgy"))
defineProperty("fail_2", globalPropertyf("sim/operation/failures/rel_cop_dgy"))

-- result
defineProperty("course_ga_1", globalPropertyf("tu154ce/tks/course_ga_1")) -- курс на ГА1
defineProperty("course_ga_2", globalPropertyf("tu154ce/tks/course_ga_2")) -- курс на ГА2

defineProperty("fail_left", globalPropertyi("tu154ce/tks/fail_left")) -- флаг отказа
defineProperty("fail_right", globalPropertyi("tu154ce/tks/fail_right")) -- флаг отказа

defineProperty("ga_1_cc", globalPropertyf("tu154ce/tks/ga_1_cc")) -- потребление тока
defineProperty("ga_2_cc", globalPropertyf("tu154ce/tks/ga_2_cc")) -- потребление тока
defineProperty("ga_heat_cc", globalPropertyf("tu154ce/tks/ga_heat_cc")) -- потребление тока


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- local variables
local course_1 = get(mag_psi)  -- start value of curse
local course_2 = get(mag_psi)  -- start value of curse

set(course_ga_1, course_1)
set(course_ga_2, course_2)


local passed = 0

local counter_1 = 0
local counter_2 = 0

local cur_last_1 = get(true_psi)
local cur_last_2 = get(true_psi)

local rotation = 0

local lat_last_1 = get(latitude)
local lon_last_1 = get(longitude)

local lat_last_2 = get(latitude)
local lon_last_2 = get(longitude)
-- need to initialize these


local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		course_1 = math.random(-180, 180)
		course_2 = math.random(-180, 180)
		
		set(course_ga_1, course_1)
		set(course_ga_2, course_2)
	end

end




-- postframe calculations
function update()
	
	local MASTER = get(ismaster) ~= 1
	
	
	-- time calculations
	passed = get(frame_time)
	
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		if MASTER then sw_reset() end
		notLoaded = false
	end	

	-- pre bug check
	if passed > 0 then
		-- calculate power
		local power_1 = get(bus27_volt_left) > 13 and get(bus36_volt_pts250_2) > 30 and get(tks_on_1) == 1 and get(fail_1) < 6
		local power_2 = get(bus27_volt_left) > 13 and get(bus36_volt_right) > 30 and get(tks_on_2) == 1 and get(fail_2) < 6
		
		local heat_work = bool2int(get(bus27_volt_left) > 13 and get(bus115_1_volt) > 110) * get(tks_heat)
		
		set(ga_heat_cc, 10 * heat_work) -- подогрев ГА
		
		
		local lat_set = get(tks_lat_set)
		
		local curs = get(true_psi)
		local mag_curs = get(course_mk)--get(mag_psi)
		
		local correct_dev = get(tks_source)
		local corr_but = get(tks_corrr_button)
		
		local mode = get(tks_mode)
		
		local corr_turn = get(tks_course_set)
		
		local pitch_now = get(pitch)
		
		local lat_now = get(latitude)
		local lon_now = get(longitude)	
		
		
		course_1 = get(course_ga_1)
		course_2 = get(course_ga_2)
		
		
		-- GA 1
		if power_1 then
			
			local delta_cur = curs - cur_last_1
			
			if delta_cur > 180 then delta_cur = delta_cur - 360
			elseif delta_cur < -180 then delta_cur = delta_cur + 360 end
					
			if math.abs(pitch_now) > 80 then delta_cur = 0 end
			
			-- ortodromy correction		
			if counter_1 > 10 then
						
				local lon_dif = lon_now - lon_last_1
				if lon_dif > 180 then lon_dif = lon_dif - 360
				elseif lon_dif < -180 then lon_dif = lon_dif + 360 end
				
				local geo_corr = lon_dif * math.sin(math.rad((lat_last_1 + lat_now)/2))
				
				lat_last_1 = lat_now
				lon_last_1 = lon_now
				
				if geo_corr == geo_corr then -- check if not NaN
					course_1 = course_1 - geo_corr 
				end 
				
				counter_1 = 0
				
			end
			counter_1 = counter_1 + passed
			
			
		
			-- earth rotation
			local earth_rot = 360 * math.sin(math.rad(lat_now)) * passed / 86164 -- one astronomic day eq 86164 seconds
			-- calculate new course_1
			course_1 = course_1 + delta_cur - earth_rot
			
			
			-- azimuth correction
			local az_corr = 360 * math.sin(math.rad(get(lat_set))) * passed / 86164
			
			course_1 = course_1 + az_corr
			
			-- magnetic correction
			local corr = correct_dev == 1
			
			if corr then
				if mode == 0 then -- MK mode
					local corr_delta = course_1 - mag_curs
					
					if corr_delta > 180 then corr_delta = corr_delta - 360
					elseif corr_delta < -180 then corr_delta = corr_delta + 360 end
					
					if corr_delta > 1 then course_1 = course_1 - (passed * 0.1 + corr_but * passed * 10)
					elseif corr_delta < -1 then course_1 = course_1 + (passed * 0.1 + corr_but * passed * 10)
					else course_1 = course_1 - corr_delta * (passed * 0.1 + corr_but * passed * 10)
					end
					
				elseif mode > 0 then -- GPK mode
					course_1 = course_1 + corr_turn * passed * 1
				end
				
			end
			
			
			
			-- limit course_1
			if course_1 > 180 then course_1 = course_1 - 360
			elseif course_1 < -180 then course_1 = course_1 + 360 end
			
			-- set resul

		else

		end
		

		-- GA 2

		if power_2 then

			
			
			
			local delta_cur = curs - cur_last_2
			
			if delta_cur > 180 then delta_cur = delta_cur - 360
			elseif delta_cur < -180 then delta_cur = delta_cur + 360 end
					
			if math.abs(pitch_now) > 80 then delta_cur = 0 end

			-- ortodromy correction		
			if counter_2 > 10 then

				
				local lon_dif = lon_now - lon_last_2
				if lon_dif > 180 then lon_dif = lon_dif - 360
				elseif lon_dif < -180 then lon_dif = lon_dif + 360 end
				
				local geo_corr = lon_dif * math.sin(math.rad((lat_last_2 + lat_now)/2))
				
				lat_last_2 = lat_now
				lon_last_2 = lon_now
				
				
				
				if geo_corr == geo_corr then 
					course_2 = course_2 - geo_corr 
				end -- test
				
				
				counter_2 = 0

			end
			counter_2 = counter_2 + passed
		
		
			-- earth rotation
			local earth_rot = 360 * math.sin(math.rad(lat_now)) * passed / 86164 -- one astronomic day eq 86164 seconds
			-- calculate new course_2
			course_2 = course_2 + delta_cur - earth_rot
		

			-- azimuth correction
			local az_corr = 360 * math.sin(math.rad(get(lat_set))) * passed / 86164
			
			course_2 = course_2 + az_corr
			
			-- magnetic correction
			local corr = correct_dev == 0
			
			if corr then
				if mode == 0 then -- MK mode
					local corr_delta = course_2 - mag_curs
					
					if corr_delta > 180 then corr_delta = corr_delta - 360
					elseif corr_delta < -180 then corr_delta = corr_delta + 360 end
					
					if corr_delta > 1 then course_2 = course_2 - (passed * 0.1 + corr_but * passed * 10)
					elseif corr_delta < -1 then course_2 = course_2 + (passed * 0.1 + corr_but * passed * 10)
					else course_2 = course_2 - corr_delta * (passed * 0.1 + corr_but * passed * 10)
					end
					
				elseif mode > 0 then -- GPK mode
					course_2 = course_2 + corr_turn * passed * 1
				end
				
			end
			
			-- limit course_2
			if course_2 > 180 then course_2 = course_2 - 360
			elseif course_2 < -180 then course_2 = course_2 + 360 end
			
			-- set result

		else

		end	
		
		-- set fail flags
		set(fail_left, bool2int(not power_1))
		set(fail_right, bool2int(not power_2))
		
		
		
		cur_last_1 = curs
		cur_last_2 = curs
	
	if MASTER then	
		set(course_ga_1, course_1)
		set(course_ga_2, course_2)
	end	
		
		set(ga_1_cc, bool2int(power_1))
		set(ga_2_cc, bool2int(power_2))
		

	end

end



