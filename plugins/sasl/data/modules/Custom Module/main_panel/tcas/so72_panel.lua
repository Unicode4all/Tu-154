-- this is another transponder panel SO-72

size = {440, 167}

-- default datarefs
defineProperty("xpdr_code", globalPropertyf("sim/cockpit/radios/transponder_code"))

ident_cmd = findCommand("sim/transponder/transponder_ident")  -- comand of transponder ident
defineProperty("xpdr_fail", globalPropertyi("sim/operation/failures/rel_g_xpndr"))

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

-- controls
defineProperty("transponder_mode", globalPropertyi("tu154ce/switchers/ovhd/transponder_mode"))
defineProperty("transponder_control", globalPropertyi("tu154ce/buttons/ovhd/transponder_control"))
defineProperty("transponder_sign", globalPropertyi("tu154ce/buttons/ovhd/transponder_sign"))
defineProperty("transponder_but_1", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_1"))
defineProperty("transponder_but_2", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_2"))
defineProperty("transponder_but_3", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_3"))
defineProperty("transponder_but_4", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_4"))
defineProperty("transponder_emerg", globalPropertyi("tu154ce/buttons/ovhd/transponder_emerg"))

-- lamps
defineProperty("transponder_red", globalPropertyf("tu154ce/lights/small/transponder_red"))
defineProperty("transponder_green", globalPropertyf("tu154ce/lights/small/transponder_green"))


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control







set(transponder_red, 0)
set(transponder_green, 0)




local text_font = loadFont("digital7.ttf")

local rot_sound = loadSample('Custom Sounds/rot_click_big.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

local function getDigits(squawk)
    local d1 = math.floor(squawk / 1000)
    squawk = squawk - d1 * 1000
    local d2 = math.floor(squawk / 100)
    squawk = squawk - d2 * 100
    local d3 = math.floor(squawk / 10)
    local d4 = squawk - d3 * 10
    return d1, d2, d3, d4
end


local sw_last = get(transponder_mode)
local buttons_last = 0

local function sounds()
	local sw = get(transponder_mode)
	if sw_last ~= sw then if get(xplane_version) < 120000 then playSample(rot_sound, false) end end
	
	sw_last = sw
	
	local buttons = get(transponder_control) + get(transponder_sign) + get(transponder_but_1) + get(transponder_but_2) + get(transponder_but_3) + get(transponder_but_4) + get(transponder_emerg)
	if buttons_last ~= buttons then  end
	
	buttons_last = buttons

end




local power = false
local buttons_summ_last = 0

local code_show = get(xpdr_code)

local self_test = false
local self_test_cnt = 0


function update()
	
	local passed = get(frame_time)
	
	sounds()
	
	local mode = get(transponder_mode)
	
	power = mode > 0 and get(bus27_volt_left) > 13
	
	local d1, d2, d3, d4 = getDigits(get(xpdr_code))
	
	-- show code
	code_show = d1..d2..d3..d4
	
	-- change code
	local butt_1 = get(transponder_but_1)
	local butt_2 = get(transponder_but_2)
	local butt_3 = get(transponder_but_3)
	local butt_4 = get(transponder_but_4)
	
	local buttons_summ = butt_1 + butt_2 + butt_3 + butt_4
	
	if power and buttons_summ > 0 and buttons_summ ~= buttons_summ_last then -- if working and any button just pressed
		
		
		if butt_1 == 1 then
			d1 = d1 + 1
			if d1 > 7 then d1 = 0 end
		end
		
		if butt_2 == 1 then
			d2 = d2 + 1
			if d2 > 7 then d2 = 0 end
		end
		
		if butt_3 == 1 then
			d3 = d3 + 1
			if d3 > 7 then d3 = 0 end
		end
		
		if butt_4 == 1 then
			d4 = d4 + 1
			if d4 > 7 then d4 = 0 end
		end
		
		if get(ismaster) ~= 1 then set(xpdr_code, d1 * 1000 + d2 * 100 + d3 * 10 + d4) end
	end

	buttons_summ_last = buttons_summ
	
	-- set emergency code
	if power and mode > 1 and get(transponder_emerg) == 1 then
		set(xpdr_code, 7700)
	end
	
	-- send IDENT signal
	if power and mode > 1 and get(transponder_sign) == 1 then
		commandOnce(ident_cmd)
	end
	
	-- lamps. need to add logic with fails
	if power and mode > 0 and get(transponder_control) == 1 then
		self_test = true
		self_test_cnt = 0
	end
	
	-- fake test. need to add failure logic here.
	if self_test then
		self_test_cnt = self_test_cnt + passed
		if self_test_cnt > 0 and self_test_cnt < 30 then
			set(transponder_red, 1)
			set(transponder_green, 0)
		elseif self_test_cnt >= 30 and self_test_cnt < 55 then
			set(transponder_red, 0)
			set(transponder_green, 1)
		else
			self_test_cnt = 0
			self_test = false
			set(transponder_red, 0)
			set(transponder_green, 0)
		end
		
	else
		self_test_cnt = 0
		set(transponder_red, 0)
		set(transponder_green, 0)
	end
	
	
	

end


components = {

	text_draw {
		position = {20, 41, 220, 220},
		font = text_font,
		color = {1, 0.3, 0.2, 1},
		monospace = true,
		font_size = 102,
		visible = function()
			return power
		end,
		text = function()
			return code_show
		end,
	
	},

}









