-- this is antiice logic.

-- controls
defineProperty("soi21_on", globalPropertyi("tu154ce/switchers/eng/soi21_on")) -- выключатель СОИ 21
defineProperty("soi21_test", globalPropertyi("tu154ce/buttons/eng/soi21_test")) -- проверка СОИ 21


defineProperty("antiice_slats", globalPropertyi("tu154ce/switchers/eng/antiice_slats")) -- противообледенители
defineProperty("antiice_eng_1", globalPropertyi("tu154ce/switchers/eng/antiice_eng_1")) -- противообледенители
defineProperty("antiice_eng_2", globalPropertyi("tu154ce/switchers/eng/antiice_eng_2")) -- противообледенители
defineProperty("antiice_eng_3", globalPropertyi("tu154ce/switchers/eng/antiice_eng_3")) -- противообледенители
defineProperty("antiice_wing", globalPropertyi("tu154ce/switchers/eng/antiice_wing")) -- противообледенители

defineProperty("window_heat_1", globalPropertyi("tu154ce/switchers/ovhd/window_heat_1")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_2", globalPropertyi("tu154ce/switchers/ovhd/window_heat_2")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_3", globalPropertyi("tu154ce/switchers/ovhd/window_heat_3")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно

defineProperty("pitot_heat_1", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_1")) -- обогрев ППД лев
defineProperty("pitot_heat_2", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_2")) -- обогрев ППД прав
defineProperty("pitot_heat_3", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_3")) -- обогрев ППД АБСУ





-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))
defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154ce/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))

-- sources
defineProperty("window_ice", globalPropertyf("sim/flightmodel/failures/window_ice")) -- ratio of icing on the windshield

--defineProperty("hot_tube_t", globalPropertyf("tu154ce/bleed/hot_tube_t")) -- температура горячего воздуха в трубопроводе

defineProperty("rpm_high_1", globalPropertyf("tu154ce/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154ce/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154ce/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

--defineProperty("eng_airvalve_1", globalPropertyf("tu154ce/bleed/eng_airvalve_1")) -- открытие отбора воздуха от двигателя
--defineProperty("eng_airvalve_2", globalPropertyf("tu154ce/bleed/eng_airvalve_2")) -- открытие отбора воздуха от двигателя
--defineProperty("eng_airvalve_3", globalPropertyf("tu154ce/bleed/eng_airvalve_3")) -- открытие отбора воздуха от двигателя

defineProperty("termo", globalPropertyf("sim/weather/temperature_ambient_c")) -- тепература воздуха

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("IAS", globalPropertyf("sim/flightmodel/position/indicated_airspeed"))

defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) --
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) --

-- failures
defineProperty("ppd_3_heat_fail", globalPropertyi("tu154ce/antiice/ppd_3_heat_fail"))


defineProperty("rel_ice_inlet_heat1", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat"))
defineProperty("rel_ice_inlet_heat2", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat2"))
defineProperty("rel_ice_inlet_heat3", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat3"))

defineProperty("rel_ice_pitot_heat1", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat1"))
defineProperty("rel_ice_pitot_heat2", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat2"))

defineProperty("rel_ice_surf_heat", globalPropertyi("sim/operation/failures/rel_ice_surf_heat"))
defineProperty("rel_ice_surf_heat2", globalPropertyi("sim/operation/failures/rel_ice_surf_heat2"))

defineProperty("rio_fail", globalPropertyi("tu154ce/failures/rio_fail"))

defineProperty("window_heat_fail_1", globalPropertyi("tu154ce/failures/window_heat_fail_1"))
defineProperty("window_heat_fail_2", globalPropertyi("tu154ce/failures/window_heat_fail_2"))
defineProperty("window_heat_fail_3", globalPropertyi("tu154ce/failures/window_heat_fail_3"))

-- results
defineProperty("ice_detected", globalPropertyi("tu154ce/antiice/ice_detected")) -- обнаружен лед
defineProperty("ice_detect_ok", globalPropertyi("tu154ce/antiice/ice_detect_ok")) -- система СОИ работает

defineProperty("ice_window_heat_on", globalPropertyi("sim/cockpit2/ice/ice_window_heat_on")) -- обогрев стекла в симе

defineProperty("window_ice_1", globalPropertyf("tu154ce/anim/window_ice_1")) -- уровень льда на стеклах
defineProperty("window_ice_2", globalPropertyf("tu154ce/anim/window_ice_2")) -- уровень льда на стеклах
defineProperty("window_ice_3", globalPropertyf("tu154ce/anim/window_ice_3")) -- уровень льда на стеклах
defineProperty("window_ice_4", globalPropertyf("tu154ce/anim/window_ice_4")) -- уровень льда на стеклах

defineProperty("inlet_heat_1", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[0]")) --
defineProperty("inlet_heat_2", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[1]")) --
defineProperty("inlet_heat_3", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[2]")) --

defineProperty("sim_pitot_heat_1", globalPropertyi("sim/cockpit2/ice/ice_pitot_heat_on_pilot")) --
defineProperty("sim_pitot_heat_2", globalPropertyi("sim/cockpit2/ice/ice_pitot_heat_on_copilot")) --

defineProperty("AOA_heat_on", globalPropertyi("sim/cockpit2/ice/ice_AOA_heat_on")) --
defineProperty("AOA_heat_on_copilot", globalPropertyi("sim/cockpit2/ice/ice_AOA_heat_on_copilot")) --

defineProperty("wings_heat_on", globalPropertyi("sim/cockpit2/ice/ice_surfce_heat_on")) --

defineProperty("frm_ice", globalPropertyf("sim/flightmodel/failures/frm_ice")) --
defineProperty("frm_ice2", globalPropertyf("sim/flightmodel/failures/frm_ice2")) --

defineProperty("wing_heating", globalPropertyi("tu154ce/antiice/wing_heating")) -- работает обогрев крыла
defineProperty("slat_heating", globalPropertyi("tu154ce/antiice/slat_heating")) -- работает обогрев крыла

defineProperty("ai_27_L_cc", globalPropertyf("tu154ce/antiice/ai_27_L_cc")) -- нагрузка на сеть
defineProperty("ai_27_R_cc", globalPropertyf("tu154ce/antiice/ai_27_R_cc")) -- нагрузка на сеть

defineProperty("ai_115_1_cc", globalPropertyf("tu154ce/antiice/ai_115_1_cc")) -- нагрузка на сеть
defineProperty("ai_115_2_cc", globalPropertyf("tu154ce/antiice/ai_115_2_cc")) -- нагрузка на сеть
defineProperty("ai_115_3_cc", globalPropertyf("tu154ce/antiice/ai_115_3_cc")) -- нагрузка на сеть

defineProperty("eng_heat_open_1", globalPropertyi("tu154ce/antiice/eng_heat_open_1")) -- открыта заслонка обогрева двигателя
defineProperty("eng_heat_open_2", globalPropertyi("tu154ce/antiice/eng_heat_open_2")) -- открыта заслонка обогрева двигателя
defineProperty("eng_heat_open_3", globalPropertyi("tu154ce/antiice/eng_heat_open_3")) -- открыта заслонка обогрева двигателя



-- gauges
defineProperty("wing_heat_t", globalPropertyf("tu154ce/antiice/wing_heat_t")) -- температура обогрева крыла
defineProperty("stab_heat_t", globalPropertyf("tu154ce/antiice/stab_heat_t")) -- температура обогрева стабилизатора


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

--window


window_windshield_temp = globalPropertyf("tu154ce/antiice/window_windshield_temp")
window_left_temp = globalPropertyf("tu154ce/antiice/window_left_temp")
window_right_temp = globalPropertyf("tu154ce/antiice/window_right_temp")

window_windshield_act = globalPropertyi("tu154ce/antiice/window_windshield_act")
window_left_act = globalPropertyi("tu154ce/antiice/window_left_act")
window_right_act = globalPropertyi("tu154ce/antiice/window_right_act")
xplane_version = globalPropertyi("sim/version/xplane_internal_version")

local ice_reseted = false
local ice_ratio_last = get(window_ice)
local ice_speed = 0

local ice_timer = 20
local ice_work_timer = 150

local ice_on_wings_L = 0
local ice_on_wings_R = 0
local ice_on_slats_L = 0
local ice_on_slats_R = 0

--[[
set(window_ice_1, 1)
set(window_ice_2, 1)
set(window_ice_3, 1)
set(window_ice_4, 1)
--]]
function update()
	local MASTER = get(ismaster) ~= 1

	local passed = get(frame_time)

	local power27_L = get(bus27_volt_left) > 13
	local power27_R = get(bus27_volt_right) > 13
	local power115_1 = get(bus115_1_volt) > 110
	local power115_2 = get(bus115_2_volt) > 110
	local power115_3 = get(bus115_3_volt) > 110

	local power_CC_115_1 = 0
	local power_CC_115_2 = 0
	local power_CC_115_3 = 0

	local out_term = get(termo)

	-- check icing conditions
	local ice_ratio = get(window_ice)

	if MASTER then
		-- reset ice ratio
		if ice_ratio > 0.9 or ice_ratio < 0.1 then
			ice_ratio = 0.5
			set(window_ice, 0.5)
			ice_reseted = true
		else
			ice_reseted = false
		end

		if passed ~= 0 and not ice_reseted then
			if math.abs(ice_ratio - ice_ratio_last) > 0.01 then
				ice_speed = 0
			else
				ice_speed = (ice_ratio - ice_ratio_last) * 2 / passed
			end
		end

		ice_ratio_last = ice_ratio



		-- SOI logic
		ice_timer = ice_timer + passed
		local ice_test = get(soi21_test) == 1
		if power27_L and power27_R and get(soi21_on) == 1 then
			if (ice_speed > 0 or ice_test) and get(rio_fail) ~= 1 then
				ice_timer = 0
			end


			-- test system
			if ice_test then ice_work_timer = 0 else ice_work_timer = ice_work_timer + passed end

			set(ice_detect_ok, bool2int(ice_work_timer > 30 and ice_work_timer < 55 and get(rio_fail) ~= 1))

			--[[
		if ice_test then
			ice_work_timer = ice_work_timer + passed
			if ice_work_timer > 1 then set(ice_detect_ok, bool2int(get(rio_fail) ~= 1)) else set(ice_detect_ok, 0) end
		else
			ice_work_timer = 0
			set(ice_detect_ok, 0)
		end
		--]]
			if ice_timer < 8 then set(ice_detected, 1) else set(ice_detected, 0) end
		else
			ice_work_timer = 150
			ice_timer = 20

			set(ice_detect_ok, 0)
			set(ice_detected, 0)
			--set(ice_window_heat_on, 0)
		end
		local win_heat_sw_1 = get(window_heat_1)
		local win_heat_sw_2 = get(window_heat_2)
		local win_heat_sw_3 = get(window_heat_3)
		if get(xplane_version) < 120000 then
			-- set amount of ice on windows
			local window_heat_spd_1 = 0
			
			if win_heat_sw_1 == 1 and power27_L and power115_1 then
				window_heat_spd_1 = 0.02 * (1 - get(window_heat_fail_1))
			elseif win_heat_sw_1 == -1 and power27_L and power115_1 then
				window_heat_spd_1 = 0.015 * (1 - get(window_heat_fail_1))
			end


			local window_heat_spd_2 = 0
			
			if win_heat_sw_2 == 1 and power27_R and power115_3 then
				window_heat_spd_2 = 0.02 * (1 - get(window_heat_fail_2))
			elseif win_heat_sw_2 == -1 and power27_R and power115_3 then
				window_heat_spd_2 = 0.015 * (1 - get(window_heat_fail_2))
			end


			local window_heat_spd_3 = 0
			
			if win_heat_sw_3 == 1 and power27_R and power115_3 then
				window_heat_spd_3 = 0.02 * (1 - get(window_heat_fail_3))
			elseif win_heat_sw_3 == -1 and power27_R and power115_3 then
				window_heat_spd_3 = 0.015 * (1 - get(window_heat_fail_3))
			end



			local win_ice_1 = get(window_ice_1) + ((ice_speed - window_heat_spd_1) - math.max(out_term * 1, 0)) * passed
			if win_ice_1 < 0 then
				win_ice_1 = 0
			elseif win_ice_1 > 1 then
				win_ice_1 = 1
			end
			set(window_ice_1, win_ice_1)

			local win_ice_2 = get(window_ice_2) + ((ice_speed - window_heat_spd_2) - math.max(out_term * 1, 0)) * passed
			if win_ice_2 < 0 then
				win_ice_2 = 0
			elseif win_ice_2 > 1 then
				win_ice_2 = 1
			end
			set(window_ice_2, win_ice_2)

			local win_ice_3 = get(window_ice_3) + ((ice_speed - window_heat_spd_3) - math.max(out_term * 1, 0)) * passed
			if win_ice_3 < 0 then
				win_ice_3 = 0
			elseif win_ice_3 > 1 then
				win_ice_3 = 1
			end
			set(window_ice_3, win_ice_3)

			local win_ice_4 = get(window_ice_4) + (ice_speed - math.max(out_term * 1, 0)) * passed
			if win_ice_4 < 0 then
				win_ice_4 = 0
			elseif win_ice_4 > 1 then
				win_ice_4 = 1
			end
			set(window_ice_4, win_ice_4)
			set(ai_115_1_cc, window_heat_spd_1 * 250)
			set(ai_115_3_cc, (window_heat_spd_2 + window_heat_spd_3) * 250)
		elseif get(xplane_version) >= 120000 then
			if (win_heat_sw_1 == 1 or win_heat_sw_1 == -1) and power27_L and power115_1 then
				set(window_windshield_act, 1)
			else
				set(window_windshield_act, 0)
			end
			if (win_heat_sw_2 == 1 or win_heat_sw_2 == -1) and power27_L and power115_3 then
				set(window_left_act, 1)
			else
				set(window_left_act, 0)
			end
			if (win_heat_sw_3 == 1 or win_heat_sw_3 == -1) and power27_L and power115_3 then
				set(window_right_act, 1)
			else
				set(window_right_act, 0)
			end

			if win_heat_sw_1 == 1 then 
				set(window_windshield_temp, 10)
			elseif win_heat_sw_1 == -1 then
				set(window_windshield_temp,20)
			else
				set(window_windshield_temp,0)
			end

			if win_heat_sw_2 == 1 then 
				set(window_left_temp, 10)
			elseif win_heat_sw_2 == -1 then
				set(window_left_temp,20)
			else
				set(window_left_temp,0)
			end

			if win_heat_sw_3 == 1 then 
				set(window_right_temp, 10)
			elseif win_heat_sw_3 == -1 then
				set(window_right_temp,20)
			else
				set(window_right_temp,0)
			end
			set(ai_115_1_cc, get(window_windshield_temp) * 0,1)
			set(ai_115_3_cc, get(window_right_temp) * 2 * 0.1)
		end
	end

	-- heat Pitots and AOA sensor
	local pitot_sw_1 = math.max(get(pitot_heat_1) * bool2int(get(rel_ice_pitot_heat1) ~= 6), 0)
	local pitot_sw_2 = math.max(get(pitot_heat_2) * bool2int(get(rel_ice_pitot_heat2) ~= 6), 0)
	local pitot_sw_3 = math.max(get(pitot_heat_3) * bool2int(get(ppd_3_heat_fail) ~= 1), 0)

	if power27_L then
		set(sim_pitot_heat_1, pitot_sw_1)
		set(AOA_heat_on, pitot_sw_1)
		set(AOA_heat_on_copilot, pitot_sw_1)

		set(ai_27_L_cc, 10 * pitot_sw_1)
	else
		set(sim_pitot_heat_1, 0)
		set(AOA_heat_on, 0)
		set(AOA_heat_on_copilot, 0)

		set(ai_27_L_cc, 0)
	end

	if power27_R then -- add third Pitot here
		set(sim_pitot_heat_2, pitot_sw_2)

		set(ai_27_R_cc, 7 * pitot_sw_2 + 7 * pitot_sw_3)
	else
		set(sim_pitot_heat_2, 0)
		set(ai_27_R_cc, 0)
	end


	-- engines heat
	local rpm_1 = get(rpm_high_1) > 50
	set(inlet_heat_1, bool2int(get(rel_ice_inlet_heat1) ~= 6 and rpm_1 and power27_L) * get(antiice_eng_1))
	set(eng_heat_open_1, bool2int(get(rel_ice_inlet_heat1) ~= 6 and power27_L) * get(antiice_eng_1))

	local rpm_2 = get(rpm_high_2) > 50
	set(inlet_heat_2, bool2int(rpm_2 and power27_R) * get(antiice_eng_2) * bool2int(get(rel_ice_inlet_heat2) ~= 6))
	set(eng_heat_open_2, bool2int(get(rel_ice_inlet_heat2) ~= 6 and power27_R) * get(antiice_eng_2))

	local rpm_3 = get(rpm_high_3) > 50
	set(inlet_heat_3, bool2int(rpm_3 and power27_R) * get(antiice_eng_3) * bool2int(get(rel_ice_inlet_heat3) ~= 6))
	set(eng_heat_open_3, bool2int(get(rel_ice_inlet_heat3) ~= 6 and power27_R) * get(antiice_eng_3))

	-- wings ans slat heat
	set(wings_heat_on, bool2int((rpm_1 or rpm_2 or rpm_3) and (power27_L or power27_R)) * get(antiice_wing))

	local wing_heat = bool2int((rpm_1 or rpm_2 or rpm_3) and (power27_L or power27_R) and get(rel_ice_surf_heat) < 6) *
		get(antiice_wing)
	local slat_heat = bool2int(get(bus115_2_volt) > 110 and (power27_L or power27_R) and get(rel_ice_surf_heat2) < 6 and
		get(deflection_mtr_2) < 0.1 and get(deflection_mtr_3) < 0.1) * get(antiice_slats)

	set(wing_heating, wing_heat)
	set(slat_heating, slat_heat)

	set(ai_115_2_cc, slat_heat * 70)




	-- heat tubes thermo
	local wing_tube = get(wing_heat_t)

	wing_tube = wing_tube + (out_term - wing_tube) * passed * 0.1 * (1 + get(IAS) / 200)
	wing_tube = wing_tube + (wing_heat * 300 - wing_tube) * passed * 0.1

	set(wing_heat_t, wing_tube)

	local stab_tube = get(stab_heat_t)

	stab_tube = stab_tube + (out_term - stab_tube) * passed * 0.1 * (1 + get(IAS) / 300)
	stab_tube = stab_tube + (wing_heat * 300 - stab_tube) * passed * 0.1

	set(stab_heat_t, stab_tube)

	--print(wing_tube, "  ", stab_tube)

	-- ice on wings and slats
	ice_on_wings_L = ice_on_wings_L + (ice_speed * math.random() * 2 - math.max(0, wing_tube) * 0.0005) * passed
	ice_on_slats_L = ice_on_slats_L + (ice_speed * math.random() * 2 - slat_heat * 0.02) * passed

	if ice_on_wings_L < 0 then ice_on_wings_L = 0 end
	if ice_on_slats_L < 0 then ice_on_slats_L = 0 end

	ice_on_wings_R = ice_on_wings_R + (ice_speed * math.random() * 2 - math.max(0, wing_tube) * 0.0005) * passed
	ice_on_slats_R = ice_on_slats_R + (ice_speed * math.random() * 2 - slat_heat * 0.02) * passed

	if ice_on_wings_R < 0 then ice_on_wings_R = 0 end
	if ice_on_slats_R < 0 then ice_on_slats_R = 0 end

	if ice_on_slats_L > 0.2 then ice_on_slats_L = 0.2 end
	if ice_on_slats_R > 0.2 then ice_on_slats_R = 0.2 end


	if MASTER then
		set(frm_ice, ice_on_wings_L * 0.8 + ice_on_slats_L * 0.2)
		set(frm_ice2, ice_on_wings_R * 0.8 + ice_on_slats_R * 0.2)
	end





	set(ice_window_heat_on, 0)
end
