-- this is auto-throttle logic

-- sources
defineProperty("ias_left", globalPropertyf("sim/custom/gauges/speed/ias_left")) -- приборная скорость КВС
defineProperty("ias_right", globalPropertyf("sim/custom/gauges/speed/ias_right")) -- приборная скорость 2П

-- controls
defineProperty("absu_speed_change", globalPropertyi("sim/custom/switchers/console/absu_speed_change")) -- ручка изменения скорости. 
defineProperty("absu_speed_off", globalPropertyi("sim/custom/switchers/console/absu_speed_off")) -- отключение 1 и 2
defineProperty("absu_speed_prepare", globalPropertyi("sim/custom/switchers/console/absu_speed_prepare")) -- подготовка
defineProperty("absu_speed_us_right_left", globalPropertyi("sim/custom/switchers/console/absu_speed_us_right_left")) -- подготовка

defineProperty("absu_stab_speed", globalPropertyi("sim/custom/buttons/console/absu_stab_speed")) -- кнопка C на панели АБСУ
defineProperty("absu_throt_off_1", globalPropertyi("sim/custom/buttons/console/absu_throt_off_1")) -- кнопка откл Г1 на панели АБСУ
defineProperty("absu_throt_off_2", globalPropertyi("sim/custom/buttons/console/absu_throt_off_2")) -- кнопка откл Г2 на панели АБСУ
defineProperty("absu_throt_off_3", globalPropertyi("sim/custom/buttons/console/absu_throt_off_3")) -- кнопка откл Г3 на панели АБСУ

defineProperty("anim_rud1", globalPropertyf("sim/custom/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("sim/custom/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("sim/custom/controlls/throttle_3")) -- РУД 3

--defineProperty("tro_comm_1", globalPropertyf("sim/flightmodel/engine/ENGN_thro[0]"))
--defineProperty("tro_comm_2", globalPropertyf("sim/flightmodel/engine/ENGN_thro[1]"))
--defineProperty("tro_comm_3", globalPropertyf("sim/flightmodel/engine/ENGN_thro[2]"))

defineProperty("tro_comm_1", globalPropertyf("sim/custom/SC/engine/ENGN_thro_0")) 
defineProperty("tro_comm_2", globalPropertyf("sim/custom/SC/engine/ENGN_thro_1")) 
defineProperty("tro_comm_3", globalPropertyf("sim/custom/SC/engine/ENGN_thro_2"))


defineProperty("absu_nav_on", globalPropertyi("sim/custom/switchers/console/absu_nav_on")) -- стрелки навигация
defineProperty("absu_landing_on", globalPropertyi("sim/custom/switchers/console/absu_landing_on")) -- стрелки посадка

defineProperty("roll_main_mode", globalPropertyi("sim/custom/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("sim/custom/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("roll_sub_mode", globalPropertyi("sim/custom/absu/roll_sub_mode")) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход, 7 - уход, 10 - арм ЗАХОД
defineProperty("pitch_sub_mode", globalPropertyi("sim/custom/absu/pitch_sub_mode")) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход, 10 - арм ГЛИСС

-- power
defineProperty("bus27_volt_left", globalPropertyf("sim/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("sim/custom/elec/bus27_volt_right"))

defineProperty("bus36_volt_left", globalPropertyf("sim/custom/elec/bus36_volt_left"))

defineProperty("bus115_1_volt", globalPropertyf("sim/custom/elec/bus115_1_volt"))

defineProperty("absu_at_power_cc", globalPropertyf("sim/custom/absu_at_power_cc")) -- потребление тока АБСУ




defineProperty("frame_time", globalPropertyf("sim/custom/time/frame_time")) -- time of frame

-- results
defineProperty("ias_yellow_left", globalPropertyf("sim/custom/gauges/speed/ias_yellow_left")) -- желтый маркер на индкиторе скорости КВС
defineProperty("ias_yellow_right", globalPropertyf("sim/custom/gauges/speed/ias_yellow_right")) -- желтый маркер на индкиторе скорости 2П


defineProperty("absu_at_dif_left", globalPropertyf("sim/custom/absu_at_dif_left")) -- разность скоростей для индикации на ПКП
defineProperty("absu_at_dif_right", globalPropertyf("sim/custom/absu_at_dif_right")) -- разность скоростей для индикации на ПКП


defineProperty("rud_1_spd", globalPropertyf("sim/custom/absu/rud_1_spd")) -- скорость изменения положения рычага
defineProperty("rud_2_spd", globalPropertyf("sim/custom/absu/rud_2_spd")) -- скорость изменения положения рычага
defineProperty("rud_3_spd", globalPropertyf("sim/custom/absu/rud_3_spd")) -- скорость изменения положения рычага

defineProperty("stu_mode", globalPropertyi("sim/custom/absu/stu_mode")) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	
defineProperty("toga_command", globalPropertyi("sim/custom/absu/toga_comm")) -- 	режим УХОД


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
defineProperty("absu_at1_fail", globalPropertyi("sim/custom/failures/absu_at1_fail")) -- отказ AT
defineProperty("absu_at2_fail", globalPropertyi("sim/custom/failures/absu_at2_fail")) -- отказ AT


-- XP 11.10 fix
defineProperty("sim_vers", globalPropertyi("sim/version/xplane_internal_version")) -- версия сима


local AT_mode = 0 -- 0 = off, 1 = sync spd, 2 = prepare, 3 = work, 4 = TOGA

-- sim/engines/throttle_down
-- sim/engines/throttle_up


local THR_dn = findCommand("sim/engines/throttle_down")

function THR_dn_hnd(phase)
	if 1 == phase then
		if get(stu_mode) > 2 then set(stu_mode, 2) end
	end
	return 0
end

registerCommandHandler(THR_dn, 0, THR_dn_hnd)


local THR_up = findCommand("sim/engines/throttle_up")

function THR_up_hnd(phase)
	if 1 == phase then
		if get(stu_mode) > 2 then set(stu_mode, 2) end
	end
	return 0
end

registerCommandHandler(THR_up, 0, THR_up_hnd)





local spd_hold = 0
local IAS_smth = 0





local prepare_counter = 0
local rud_chng = false
local rud_last = get(tro_comm_1) + get(tro_comm_2) + get(tro_comm_3)

local rud_last_1 = get(tro_comm_1)
local rud_last_2 = get(tro_comm_2)
local rud_last_3 = get(tro_comm_3)

local marker_act_L = get(ias_left)
local marker_act_R = get(ias_right)

IAS_last = 0

local stab_counter = 0

local spd_diff_ind_L = 0
local spd_diff_ind_R = 0


function update()
	
	local MASTER = get(ismaster) ~= 1
	
	local passed = get(frame_time)
	
	local channel_off = get(absu_speed_off) -- 1 = 1, -1 = 2
	
	-- get(absu_speed_prepare) == 1
	
	local power = get(bus36_volt_left) > 30 and get(bus115_1_volt) > 110 and (get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13)
	local at_1_work = bool2int(get(bus27_volt_left) > 13 and channel_off ~= 1 and get(absu_at1_fail) == 0) 
	local at_2_work = bool2int(get(bus27_volt_right) > 13 and channel_off ~= -1 and get(absu_at2_fail) == 0)
	
	local prepare = get(absu_speed_prepare) == 1
	local rud_now = get(tro_comm_1) + get(tro_comm_2) + get(tro_comm_3)
	-- calculate working throttles
	local rud_work_1 = (1 - get(absu_throt_off_1))
	local rud_work_2 = (1 - get(absu_throt_off_2))
	local rud_work_3 = (1 - get(absu_throt_off_3))
	
	local rud_now_1 = get(tro_comm_1)
	local rud_now_2 = get(tro_comm_2)
	local rud_now_3 = get(tro_comm_3)
	

	-- STU modes
	local stu_roll_ready = get(roll_main_mode) > 0 and get(absu_nav_on) == 1
	local stu_pitch_ready = get(pitch_main_mode) > 0 and get(absu_landing_on) == 1
	
	
	local stab_button = get(absu_stab_speed) == 1
	
	AT_mode = get(stu_mode)
	
	-- calculate the AT mode
	if not power then 
		AT_mode = 0 -- off
	elseif at_1_work + at_2_work == 0 then -- total fail
		AT_mode = -1
	elseif prepare_counter < 1 and power then -- sync mode
		AT_mode = 1 -- ON, but not ready
	elseif power and prepare and prepare_counter >= 1 and AT_mode == 1 then -- preparing, sync mode is active
		AT_mode = 2 -- ready mode
	elseif power and prepare and rud_work_1 + rud_work_2 + rud_work_3 > 1 and stab_button and AT_mode == 2 and stab_counter > 0.1 then 
		AT_mode = 3 -- stab mode
		rud_last = rud_now
		rud_last_1 = rud_now_1
		rud_last_2 = rud_now_2
		rud_last_3 = rud_now_3
		stab_counter = 0
	elseif power and prepare and AT_mode == 3 and stu_pitch_ready and get(pitch_sub_mode) == 6 then
		AT_mode = 4 -- TOGA mode
		rud_last = rud_now
		rud_last_1 = rud_now_1
		rud_last_2 = rud_now_2
		rud_last_3 = rud_now_3
		stab_counter = 0
	elseif rud_work_1 + rud_work_2 + rud_work_3 < 2 and AT_mode >= 3 then 
		AT_mode = 2 -- disable AT by disconnecting two RUDs
		stab_counter = 0
	elseif rud_chng and AT_mode >= 3 then
		AT_mode = 2 -- disable AT by moving RUDs
		stab_counter = 0
	elseif AT_mode == 4 and get(anim_rud1) > 0.98 * rud_work_1 and get(anim_rud2) > 0.98 * rud_work_2 and get(anim_rud3) > 0.98 * rud_work_3 then
		AT_mode = 2 -- disable AT, when TOGA move complete
		stab_counter = 0
	elseif stab_counter > 0.1 and stab_button and AT_mode > 2 then
		AT_mode = 2 -- disable AT when button pressed again
		stab_counter = 0
	end
	
	if not stab_button then stab_counter = stab_counter + passed end
	
	if MASTER then set(stu_mode, AT_mode) end
	
	
	
	-- additional calculations
	if power and prepare then prepare_counter = prepare_counter + passed 
	else prepare_counter = 0
	end
	
	if prepare_counter > 1 then prepare_counter = 1 end
	
	-- RUD change calc
	local rud_moved = bool2int(math.abs(rud_last_1 - rud_now_1) > 0.1 and rud_work_1 == 1) + bool2int(math.abs(rud_last_2 - rud_now_2) > 0.1 and rud_work_2 == 1) + bool2int(math.abs(rud_last_3 - rud_now_3) > 0.1 and rud_work_3 == 1)
	if rud_moved > 1 then
		rud_last = rud_now
		rud_last_1 = rud_now_1
		rud_last_2 = rud_now_2
		rud_last_3 = rud_now_3
		rud_chng = true
	else 
		rud_chng = false
	end
	
	-- take IAS
	local IAS = get(ias_left)
	
	-- sync markers
	marker_act_L = get(ias_yellow_left)
	marker_act_R = get(ias_yellow_right)
	
	
	-- switch source
	local source = 1 - get(absu_speed_us_right_left)
	if source == 1 then 
		IAS = get(ias_right)
	end
	
	IAS_smth = IAS_smth + (IAS - IAS_smth) * passed * 2
	

	
	
	-- throttles and speed calculations
	if AT_mode == 1 or AT_mode == 2 then -- sync markers
		
		marker_act_L = marker_act_L + (IAS_smth - marker_act_L) * passed * 2
		marker_act_R = marker_act_R + (IAS_smth - marker_act_R) * passed * 2
		
		set(rud_1_spd, 0)
		set(rud_2_spd, 0)
		set(rud_3_spd, 0)
		
		spd_diff_ind_L = spd_diff_ind_L - spd_diff_ind_L * passed
		spd_diff_ind_R = spd_diff_ind_R - spd_diff_ind_R * passed
		
	elseif AT_mode == 3 then -- work throuttles
		
		-- control marker's position
		local work_spd = 0
		if source == 0 then -- work with left side
			marker_act_L = marker_act_L + get(absu_speed_change) * passed * 4
			marker_act_R = marker_act_R + (IAS_smth - marker_act_R) * passed * 2
			work_spd = marker_act_L
			
			spd_diff_ind_L = IAS_smth - marker_act_L
			spd_diff_ind_R = spd_diff_ind_R - spd_diff_ind_R * passed
			
		else
			marker_act_R = marker_act_R + get(absu_speed_change) * passed * 4
			marker_act_L = marker_act_L + (IAS_smth - marker_act_L) * passed * 2
			work_spd = marker_act_R
			
			spd_diff_ind_L = spd_diff_ind_L - spd_diff_ind_L * passed
			spd_diff_ind_R =  IAS_smth - marker_act_R
		end
		
		
		
		-- calculate the speed
		local P = work_spd - IAS_smth
		
		local D = 0 -- take airspeed
		if passed ~= 0 then D = (IAS_smth - IAS_last) / passed end
		IAS_last = IAS_smth
		
		local K_P = 0.015
		local K_D = -0.11
		
if get(sim_vers) then
	if get(sim_vers) >= 111000 then
		K_P = 0.008
		K_D = -0.05
	end
end		
		
		local main_rud_spd = P * K_P + D * K_D
		
		if main_rud_spd > 0.3 then main_rud_spd = 0.3
		elseif main_rud_spd < -0.3 then main_rud_spd = -0.3 end
		
		local rud_current = (get(anim_rud1) + get(anim_rud2) + get(anim_rud3)) / 3
		
		if rud_current > 0.95 and main_rud_spd > 0 then main_rud_spd = 0 end -- limit upper edge of throttle usage
		
		local rud_spd_1 = main_rud_spd * math.random(95, 105) * 0.01
		local rud_spd_2 = main_rud_spd * math.random(95, 105) * 0.01
		local rud_spd_3 = main_rud_spd * math.random(95, 105) * 0.01
		
		
		if MASTER then
		
			-- set results
			set(rud_1_spd, rud_spd_1 * rud_work_1 * (at_1_work + at_2_work) * 0.6)
			set(rud_2_spd, rud_spd_2 * rud_work_2 * (at_1_work + at_2_work) * 0.6)
			set(rud_3_spd, rud_spd_3 * rud_work_3 * (at_1_work + at_2_work) * 0.6)
		
		end
		
		
	
	elseif AT_mode == 4 then -- TOGA
		
		marker_act_L = marker_act_L + (IAS_smth - marker_act_L) * passed * 2
		marker_act_R = marker_act_R + (IAS_smth - marker_act_R) * passed * 2
		
		
		if MASTER then
			set(rud_1_spd, 0.3 * rud_work_1 * (at_1_work + at_2_work) * 0.6)
			set(rud_2_spd, 0.3 * rud_work_2 * (at_1_work + at_2_work) * 0.6)
			set(rud_3_spd, 0.3 * rud_work_3 * (at_1_work + at_2_work) * 0.6)
		end
		
		spd_diff_ind_L = spd_diff_ind_L - spd_diff_ind_L * passed
		spd_diff_ind_R = spd_diff_ind_R - spd_diff_ind_R * passed
		
	else
		
		set(rud_1_spd, 0)
		set(rud_2_spd, 0)
		set(rud_3_spd, 0)
		
		spd_diff_ind_L = spd_diff_ind_L - spd_diff_ind_L * passed
		spd_diff_ind_R = spd_diff_ind_R - spd_diff_ind_R * passed
	

	end
	
	
	
	
	
	if marker_act_L > 350 then marker_act_L = 350
	elseif marker_act_L < 0 then marker_act_L = 0 end
	
	if marker_act_R > 350 then marker_act_R = 350
	elseif marker_act_R < 0 then marker_act_R = 0 end

if MASTER then
	
	set(ias_yellow_left, marker_act_L)
	set(ias_yellow_right, marker_act_R)
	
	
	if get(toga_command) == 1 and AT_mode ~= 4 then -- fake TOGA
		set(rud_1_spd, -0.00001)
		set(rud_2_spd, -0.00001)
		set(rud_3_spd, -0.00001)
	
	end
	
	
	
end
	
	set(absu_at_dif_left, spd_diff_ind_L)
	set(absu_at_dif_right, spd_diff_ind_R)

	set(absu_at_power_cc, bool2int(power and channel_off ~= 1) + bool2int(power and channel_off ~= -1))
	
	
	
	
	
	



end

