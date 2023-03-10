-- this is simple SPU logic
size = {140, 180}

-- define property table
defineProperty("audio_selection_com1", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_com1"))
defineProperty("audio_selection_com2", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_com2"))
defineProperty("audio_selection_nav1", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_nav1"))
defineProperty("audio_selection_nav2", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_nav2"))
defineProperty("audio_selection_adf1", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf1"))
defineProperty("audio_selection_adf2", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf2"))
--defineProperty("audio_dme_enabled", globalPropertyi("sim/cockpit2/radios/actuators/audio_dme_enabled"))

defineProperty("com1_right_is_selected", globalPropertyi("sim/cockpit2/radios/actuators/com1_right_is_selected"))

defineProperty("VHF2Freq", globalPropertyf("sim/cockpit2/radios/actuators/com2_frequency_hz"))  -- set the frequency
defineProperty("VHF1Freq", globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz"))  -- set the frequency

defineProperty("spu_power_sw", globalPropertyi("tu154ce/switchers/spu_1_power"))
defineProperty("spu_mode", globalPropertyi("tu154ce/switchers/spu_1_mode"))
defineProperty("spu_source", globalPropertyi("tu154ce/switchers/spu_1_source"))
defineProperty("bus27_L", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_R", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("vhf_1_on", globalPropertyi("tu154ce/switchers/ovhd/vhf_1_on"))  -- power switch
defineProperty("vhf_2_on", globalPropertyi("tu154ce/switchers/ovhd/vhf_2_on"))  -- power switch


defineProperty("ark_mode_1", globalPropertyi("tu154ce/switchers/ovhd/ark_1_mode")) -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
defineProperty("ark_mode_2", globalPropertyi("tu154ce/switchers/ovhd/ark_2_mode")) -- режим АРК 2 0 - выкл, 1 - комп, 2 - ант, 3 - рам

defineProperty("com1_power", globalPropertyi("sim/cockpit2/radios/actuators/com1_power"))
defineProperty("com2_power", globalPropertyi("sim/cockpit2/radios/actuators/com2_power"))



local switch_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')
local btn_click = loadSample('Custom Sounds/plastic_btn.wav')
local rot_click = loadSample('Custom Sounds/rot_click.wav')
local plastic_sound = loadSample('Custom Sounds/plastic_switch.wav')


local mode_last = get(spu_source)

function update()

	local mode = get(spu_source)
	local power = get(spu_power_sw) == 1 and get(bus27_L) > 13
	
	set(VHF2Freq, get(VHF1Freq))
	
	mode_last = mode
	
	
	if mode == 0 and power then -- COM 1
		set(audio_selection_com1, bool2int(get(bus27_L) > 20 and get(vhf_1_on) == 1))
		set(audio_selection_com2, 0)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0)
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
		set(com1_right_is_selected, 0)
	elseif mode == 1 and power then -- COM 2
		set(audio_selection_com1, bool2int(get(bus27_R) > 20 and get(vhf_2_on) == 1))
		set(audio_selection_com2, 0)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0)
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
		set(com1_right_is_selected, 1)
	elseif mode == 4 and power then -- NAV 1 or ADF 1
		if get(ark_mode_1) == 2 then
			set(audio_selection_com1, 0)
			set(audio_selection_com2, 0)
			set(audio_selection_nav1, 0)
			set(audio_selection_nav2, 0)
			set(audio_selection_adf1, 1)
			set(audio_selection_adf2, 0)
			set(com1_right_is_selected, 1)
		else
			set(audio_selection_com1, 0)
			set(audio_selection_com2, 0)
			set(audio_selection_nav1, 1)
			set(audio_selection_nav2, 0)
			set(audio_selection_adf1, 0)
			set(audio_selection_adf2, 0)
			set(com1_right_is_selected, 1)
		end
	elseif mode == 5 and power then -- NAV 2 or ADF 2
		if get(ark_mode_2) == 2 then
			set(audio_selection_com1, 0)
			set(audio_selection_com2, 0)
			set(audio_selection_nav1, 0)
			set(audio_selection_nav2, 0)
			set(audio_selection_adf1, 0)
			set(audio_selection_adf2, 1)
			set(com1_right_is_selected, 1)
		else
			set(audio_selection_com1, 0)
			set(audio_selection_com2, 0)
			set(audio_selection_nav1, 0)
			set(audio_selection_nav2, 1)
			set(audio_selection_adf1, 0)
			set(audio_selection_adf2, 0)
			set(com1_right_is_selected, 1)
		end
	else -- none
		set(audio_selection_com1, 0)
		set(audio_selection_com2, 0)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0)
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
		set(com1_right_is_selected, 1)
	end


end



