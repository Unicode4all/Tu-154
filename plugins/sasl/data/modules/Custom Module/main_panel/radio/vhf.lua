-- this is VHF radio
include("functions.lua")
size = { 420, 90 }

defineProperty("num", 0)

--defineProperty("frequency", globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz"))  -- set the frequency
--defineProperty("freq_sby", globalPropertyf("sim/cockpit2/radios/actuators/com1_standby_frequency_hz"))  -- set the frequency

defineProperty("frequency", globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz_833"))        -- set the frequency
defineProperty("freq_sby", globalPropertyf("sim/cockpit2/radios/actuators/com1_standby_frequency_hz_833")) -- set the frequency


-- controls
defineProperty("vhf_left", globalPropertyi("tu154ce/rotary/ovhd/vhf_1_left"))   -- knob
defineProperty("vhf_right", globalPropertyi("tu154ce/rotary/ovhd/vhf_1_right")) -- knob

defineProperty("vhf_on", globalPropertyi("tu154ce/switchers/ovhd/vhf_1_on"))    -- power switch

defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left"))

defineProperty("spu_source", globalPropertyi("tu154ce/switchers/spu_1_source"))

-- results
defineProperty("com_power", globalPropertyi("sim/cockpit2/radios/actuators/com1_power"))

defineProperty("vhf_cc", globalPropertyf("tu154ce/radio/vhf1_cc"))


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster"))         -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local rot_small_sound = loadSample('Custom Sounds/com.wav')

setSampleGain(rot_small_sound, 500)

local text_font = loadFont('digital7.ttf')


local rot_summ_last = 0

local function rotary()
	local nav_left_sw = get(vhf_left)
	local nav_right_sw = get(vhf_right)

	local summ = nav_left_sw + nav_right_sw

	if summ ~= rot_summ_last then
	end

	rot_summ_last = summ
end

-- variables for separate manipulations

local freq_100 = 0 -- digits before period
local freq_10 = 0  -- digits after period

local freq_10_show = 0

local freq_show = ""

local power = false

local knob_last_L = get(vhf_left)
local knob_last_R = get(vhf_right)


function update()
	rotary()

	local MASTER = get(ismaster) ~= 1




	-- knobs cycle
	local left_knob = get(vhf_left)
	local right_knob = get(vhf_right)

	left_knob = around(left_knob, -10, 26, 36)
	right_knob = around(right_knob, -10, 26, 36)


	set(vhf_left, left_knob)
	set(vhf_right, right_knob)


	local freq = get(frequency)
	-- set standby frequency as the main here
	if (get(num) == 0 and get(spu_source) == 1) or (get(num) == 1 and get(spu_source) == 0) then freq = get(freq_sby) end



	power = get(vhf_on) == 1 and get(bus27_volt) > 13 -- temp


	local MHz = math.floor(freq / 1000)
	local kHz = freq % 1000

	local out = kHz % 1000
	if out == 20 or out == 45 or out == 70 or out == 95 then kHz = kHz + right_knob * 5 end

	MHz = around(MHz, 118, 136, 18)
	kHz = around(kHz, 0, 995, 1000)

	kHz = limit(kHz, 0, 995)

	freq = MHz * 1000 + kHz




	if MASTER then
		-- change frequency
		if power then
			local knob_diff_L = left_knob - knob_last_L
			local knob_diff_R = right_knob - knob_last_R


			if math.abs(knob_diff_L) < 5 then
				MHz = MHz + knob_diff_L
			end

			if math.abs(knob_diff_R) < 5 then
				kHz = kHz + 5 * knob_diff_R
			end
		end

		MHz = around(MHz, 118, 136, 18)
		kHz = around(kHz, 0, 995, 1000)

		if (get(num) == 0 and get(spu_source) == 1) or (get(num) == 1 and get(spu_source) == 0) then
			set(freq_sby, MHz * 1000 + kHz)
		else
			set(frequency, MHz * 1000 + kHz)
		end
	end

	freq_show = string.format("%.3f", freq / 1000)

	set(com_power, bool2int(power))
	set(vhf_cc, bool2int(power) * 1.2)

	knob_last_L = left_knob
	knob_last_R = right_knob
end

function onAvionicsDone()
	set(com_power, 1)
end

setFontGlyphSpacingFactor(text_font, 0.9)
setFontRenderMode(text_font, TEXT_RENDER_FORCED_MONO)
setFontItalic(text_font, true)

components = {


	radio_display {
		position = { 35, 20, 160, 140 },
		color = { 0.2, 1, 0.2, 1 },
		freq = function()
			return freq_show
		end,
		visible = function()
			return power
		end,
	},


}


--[[
function draw()
	
	local c = get(color)
	
	drawText(text_font, 0, 0, "000.000", 12, false, false, c[1], c[2], c[3], c[4])

end
--]]
