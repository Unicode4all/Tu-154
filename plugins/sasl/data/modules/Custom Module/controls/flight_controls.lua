-- this is the flight controls logic

-- sources
--defineProperty("joy_pitch", globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio")) -- pitch position of joytick
--defineProperty("joy_roll", globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio")) -- roll position of joystick
--defineProperty("joy_yaw", globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio")) -- yaw position of joystick

defineProperty("joy_pitch", globalPropertyf("tu154ce/SC/yoke_pitch_ratio")) 
defineProperty("joy_roll", globalPropertyf("tu154ce/SC/yoke_roll_ratio")) 
defineProperty("joy_yaw", globalPropertyf("tu154ce/SC/yoke_heading_ratio")) 


defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

defineProperty("overr", globalPropertyf("sim/operation/override/override_control_surfaces")) -- override controls

-- controls
defineProperty("speedbrake_ratio", globalPropertyf("sim/cockpit2/controls/speedbrake_ratio")) -- sim speedbrake lever

defineProperty("elev_trimm_sw", globalPropertyi("tu154ce/controll/elev_trimm_switcher")) -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование
defineProperty("ail_trimm_sw", globalPropertyi("tu154ce/controll/ail_trimm_sw")) -- переключатель триммера элеронов
defineProperty("rudd_trimm_sw", globalPropertyi("tu154ce/controll/rudd_trimm_sw")) -- переключатель триммера РН

defineProperty("int_pitch_trim", globalPropertyf("tu154ce/trimmers/int_pitch_trim")) -- положение триммера руля высоты
defineProperty("int_roll_trim", globalPropertyf("tu154ce/trimmers/int_roll_trim")) -- положение триммера элеронов
defineProperty("int_yaw_trim", globalPropertyf("tu154ce/trimmers/int_yaw_trim")) -- положение триммера руля направления

defineProperty("buster_on_1", globalPropertyi("tu154ce/switchers/console/buster_on_1")) -- выключатель бустера
defineProperty("buster_on_2", globalPropertyi("tu154ce/switchers/console/buster_on_2")) -- выключатель бустера
defineProperty("buster_on_3", globalPropertyi("tu154ce/switchers/console/buster_on_3")) -- выключатель бустера
defineProperty("busters_cap", globalPropertyi("tu154ce/switchers/console/busters_cap")) -- крышка выключателей бустеров

defineProperty("control_force_pos", globalPropertyf("tu154ce/controls/control_force_pos")) -- положение загружателя РВ. 0 - выклчюен, 1 - подключен
defineProperty("control_force_pos_rud", globalPropertyf("tu154ce/controls/control_force_pos_rud")) -- положение загружателя РН. 0 - выклчюен, 1 - подключен

defineProperty("contr_force_set", globalPropertyi("tu154ce/controll/contr_force_set")) -- переключатель загружателя РВ РН. -1 - полет, 0 авто, +1 - взлет-посадка


defineProperty("deploy_ratio_2", globalProperty("sim/flightmodel2/gear/deploy_ratio[1]")) -- 
defineProperty("deploy_ratio_3", globalProperty("sim/flightmodel2/gear/deploy_ratio[2]")) -- 

defineProperty("gear1_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))  -- vertical deflection of front gear
defineProperty("gear2_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
defineProperty("gear3_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear


-- wings --
-- ailerons
defineProperty("ail_L", globalPropertyf("sim/flightmodel/controls/wing3l_ail1def")) -- aileron left Degrees, positive is trailing-edge down. +- 20
defineProperty("ail_R", globalPropertyf("sim/flightmodel/controls/wing3r_ail1def")) -- aileron right Degrees, positive is trailing-edge down. +- 20

-- spoilers
defineProperty("spd_brk_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_spo1def")) -- inner speedbrake left Degrees
defineProperty("spd_brk_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_spo1def")) -- inner speedbrake right Degrees

defineProperty("spd_brk_inn_anim_L", globalPropertyf("tu154ce/anim/spd_brk_inn_left")) -- inner speedbrake left animation Degrees
defineProperty("spd_brk_inn_anim_R", globalPropertyf("tu154ce/anim/spd_brk_inn_right")) -- inner speedbrake right animation Degrees


defineProperty("spd_brk_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_spo2def")) -- middle speedbrake left Degrees
defineProperty("spd_brk_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_spo2def")) -- middle speedbrake right Degrees

defineProperty("roll_spoil_L", globalPropertyf("sim/flightmodel/controls/wing2l_spo1def")) -- roll spoiler left Degrees
defineProperty("roll_spoil_R", globalPropertyf("sim/flightmodel/controls/wing2r_spo1def")) -- roll spoiler right Degrees

-- flaps and slats
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

defineProperty("flap_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_fla2def")) -- middle flaps left
defineProperty("flap_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_fla2def")) -- middle flaps right

--defineProperty("slats", globalPropertyf("sim/flightmodel/controls/slatrat")) -- slats position. this one works
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too


-- tail --
defineProperty("elevator_L", globalPropertyf("sim/flightmodel/controls/hstab1_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("elevator_R", globalPropertyf("sim/flightmodel/controls/hstab2_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("rudder", globalPropertyf("sim/flightmodel/controls/vstab2_rud1def")) -- degrees, positive is trailing-edge left
defineProperty("stab_ratio", globalPropertyf("sim/cockpit2/controls/elevator_trim")) -- sim pitch trimmer

--defineProperty("stap_pos_real", globalProperty("sim/flightmodel2/wing/elevator2_deg[0]")) -- sim stab position
--defineProperty("elev_pos_real", globalProperty("sim/flightmodel2/wing/elevator1_deg[0]")) -- sim elevator position

-- hydraulics
defineProperty("gs_press_1", globalPropertyf("tu154ce/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154ce/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154ce/hydro/gs_press_3")) -- давление в ГС3


-- animations
defineProperty("yoke_pitch", globalPropertyf("tu154ce/controlls/yoke_pitch")) -- поворот штурвала ко тангажу
defineProperty("yoke_roll", globalPropertyf("tu154ce/controlls/yoke_roll")) -- поворот штурвала ко тангажу
defineProperty("pedals_turn", globalPropertyf("tu154ce/controlls/pedals")) -- поворот штурвала ко тангажу
defineProperty("spoilers_lever", globalPropertyf("tu154ce/controlls/spoilers_lever")) -- рычаг интерцепторов

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine
defineProperty("rpm_high_1", globalPropertyf("tu154ce/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_3", globalPropertyf("tu154ce/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3


-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

-- spoilers sources
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 

defineProperty("anim_rud1", globalPropertyf("tu154ce/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154ce/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154ce/controlls/throttle_3")) -- РУД 3

defineProperty("anim_rud1_ENG", globalPropertyf("tu154ce/controlls/throttle_1_ENG")) -- РУД 1 БИ
defineProperty("anim_rud2_ENG", globalPropertyf("tu154ce/controlls/throttle_2_ENG")) -- РУД 2 БИ
defineProperty("anim_rud3_ENG", globalPropertyf("tu154ce/controlls/throttle_3_ENG")) -- РУД 3 БИ

defineProperty("revers_L", globalPropertyf("tu154ce/controlls/revers_L")) -- рычаг реверса лев
defineProperty("revers_R", globalPropertyf("tu154ce/controlls/revers_R")) -- рычаг реверса прав

defineProperty("ias_L", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot")) -- indicated airspeed in KTS
defineProperty("ias_R", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot"))
-- get(ias) * 1.852 -- km/hr

-- currents
defineProperty("ctr_27_L_cc", globalPropertyf("tu154ce/control/ctr_27_L_cc")) -- нагрузка на сеть
defineProperty("ctr_27_R_cc", globalPropertyf("tu154ce/control/ctr_27_R_cc")) -- нагрузка на сеть

defineProperty("ctr_115_1_cc", globalPropertyf("tu154ce/control/ctr_115_1_cc")) -- нагрузка на сеть
defineProperty("ctr_115_2_cc", globalPropertyf("tu154ce/control/ctr_115_2_cc")) -- нагрузка на сеть
defineProperty("ctr_115_3_cc", globalPropertyf("tu154ce/control/ctr_115_3_cc")) -- нагрузка на сеть

-- ABSU controls
defineProperty("absu_contr_pitch", globalPropertyf("tu154ce/absu/contr_pitch")) -- отклонение штока РА56 по тангажу
defineProperty("absu_contr_roll", globalPropertyf("tu154ce/absu/contr_roll")) -- отклонение штока РА56 по крену
defineProperty("absu_contr_yaw", globalPropertyf("tu154ce/absu/contr_yaw")) -- отклонение штока РА56 по направлению

defineProperty("indicated_airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- приборная скорость
defineProperty("machno", globalPropertyf("sim/flightmodel/misc/machno")) -- скорость Маха


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
defineProperty("ail_fail_left", globalPropertyi("tu154ce/failures/ail_fail_left")) -- 
defineProperty("ail_fail_right", globalPropertyi("tu154ce/failures/ail_fail_right")) -- 
defineProperty("fail_spoil_inn_left", globalPropertyi("tu154ce/failures/fail_spoil_inn_left")) -- 
defineProperty("fail_spoil_inn_right", globalPropertyi("tu154ce/failures/fail_spoil_inn_right")) -- 
defineProperty("fail_spoil_mid_left", globalPropertyi("tu154ce/failures/fail_spoil_mid_left")) -- 
defineProperty("fail_spoil_mid_right", globalPropertyi("tu154ce/failures/fail_spoil_mid_right")) -- 
defineProperty("fail_spoil_out_left", globalPropertyi("tu154ce/failures/fail_spoil_out_left")) -- 
defineProperty("fail_spoil_out_right", globalPropertyi("tu154ce/failures/fail_spoil_out_right")) -- 

defineProperty("rudder_fail", globalPropertyi("tu154ce/failures/rudder_fail")) -- 
defineProperty("elev_fail_left", globalPropertyi("tu154ce/failures/elev_fail_left")) -- 
defineProperty("elev_fail_right", globalPropertyi("tu154ce/failures/elev_fail_right")) -- 





set(overr, 1) -- initialise some datarefs


local buster_1_ON = 0
local buster_2_ON = 0
local buster_3_ON = 0

local roll_pos_act = 0
local pitch_pos_act = 0
local yaw_pos_act = 0

local left_mid_sp_act = 0
local right_mid_sp_act = 0
local left_inn_sp_act = 0
local right_inn_sp_act = 0

local pitch_add = 0
local yaw_add = 0

local passed = get(frame_time)

local mach_tbl = {
{-10, 1},
{0, 1},
{0.1, 1},
{0.25, 0.5},
{0.34, 0.28},
{0.38, 0.22},
{0.5, 0.21},
{0.6, 0.21}, -- fail
{0.7, 0.2},
{0.8, 0.19}, 
{0.9, 0.13},
{1, 0.1},
{10, 0.1}}

function update()
	
	local MASTER = get(ismaster) ~= 1
	
	--print(MASTER)
	
	passed = get(frame_time)

	local ias = get(indicated_airspeed) * 1.852
	
	local mach = get(machno)
	
	
	
	-- check power
	local power_27_L = get(bus27_volt_left) > 13
	local power_27_R = get(bus27_volt_right) > 13
	
	-- set busters work status
	if power_27_L then
		buster_1_ON = get(buster_on_1)
		buster_2_ON = get(buster_on_2)
	end
	
	if power_27_R then
		buster_3_ON = get(buster_on_3)
	end
	
	-- check hydraulics
	local HS1 = math.min(get(gs_press_1) / 63, 1) -- should start to slow down at 63 atm
	local HS2 = math.min(get(gs_press_2) / 63, 1)
	local HS3 = math.min(get(gs_press_3) / 63, 1)



	
	--------------------------
	-- ailerons and roll-spoilers --
	local cockpit_yoke_roll = get(joy_roll) + get(int_roll_trim)
	if cockpit_yoke_roll > 1 then cockpit_yoke_roll = 1
	elseif cockpit_yoke_roll < -1 then cockpit_yoke_roll = -1 end
	
	local roll_cmd = cockpit_yoke_roll + get(absu_contr_roll)
	
	if roll_cmd > 1 then roll_cmd = 1
	elseif roll_cmd < -1 then roll_cmd = -1 end
	
	if HS1 > 0.01 or HS2 > 0.01 or HS3 > 0.01 then
		roll_pos_act = roll_pos_act + (roll_cmd - roll_pos_act) * math.max(HS1 * buster_1_ON, HS2 * buster_2_ON, HS3 * buster_3_ON) * passed * 10
	end
	
	local left_ail_pos = roll_pos_act * 20 * line(mach, 0, 1, 0.8, 0.5) -- can add failures here
	local right_ail_pos = -roll_pos_act * 20 * line(mach, 0, 1, 0.8, 0.5) -- can add failures here
	
	local roll_sp_L = 0
	if left_ail_pos <= -1.5 then roll_sp_L = -((left_ail_pos + 1.5) / 18.5) * 45 end

	
	local roll_sp_R = 0
	if right_ail_pos <= -1.5 then roll_sp_R = -((right_ail_pos + 1.5) / 18.5) * 45 end
	
	
	-- set results
	
if MASTER then
	set(ail_L, left_ail_pos * (1 - get(ail_fail_left)))
	set(ail_R, right_ail_pos * (1 - get(ail_fail_right)))
	
	set(roll_spoil_L, roll_sp_L * (1 - get(fail_spoil_out_left)))
	set(roll_spoil_R, roll_sp_R * (1 - get(fail_spoil_out_right)))
end


	---------------------------------
	-- spoilers logic --
	local gears = get(deflection_mtr_2) > 0.01 and get(deflection_mtr_3) > 0.01
	local ruds_iddle = get(anim_rud1) < 0.1 and get(anim_rud2) < 0.1 and get(anim_rud3) < 0.1
	local revers = get(revers_L) > 0.1 and get(revers_R) > 0.1
	local IAS_lim = get(ias_L) > 54 or get(ias_R) > 54
	
	local auto_deploy = power_27_L and gears and ((ruds_iddle and IAS_lim) or revers)
	
	
	---------------------------------
	-- middle spoilers --

	if auto_deploy and MASTER then set(speedbrake_ratio, 1) end
	
	local spd_brk_cmd = get(speedbrake_ratio) --  add automatic logic here, controlling the lever itself
	
	local spd_brk_L = spd_brk_cmd * 45 * bool2int(power_27_L)
	local spd_brk_R = spd_brk_cmd * 45 * bool2int(power_27_L)
	if HS1 > 0.01 then
		left_mid_sp_act = left_mid_sp_act + (spd_brk_L - left_mid_sp_act) * HS1 * passed * 15
		right_mid_sp_act = right_mid_sp_act + (spd_brk_R - right_mid_sp_act) * HS1 * passed * 15
	end

if MASTER then	
	set(spd_brk_mid_L, left_mid_sp_act * (1 - get(fail_spoil_mid_left)))
	set(spd_brk_mid_R, right_mid_sp_act * (1 - get(fail_spoil_mid_right)))
end	
	
	---------------------------------
	-- inner spoilers --
	local spoilers_cmd = bool2int(auto_deploy) -- add automatic logic here
	
	local spoil_L = spoilers_cmd * 50 * bool2int(power_27_L)
	local spoil_R = spoilers_cmd * 50 * bool2int(power_27_L)
	if HS1 > 0.01 then
		if spoilers_cmd == 1 then 
			left_inn_sp_act = left_inn_sp_act + (spoil_L - left_inn_sp_act) * HS1 * passed * 10
			right_inn_sp_act = right_inn_sp_act + (spoil_R - right_inn_sp_act) * HS1 * passed * 10
		else
			left_inn_sp_act = left_inn_sp_act + (spoil_L - left_inn_sp_act) * HS1 * passed * 1
			right_inn_sp_act = right_inn_sp_act + (spoil_R - right_inn_sp_act) * HS1 * passed * 1
		end
	end

if MASTER then	
	set(spd_brk_inn_L, left_inn_sp_act * (1 - get(fail_spoil_inn_left)))
	set(spd_brk_inn_R, right_inn_sp_act * (1 - get(fail_spoil_inn_right)))
end
	

	
	-----------------------------------------------------
	-- calculate position of flight controls forcing mech
	
	local force_pos = get(control_force_pos)
	local force_pos_rud = get(control_force_pos_rud) 
	
	-- turn on the forcing
	local forcing_sw = get(contr_force_set)
if MASTER then
	if power_27_L and power_27_R then
		
		-- forcing limit elevator
		if (forcing_sw == 0 and get(flap_inn_L) < 7 and get(flap_inn_R) < 7) or forcing_sw == -1 then 
			force_pos = force_pos + passed * 0.04
			if force_pos < 0.99 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		else
			force_pos = force_pos - passed * 0.04
			
			if force_pos > 0.01 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		end
		
		-- forcing limit rudder
		if (forcing_sw == 0 and ((get(flap_inn_L) < 7 and get(flap_inn_R) < 7) and (get(gear2_deflect) < 0.01 and get(gear3_deflect) < 0.01))) or forcing_sw == -1 then 
			force_pos_rud = force_pos_rud + passed * 0.08
			if force_pos_rud < 0.99 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		else
			force_pos_rud = force_pos_rud - passed * 0.08
			
			if force_pos_rud > 0.01 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		end
		
	end
	-- set limits
	if force_pos > 1 then force_pos = 1
	elseif force_pos < 0 then force_pos = 0 end
	
	if force_pos_rud > 1 then force_pos_rud = 1
	elseif force_pos_rud < 0 then force_pos_rud = 0 end
	
	set(control_force_pos, force_pos)
	set(control_force_pos_rud, force_pos_rud)
end
	
	--------------------------------
	-- elevator --
	local pitch_joy = get(joy_pitch)
	
	-- overforce the limit mechanism
	if pitch_joy > 0.9 and pitch_add < 2 then pitch_add = pitch_add + passed * 0.3 
	elseif pitch_joy < -0.9 and pitch_add > -2 then pitch_add = pitch_add - passed * 0.3
	elseif math.abs(pitch_joy) < 0.9 then pitch_add = 0 end
	
	-- limit joy pitch by forcing
	if pitch_joy > (1 - force_pos * 0.5) then pitch_joy = (1 - force_pos * 0.5)
	elseif pitch_joy < -(1 - force_pos * 0.4) then pitch_joy = -(1 - force_pos * 0.4) end
	
	local cockpit_yoke_pitch = pitch_joy + get(int_pitch_trim) + pitch_add
	
	
	
	if cockpit_yoke_pitch > 1 then cockpit_yoke_pitch = 1
	elseif cockpit_yoke_pitch < -1 then cockpit_yoke_pitch = -1 end
	
	local pitch_cmd = cockpit_yoke_pitch + get(absu_contr_pitch)
	local stab_pos = get(stab_ratio)
	
	if pitch_cmd > 1 then pitch_cmd = 1
	elseif pitch_cmd < -1 then pitch_cmd = -1 end
	
	if HS1 > 0.01 or HS2 > 0.01 or HS3 > 0.01 then
		pitch_pos_act = pitch_pos_act + (pitch_cmd - pitch_pos_act) * math.max(HS1 * buster_1_ON, HS2 * buster_2_ON, HS3 * buster_3_ON) * passed * 10
	end
	
	local elev_left = 0 
	local elev_right = 0 
	
	-- add hydraulics and failures here
	if pitch_pos_act >=0 then
		elev_left = -pitch_pos_act * (25 - stab_pos) -- can add failures here
		elev_right = -pitch_pos_act * (25 - stab_pos) -- can add failures here
	else
		elev_left = -pitch_pos_act * (20 + stab_pos * 0.5) -- can add failures here
		elev_right = -pitch_pos_act * (20 + stab_pos * 0.5) -- can add failures here
	end
	
	-- calculate correction for elevator
	
	local elev_coef = 1 
	if mach < 1 then elev_coef = interpolate(mach_tbl, mach)
	else elev_coef = 0.1 end

	
if MASTER then	
	-- set results
	set(elevator_L, elev_left * elev_coef * (1 - get(elev_fail_left)))
	set(elevator_R, elev_right * elev_coef * (1 - get(elev_fail_right)))
end	
	
	--print(get(elevator_L), "  ", get(elevator_R))
	
	-------------------------------------
	-- rudder -- 
	local yaw_joy = get(joy_yaw)
	
	local cockpit_yoke_yaw = yaw_joy + get(int_yaw_trim)-- + yaw_add
	
	if cockpit_yoke_yaw > (1 - force_pos_rud * 0.6) then cockpit_yoke_yaw = (1 - force_pos_rud * 0.6)
	elseif cockpit_yoke_yaw < -(1 - force_pos_rud * 0.6) then cockpit_yoke_yaw = -(1 - force_pos_rud * 0.6) end	
	
	
	-- overforce yaw limit mechanism
	if yaw_joy > 0.9 and yaw_add < 2 then yaw_add = yaw_add + passed * 0.3
	elseif yaw_joy < -0.9 and yaw_add > -2 then yaw_add = yaw_add - passed * 0.3
	elseif math.abs(yaw_joy) < 0.9 then yaw_add = 0 end
	
	cockpit_yoke_yaw = cockpit_yoke_yaw + yaw_add
	
	if cockpit_yoke_yaw > 1 then cockpit_yoke_yaw = 1
	elseif cockpit_yoke_yaw < -1 then cockpit_yoke_yaw = -1 end
	
	
	
	local rud_cmd = -cockpit_yoke_yaw - get(absu_contr_yaw)
	
	
	
	if rud_cmd > 1 then rud_cmd = 1
	elseif rud_cmd < -1 then rud_cmd = -1 end

	
	if HS1 > 0.01 or HS2 > 0.01 or HS3 > 0.01 then
		yaw_pos_act = yaw_pos_act + (rud_cmd - yaw_pos_act) * math.max(HS1 * buster_1_ON, HS2 * buster_2_ON, HS3 * buster_3_ON) * passed * 10
	end
	
	local rudder_pos = yaw_pos_act * 25 * line(mach, 0, 1, 0.8, 0.5) -- can add failures here

	-- rudder --
	local rudder_L = 1 - math.max(get(revers_flap_L) - 0.5, 0) * get(rpm_high_1) * 0.015
	local rudder_R = 1 - math.max(get(revers_flap_R) - 0.5, 0) * get(rpm_high_3) * 0.015

if MASTER then	
	set(rudder, rudder_pos * ((rudder_L + rudder_R) * 0.5) * (1 - get(rudder_fail)))

	
	-------------------------------------
	-- set animations
	set(spd_brk_inn_anim_L, left_inn_sp_act * (1 - get(fail_spoil_inn_left)))
	set(spd_brk_inn_anim_R, right_inn_sp_act * (1 - get(fail_spoil_inn_right)))
	
	set(yoke_pitch, cockpit_yoke_pitch)
	set(yoke_roll, cockpit_yoke_roll)
	set(pedals_turn, cockpit_yoke_yaw)
	
	set(spoilers_lever, spd_brk_cmd)
end	


end




function onAvionicsDone()
	set(overr, 0)
	print("flight controls released")
end







