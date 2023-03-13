-- this is GNS supplement logicS
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

defineProperty("show_gns", globalPropertyi("tu154ce/anim/show_gns"))
defineProperty("overrideGPS", globalPropertyi("sim/operation/override/override_gps"))

-- source
defineProperty("kln_on", globalPropertyi("tu154ce/switchers/ovhd/kln_on"))  -- выключатель КЛН

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("gps_course_degtm", globalPropertyf("sim/cockpit/radios/gps_course_degtm")) -- DTK magnetic
defineProperty("gps_hdef_dot", globalPropertyf("sim/cockpit/radios/gps_hdef_dot")) -- Course dev in dots
defineProperty("gps_fromto", globalPropertyi("sim/cockpit/radios/gps_fromto"))


-- results
defineProperty("gps_power", globalPropertyi("sim/cockpit2/radios/actuators/gps_power")) -- GPS power
defineProperty("gns_lit", globalPropertyf("tu154ce/lights/gns430_lit")) -- GPS power


defineProperty("GNS430_dtk", globalPropertyf("tu154ce/SC/GNS430_dtk")) -- курс на ГНС
defineProperty("GNS430_dev", globalPropertyf("tu154ce/SC/GNS430_dev")) -- отклонение от курса на ГНС
defineProperty("GNS430_flag", globalPropertyi("tu154ce/SC/GNS430_flag")) -- отклонение от курса на ГНС


-- animation
defineProperty("LB_angle", globalPropertyf("tu154ce/rotary/GNS430/LB_angle")) -- LB_angle
defineProperty("LS_angle", globalPropertyf("tu154ce/rotary/GNS430/LS_angle")) -- LS_angle
defineProperty("RB_angle", globalPropertyf("tu154ce/rotary/GNS430/RB_angle")) -- RB_angle
defineProperty("RS_angle", globalPropertyf("tu154ce/rotary/GNS430/RS_angle")) -- RS_angle

defineProperty("kill_map_fms_line", globalPropertyi("sim/graphics/misc/kill_map_fms_line")) --


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local LB_left = findCommand("sim/GPS/g430n1_coarse_down")

function LB_left_hnd(phase)
	if 1 == phase then
		set(LB_angle, get(LB_angle) - 10)
	end
	return 0
end

registerCommandHandler(LB_left, 0, LB_left_hnd)

local LB_right = findCommand("sim/GPS/g430n1_coarse_up")

function LB_right_hnd(phase)
	if 1 == phase then
		set(LB_angle, get(LB_angle) + 10)
	end
	return 0
end

registerCommandHandler(LB_right, 0, LB_right_hnd)


local LS_left = findCommand("sim/GPS/g430n1_fine_down")

function LS_left_hnd(phase)
	if 1 == phase then
		set(LS_angle, get(LS_angle) - 10)
	end
	return 0
end

registerCommandHandler(LS_left, 0, LS_left_hnd)

local LS_right = findCommand("sim/GPS/g430n1_fine_up")

function LS_right_hnd(phase)
	if 1 == phase then
		set(LS_angle, get(LS_angle) + 10)
	end
	return 0
end

registerCommandHandler(LS_right, 0, LS_right_hnd)




local RB_left = findCommand("sim/GPS/g430n1_chapter_dn")

function RB_left_hnd(phase)
	if 1 == phase then
		set(RB_angle, get(RB_angle) - 10)
	end
	return 0
end

registerCommandHandler(RB_left, 0, RB_left_hnd)

local RB_right = findCommand("sim/GPS/g430n1_chapter_up")

function RB_right_hnd(phase)
	if 1 == phase then
		set(RB_angle, get(RB_angle) + 10)
	end
	return 0
end

registerCommandHandler(RB_right, 0, RB_right_hnd)


local RS_left = findCommand("sim/GPS/g430n1_page_dn")

function RS_left_hnd(phase)
	if 1 == phase then
		set(RS_angle, get(RS_angle) - 10)
	end
	return 0
end

registerCommandHandler(RS_left, 0, RS_left_hnd)

local RS_right = findCommand("sim/GPS/g430n1_page_up")

function RS_right_hnd(phase)
	if 1 == phase then
		set(RS_angle, get(RS_angle) + 10)
	end
	return 0
end

registerCommandHandler(RS_right, 0, RS_right_hnd)



--[[
sim/GPS/g430n1_popup			Popup 2D panel

sim/GPS/g430n1_coarse_down		LB left
sim/GPS/g430n1_coarse_up		LB right
sim/GPS/g430n1_fine_down 		LS left
sim/GPS/g430n1_fine_up			LS right
sim/GPS/g430n1_nav_com_tog		LS push

sim/GPS/g430n1_chapter_dn		RB left
sim/GPS/g430n1_chapter_up		RB right
sim/GPS/g430n1_page_dn			RS left
sim/GPS/g430n1_page_up			RS right
sim/GPS/g430n1_cursor			RS push

sim/GPS/g430n1_com_ff			Com up-dn
sim/GPS/g430n1_nav_ff			Nav up-dn

sim/GPS/g430n1_cdi				CDI button
sim/GPS/g430n1_obs				OBS button
sim/GPS/g430n1_msg				MSG button
sim/GPS/g430n1_fpl				FPL button
sim/GPS/g430n1_proc				PROC button

sim/GPS/g430n1_zoom_out			RNG down
sim/GPS/g430n1_zoom_in			RNG up

sim/GPS/g430n1_direct			Dir button
sim/GPS/g430n1_menu				MENU button
sim/GPS/g430n1_clr				CLR button
sim/GPS/g430n1_ent				ENT button

--]]





local overrideSet = false


function update()

	--set(gps_power, get(kln_on) * bool2int(get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13))
	set(gps_power, bool2int(get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13))
	set(gns_lit, get(gps_power) * 0.7)
	
	if get(show_gns) == 1 and not overrideSet then
		set(overrideGPS, 0)
		overrideSet = true
	elseif get(show_gns) == 0 then
		overrideSet = false
	end
	
	
	--print(get(gps_hdef_dot))
	if get(ismaster) ~= 1 then
		set(GNS430_dtk, get(gps_course_degtm))
		set(GNS430_dev, get(gps_hdef_dot))
		set(GNS430_flag, bool2int(get(gps_fromto) == 0 or get(gps_power) == 0))
		if get(GNS430_flag) == 1 then set(GNS430_dev, 0) end
	end
	
	
	
	-- remove red line on Radar
	set(kill_map_fms_line, 1)

end

function onAvionicsDone()
	
	set(gps_power, 1)
	set(kill_map_fms_line, 0)
	print("GPS reset")

end