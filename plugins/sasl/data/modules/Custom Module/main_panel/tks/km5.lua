-- this is magnetic correction gauge KM-5

-- source
defineProperty("mag_psi", globalPropertyf("sim/flightmodel/position/mag_psi")) -- mag course
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("gforce_fwd", globalPropertyf("sim/flightmodel2/misc/gforce_axil")) -- 
defineProperty("gforce_side", globalPropertyf("sim/flightmodel2/misc/gforce_side")) -- 

-- power
defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus36_volt", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2")) -- напряжение сети 36

-- failures
defineProperty("fail", globalPropertyf("tu154ce/failures/tks_km1_fail")) -- отказ

-- controls
defineProperty("km5_knob", globalPropertyf("tu154ce/gauges/eng/km5_knob_1")) -- крутилка на КМ5


-- results
defineProperty("km5_scale", globalPropertyf("tu154ce/gauges/eng/km5_scale_1")) -- поворот шкалы на КМ5
defineProperty("km5_needle", globalPropertyf("tu154ce/gauges/eng/km5_needle_1")) -- стрелка КМ5

defineProperty("course_mk", globalPropertyf("tu154ce/tks/course_mk_1")) -- курс на MK5

defineProperty("km5_cc", globalPropertyf("tu154ce/tks/km5_1_cc")) -- потребление тока КМ5



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local mag_course = get(mag_psi)
local needle_act = math.random(-180, 180)
set(km5_needle, needle_act)

local course = 0

local cur_dev_sign = math.random(0, 1) * 2 - 1
local cur_dev_act = 0

function update()

	local power = get(bus36_volt) > 30 and get(bus27_volt) > 13 and get(fail) == 0
	local passed = get(frame_time) 
	
	local MASTER = get(ismaster) ~= 1	

	
	-- knob
	local knob = get(km5_knob)
	
	while knob > 180 do
		knob = knob - 360
	end
	
	while knob < -180 do
		knob = knob + 360
	end
	
	-- rotate scale
	if MASTER then set(km5_scale, knob) end
	
	needle_act = get(km5_needle)
	
if MASTER then	
	-- mag course
	if power then
		mag_course = get(mag_psi) + cur_dev_act
		cur_dev_act = cur_dev_act + (cur_dev_sign * (get(gforce_fwd) + get(gforce_side)) * 20 - cur_dev_act) * passed * 0.5
		
		if mag_course > 180 then mag_course = mag_course - 360 
		elseif mag_course < -180 then mag_course = mag_course + 360	end
		
		local cur_dif = mag_course - needle_act
		if cur_dif > 180 then cur_dif = cur_dif - 360
		elseif cur_dif < -180 then cur_dif = cur_dif + 360 end
		
		if cur_dif > 1 then needle_act = needle_act + passed * 20
		elseif cur_dif < -1 then needle_act = needle_act - passed * 20
		else needle_act = needle_act + cur_dif * passed * 10
		end
		
	end

	set(km5_needle, needle_act)

end
	
	-- set result mag course
	if power then
		course = needle_act - knob
	end
	
	if course > 180 then course = course - 360
	elseif course < -180 then course = course + 360 end
	
	set(course_mk, course)
	set(km5_cc, bool2int(power))
	
	
end

