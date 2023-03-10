-- this is flaps, slats and hor-stab logic

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment
-- sim positions
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

defineProperty("flap_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_fla2def")) -- middle flaps left
defineProperty("flap_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_fla2def")) -- middle flaps right

--defineProperty("slats", globalPropertyf("sim/flightmodel/controls/slatrat")) -- slats position. this one works
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too

defineProperty("stab_ratio", globalPropertyf("sim/cockpit2/controls/elevator_trim")) -- sim pitch trimmer

-- controls
defineProperty("sim_flap_ratio", globalPropertyf("sim/cockpit2/controls/flap_ratio")) -- sim flaps ratio control. use for axis and commands

defineProperty("flaps_lever", globalPropertyf("tu154ce/controll/flaps_lever")) -- sim flaps ratio control. use for axis and commands
defineProperty("flaps_sel", globalPropertyi("tu154ce/switchers/flaps_sel")) -- выбор режимов работы закрылков. -1 - выкл, 0 - авт, +1 - ручное

defineProperty("slat_man", globalPropertyi("tu154ce/switchers/slat_man")) -- ручное управление предкрылками. -1 - уборка, 0 выкл, +1 - выпуск
defineProperty("slat_man_cap", globalPropertyi("tu154ce/switchers/slat_man_cap")) -- крышка ручного урпавления предкрылками

defineProperty("stab_man_cap", globalPropertyi("tu154ce/controll/stab_man_cap")) -- крышка управления стабилизатором
defineProperty("stab_manual", globalPropertyi("tu154ce/controll/stab_manual")) -- уплавение стабилизатором. 0 - нейтр, +1 - кабрирование
defineProperty("stab_setting", globalPropertyi("tu154ce/controll/stab_setting")) -- положение центровки для стаба. 0 - З, 1 - С, 2 - П	1

-- other sources

-- hydraulics
defineProperty("gs_press_1", globalPropertyf("tu154ce/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154ce/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154ce/hydro/gs_press_3")) -- давление в ГС3

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))

defineProperty("ctr_115_1_cc", globalPropertyf("tu154ce/control/ctr_115_1_cc")) -- нагрузка на сеть
defineProperty("ctr_115_3_cc", globalPropertyf("tu154ce/control/ctr_115_3_cc")) -- нагрузка на сеть

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


-- failures
defineProperty("flap_fail_left", globalPropertyi("tu154ce/failures/flap_fail_left")) -- 
defineProperty("flap_fail_right", globalPropertyi("tu154ce/failures/flap_fail_right")) -- 

defineProperty("stab_eng_fail", globalPropertyi("tu154ce/failures/stab_eng_fail")) -- 
defineProperty("stab_automatic_fail", globalPropertyi("tu154ce/failures/stab_automatic_fail")) -- 
defineProperty("slats_fail", globalPropertyi("tu154ce/failures/slats_fail")) -- 




flaps_cmd_up = findCommand("sim/flight_controls/flaps_up")
flaps_cmd_down = findCommand("sim/flight_controls/flaps_down")

local flaps_sound = loadSample('Custom Sounds/flaps_hnd.wav') --

function flaps_up_handler(phase)
	if 0 == phase then
		if get(external_view) == 0 then if get(xplane_version) < 120000 then playSample(flaps_sound, false) end end
	end
	return 0
end

function flaps_down_handler(phase)
	if 0 == phase then
		if get(external_view) == 0 then if get(xplane_version) < 120000 then playSample(flaps_sound, false) end end
	end
	return 0
end

registerCommandHandler(flaps_cmd_up, 0, flaps_up_handler)
registerCommandHandler(flaps_cmd_down, 0, flaps_down_handler)




flap_lever_tbl = {
{-50000, 0},
{0, 0},
{0.20, 15},
{0.25, 15}, -- stop pos
{0.30, 15},
{0.45, 28},
{0.50, 28}, -- stop pos
{0.55, 28},
{0.70, 36},
{0.75, 36}, -- stop pos
{0.80, 36},
{0.95, 45},
{1.00, 45}, -- stop pos
{10000, 45}
}

local mid_flap_tbl = {
{0, 0},
{15, 13},
{28, 25},
{36, 32},
{45, 40}
}

local flaps_pos_L_cmd = get(flap_inn_L)
local flaps_pos_R_cmd = get(flap_inn_R)
local flaps_dirr_L = 0
local flaps_dirr_R = 0

local flap_SPD = 1.8 -- deg per second
local flap_pos_L_last = flaps_pos_L_cmd
local flap_pos_R_last = flaps_pos_R_cmd

local slats_pos_cmd = get(slats)
local slats_dirr = 0
local spats_spd = 0.2 * 0.5

local stab_pos_now = get(stab_ratio) * 5.5 -- 0 - 5.5 degrees
local stab_pos_cmd = stab_pos_now
local stab_dirr = 0
local flaps_lever_last = get(flaps_lever)


local lever_moved_dir = -1 -- -1 = moved up, +1 = moved down
local stab_must_move = false

function update()
	
	local MASTER = get(ismaster) ~= 1
	
if MASTER then
	
	-- initial
	local passed = get(frame_time)
	local flaps_mode = get(flaps_sel)
	
	-- failures
	local flap_mech_L_fail = get(flap_fail_left)
	local flap_mech_R_fail = get(flap_fail_right)
	
	-- power
	local power27_L = bool2int(get(bus27_volt_left) > 13)
	local power27_R = bool2int(get(bus27_volt_right) > 13)
	
	local power36_L = bool2int(get(bus36_volt_left) > 30)
	local power36_R = bool2int(get(bus36_volt_right) > 30)
	
	local power115_1 = bool2int(get(bus115_1_volt) > 110)
	local power115_3 = bool2int(get(bus115_3_volt) > 110)
	
	local CC_115_1 = 0
	local CC_115_3 = 0
	
	
	
	
	--------------------------------------
	-- flaps --

	
	-- flap lever position and animation
	local flap_lever_pos = interpolate(flap_lever_tbl, get(sim_flap_ratio))
	
	set(flaps_lever, flap_lever_pos)
	
	-- calculate flaps commanded position
	flaps_pos_L_cmd = flap_lever_pos -- for automatic movement. can add control failures here
	flaps_pos_R_cmd = flap_lever_pos -- for automatic movement. can add control failures here
	
	-- for manual movement

	
	-- flaps movements
	local HS1 = math.min(get(gs_press_1) * 0.15, 1)
	local HS2 = math.min(get(gs_press_2) * 0.15, 1)
	
	local flap_pos_now_L = get(flap_inn_L)
	local flap_pos_now_R = get(flap_inn_R)
	
	if flaps_mode == 0 then -- automatic movements
		
		if flap_pos_now_L < flaps_pos_L_cmd - 0.1 then flaps_dirr_L = 1
		elseif flap_pos_now_L > flaps_pos_L_cmd then flaps_dirr_L = -1
		else flaps_dirr_L = 0
		end

		if flap_pos_now_R < flaps_pos_R_cmd - 0.1 then flaps_dirr_R = 1
		elseif flap_pos_now_R > flaps_pos_R_cmd then flaps_dirr_R = -1
		else flaps_dirr_R = 0
		end
		
		
		-- can add automatic failures here, controlling dirrection
		
		
	elseif flaps_mode == 1 then -- manual movements
		
		if flap_lever_pos > 40 then	
			flaps_dirr_L = 1
			flaps_dirr_R = 1
		elseif flap_lever_pos < 5 then 
			flaps_dirr_L = -1
			flaps_dirr_R = -1
		else 
			flaps_dirr_L = 0 
			flaps_dirr_R = 0
		end

		
	end
	
	-- add power dependencies
	flaps_dirr_L = flaps_dirr_L * power36_L * power36_R
	flaps_dirr_R = flaps_dirr_R * power36_L * power36_R
	
	-- move the flaps
	flap_pos_now_L = flap_pos_now_L + flaps_dirr_L * passed * math.max(HS1, HS2) * flap_SPD * (1 - flap_mech_L_fail) 
	flap_pos_now_R = flap_pos_now_R + flaps_dirr_R * passed * math.max(HS1, HS2) * flap_SPD * (1 - flap_mech_R_fail) 
	
	-- set limits
	if flap_pos_now_L > 45 then flap_pos_now_L = 45
	elseif flap_pos_now_L < 0 then flap_pos_now_L = 0 end
		
	if flap_pos_now_R > 45 then flap_pos_now_R = 45
	elseif flap_pos_now_R < 0 then flap_pos_now_R = 0 end	
	

	-- brake unsynced flaps
	if math.abs(flap_pos_now_L - flap_pos_now_R) < 3 then 
		flap_pos_L_last = flap_pos_now_L
		flap_pos_R_last = flap_pos_now_R
	end
	
	
	-- flap sounds
	
	if flaps_lever_last ~= flap_lever_pos and (flap_lever_pos == 0 or flap_lever_pos == 15 or flap_lever_pos == 28 or flap_lever_pos == 36 or flap_lever_pos == 45) then
		if get(xplane_version) < 120000 then playSample(flaps_sound, false) end
	end
	
	flaps_lever_last = flap_lever_pos
	
	
	
	-- set results	
	set(flap_inn_L, flap_pos_L_last)
	set(flap_inn_R, flap_pos_R_last)
	
	set(flap_mid_L, interpolate(mid_flap_tbl, flap_pos_L_last))
	set(flap_mid_R, interpolate(mid_flap_tbl, flap_pos_R_last))	
	
	-----------------------------------------------------
	-- slats -- 
	local slats_pos = get(slats)
	local stats_eng = 2 - get(slats_fail) -- can add failures here
	
	-- calculate new position of slats
	if get(slat_man_cap) == 0 then -- automatic mode
		if flap_lever_pos >= 5 then slats_pos_cmd = 1
		elseif flap_lever_pos < 5 and flap_pos_L_last <= 14 and flap_pos_R_last <= 14 then slats_pos_cmd = 0
		end	
		
		if slats_pos_cmd > slats_pos + 0.01 then slats_dirr = 1
		elseif slats_pos_cmd < slats_pos then slats_dirr = -1
		else slats_dirr = 0 end
		--slats_dirr
		
	else -- manual mode
		slats_dirr = get(slat_man)
		slats_pos_cmd = slats_pos
	end
	
	-- power
	slats_dirr = slats_dirr * power36_L * power36_R
	
	-- set movement
	slats_pos = slats_pos + slats_dirr * passed * spats_spd * (bool2int(stats_eng > 1) * power115_1 * power27_L + bool2int(stats_eng > 0) * power115_3 * power27_R)
	
	if slats_dirr ~= 0 then
		if stats_eng > 1 then CC_115_1 = 6.5 end
		if stats_eng > 0 then CC_115_3 = 6.5 end
	end
	
	if slats_pos > 1 then slats_pos = 1
	elseif slats_pos < 0 then slats_pos = 0 end
	
	set(slats, slats_pos)
	
	
	----------------------------------------------------
	-- stab --

	
	local stab_mechs = 2 - get(stab_eng_fail) -- two engines working normally. can add failures here
	
	-- calculate new stab position and dirrection of movement
	if get(stab_man_cap) == 0 and get(stab_automatic_fail) == 0 then -- automatic controls and no automatic fails
		local stab_set = get(stab_setting)
		-- check lever movement
		if flap_lever_pos > flap_pos_L_last + 0.1 and flap_lever_pos > flap_pos_R_last + 0.1 then -- flaps lever moving down
			lever_moved_dir = 1
			stab_must_move = true
		elseif flap_lever_pos < flap_pos_L_last - 0.1 and flap_lever_pos < flap_pos_R_last - 0.1 then -- flaps moving up
			lever_moved_dir = -1
			stab_must_move = true
		else 
			lever_moved_dir = 0
			stab_must_move = false
		end		

		-- calculate stab new position
		if lever_moved_dir == 1 and stab_must_move then 
			if flap_lever_pos >= 15 and flap_lever_pos <= 28 then 
				if stab_set == 2 then stab_pos_cmd = 3
				elseif stab_set == 1 then stab_pos_cmd = 1.5
				else stab_pos_cmd = 0 end
			elseif flap_lever_pos >= 36 and flap_pos_L_last >= 31 and flap_pos_R_last >= 31 then
				if stab_set == 2 then stab_pos_cmd = 5.5
				elseif stab_set == 1 then stab_pos_cmd = 3
				else stab_pos_cmd = 0 end			
			end
		elseif lever_moved_dir == -1 and stab_must_move then 
			if --[[flap_lever_pos >= 15 and--]] flap_lever_pos <= 28 and flap_pos_L_last <= 34 and flap_pos_R_last <= 34 then 
				--print("work 2")
				if stab_set == 2 then stab_pos_cmd = 3
				elseif stab_set == 1 then stab_pos_cmd = 1.5
				else stab_pos_cmd = 0 end			
			end			
		end
		
		if flap_lever_pos < 5 and flap_pos_L_last < 25 and flap_pos_R_last < 25 then stab_pos_cmd = 0 end -- flight position
		
		
		--stab_must_move = math.abs(stab_pos_cmd - stab_pos_now) > 0.01 and math.abs(flap_pos_L_last - flaps_pos_L_cmd) > 0.1 and math.abs(flap_pos_R_last - flaps_pos_R_cmd) > 0.1
		
		
		if stab_pos_cmd > stab_pos_now + 0.01 then stab_dirr = 1
		elseif stab_pos_cmd < stab_pos_now then stab_dirr = -1
		else stab_dirr = 0 end
		
		
	elseif get(stab_man_cap) == 1 then -- manual stab control
		stab_dirr = get(stab_manual)
		stab_pos_cmd = stab_pos_now
	end
	
	
	
	-- stab movements
	stab_pos_now = stab_pos_now + stab_dirr * passed * (bool2int(stab_mechs > 0) * power115_1 + bool2int(stab_mechs > 1) * power115_3) * 0.11
	
	if stab_dirr ~= 0 then
		if stab_mechs > 1 then CC_115_1 = CC_115_1 + 6.5 end
		if stab_mechs > 0 then CC_115_3 = CC_115_3 + 6.5 end
	
	end
	
	
	
	-- set limits
	if stab_pos_now > 5.5 then stab_pos_now = 5.5
	elseif stab_pos_now < 0 then stab_pos_now = 0 end
	
	
	--stab_dirr = 0
	--stab_pos_cmd = 0
	set(stab_ratio, stab_pos_now / 5.5)
	
	set(ctr_115_1_cc, CC_115_1)
	set(ctr_115_3_cc, CC_115_3)
	
end	



end
