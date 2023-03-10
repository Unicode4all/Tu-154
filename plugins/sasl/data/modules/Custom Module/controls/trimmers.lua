-- this is trimmers logic

-- controls
defineProperty("elev_trimm_sw", globalPropertyi("tu154ce/controll/elev_trimm_switcher")) -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование
defineProperty("ail_trimm_sw", globalPropertyi("tu154ce/controll/ail_trimm_sw")) -- переключатель триммера элеронов
defineProperty("rudd_trimm_sw", globalPropertyi("tu154ce/controll/rudd_trimm_sw")) -- переключатель триммера РН

defineProperty("emerg_elev_trimm", globalPropertyi("tu154ce/switchers/console/emerg_elev_trimm")) -- аварийное управление триммером


defineProperty("absu_pitch_trimm", globalPropertyi("tu154ce/absu/absu_pitch_trimm")) -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз


-- results
defineProperty("int_pitch_trim", globalPropertyf("tu154ce/trimmers/int_pitch_trim")) -- положение триммера руля высоты
defineProperty("int_roll_trim", globalPropertyf("tu154ce/trimmers/int_roll_trim")) -- положение триммера элеронов
defineProperty("int_yaw_trim", globalPropertyf("tu154ce/trimmers/int_yaw_trim")) -- положение триммера руля направления


defineProperty("absu_roll_mode", globalPropertyi("tu154ce/gauges/console/absu_roll_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
defineProperty("absu_pitch_mode", globalPropertyi("tu154ce/gauges/console/absu_pitch_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб




-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

defineProperty("ctr_27_L_cc", globalPropertyf("tu154ce/control/ctr_27_L_cc")) -- нагрузка на сеть
defineProperty("ctr_27_R_cc", globalPropertyf("tu154ce/control/ctr_27_R_cc")) -- нагрузка на сеть

defineProperty("ctr_36L_cc", globalPropertyf("tu154ce/control/ctr_36L_cc")) -- нагрузка на сеть
defineProperty("ctr_36R_cc", globalPropertyf("tu154ce/control/ctr_36R_cc")) -- нагрузка на сеть

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
defineProperty("rel_trim_rud", globalPropertyi("sim/operation/failures/rel_trim_rud")) -- 
defineProperty("rel_trim_ail", globalPropertyi("sim/operation/failures/rel_trim_ail")) -- 
defineProperty("rel_trim_elv", globalPropertyi("sim/operation/failures/rel_trim_elv")) -- 
defineProperty("trim_emerg_elv_fail", globalPropertyi("tu154ce/failures/trim_emerg_elv_fail")) --


-- sound
local trimm_up = loadSample('Custom Sounds/trimm_up.wav')
local trimm_down = loadSample('Custom Sounds/trimm_down.wav')
local trimm_ctr = loadSample('Custom Sounds/trimm_ctr.wav')

local pitch_trim_power = true
local roll_trim_power = true
local yaw_trim_power = true


local trimm_pitch_last = 0
local trimm_roll_last = 0
local trimm_yaw_last = 0


function update()
	local MASTER = get(ismaster) ~= 1
	
	-- initial
	local passed = get(frame_time)
	local power_27_L = bool2int(get(bus27_volt_left) > 13)
	local power_27_R = bool2int(get(bus27_volt_right) > 13)
	local power36_L = bool2int(get(bus36_volt_left) > 30)
	local power36_R = bool2int(get(bus36_volt_right) > 30)
	
	local CC_27L = get(ctr_27_L_cc)
	local CC_27R = get(ctr_27_R_cc)
	
	local elev_tr_sw = get(elev_trimm_sw)
	local emer_tr_sw = get(emerg_elev_trimm)
	local absu_tr_pt = get(absu_pitch_trimm)
	
	if get(absu_pitch_mode) == 2 then
		elev_tr_sw = 0
		emer_tr_sw = 0
	end
	
	-- pitch trimmer --
	local pitch_trim_eng = 2 -- working engines for trim. can add failures here
	local pitch_trim_pos = get(int_pitch_trim)
	local pitch_trimm_work = bool2int(get(rel_trim_elv) ~= 6)
	if pitch_trim_pos >= 0 then 
		pitch_trim_pos = pitch_trim_pos + elev_tr_sw * passed * power_27_L * power_27_R * (power36_L + power36_R) * pitch_trim_eng * 0.015 * pitch_trimm_work
		pitch_trim_pos = pitch_trim_pos + absu_tr_pt * passed * power_27_L * power_27_R * (power36_L + power36_R) * pitch_trim_eng * 0.005 * pitch_trimm_work
		pitch_trim_pos = pitch_trim_pos + emer_tr_sw * passed * power_27_L * power36_L * 0.03 * (1 - get(trim_emerg_elv_fail))
	else 
		pitch_trim_pos = pitch_trim_pos + elev_tr_sw * passed * power_27_L * power_27_R * (power36_L + power36_R) * pitch_trim_eng * 0.015 * 1.25 * pitch_trimm_work
		pitch_trim_pos = pitch_trim_pos + absu_tr_pt * passed * power_27_L * power_27_R * (power36_L + power36_R) * pitch_trim_eng * 0.005 * 1.25 * pitch_trimm_work
		pitch_trim_pos = pitch_trim_pos + emer_tr_sw * passed * power_27_L * power36_L * 0.03 * 1.25 * (1 - get(trim_emerg_elv_fail))
	end
	
	if pitch_trim_pos > 0.60 then pitch_trim_pos = 0.60
	elseif pitch_trim_pos < -0.60 then pitch_trim_pos = -0.60 end

if MASTER then	
	set(int_pitch_trim, pitch_trim_pos)
end

	if pitch_trim_pos ~= trimm_pitch_last then
		set(ctr_36L_cc, power36_L)
		set(ctr_36R_cc, power36_R)
	else
		set(ctr_36L_cc, 0)
		set(ctr_36R_cc, 0)
	end
	
	trimm_pitch_last = pitch_trim_pos
	
	
	-- roll trimmer --
	local roll_trim_pos = get(int_roll_trim) + get(ail_trimm_sw) * passed * power_27_L * 0.02 * bool2int(get(rel_trim_ail) ~= 6)

	if roll_trim_pos > 0.24 then roll_trim_pos = 0.24
	elseif roll_trim_pos < -0.24 then roll_trim_pos = -0.24 end

if MASTER then	
	set(int_roll_trim, roll_trim_pos)
end

	if roll_trim_pos ~= trimm_roll_last then
		set(ctr_27_L_cc, CC_27L + 3)
	end
	
	
	trimm_roll_last = roll_trim_pos
	
	
	-- yaw trimmer --
	local yaw_trim_pos = get(int_yaw_trim) + get(rudd_trimm_sw) * passed * power_27_R * 0.02 * bool2int(get(rel_trim_rud) ~= 6)
	
	if yaw_trim_pos > 0.2 then yaw_trim_pos = 0.2
	elseif yaw_trim_pos < -0.2 then yaw_trim_pos = -0.2 end

if MASTER then	
	set(int_yaw_trim, yaw_trim_pos)
end
	
	if yaw_trim_pos ~= trimm_yaw_last then
		set(ctr_27_R_cc, CC_27R + 3)
	end
	
	trimm_yaw_last = yaw_trim_pos


end



-- turn pitch trimmer UP
pitch_UP_comm = findCommand("sim/flight_controls/pitch_trim_up")
function pitch_UP_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(elev_trimm_sw, 1)
		if 0 == phase then if get(xplane_version) < 120000 then playSample(trimm_up, false) end end
	else
		set(elev_trimm_sw, 0)
		if get(xplane_version) < 120000 then playSample(trimm_ctr, false) end
    end
return 0
end
registerCommandHandler(pitch_UP_comm, 0, pitch_UP_hnd)

-- turn pitch trimmer DOWN
pitch_DOWN_comm = findCommand("sim/flight_controls/pitch_trim_down")
function pitch_DOWN_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(elev_trimm_sw, -1)
		if 0 == phase then if get(xplane_version) < 120000 then playSample(trimm_down, false) end end
	else
		set(elev_trimm_sw, 0)
		if get(xplane_version) < 120000 then playSample(trimm_ctr, false) end
    end
return 0
end
registerCommandHandler(pitch_DOWN_comm, 0, pitch_DOWN_hnd)

-- turn pitch trimmer CENTER
pitch_TO_comm = findCommand("sim/flight_controls/pitch_trim_takeoff")
function pitch_TO_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		if pitch_trim_power then set(int_pitch_trim, 0)  end
    end
return 0
end
registerCommandHandler(pitch_TO_comm, 0, pitch_TO_hnd)




-- turn roll trimmer LEFT
roll_LEFT_comm = findCommand("sim/flight_controls/aileron_trim_left")
function roll_LEFT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(ail_trimm_sw, -1)
	else
		set(ail_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(roll_LEFT_comm, 0, roll_LEFT_hnd)

-- turn roll trimmer RIGHT
roll_RIGHT_comm = findCommand("sim/flight_controls/aileron_trim_right")
function roll_RIGHT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(ail_trimm_sw, 1)
	else
		set(ail_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(roll_RIGHT_comm, 0, roll_RIGHT_hnd)

-- turn roll trimmer CTR
roll_CTR_comm = findCommand("sim/flight_controls/aileron_trim_center")
function roll_CTR_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		if roll_trim_power then set(int_roll_trim, 0) end
    end
return 0
end
registerCommandHandler(roll_CTR_comm, 0, roll_CTR_hnd)




-- turn yaw trimmer LEFT
yaw_LEFT_comm = findCommand("sim/flight_controls/rudder_trim_left")
function yaw_LEFT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(rudd_trimm_sw, -1)
	else
		set(rudd_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(yaw_LEFT_comm, 0, yaw_LEFT_hnd)

-- turn yaw trimmer RIGHT
yaw_RIGHT_comm = findCommand("sim/flight_controls/rudder_trim_right")
function yaw_RIGHT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(rudd_trimm_sw, 1)
	else
		set(rudd_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(yaw_RIGHT_comm, 0, yaw_RIGHT_hnd)

-- turn yaw trimmer CTR
yaw_CTR_comm = findCommand("sim/flight_controls/rudder_trim_center")
function yaw_CTR_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		if yaw_trim_power then set(int_yaw_trim, 0) end
    end
return 0
end
registerCommandHandler(yaw_CTR_comm, 0, yaw_CTR_hnd)