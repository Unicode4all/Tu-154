-- this is ARK panel

-- source
defineProperty("left_freq", globalPropertyf("sim/cockpit2/radios/actuators/adf1_left_frequency_hz"))  -- left frequency
defineProperty("right_freq", globalPropertyf("sim/cockpit2/radios/actuators/adf1_right_frequency_hz"))  -- right frequency
defineProperty("active", globalPropertyf("sim/cockpit2/radios/actuators/adf1_right_is_selected"))  -- selector of active disk. 0 - left, 1 - right 
defineProperty("fail", globalPropertyf("sim/operation/failures/rel_adf1"))
defineProperty("adf", globalPropertyf("sim/cockpit2/radios/indicators/adf1_relative_bearing_deg"))
defineProperty("audio_selection", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf1"))

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- controls
defineProperty("ark_mode", globalPropertyi("tu154ce/switchers/ovhd/ark_1_mode")) -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
defineProperty("ark_channel", globalPropertyi("tu154ce/switchers/ovhd/ark_1_channel")) -- канал АРК 1
defineProperty("ark_hundr_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_left")) -- сотни частоты 1 - 17
defineProperty("ark_tens_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_left")) -- десятки частоты 1 - 10 (0)
defineProperty("ark_ones_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_left")) -- единицы частоты 0 - 9
defineProperty("ark_hundr_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_right")) -- сотни частоты 1 - 17
defineProperty("ark_tens_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_right")) -- десятки частоты 1 - 10 (0)
defineProperty("ark_ones_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_right")) -- единицы частоты 0 - 9

defineProperty("ark_ramka", globalPropertyi("tu154ce/buttons/ovhd/ark_1_ramka")) -- кнопка рамки

-- light
defineProperty("ark_left_lit", globalPropertyf("tu154ce/lights/ark1_left_lit")) -- подсветка левой части АРК 1
defineProperty("ark_right_lit", globalPropertyf("tu154ce/lights/ark1_right_lit")) -- подсветка правой части АРК 1
defineProperty("ark_all_lit", globalPropertyf("tu154ce/lights/ark1_all_lit")) -- подсветка АРК 1

-- power
defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus36_volt", globalPropertyf("tu154ce/elec/bus36_volt_left"))

defineProperty("ark15_cc", globalPropertyf("tu154ce/radio/ark15_L_cc")) -- потребление тока АРК

-- failures




-- results
defineProperty("adf_bear", globalPropertyf("tu154ce/radio/adf_bear_1"))

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(ark_mode, 0)
	
	end
	
	notLoaded = false

end




local rot_small_sound = loadSample('Custom Sounds/ark_inn.wav')
local rot_mid_sound = loadSample('Custom Sounds/ark_mid.wav')
local rotary_big_sound = loadSample('Custom Sounds/ark_out.wav')

local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local switcher_sound = loadSample('Custom Sounds/plastic_switch.wav')

--setSampleGain(rotary_big_sound, 200)


local rot_big_last = 0
local rot_mid_last = 0
local rot_inn_last = 0

local function rotary()
	local ark_hundr_left_sw = get(ark_hundr_left)
	local ark_tens_left_sw = get(ark_tens_left)
	local ark_ones_left_sw = get(ark_ones_left)
	
	local ark_hundr_right_sw = get(ark_hundr_right)
	local ark_tens_right_sw = get(ark_tens_right)
	local ark_ones_right_sw = get(ark_ones_right)
	
	local big_summ = ark_hundr_left_sw + ark_hundr_right_sw
	
	rot_big_last = big_summ
	
	local mid_summ = ark_tens_left_sw + ark_tens_right_sw
	
	rot_mid_last = mid_summ
	
	local inn_summ = ark_ones_left_sw + ark_ones_right_sw
	if inn_summ ~= rot_inn_last then  end
	
	rot_inn_last = inn_summ
	


end

local but_summ_last = 0

local function buttons()
	local ark_ramka_sw = get(ark_ramka)
	
	local summ = ark_ramka_sw
	
	if summ ~= but_summ_last then  end
	
	but_summ_last = summ
	
end


local sw_summ_last = 0

local function switchers()
	local ark_mode_sw = get(ark_mode)
	local ark_channel_sw = get(ark_channel)
	
	local summ = ark_mode_sw + ark_channel_sw
	
	if summ ~= sw_summ_last then  end
	
	sw_summ_last = summ


end



local ones_left = 0
local decades_left = 10
local hundreds_left = 0
local ones_right  = 0
local decades_right = 10
local hundreds_right = 0

local freq_R = 0
local freq_L = 0

local disks_set = false

local angle = math.random(-180, 180)

local dir_ran = 1

local MASTER_last = get(ismaster) ~= 1

function update()

	rotary()
	buttons()
	switchers()
	
	local MASTER = get(ismaster) ~= 1	
	
	local passed = get(frame_time)

	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end

	
	local mode = get(ark_mode)
	local power = mode > 0 and get(bus27_volt) > 13 and get(bus36_volt) > 30 and get(fail) < 6
	
	set(ark15_cc, bool2int(power))
	
	local left_fr = get(left_freq)
    local right_fr = get(right_freq)
		
	-- set active channel
	local active_set = get(ark_channel)
	
	set(active, active_set)
	
	-- set backlit
	local left_lit = bool2int(power and active_set == 0) 
	local right_lit = bool2int(power and active_set == 1) 
	local backlit = bool2int(power)
	
	set(ark_left_lit, left_lit)
	set(ark_right_lit, right_lit)
	set(ark_all_lit, backlit)
	
	
	--limit frequencies
    if left_fr > 1799 then 
    	set(left_freq, 1799) 
    	left_fr = 1799
    end
    if left_fr < 100 then 
    	set(left_freq, 100) 
    	left_fr = 100
    end
    if right_fr > 1799 then
    	set(right_freq, 1799)
    	right_fr = 1799
    end
    if right_fr < 100 then
    	set(right_freq, 100)
    	right_fr = 100
    end	
	
	freq_R = right_fr
    freq_L = left_fr	

	
	if not disks_set or MASTER_last ~= MASTER then
		-- calculate disks position
		hundreds_left =  math.floor(freq_L / 100)
		decades_left = math.floor(freq_L / 10) - hundreds_left * 10
		ones_left = freq_L - hundreds_left * 100 - decades_left * 10
		
		
		if decades_left == 0 then decades_left = 10 end
		
		
		hundreds_right =  math.floor(freq_R / 100)
		decades_right = math.floor(freq_R / 10) - hundreds_right * 10
		ones_right = freq_R - hundreds_right * 100 - decades_right * 10
		
		
		if decades_right == 0 then decades_right = 10 end
		
		set(ark_hundr_left, hundreds_left)
		set(ark_tens_left, decades_left)
		set(ark_ones_left, ones_left)
		
		set(ark_hundr_right, hundreds_right)
		set(ark_tens_right, decades_right)
		set(ark_ones_right, ones_right)
		
		disks_set = true
	end
	
	MASTER_last = MASTER
	
	-- set left frequency
	-- 100
	local freq_100_L = get(ark_hundr_left)
	while freq_100_L > 17 do
		freq_100_L = freq_100_L - 17
		set(ark_hundr_left, freq_100_L)
	end
	
	while freq_100_L < 1 do
		freq_100_L = freq_100_L + 17
		set(ark_hundr_left, freq_100_L)
	end
	
	-- 10
	local freq_10_L = get(ark_tens_left)
	if freq_10_L == 10 then freq_10_L = 0 end
	
	-- 1
	local freq_1_L = get(ark_ones_left)
	while freq_1_L > 9 do
		freq_1_L = freq_1_L - 10
		set(ark_ones_left, freq_1_L)
	end
	
	while freq_1_L < 0 do
		freq_1_L = freq_1_L + 10
		set(ark_ones_left, freq_1_L)
	end
	
	
	if MASTER then set(left_freq, freq_100_L * 100 + freq_10_L * 10 + freq_1_L) end
	

	-- set right frequency
	-- 100
	local freq_100_R = get(ark_hundr_right)
	while freq_100_R > 17 do
		freq_100_R = freq_100_R - 17
		set(ark_hundr_right, freq_100_R)
	end
	
	while freq_100_R < 1 do
		freq_100_R = freq_100_R + 17
		set(ark_hundr_right, freq_100_R)
	end
	
	-- 10
	local freq_10_R = get(ark_tens_right)
	if freq_10_R == 10 then freq_10_R = 0 end
	
	-- 1
	local freq_1_R = get(ark_ones_right)
	while freq_1_R > 9 do
		freq_1_R = freq_1_R - 10
		set(ark_ones_right, freq_1_R)
	end
	
	while freq_1_R < 0 do
		freq_1_R = freq_1_R + 10
		set(ark_ones_right, freq_1_R)
	end
	
	
	if MASTER then set(right_freq, freq_100_R * 100 + freq_10_R * 10 + freq_1_R) end
	
	
	-- set bearing
	
	local source_angle = get(adf)
	local signal = 0
	if power then
		if source_angle > 90.01 or source_angle < 89.99 then signal = 1 + (math.random() - 0.49999) * 0.2 
		else signal = math.random() * 0.2
		end
		if mode == 1 and signal > 0.5 then -- compas
			angle = source_angle + (math.random() - 0.49999) * 30 * passed
		--elseif mode == 3 then -- ramka
			--angle = angle + get(ant_sw) * passed * 20
			--signal = signal * math.abs(math.cos(math.rad(source_angle - angle)))
		elseif mode == 1 then -- no signal
			angle = angle + (math.random() - 0.2) * 30 * passed * (dir_ran * 2 - 1)
		end	
	end
	if angle > 180 then angle = angle - 360
	elseif angle < -180 then angle = angle + 360 end
	
	-- change dirrection of random movement
	if math.random() > 0.99 then dir_ran = (1 - dir_ran) end
	
	--set(res_signal, signal)
	if MASTER then set(adf_bear, angle)	end

	
	
	
	
	
	
	


end