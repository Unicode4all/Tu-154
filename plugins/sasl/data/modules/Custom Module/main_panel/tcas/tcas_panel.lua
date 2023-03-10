-- this is TCAS panel
size = {2048, 2048}

defineProperty("tcas_on", globalPropertyi("tu154ce/switchers/ovhd/tcas_on"))  -- выключатель TCAS

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154ce/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))


defineProperty("tcas_mode", globalPropertyi("tu154ce/switchers/tcas/tcas_mode"))  --	режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA
defineProperty("tcas_rot_big", globalPropertyi("tu154ce/switchers/tcas/tcas_rot_big"))  -- большая вертелка
defineProperty("tcas_rot_small", globalPropertyi("tu154ce/switchers/tcas/tcas_rot_small"))  -- малая вертелка
defineProperty("mode_set", globalPropertyi("tu154ce/tcas/mode_set"))  -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA	4

defineProperty("tcas_ident_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_ident_btn"))  -- кнопка IDENT
defineProperty("tcas_fcn_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_fcn_btn"))  -- кнопка FCN
defineProperty("tcas_left_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_left_btn"))  -- кнопка <
defineProperty("tcas_right_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_right_btn"))  -- кнопка >
defineProperty("tcas_ent_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_ent_btn"))  -- кнопка ENT
defineProperty("tcas_atc_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_atc_btn"))  -- кнопка ATC
defineProperty("tcas_alt_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_alt_btn"))  -- кнопка ALT
defineProperty("tcas_rng_dn_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_rng_dn_btn"))  -- кнопка RNG DN
defineProperty("tcas_rng_up_btn", globalPropertyi("tu154ce/buttons/tcas/tcas_rng_up_btn"))  -- кнопка RNG UP

defineProperty("screen_mode", globalPropertyi("tu154ce/tcas/screen_mode"))  -- режим отображения на экране.  -1 = ошибка, 0 = код ответчика, 1 = above mode, 2 = FL mode, 3 = FLT ID, 4 = PLN BIT, 5 = test, 6 = range set, 11-14 = code set
defineProperty("tcas_range_set", globalPropertyi("tu154ce/tcas/range_set"))  -- дистанция на дисплее. 0 = 3, 1 = 5, 2 = 10, 3 = 15 nm

defineProperty("level_mode", globalPropertyi("tu154ce/tcas/level_mode"))  -- 1 = above, 0 = normal, -1 = below
defineProperty("fl_mode", globalPropertyi("tu154ce/tcas/fl_mode"))  -- 0 = absolute, 1 = relative
defineProperty("flt_id", globalPropertyi("tu154ce/tcas/flt_id"))  -- 0 = cover, 1 = show / change code



defineProperty("xpdr_code", globalPropertyf("sim/cockpit/radios/transponder_code"))
defineProperty("xpdr_mode", globalPropertyf("sim/cockpit/radios/transponder_mode")) 
defineProperty("xpdr_led", globalPropertyf("sim/cockpit/radios/transponder_light"))
ident_cmd = findCommand("sim/transponder/transponder_ident")  -- comand of transponder ident
defineProperty("xpdr_fail", globalPropertyi("sim/operation/failures/rel_g_xpndr"))

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- TCAS
defineProperty("ra_scale_set", globalPropertyi("tu154ce/tcas/ra_scale_set"))  -- RA mode scale set. 0 = none.
defineProperty("traffic_det", globalPropertyi("tu154ce/tcas/traffic_det"))  -- появление желтых или красных меток
defineProperty("vvi", globalPropertyf("sim/flightmodel/position/vh_ind"))  -- vertical velocity of our acf


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("text_font", loadFont("Verdana.ttf"))


local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(tcas_mode, 0)
	end
	
	notLoaded = false

end











local function getDigits(squawk)
    local d1 = math.floor(squawk / 1000)
    squawk = squawk - d1 * 1000
    local d2 = math.floor(squawk / 100)
    squawk = squawk - d2 * 100
    local d3 = math.floor(squawk / 10)
    local d4 = squawk - d3 * 10
    return d1, d2, d3, d4
end




-- sounds
local ajust_v_speed = loadSample('Custom Sounds/tcas/ajust_v_speed.wav')
local clear_conflict = loadSample('Custom Sounds/tcas/clear_conflict.wav')
local climb = loadSample('Custom Sounds/tcas/climb.wav')
local climb_now = loadSample('Custom Sounds/tcas/climb_now.wav')
local descend = loadSample('Custom Sounds/tcas/descend.wav')
local descend_now = loadSample('Custom Sounds/tcas/descend_now.wav')
local increase_climb = loadSample('Custom Sounds/tcas/increase_climb.wav')
local increase_descend = loadSample('Custom Sounds/tcas/increase_descend.wav')
local maintain_v_speed = loadSample('Custom Sounds/tcas/maintain_v_speed.wav')
local monitor_v_speed = loadSample('Custom Sounds/tcas/monitor_v_speed.wav')
local tcas_test_passed = loadSample('Custom Sounds/tcas/tcas_test_passed.wav')
local traffic_snd = loadSample('Custom Sounds/tcas/traffic.wav')




local rot_sound = loadSample('Custom Sounds/rot_click.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

local tcas_rot_big_last = get(tcas_rot_big)
local tcas_rot_small_last = get(tcas_rot_small)
local tcas_mode_last = get(tcas_mode)

local passed = get(frame_time)

mode_timer = 0


local tcas_ident_btn_last = get(tcas_ident_btn)
local tcas_fcn_btn_last = get(tcas_fcn_btn)
local tcas_left_btn_last = get(tcas_left_btn)
local tcas_right_btn_last = get(tcas_right_btn)
local tcas_ent_btn_last = get(tcas_ent_btn)
local tcas_atc_btn_last = get(tcas_atc_btn)
local tcas_alt_btn_last = get(tcas_alt_btn)
local tcas_rng_dn_btn_last = get(tcas_rng_dn_btn)
local tcas_rng_up_btn_last = get(tcas_rng_up_btn)

local text_to_screen = ""
local cursor_timer = 0
local cursor_show = true

local scr_code = get(xpdr_code)

local text_last = get(screen_mode)

local scale_last = 0
local traffic_last = false

function update()
	passed = get(frame_time)
	local power = (get(bus115_1_volt) > 110 or get(bus115_3_volt) > 110) and get(tcas_on) == 1
	local mode = get(mode_set)
	
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end



	
	-- ident button
	if get(tcas_ident_btn) == 1 and power then commandOnce(ident_cmd) end

	-- check big knob rotation
	local tcas_rot_big_now = get(tcas_rot_big)

	while tcas_rot_big_now > 11 do
		tcas_rot_big_now = tcas_rot_big_now - 10
	end
	while tcas_rot_big_now < -1 do
		tcas_rot_big_now = tcas_rot_big_now + 10
	end
	
	set(tcas_rot_big, tcas_rot_big_now)
	
	
	-- check small knob rotation
	local tcas_rot_small_now = get(tcas_rot_small)

	while tcas_rot_small_now > 11 do
		tcas_rot_small_now = tcas_rot_small_now - 10
	end
	while tcas_rot_small_now < -1 do
		tcas_rot_small_now = tcas_rot_small_now + 10
	end
	
	set(tcas_rot_small, tcas_rot_small_now)
	
	-- mode selector
	local tcas_mode_now = get(tcas_mode)
	
	if tcas_mode_now == -1 then
		mode_timer = mode_timer + passed
		if mode_timer > 5 then
			set(tcas_mode, 0)
		end
	else
		mode_timer = 0
	end
	
	
	
	-- sounds	
	if tcas_rot_big_now - tcas_rot_big_last + tcas_rot_small_now - tcas_rot_small_last + tcas_mode_now - tcas_mode_last ~= 0 then
		if get(xplane_version) < 120000 then playSample(rot_sound, false) end
	end
	
	
	



	local tcas_ident_btn_sw = get(tcas_ident_btn)
	local tcas_fcn_btn_sw = get(tcas_fcn_btn)
	local tcas_left_btn_sw = get(tcas_left_btn)
	local tcas_right_btn_sw = get(tcas_right_btn)
	local tcas_ent_btn_sw = get(tcas_ent_btn)
	local tcas_atc_btn_sw = get(tcas_atc_btn)
	local tcas_alt_btn_sw = get(tcas_alt_btn)
	local tcas_rng_dn_btn_sw = get(tcas_rng_dn_btn)
	local tcas_rng_up_btn_sw = get(tcas_rng_up_btn)
	
	
	local changes = tcas_ident_btn_sw + tcas_fcn_btn_sw + tcas_left_btn_sw + tcas_right_btn_sw + tcas_ent_btn_sw
	changes = changes + tcas_atc_btn_sw + tcas_rng_dn_btn_sw + tcas_alt_btn_sw + tcas_rng_up_btn_sw
	
	changes = changes - tcas_ident_btn_last - tcas_fcn_btn_last - tcas_left_btn_last - tcas_right_btn_last - tcas_ent_btn_last
	changes = changes - tcas_atc_btn_last - tcas_rng_dn_btn_last - tcas_alt_btn_last - tcas_rng_up_btn_last
	
	if changes ~= 0 then  end
	
	
	


	



	
	local text = get(screen_mode)
	cursor_timer = cursor_timer + passed
	
	-- make cursor blink
	if cursor_timer > 1 then
		cursor_timer = 0.5
		cursor_show = not cursor_show
	end
	
	-- make cursor blank when changing digit number
	if tcas_rot_big_last ~= tcas_rot_big_now or tcas_left_btn_sw ~= tcas_left_btn_last or tcas_right_btn_last ~= tcas_right_btn_sw then
		cursor_timer = 0
		cursor_show = true
	end
	
	-- make cursor full when changing digit itself
	if tcas_rot_small_last ~= tcas_rot_small_now then
		cursor_timer = 0
		cursor_show = false
	end
	
	-- take xpdr code when enter to code change mode
	if text ~= text_last and text >= 11 and text <= 14 and text_last < 10 then
		scr_code = get(xpdr_code)
	end
	
	local d1, d2, d3, d4 = getDigits(scr_code)
	
	if tcas_rot_small_last ~= tcas_rot_small_now then
		local knob_diff = tcas_rot_small_now - tcas_rot_small_last
		if text == 11 then -- changing digit 1
			if math.abs(knob_diff) < 5 then d1 = d1 + knob_diff end
			if d1 > 7 then d1 = 0
			elseif d1 < 0 then d1 = 7 end
		elseif text == 12 then -- changing digit 2
			if math.abs(knob_diff) < 5 then d2 = d2 + knob_diff end
			if d2 > 7 then d2 = 0
			elseif d2 < 0 then d2 = 7 end
		elseif text == 13 then -- changing digit 3
			if math.abs(knob_diff) < 5 then d3 = d3 + knob_diff end
			if d3 > 7 then d3 = 0
			elseif d3 < 0 then d3 = 7 end
		elseif text == 14 then -- changing digit 4
			if math.abs(knob_diff) < 5 then d4 = d4 + knob_diff end
			if d4 > 7 then d4 = 0
			elseif d4 < 0 then d4 = 7 end
		end
		scr_code = d1 * 1000 + d2 * 100 + d3 * 10 + d4
	end
	
	-- save screen code to XPDR
	if text >= 11 and text <= 14 and tcas_ent_btn_sw == 1 then
		--print("save")
		if get(ismaster) ~= 1 then set(xpdr_code, scr_code) end
	end
	
	
	--text = 2
	
	if text == 100 then -- no power
		text_to_screen = ""
	elseif text == -1 then
		text_to_screen = "ERROR"
	elseif text == 0 then -- squawk mode
		local code = get(xpdr_code)
		if code < 10 then code = "000"..string.format("%s", code)
		elseif code < 100 then code = "00"..string.format("%s", code)
		elseif code < 1000 then code = "0"..string.format("%s", code)
		else code = string.format("%s", code)
		end
		text_to_screen = code
	elseif text == 1 then -- level mode
		local above = get(level_mode)
		if above == 0 then text_to_screen = "NORMAL"
		elseif above == -1 then text_to_screen = "BELOW"
		else text_to_screen = "ABOVE" end
	elseif text == 2 then -- flight level
		if get(fl_mode) == 0 then
			text_to_screen = "FL - ABS"
		else text_to_screen = "FL - REL"
		end
	elseif text == 3 then -- flight ID
		text_to_screen = "FLT ID"
	
	elseif text == 4 then -- flight ID
		text_to_screen = "PLN BIT"
		
	elseif text == 5 then -- test mode
		text_to_screen = "~~~~~~~~"
	elseif text == 6 then -- range changed
		local range = get(tcas_range_set)
		if range == 0 then 
			text_to_screen = "rng 3"
		elseif range == 1 then
			text_to_screen = "rng 5"
		elseif range == 2 then
			text_to_screen = "rng 10"
		elseif range == 3 then
			text_to_screen = "rng 15"	
		end			
	elseif text == -10 then -- ident button
		text_to_screen = "ident"
	elseif text == 11 then -- changing digit 1
		local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		if cursor_show then code = string.format("%s%s%s%s%s", "sq ", " ", d2, d3, d4) end
		text_to_screen = code
	elseif text == 12 then -- changing digit 2
		local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		if cursor_show then code = string.format("%s%s%s%s%s", "sq ", d1, " ", d3, d4) end
		text_to_screen = code	
	elseif text == 13 then -- changing digit 3
		local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		if cursor_show then code = string.format("%s%s%s%s%s", "sq ", d1, d2, " ", d4) end
		text_to_screen = code
	elseif text == 14 then -- changing digit 3
		local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		if cursor_show then code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, " ") end
		text_to_screen = code
	
	
	else
		text_to_screen = ""
	end
	
	-------------------------
	-- play TA and RA sounds
	-------------------------
	
	local scale = get(ra_scale_set)
	local traffic = get(traffic_det) == 1
	local our_vvi = get(vvi)
	
	-- traffic sound
	if mode >= 3 and scale == 0 and traffic and traffic ~= traffic_last then
		if get(xplane_version) < 120000 then playSample(traffic_snd, false) end
	end
	
	-- clear of conflict
	if mode == 4 and scale == 0 and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(clear_conflict, false) end
		
		if get(xplane_version) < 120000 then stopSample(traffic_snd) end
		if get(xplane_version) < 120000 then stopSample(ajust_v_speed) end
		if get(xplane_version) < 120000 then stopSample(climb) end
		if get(xplane_version) < 120000 then stopSample(climb_now) end
		if get(xplane_version) < 120000 then stopSample(descend) end
		if get(xplane_version) < 120000 then stopSample(descend_now) end
		if get(xplane_version) < 120000 then stopSample(increase_climb) end
		if get(xplane_version) < 120000 then stopSample(increase_descend) end
		if get(xplane_version) < 120000 then stopSample(maintain_v_speed) end
		if get(xplane_version) < 120000 then stopSample(monitor_v_speed) end
	end
	
	-- climb
	if mode == 4 and scale == 1 and scale_last == 0 and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(climb, false) end
	end
	
	-- climb now
	if mode == 4 and scale == 1 and scale_last == 3 and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(climb_now, false) end
	end
	
	-- descend
	if mode == 4 and scale == 3 and scale_last == 0 and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(descend, false) end
	end	
	
	-- descend now
	if mode == 4 and scale == 3 and scale_last == 1 and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(descend_now, false) end
	end
	
	-- increase climb
	if mode == 4 and scale == 2 and our_vvi < 12 and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(increase_climb, false) end
	end	
	
	-- increase descend
	if mode == 4 and scale == 4 and our_vvi > -12 and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(increase_descend, false) end
	end		
	
	-- adjust VS
	if mode == 4 and ((scale == 1 and our_vvi > 12) or (scale == 3 and our_vvi < -12) or (scale == 7 and our_vvi > 0) or (scale == 9 and our_vvi < 0) or (scale == 6 and our_vvi > 10) or (scale == 8 and our_vvi < -10)) and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(ajust_v_speed, false) end
	end		
	
	-- maintain VS
	if mode == 4 and ((scale == 2 and our_vvi > 12) or (scale == 4 and our_vvi < -12)) and scale ~= scale_last then
		if get(xplane_version) < 120000 then playSample(maintain_v_speed, false) end
	end	
	
	-- test OK
	if mode == 0 and text == 0 and text_last == 5 and text_last ~= text then
		if get(xplane_version) < 120000 then playSample(tcas_test_passed, false) end
	end	
	
	
	
	
	
	
	
	
	text_last = text
	scale_last = scale
	traffic_last = traffic
	
	
	tcas_rot_big_last = tcas_rot_big_now
	tcas_rot_small_last = tcas_rot_small_now
	tcas_mode_last = tcas_mode_now
	
	tcas_ident_btn_last = tcas_ident_btn_sw
	tcas_fcn_btn_last = tcas_fcn_btn_sw
	tcas_left_btn_last = tcas_left_btn_sw
	tcas_right_btn_last = tcas_right_btn_sw
	tcas_ent_btn_last = tcas_ent_btn_sw
	tcas_atc_btn_last = tcas_atc_btn_sw
	tcas_alt_btn_last = tcas_alt_btn_sw
	tcas_rng_dn_btn_last = tcas_rng_dn_btn_sw
	tcas_rng_up_btn_last = tcas_rng_up_btn_sw	
	
end










components = {

	tcas_text{
		position = {230, 1238, 267, 67},
		text = function()
			return text_to_screen
		end, -- BE SURE TO SEND ONLY 8 SYMBOLS
	},
	
	text_draw {
		position = {47, 977, 110, 110},
		font = text_font,
		color = {1, 0.8, 0.3, 1},
		visible = function()
			return get(screen_mode) == 5
		end,
		text = function()
			return "ATC FAIL"
		end,
	},
	
	text_draw { -- "1  1 "
		position = {70, 1255, 110, 110},
		font = text_font,
		color = {0.8, 0.8, 0.8, 1},
		visible = function()
			return get(screen_mode) ~= 100
		end,
		text = function()
			return "1    1"
		end,
	},

	text_draw { -- "1  1 "
		position = {70, 1255, 110, 110},
		font = text_font,
		color = {0.8, 0.8, 0.8, 1},
		visible = function()
			return get(screen_mode) == 5
		end,
		text = function()
			return "  2    2"
		end,
	},
	
	rectangle {
		position = {2, 1240, 50, 50},
		color = {0.3, 0.8, 0.3, 1},
		visible = function()
			return get(screen_mode) ~= 100 and get(xpdr_led) > 0.1 and get(tcas_mode) > 0
		end
	
	},











	
	
}







--[[
local font = loadFont("segmental.fnt")

function draw()

	drawText(font, 235, 1245, "@@@@@@@@", 12, false, false, 1, 0.7, 0.5)

end

--]]
