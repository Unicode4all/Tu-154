-- RV-5 радио высотомер
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))

-- radio altitude
defineProperty("altitude", globalPropertyf("sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot"))  -- altitude, measured by gauge

-- controls
defineProperty("dh_set", globalPropertyf("tu154ce/gauges/alt/radioalt_dh_left"))  -- DH angle
defineProperty("test_btn", globalPropertyf("tu154ce/gauges/alt/radioalt_button_left"))  -- Test button

defineProperty("rv_on", globalPropertyi("tu154ce/switchers/ovhd/rv5_1_on"))  -- switcher

defineProperty("rv_fail", globalPropertyi("tu154ce/failures/rv1_fail"))  -- fail

-- power
defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus115_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))

-- results
defineProperty("rv_angle", globalPropertyf("tu154ce/gauges/alt/radioalt_needle_left"))  -- RV needle
defineProperty("rv_flag", globalPropertyi("tu154ce/gauges/alt/radioalt_flag_left"))  -- RV flag
defineProperty("rv5_alt", globalPropertyf("tu154ce/misc/rv5_alt_left"))  -- высота на левом высотомере

defineProperty("rv5_dh_signal", globalPropertyi("tu154ce/misc/rv5_dh_signal_left"))




defineProperty("rv_lamp", globalPropertyf("tu154ce/lights/small/rv5_left_dh"))  -- RV lamp

defineProperty("rv_cc", globalPropertyf("tu154ce/elec/rv5_left_cc"))  -- Current consumption



local alt2angle = {
{-100000, 0},
{0, 0},
{20, 30},
{50, 80},
{100, 160},
{700, 314},
{700, 314},
{800, 340},
{8000000, 340}
}



local alt_angle = 0
local alt_angle_act = 0
local start_timer = 0
local alt = 0


function update()
	
	local passed = get(frame_time)
	
	local power = get(bus27_volt) > 13 and get(bus115_volt) > 110 and get(rv_on) == 1 and get(rv_fail) == 0
	local test = power and get(test_btn) == 1
	

	
	if power then
		start_timer = start_timer + passed
		
		if start_timer < 20 then 
			alt_angle = 340
			alt = 800
			if test then 
				alt = 15 
				alt_angle = interpolate(alt2angle, alt)
			end
		elseif start_timer <= 30 then 
			alt_angle = 340 - (start_timer - 20) * 34
			alt = get(altitude) * 0.3048
			if alt_angle < interpolate(alt2angle, alt) then alt_angle = interpolate(alt2angle, alt) end
			if test then 
				alt = 15 
				alt_angle = interpolate(alt2angle, alt)
			end
		else 
			alt = get(altitude) * 0.3048
			if alt > 800 then alt = 800
			elseif alt < 0 then alt = 0 end
			
			if test then alt = 15 end
			
			alt_angle = interpolate(alt2angle, alt)
			
			if start_timer > 50 then start_timer = 50 end
		end
		

		
		set(rv_cc, 1)
	else
		start_timer = start_timer - passed
		if start_timer < 20 then start_timer = 0 end
		--if start_timer < 0 then start_timer = 0 end
		set(rv_cc, 0)
	end
	
	alt_angle_act = alt_angle_act + (alt_angle - alt_angle_act) * passed * 4
	
	-- flag logic
	local flag_show = bool2int(not power or (start_timer <= 30 and not test))
	
	set(rv_flag, flag_show)
	
	-- lamp logic
	local lamp_lit = bool2int(alt_angle < get(dh_set) - 1 and power)
	
	
	
	local lamp_coef = math.max((get(bus27_volt) - 10) / 18.5, 0)
	
	set(rv_lamp, lamp_lit * lamp_coef)
	set(rv5_dh_signal, lamp_lit)
	
	-- set results
	set(rv_angle, alt_angle_act)
	set(rv5_alt, alt)


end


