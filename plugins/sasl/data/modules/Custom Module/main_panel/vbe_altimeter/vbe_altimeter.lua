-- this is an electronic altimeter
size = {424, 424}

defineProperty("gauge_num", 0)

-- current altitude
defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters
defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg
-- failures
defineProperty("static_fail", globalPropertyi("sim/operation/failures/rel_static"))  -- static fail
-- enviroment
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))
-- sources
defineProperty("alt_mtr", globalPropertyf("tu154ce/gauges/alt/vbe_alt_left"))  -- indicated altitude in meters
defineProperty("pressure", globalPropertyf("tu154ce/gauges/alt/vbe_press_left"))  -- pressure in hPa
defineProperty("brt_knob", globalPropertyf("tu154ce/gauges/alt/vbe_brt_left"))  -- brightness knob
defineProperty("press_knob", globalPropertyi("tu154ce/gauges/alt/vbe_press_knob_left"))  -- pressure knob
defineProperty("fl_knob", globalPropertyi("tu154ce/gauges/alt/vbe_fl_knob_left"))  -- flight level knob
defineProperty("vbe_mode", globalPropertyi("tu154ce/gauges/alt/vbe_mode_left"))  -- meters/feet mode

defineProperty("vbe_flightlevel", globalPropertyi("tu154ce/gauges/alt/vbe_flightlevel_left"))  -- эшелон

defineProperty("mode_button", globalPropertyi("tu154ce/gauges/alt/vbe_mode_but_left"))  -- mode button

defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus115_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в

defineProperty("vbe_on", globalPropertyi("tu154ce/switchers/ovhd/vbe_1_on"))  -- power switcher

defineProperty("vbe_std", globalPropertyi("tu154ce/gauges/alt/vbe_std_left"))  -- включение стандартного давления
-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- caps
defineProperty("sensors_caps", globalPropertyi("tu154ce/anim/sensors_caps"))  -- чехлы и крышки

defineProperty("warning_volume_ratio", globalPropertyf("sim/operation/sound/warning_volume_ratio")) -- 

-- failures
defineProperty("fail", globalPropertyi("sim/operation/failures/rel_ss_alt")) -- 



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control





-- load images
defineProperty("scale_img", loadImage("vbe_scale.png", 0, 82, 424, 424))
defineProperty("green_img", loadImage("vbe_scale.png", 445, 450, 60, 60))
defineProperty("yellow_img", loadImage("vbe_scale.png", 445, 387, 60, 60))
defineProperty("hpa_rus_img", loadImage("vbe_scale.png", 441, 346, 68, 35))
defineProperty("hpa_eng_img", loadImage("vbe_scale.png", 441, 304, 68, 35))
defineProperty("borderg_img", loadImage("vbe_scale.png", 5, 3, 153, 50))
defineProperty("ft_img", loadImage("vbe_scale.png", 448, 259, 46, 35))
defineProperty("mtr_img", loadImage("vbe_scale.png", 448, 224, 46, 35))
defineProperty("ALT_img", loadImage("vbe_scale.png", 437, 182, 68, 33))
defineProperty("E_img", loadImage("vbe_scale.png", 442, 122, 27, 46))
defineProperty("minus_img", loadImage("vbe_scale.png", 442, 128, 27, 35))
defineProperty("needle_img", loadImage("vbe_scale.png", 178, 26, 320, 6))
defineProperty("digitsImage", loadImage("black_digit_strip.png", 12, 195, 40, 784))
defineProperty("bold_digitsImage", loadImage("bold_digit_strip.png", 12, 195, 40, 784))

-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local vbe_alarm_snd = loadSample('Custom Sounds/vbe_alarm.wav')
vbe_alarm = globalPropertyi("tu154ce/sound/vbe")
local power = true
local mode = get(vbe_mode) -- 0 - meters, 1 - feet
local brightness = 0.5

local mod_but_last = 0

local press = get(pressure)
local press_knob_last = get(press_knob)
local fl_knob_last = get(fl_knob)

local flight_level_show = 0
local flight_level = 0

local show_border = true

local vbe_MSL = 0
local altitude_ft = 0
local altitude_mtr = 0
local altitude_100 = 250
local altitude_1000 = 15
local show_E = false
local minus_10 = true
local minus_1 = false
local negative = false
local needle_angle = 0

local test = false
local self_test_timer = 0

local border_mode = 0 -- 0 - hide, 1 - blink, 2 - show
local border_blink_timer = 0
local mode_last = border_mode
local switcher_last = get(vbe_on)

function update()
	
	local MASTER = get(ismaster) ~= 1	

	
	local passed = get(frame_time)
	local num = get(gauge_num)
	-- check switchers and make it sound
	if get(vbe_on) ~= switcher_last then
		
	end
	switcher_last = get(vbe_on)
	
	-- check power
	power = get(bus27_volt) > 13 and get(vbe_on) == 1 and get(fail) < 6
	
	
	-- set brightness
	if not power then 
		brightness = 0
		set(pressure, 1013)
		set(vbe_mode, 0)
		self_test_timer = 0
		flight_level = 0
	else brightness = get(brt_knob) ^ 0.8 end
	
	-- set modes
	local mod_but = get(mode_button)
	mode = get(vbe_mode)
	
if MASTER then 
	
	if mod_but ~= mod_but_last and mod_but == 1 then
		mode = 1 - mode
	end
	mod_but_last = mod_but
	
	set(vbe_mode, mode) 
end
	
	-- check pressure knob rotation
	local press_knob_now = get(press_knob)

	while press_knob_now > 11 do
		press_knob_now = press_knob_now - 10
	end
	while press_knob_now < -1 do
		press_knob_now = press_knob_now + 10
	end
	
	set(press_knob, press_knob_now)
	
	-- set new pressure
	press = get(pressure)
	
if MASTER then 
	
	local press_knob_diff = press_knob_now - press_knob_last
	
	press_knob_last = press_knob_now
	
	if power and math.abs(press_knob_diff) < 5 then
		press = press + press_knob_diff
	end
	-- limit pressure
	if press > 1080 then press = 1080
	elseif press < 700 then press = 700 end
	if get(vbe_std) == 1 then press = 1013 end
	
	set(pressure, press) 

end
	
	
	-- check FL knob rotation
	flight_level = get(vbe_flightlevel)

if MASTER then 	
	local fl_knob_now = get(fl_knob)

	while fl_knob_now > 11 do
		fl_knob_now = fl_knob_now - 10
	end
	while fl_knob_now < -1 do
		fl_knob_now = fl_knob_now + 10
	end
	
	set(fl_knob, fl_knob_now)
	
	local fl_knob_diff = fl_knob_now - fl_knob_last
	
	fl_knob_last = fl_knob_now
	
		
	if power and math.abs(fl_knob_diff) < 5 then
		flight_level = flight_level + fl_knob_diff * 100
	end
	
	if flight_level > 12000 then flight_level = 12000
	elseif flight_level < 0 then flight_level = 0 end


	set(vbe_flightlevel, flight_level) 
	
end

	if mode == 0 then
		flight_level_show = flight_level
	else
		flight_level_show = math.floor(flight_level * 3.280839895013 * 0.001 + 0.49) * 1000
	end

	
	-- calculate altitude
	local staticFail = get(static_fail) == 6 or get(sensors_caps) == 1
	local msl = get(msl_alt) * 3.28083 -- real alt MSL in feet

	if not staticFail then
		vbe_MSL = msl -- update altitudes for left altimeters
	end

	local press_inHg = press * 0.0295300586467
	
	if power then
		altitude_ft = vbe_MSL + (press_inHg - get(msl_press)) * 1000  -- calculate barometric altitude in feet
	end
	
	altitude_mtr = altitude_ft * 0.3048 -- meters
	
	set(alt_mtr, altitude_mtr)
	
	

	
	-- show altitude thousands
	if mode == 0 then 
		if altitude_mtr > 0 then altitude_1000 = math.floor((altitude_mtr) * 0.001)
		else altitude_1000 = math.ceil((altitude_mtr) * 0.001) end
	else 
		if altitude_ft > 0 then altitude_1000 = math.floor((altitude_ft) * 0.001)
		else altitude_1000 = math.ceil((altitude_ft) * 0.001) end
	end

	-- show altitude hundreads
	if mode == 0 then 
		if altitude_mtr > 0 then 
			altitude_100 = math.floor((altitude_mtr - altitude_1000 * 1000) * 0.2) * 5
		else
			altitude_100 = math.ceil((altitude_mtr - altitude_1000 * 1000) * 0.2) * 5
		end
	else 
		if altitude_ft > 0 then 
			altitude_100 = math.floor((altitude_ft - altitude_1000 * 1000) / 15) * 15
		else
			altitude_100 = math.ceil((altitude_ft - altitude_1000 * 1000) / 15) * 15
		end
	end

	if altitude_100 <= -100 then 
		altitude_100 = math.abs(altitude_100) 
		negative = true
	else negative = false
	end	
	
--	print(altitude_ft, "  ", altitude_1000, "  ", altitude_100)
	
	
	-- check E flag
	show_E = altitude_1000 < 1 and altitude_1000 > -1
	
	-- check minus flags
	minus_1 = negative and altitude_1000 > -1
	minus_10 = altitude_1000 <= -1
	
	-- set needle angle
	needle_angle = altitude_100 * 360 / 1000 + 90
	
	-- set border indication
	if mode == 0 then
		local FL_diff = math.abs(math.floor(altitude_mtr * 0.2) * 5 - flight_level_show)
		if FL_diff >= 150 and flight_level_show > 0 then border_mode = 2 -- show border
		elseif FL_diff >= 60 and flight_level_show > 0 then border_mode = 1 -- blink border
		else border_mode = 0 -- hide border
		end
	else
		local FL_diff = math.abs(math.floor(altitude_ft / 15) * 15 - flight_level_show)
		if FL_diff >= 500 and flight_level_show > 0 then border_mode = 2 -- show border
		elseif FL_diff >= 200 and flight_level_show > 0 then border_mode = 1 -- blink border
		else border_mode = 0 -- hide border	
		end
	end
	
	if border_mode == 2 then
		show_border = true
	elseif border_mode == 1 then
		border_blink_timer = border_blink_timer + passed
		if border_blink_timer > 0.5 then
			border_blink_timer = 0
			show_border = not show_border
		end
	else
		show_border = false
	end
	
	-- sounds
	local external = get(external_view) == 1
	if ((mode_last ~= border_mode and border_mode == 1) or (mode_last == 0 and border_mode == 2) or (mode_last == 2 and border_mode == 1)) and self_test_timer > 8 and num == 0 and not external then
		if get(xplane_version) < 120000 then playSample(vbe_alarm_snd, false) end
		set(alarm_vbe, 1)
	else
		set(alarm_vbe, 0)
	end
	mode_last = border_mode
	
	
	setSampleGain(vbe_alarm_snd, 1000 * get(warning_volume_ratio))
	
	-- self test after power ON
	self_test_timer = self_test_timer + passed
	if self_test_timer < 9 then
		if self_test_timer < 4 then
			mode = 0
			show_E = false
			minus_1 = false
			minus_10 = false
			altitude_100 = 888
			altitude_1000 = 88
			flight_level_show = 88800
			show_border = false
			needle_angle = self_test_timer * 45 + 90
			border_mode = 2
		elseif self_test_timer < 8 then
			if not isSamplePlaying(vbe_alarm_snd) and self_test_timer < 5 and num == 0 and not external then
				if get(xplane_version) < 120000 then playSample(vbe_alarm_snd, false) end
			elseif external or self_test_timer >= 6 then
				if get(xplane_version) < 120000 then stopSample(vbe_alarm_snd) end
			end
			mode = 1
			show_E = false
			minus_1 = false
			minus_10 = false
			altitude_100 = 888
			altitude_1000 = 88
			flight_level_show = 88800
			show_border = true
			needle_angle = self_test_timer * 45 + 90	
			border_mode = 2
		else
			mode = 0
			show_border = false
		end
	end
	


end



components = {
	
	-- green background
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(green_img),
		visible = function()
			return power and mode == 0
		end,
	},

	-- yellow background
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(yellow_img),
		visible = function()
			return power and mode == 1
		end,
	},


    -- altitude needle
    needle {
        position = { 47.5, 47, 320, 320 },
        image = get(needle_img),
        angle = function() 
			return needle_angle
        end,
		visible = function()
			return power and not negative and altitude_100 >= 0
		end,
    },


	-- ALT flag
	texture {
		position = {185, 213, 60, 25},
		image = get(ALT_img),
		visible = function()
			return power and mode == 1
		end,
	},

	-- FT flag
	texture {
		position = {270, 168, 30, 25},
		image = get(ft_img),
		visible = function()
			return power and mode == 1
		end,
	},
	-- M flag
	texture {
		position = {270, 168, 30, 25},
		image = get(mtr_img),
		visible = function()
			return power and mode == 0
		end,
	},

	-- E flag
	texture {
		position = {137, 171, 22, 41},
		image = get(E_img),
		visible = function()
			return power and show_E
		end,
	},

	
	
	-- altitude digits 10000
	digitstape {
        position = { 135, 168, 60, 50},
        image = bold_digitsImage,
        digits = 2,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return altitude_1000
        end,
		visible = function()
			return power and (altitude_1000 >= 1 or altitude_1000 <= -1)
		end,		
    };

	-- minus flag
	texture {
		position = {137, 175, 22, 33},
		image = get(minus_img),
		visible = function()
			return power and minus_10
		end,
	},
	-- minus flag
	texture {
		position = {167, 175, 22, 33},
		image = get(minus_img),
		visible = function()
			return power and minus_1
		end,
	},	

	-- altitude digits 100
	digitstape {
        position = { 175, 168, 100, 40},
        image = bold_digitsImage,
        digits = 4,
        showLeadingZeros = function()
			return math.abs(altitude_1000) >=1
		end,
		allowNonRound = false,
		fractional = 0,
		showSign = true,
        value = function()
           return altitude_100
        end,
		visible = function()
			return power
		end,		
    };	

	-- green border
	textureLit {
		position = {132, 245, 153, 51},
		image = get(green_img),
		visible = function()
			return power and mode == 0
		end,
	},
	-- yellow border
	textureLit {
		position = {132, 245, 153, 51},
		image = get(yellow_img),
		visible = function()
			return power and mode == 1
		end,
	},	
	-- flight level digits
	digitstape {
        position = { 145, 250, 130, 40},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return flight_level_show
        end,
		visible = function()
			return power and (border_mode > 0 or flight_level_show == 0)
		end,		
    };	
	digitstape {
        position = { 223, 250, 26, 40},
        image = digitsImage,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = 0,
		visible = function()
			return power and flight_level_show == 0
		end,		
    };	


	-- border
	texture {
		position = {132, 245, 153, 51},
		image = get(borderg_img),
		visible = function()
			return power and show_border
		end,
	},


	-- green border
	textureLit {
		position = { 164, 92, 96, 48},
		image = get(green_img),
		visible = function()
			return power and mode == 0
		end,
	},
	-- yellow border
	textureLit {
		position = { 164, 92, 96, 48},
		image = get(yellow_img),
		visible = function()
			return power and mode == 1
		end,
	},



	-- pressure digits
	digitstape {
        position = { 160, 100, 90, 35},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		size = 2,
		showSign = false,
        value = function()
           if self_test_timer <=4 then return 1888
		   else return press end
        end,
		visible = function()
			return power
		end,		
		
    };
	
	-- hPa rus
	texture {
		position = {186, 140, 50, 25},
		image = get(hpa_rus_img),
		visible = function()
			return power and mode == 0
		end,
	},
	-- hPa eng
	texture {
		position = {185, 140, 50, 25},
		image = get(hpa_eng_img),
		visible = function()
			return power and mode == 1
		end,
	},
	
	-- brightness controll
	rectangle_ctr {
		R = 0,
		G = 0,
		B = 0,
		A = function()
			return 1 - brightness
		end, -- controll via alpha
		position_x = 0,
		position_y = 0,
		width = size[1],
		height = size[2],
		visible = function()
			return power
		end,
	},	
	
	-- foreground
	texture {
		position = {0, 0, size[1], size[2]},
		image = get(scale_img),
	},
	









}