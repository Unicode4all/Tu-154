-- this is ABSU modes logic

-- controls
defineProperty("absu_zpu_sel", globalPropertyi("tu154ce/switchers/console/absu_zpu_sel")) -- переключатель ЗПУ. лев - прав
defineProperty("absu_nav_on", globalPropertyi("tu154ce/switchers/console/absu_nav_on")) -- стрелки навигация
defineProperty("absu_landing_on", globalPropertyi("tu154ce/switchers/console/absu_landing_on")) -- стрелки посадка
defineProperty("absu_needles_on", globalPropertyi("tu154ce/switchers/console/absu_needles_on")) -- стрелки
defineProperty("absu_speed_mode", globalPropertyi("tu154ce/switchers/console/absu_speed_mode")) -- режим СТУ. 0 - откл, 1 - нву, 2 - аз1, 3 - аз2, 4 - пос
defineProperty("absu_speed_change", globalPropertyi("tu154ce/switchers/console/absu_speed_change")) -- ручка изменения скорости. 
defineProperty("absu_speed_off", globalPropertyi("tu154ce/switchers/console/absu_speed_off")) -- отключение 1 и 2
defineProperty("absu_speed_prepare", globalPropertyi("tu154ce/switchers/console/absu_speed_prepare")) -- подготовка
defineProperty("absu_speed_us_right_left", globalPropertyi("tu154ce/switchers/console/absu_speed_us_right_left")) -- подготовка

defineProperty("absu_roll_ch_on", globalPropertyi("tu154ce/switchers/console/absu_roll_ch_on")) -- выключатель канал крена
defineProperty("absu_pitch_ch_on", globalPropertyi("tu154ce/switchers/console/absu_pitch_ch_on")) -- выключатель канала тангажа
defineProperty("absu_smooth_on", globalPropertyi("tu154ce/switchers/console/absu_smooth_on")) -- выключатель "в болтанку"

defineProperty("absu_turn_handle", globalPropertyi("tu154ce/switchers/console/absu_turn_handle")) -- ручка поворота
defineProperty("absu_pitch_wheel", globalPropertyi("tu154ce/switchers/console/absu_pitch_wheel")) -- колесико спуска, подъема

defineProperty("hydro_ra56_rud_1", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_1")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_2", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_2")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_3", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_3")) -- гидропитание РА56 курс

defineProperty("hydro_ra56_ail_1", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_1")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_2", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_2")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_3", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_3")) -- гидропитание РА56 крен

defineProperty("hydro_ra56_elev_1", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_1")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_2", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_2")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_3", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_3")) -- гидропитание РА56 тангаж

defineProperty("sau_stu_on", globalPropertyi("tu154ce/switchers/ovhd/sau_stu_on"))  -- САУ СТУ выключатель

--defineProperty("tro_comm_1", globalPropertyf("sim/flightmodel/engine/ENGN_thro[0]"))
--defineProperty("tro_comm_2", globalPropertyf("sim/flightmodel/engine/ENGN_thro[1]"))
--defineProperty("tro_comm_3", globalPropertyf("sim/flightmodel/engine/ENGN_thro[2]"))

defineProperty("tro_comm_1", globalPropertyf("tu154ce/SC/engine/ENGN_thro_0")) 
defineProperty("tro_comm_2", globalPropertyf("tu154ce/SC/engine/ENGN_thro_1")) 
defineProperty("tro_comm_3", globalPropertyf("tu154ce/SC/engine/ENGN_thro_2"))



-- buttons
defineProperty("absu_zk", globalPropertyi("tu154ce/buttons/console/absu_zk")) -- кнопка ЗК на панели АБСУ
defineProperty("absu_reset", globalPropertyi("tu154ce/buttons/console/absu_reset")) -- кнопка сброс программы на панели АБСУ
defineProperty("absu_nvu", globalPropertyi("tu154ce/buttons/console/absu_nvu")) -- кнопка НВУ на панели АБСУ
defineProperty("absu_az1", globalPropertyi("tu154ce/buttons/console/absu_az1")) -- кнопка АЗ 1 на панели АБСУ
defineProperty("absu_az2", globalPropertyi("tu154ce/buttons/console/absu_az2")) -- кнопка АЗ 2 на панели АБСУ
defineProperty("absu_app", globalPropertyi("tu154ce/buttons/console/absu_app")) -- кнопка заход на панели АБСУ
defineProperty("absu_gs", globalPropertyi("tu154ce/buttons/console/absu_gs")) -- кнопка глиссада на панели АБСУ
defineProperty("absu_stab_m", globalPropertyi("tu154ce/buttons/console/absu_stab_m")) -- кнопка M на панели АБСУ
defineProperty("absu_stab_v", globalPropertyi("tu154ce/buttons/console/absu_stab_v")) -- кнопка V на панели АБСУ
defineProperty("absu_stab_h", globalPropertyi("tu154ce/buttons/console/absu_stab_h")) -- кнопка H на панели АБСУ
defineProperty("absu_stab", globalPropertyi("tu154ce/buttons/console/absu_stab")) -- кнопка СТАБ на панели АБСУ

defineProperty("absu_arrest", globalPropertyi("tu154ce/buttons/console/absu_arrest")) -- кнопки арретировки МГВ
defineProperty("absu_speed_test_1", globalPropertyi("tu154ce/buttons/console/absu_speed_test_1")) -- кнопка првоерки СТУ нижняя
defineProperty("absu_speed_test_2", globalPropertyi("tu154ce/buttons/console/absu_speed_test_2")) -- кнопка првоерки СТУ верхняя

defineProperty("absu_stab_speed", globalPropertyi("tu154ce/buttons/console/absu_stab_speed")) -- кнопка C на панели АБСУ
defineProperty("absu_throt_off_1", globalPropertyi("tu154ce/buttons/console/absu_throt_off_1")) -- кнопка откл Г1 на панели АБСУ
defineProperty("absu_throt_off_2", globalPropertyi("tu154ce/buttons/console/absu_throt_off_2")) -- кнопка откл Г2 на панели АБСУ
defineProperty("absu_throt_off_3", globalPropertyi("tu154ce/buttons/console/absu_throt_off_3")) -- кнопка откл Г3 на панели АБСУ

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

defineProperty("absu_power_cc", globalPropertyf("tu154ce/absu_power_cc")) -- потребление тока АБСУ

-- other sources
defineProperty("nvu_mode", globalPropertyi("tu154ce/nvu/nvu_mode")) -- режим НВУ. 0 = выкл, 1 = готов, 2 = счисление, 3 = коррекция
defineProperty("freq_1", globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))  -- set the frequency
defineProperty("freq_2", globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz"))  -- set the frequency

defineProperty("nav_cs_flag_1", globalPropertyi("tu154ce/radio/nav1_cs_flag"))
defineProperty("nav_gs_flag_1", globalPropertyi("tu154ce/radio/nav1_gs_flag"))
	
defineProperty("nav_cs_flag_2", globalPropertyi("tu154ce/radio/nav2_cs_flag"))
defineProperty("nav_gs_flag_2", globalPropertyi("tu154ce/radio/nav2_gs_flag"))

defineProperty("nav_gs_1", globalPropertyf("tu154ce/radio/nav1_gs")) -- glideslope

defineProperty("svs_on", globalPropertyi("tu154ce/switchers/ovhd/svs_on")) -- выключатель СВС
defineProperty("svs_fail", globalPropertyi("sim/operation/failures/rel_adc_comp"))  -- static fail


defineProperty("rv5_alt", globalPropertyf("tu154ce/misc/rv5_alt_left"))  -- высота на левом высотомере
defineProperty("rv_flag", globalPropertyi("tu154ce/gauges/alt/radioalt_flag_left"))  -- RV flag


defineProperty("absu_course_out", globalPropertyi("tu154ce/absu_course_out")) -- flying outside the course limits
defineProperty("absu_gs_out", globalPropertyi("tu154ce/absu_gs_out")) -- flying outside the course limits

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

-- Throttles
defineProperty("anim_rud1", globalPropertyf("tu154ce/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154ce/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154ce/controlls/throttle_3")) -- РУД 3
-- flaps
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

-- joystick
--defineProperty("joy_pitch", globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio")) -- pitch position of joytick
--defineProperty("joy_roll", globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio")) -- roll position of joystick
--defineProperty("joy_yaw", globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio")) -- yaw position of joystick

defineProperty("joy_pitch", globalPropertyf("tu154ce/SC/yoke_pitch_ratio")) 
defineProperty("joy_roll", globalPropertyf("tu154ce/SC/yoke_roll_ratio")) 
defineProperty("joy_yaw", globalPropertyf("tu154ce/SC/yoke_heading_ratio")) 


defineProperty("manip_pitch", globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio")) 
defineProperty("manip_roll", globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio")) 

--sim/cockpit2/controls/yoke_roll_ratio	sim/cockpit2/controls/yoke_pitch_ratio




defineProperty("pkp_fail_left", globalPropertyf("tu154ce/gauges/ahz/ahz_flag_L")) -- 
defineProperty("pkp_fail_right", globalPropertyf("tu154ce/gauges/ahz/ahz_flag_R")) -- 
defineProperty("mgv_contr_fail", globalPropertyf("tu154ce/gyro/mgv_contr_flag")) -- 

defineProperty("pressure_ind_1", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_1")) -- индикатор давления гидросистемы 1
defineProperty("pressure_ind_2", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_2")) -- индикатор давления гидросистемы 2
defineProperty("pressure_ind_3", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_3")) -- индикатор давления гидросистемы 3

defineProperty("gs_press_1", globalPropertyf("tu154ce/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154ce/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154ce/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154ce/hydro/gs_press_4")) -- давление в ГС4

defineProperty("tks_fail_left", globalPropertyi("tu154ce/tks/fail_left")) -- флаг отказа
defineProperty("tks_fail_right", globalPropertyi("tu154ce/tks/fail_right")) -- флаг отказа

defineProperty("outer_marker", globalPropertyi("sim/cockpit/misc/outer_marker_lit"))


-- results
defineProperty("roll_main_mode", globalPropertyi("tu154ce/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154ce/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("roll_sub_mode", globalPropertyi("tu154ce/absu/roll_sub_mode")) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход, 7 - уход, 10 арм заход
defineProperty("pitch_sub_mode", globalPropertyi("tu154ce/absu/pitch_sub_mode")) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход, 10 - арм глисс

defineProperty("absu_pnp_mode_1", globalPropertyi("tu154ce/absu/absu_pnp_mode_1")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
defineProperty("absu_pnp_mode_2", globalPropertyi("tu154ce/absu/absu_pnp_mode_2")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС


defineProperty("autopilot_mode", globalPropertyi("sim/cockpit/autopilot/autopilot_mode")) -- автопилот в симе

defineProperty("toga_command", globalPropertyi("tu154ce/absu/toga_comm")) -- 	режим УХОД


defineProperty("absu_use_second_nav", globalPropertyi("tu154ce/absu_use_second_nav")) -- АБСУ использует второй КурсМП



defineProperty("damp_roll_lamp", globalPropertyi("tu154ce/absu/damp_roll_lamp")) -- 
defineProperty("damp_pitch_lamp", globalPropertyi("tu154ce/absu/damp_pitch_lamp")) -- 
defineProperty("damp_yaw_lamp", globalPropertyi("tu154ce/absu/damp_yaw_lamp")) -- 
defineProperty("roll_contr_lamp", globalPropertyi("tu154ce/absu/roll_contr_lamp")) -- 
defineProperty("pitch_contr_lamp", globalPropertyi("tu154ce/absu/pitch_contr_lamp")) -- 
defineProperty("man_roll_lamp", globalPropertyi("tu154ce/absu/man_roll_lamp")) -- 
defineProperty("man_pitch_lamp", globalPropertyi("tu154ce/absu/man_pitch_lamp")) -- 
defineProperty("man_toga_lamp", globalPropertyi("tu154ce/absu/man_toga_lamp")) -- 
defineProperty("triangle_lamp_signal", globalPropertyi("tu154ce/absu/triangle_lamp_signal")) -- 






-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- failures
defineProperty("absu_ra56_roll_fail", globalPropertyi("tu154ce/failures/absu_ra56_roll_fail")) -- отказ ra56
defineProperty("absu_ra56_pitch_fail", globalPropertyi("tu154ce/failures/absu_ra56_pitch_fail")) -- отказ ra56
defineProperty("absu_ra56_yaw_fail", globalPropertyi("tu154ce/failures/absu_ra56_yaw_fail")) -- отказ ra56

-- failures
defineProperty("absu_damp_roll_fail", globalPropertyi("tu154ce/failures/absu_damp_roll_fail")) -- отказ демперов крена
defineProperty("absu_damp_pitch_fail", globalPropertyi("tu154ce/failures/absu_damp_pitch_fail")) -- отказ демперов тангажа
defineProperty("absu_damp_yaw_fail", globalPropertyi("tu154ce/failures/absu_damp_yaw_fail")) -- отказ демперов курса
defineProperty("absu_contr_roll_fail", globalPropertyi("tu154ce/failures/absu_contr_roll_fail")) -- отказ бокового управления
defineProperty("absu_contr_pitch_fail", globalPropertyi("tu154ce/failures/absu_contr_pitch_fail")) -- отказ продольного управления
defineProperty("absu_calc_toga_fail", globalPropertyi("tu154ce/failures/absu_calc_toga_fail")) -- отказ вычислителя УХОД
defineProperty("absu_calc_roll_fail", globalPropertyi("tu154ce/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154ce/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ

defineProperty("absu_fail_signal", globalPropertyi("tu154ce/absu/absu_fail_signal")) -- сигнал на сирену




local TOGA_mode = false
local TOGA_button = false
local AP_button = false

local roll_mode_main = 1
local pitch_mode_main = 1

local signal_timer = 0

TOGA_COMM = findCommand("sim/engines/TOGA_power")

local thro_last_1 = get(tro_comm_1)
local thro_last_2 = get(tro_comm_2)
local thro_last_3 = get(tro_comm_3)

function TOGA_comm_hnd(phase)
	if 1 == phase then
		TOGA_mode = true
		TOGA_button = true
		set(toga_command, 1)
	else
		set(toga_command, 0)
		TOGA_button = false
		--set(tro_comm_1, thro_last_1)
		--set(tro_comm_2, thro_last_2)
		--set(tro_comm_3, thro_last_3)
	end
	
	return 0
end

registerCommandHandler(TOGA_COMM, 0, TOGA_comm_hnd)

local AP_toggle = findCommand("sim/autopilot/fdir_toggle")

function AP_toggle_hnd(phase)
	if 0 == phase then
		if get(roll_main_mode) == 2 then set(roll_main_mode, 1) end
		if get(pitch_main_mode) == 2 then set(pitch_main_mode, 1) end
		AP_button = true
	elseif 1 == phase then
		AP_button = true
	else 
		AP_button = false
		--TOGA_mode = false
	end
	return 0
end

registerCommandHandler(AP_toggle, 0, AP_toggle_hnd)





local roll_submode = 1
local pitch_submode = 1

local sau_sw_last = get(sau_stu_on) == 1

local pitch_wheel_last = get(absu_pitch_wheel)


local land_sw_last = get(absu_landing_on) == 1

local power_counter = 0
local state_checked = false

local yoke_reset = false

function update()
	
	
	thro_last_1 = get(tro_comm_1)
	thro_last_2 = get(tro_comm_2)
	thro_last_3 = get(tro_comm_3)
	
	set(autopilot_mode, 0)
	
local MASTER = get(ismaster) ~= 1	
if MASTER then	
	
	-- initial variables
	-- sync
	roll_mode_main = get(roll_main_mode)
	pitch_mode_main = get(pitch_main_mode)
	
	roll_submode = get(roll_sub_mode)
	pitch_submode = get(pitch_sub_mode)
	
	
	
	local sau_sw = get(sau_stu_on) == 1
	
	local power = get(bus27_volt_left) > 13 and get(bus27_volt_right) > 13 and get(bus115_3_volt) > 110 and get(bus36_volt_left) > 30 and get(bus36_volt_right) > 30 and get(bus36_volt_pts250_1) and sau_sw -- temp
	
	local passed = get(frame_time)
	
	
	local stab_btn = get(absu_stab) == 1
	
	if stab_btn and not yoke_reset then
		set(manip_pitch, 0)
		set(manip_roll, 0)
		yoke_reset = true
	else
		yoke_reset = false
	end
	
	
	local pitch_sw = get(absu_pitch_ch_on) == 1
	local roll_sw = get(absu_roll_ch_on) == 1
	
	local ail_hyd_sw = get(hydro_ra56_ail_1) + get(hydro_ra56_ail_2) + get(hydro_ra56_ail_3) > 1 and get(absu_ra56_roll_fail) < 2
	
	local elev_hyd_sw = get(hydro_ra56_elev_1) + get(hydro_ra56_elev_2) + get(hydro_ra56_elev_3) > 1 and get(absu_ra56_pitch_fail) < 2
	
	local rud_hyd_sw = get(hydro_ra56_rud_1) + get(hydro_ra56_rud_2) + get(hydro_ra56_rud_3) > 1 and get(absu_ra56_yaw_fail) < 2
	
	local roll_handle = get(absu_turn_handle)
	
	local rud_toga = get(anim_rud1) + get(anim_rud2) + get(anim_rud3) > 0.99 * 3
	
	local nav_prep = get(absu_nav_on) == 1
	local land_prep = get(absu_landing_on) == 1
	
	local flaps = (get(flap_inn_L) + get(flap_inn_R)) / 2
	
	local reset_but = get(absu_reset) == 1
	
		
	-- conditions, when ABSU can work
	local absu_work_logic = true-- get(pkp_fail_left) + get(pkp_fail_right) + get(mgv_contr_fail) < 2
	absu_work_logic = absu_work_logic and bool2int(get(gs_press_1) > 100) + bool2int(get(gs_press_2) > 100) + bool2int(get(gs_press_3) > 100) >= 2
	absu_work_logic = absu_work_logic -- and sau_sw and get(tks_fail_left) + get(tks_fail_right) == 0
	
	local ahz_work = get(pkp_fail_left) + get(pkp_fail_right) + get(mgv_contr_fail) < 2
	
	-- general yoke mode enable
	if sau_sw ~= sau_sw_last and sau_sw then -- need to extend conditions
		if ail_hyd_sw and rud_hyd_sw and absu_work_logic then 
			roll_mode_main = 1 
			--roll_submode = 1
		end
		if elev_hyd_sw and absu_work_logic then 
			pitch_mode_main = 1 
			--pitch_submode = 1
		end
	end
	
	sau_sw_last = sau_sw
	
	-- roll part
	-- set stab mode
	if roll_mode_main == 1 and stab_btn and roll_sw then
		roll_mode_main = 2
		--roll_submode = 1
	end
	
	-- set yoke mode

	--if roll_mode_main == 2 and (math.abs(get(joy_roll)) > 0.2 or math.abs(get(joy_yaw)) > 0.2 or math.abs(get(joy_pitch)) > 0.2) then
	if roll_mode_main == 2 and math.abs(get(joy_roll)) > 0.2 then --or get(absu_contr_roll_fail) == 1) then
		roll_mode_main = 1
		--pitch_mode_main = 1
	end
	if pitch_mode_main == 2 and math.abs(get(joy_pitch)) > 0.2 then --or get(absu_contr_pitch_fail) == 1) then
		--roll_mode_main = 1
		pitch_mode_main = 1
		if pitch_submode >= 2 and pitch_submode <= 4 then pitch_submode = 1 end
	end
	
	
	if roll_mode_main == 2 and (not roll_sw or not ahz_work) then
		roll_mode_main = 1
		--pitch_mode_main = 1
	end
	
	-- check mode for once, after loading the acf
	power_counter = power_counter + passed
	
	if power_counter > 15 and not state_checked then
		if power and pitch_mode_main == 0 and roll_mode_main == 0 then 
			pitch_mode_main = 1
			roll_mode_main = 1
		end
		state_checked = true
	end
	
	
	-- reset mode, when no power or hydraulics
	if not power or not ail_hyd_sw or not rud_hyd_sw or not absu_work_logic then
		roll_mode_main = 0
	end

	if not power or not elev_hyd_sw or not absu_work_logic then
		pitch_mode_main = 0
	end
	
	-- check if ABSU should use second NAV
	set(absu_use_second_nav, bool2int(get(nav_cs_flag_1) == 1 and isILS(get(freq_2)) and get(nav_cs_flag_2) == 0))
	
	
	
	-- submodes
	if roll_mode_main > 0 then -- need to define cases more clearly
		if roll_submode == 0 then roll_submode = 1 end
		
		if get(absu_zk) == 1 and roll_mode_main == 2 then -- ZK mode
			roll_submode = 2
			
		elseif get(absu_nvu) == 1 and get(nvu_mode) >= 1 and not land_prep then -- NVU mode
			roll_submode = 3
			
		elseif get(absu_az1) == 1 and nav_prep and not land_prep then -- AZ mode. works only with VOR freq.
			roll_submode = 4
			
		elseif get(absu_az2) == 1 and nav_prep and not land_prep then -- AZ mode. works only with VOR freq.
			roll_submode = 5
			
		elseif get(absu_app) == 1 and land_prep and ((isILS(get(freq_1)) and get(nav_cs_flag_1) == 0) or get(absu_use_second_nav) == 1) then -- APP mode. works only with ILS freq
			roll_submode = 6
			
		elseif get(absu_app) == 1 and land_prep then -- fake APP mode
			roll_submode = 10
			
		elseif roll_submode == 10 and land_prep and ((isILS(get(freq_1)) and get(nav_cs_flag_1) == 0) or get(absu_use_second_nav) == 1) then -- switch to APP mode, when ILS established
			roll_submode = 6
			
		elseif reset_but or math.abs(roll_handle) > 1 then -- reset mode
			roll_submode = 1
		elseif (roll_submode == 6 or roll_submode == 10) and roll_mode_main >= 1 and pitch_mode_main >= 1 and (rud_toga or TOGA_mode) then -- TOGA mode
			roll_mode_main = 2
			pitch_mode_main = 2
			roll_submode = 1
			pitch_submode = 6
		end
	
	else
		roll_submode = 0
	end
	
	
	
	-- reset cases for ROLL modes
	if roll_submode == 4 and roll_mode_main == 2 and (isILS(get(freq_1)) or get(nav_cs_flag_1) == 1) then -- AZ1
		roll_submode = 1
		--TOGA_mode = false
	elseif roll_submode == 5 and roll_mode_main == 2 and (isILS(get(freq_2)) or get(nav_cs_flag_2) == 1) then -- AZ2
		roll_submode = 1
		--TOGA_mode = false
	elseif roll_submode == 6 and (not isILS(get(freq_1)) or get(nav_cs_flag_1) == 1 or not land_prep) and pitch_submode == 5 and roll_mode_main == 2 then -- APP and GS
		roll_submode = 1
		roll_mode_main = 1
		--print("OOPS")
		if get(nav_cs_flag_1) == 1 or not isILS(get(freq_1)) then
			set(man_roll_lamp, 1)
			set(absu_fail_signal, 1)
		end
		--TOGA_mode = false
	elseif roll_submode == 6 and (not isILS(get(freq_1)) or get(nav_cs_flag_1) == 1 or not land_prep) and roll_mode_main == 2 then -- APP
		roll_submode = 1
		if get(nav_cs_flag_1) == 1 or not isILS(get(freq_1)) then
			set(man_roll_lamp, 1)
			set(absu_fail_signal, 1)
		end
		--TOGA_mode = false
		
	end
	
	
	
	
	-- pitch part
	-- set stab mode
	if pitch_mode_main == 1 and stab_btn and pitch_sw then
		pitch_mode_main = 2
		--pitch_submode = 1
	end
	
	-- set yoke mode
	if pitch_mode_main == 2 and (not pitch_sw or not ahz_work) then
		--roll_mode_main = 1
		pitch_mode_main = 1
		if pitch_submode >= 2 and pitch_submode <= 4 then
			pitch_submode = 1
			--roll_submode = 1
		end
	end
	
	local putch_wheel = get(absu_pitch_wheel)
	
	-- submodes
	if pitch_mode_main > 0 then
		if pitch_submode == 0 then pitch_submode = 1 end
		
		local svs = get(svs_on) == 1

		if get(absu_stab_v) == 1 and pitch_mode_main == 2 and svs then -- Stab V mode
			pitch_submode = 2
		
		elseif get(absu_stab_m) == 1 and pitch_mode_main == 2 and svs then -- Stab M mode
			pitch_submode = 3
			
		elseif get(absu_stab_h) == 1 and pitch_mode_main == 2 and svs then -- Stab H mode
			pitch_submode = 4
			
		elseif get(absu_gs) == 1 and land_prep and ((isILS(get(freq_1)) and get(nav_gs_flag_1) == 0) or (get(absu_use_second_nav) == 1) and get(nav_gs_flag_2) == 0) then -- GS mode
			pitch_submode = 5
			
		elseif land_prep and get(nav_gs_flag_1) == 0 and roll_submode == 6 and math.abs(get(nav_gs_1)) < 0.02 and flaps > 31 then -- auto GS mode
			pitch_submode = 5
			
		elseif get(absu_gs) == 1 and land_prep then -- fake GS mode
			pitch_submode = 10
			
		elseif pitch_submode == 10 and land_prep and ((isILS(get(freq_1)) and get(nav_gs_flag_1) == 0) or (get(absu_use_second_nav) == 1) and get(nav_gs_flag_2) == 0) then --switch to GS mode after ILS established
			pitch_submode = 5
			
		elseif pitch_wheel_last ~= putch_wheel or (reset_but and pitch_submode >= 5) then -- reset. wheel or reset button on GS and TOGA modes
			pitch_submode = 1
		
		elseif pitch_mode_main == 1 and (pitch_submode == 2 or pitch_submode == 3 or pitch_submode == 4) then -- reset V M H modes, when MAN mode
			pitch_submode = 1
		
			
		end
	
	else 
		pitch_submode = 0
	end
	
	
	if reset_but then -- reset mode
		roll_submode = 1
		if pitch_submode < 2 or pitch_submode > 4 then
			pitch_submode = 1
		end
	end
	
	-- reset TOGA mode
	if pitch_submode ~= 6 then
		TOGA_mode = false
	end
	
	--print(TOGA_mode, "  ", pitch_submode, "  ", roll_submode)
	

	pitch_wheel_last = putch_wheel
	
	-- reset some modes
	if pitch_mode_main == 2 and (not isILS(get(freq_1)) or not land_prep or get(nav_gs_flag_1) == 1) and pitch_submode == 5 then -- GS mode
		pitch_submode = 1
		pitch_mode_main = 1
		
		if get(nav_gs_flag_1) == 1 or not isILS(get(freq_1)) then
			set(man_pitch_lamp, 1)
			set(absu_fail_signal, 1)
		end
		
	end
	
	
	
	
	
	
	
	-- lamp signals
	set(damp_roll_lamp, bool2int(power and get(absu_damp_roll_fail) == 1))
	set(damp_pitch_lamp, bool2int(power and get(absu_damp_pitch_fail) == 1))
	set(damp_yaw_lamp, bool2int(power and get(absu_damp_yaw_fail) == 1))
	set(roll_contr_lamp, bool2int(power and get(absu_contr_roll_fail) == 1))
	set(pitch_contr_lamp, bool2int(power and get(absu_contr_pitch_fail) == 1))
	
	
	
	-- roll lamp
	if power and roll_mode_main == 2 then
		if get(absu_damp_roll_fail) == 1 or get(absu_contr_roll_fail) == 1 or (get(absu_calc_toga_fail) == 1 and pitch_submode == 6) or (get(absu_calc_roll_fail) == 1 and roll_submode > 1 and roll_submode ~= 10) 
		then
			set(man_roll_lamp, 1)
			set(absu_fail_signal, 1)
		end
	end
	
	if power and roll_mode_main == 2 then
		if (get(tks_fail_left) + get(tks_fail_right) == 2 and roll_submode > 1 and roll_submode ~= 10) or
			(get(nav_cs_flag_1) == 1 and (roll_submode == 4 or roll_submode == 6) )
		then
			roll_submode = 1
			set(man_roll_lamp, 1)
			set(absu_fail_signal, 1)
		end
	end
	
	
	
	-- pitch lamp
	if power and pitch_mode_main == 2 then
		if get(absu_damp_pitch_fail) == 1 or get(absu_contr_pitch_fail) == 1 or 
			(get(absu_calc_toga_fail) == 1 and pitch_submode == 6) or 
			(get(absu_calc_pitch_fail) == 1 and pitch_submode > 1) 
		then
			pitch_mode_main = 1
			
			pitch_submode = 1
			
			set(man_pitch_lamp, 1)
			set(absu_fail_signal, 1)
		end	
	end
	
	if power and pitch_mode_main == 2 then
		if ((get(svs_fail) == 6 or get(svs_on) == 0) and (pitch_submode == 2 or pitch_submode == 3 or pitch_submode == 4)) or
			((pitch_submode == 5) and get(nav_gs_flag_1) == 1)
			then
			pitch_submode = 1
			pitch_mode_main = 1
			set(man_pitch_lamp, 1)
			set(absu_fail_signal, 1)
		end
	end
	
	
	
	
	-- roll and pitch lamps on RV fail
	if power and pitch_mode_main == 2 then
		if get(rv_flag) == 1 and get(outer_marker) == 1 and roll_submode == 6 and pitch_submode == 5 then
			pitch_mode_main = 1
			roll_submode = 1
			pitch_submode = 1
			set(man_roll_lamp, 1)
			set(man_pitch_lamp, 1)
			set(absu_fail_signal, 1)
		end
	
	end
	
	-- TOGA lamp
	if power and pitch_submode == 6 then
		if get(absu_calc_toga_fail) == 1 or get(absu_damp_pitch_fail) == 1 then
			set(man_toga_lamp, 1)
			set(man_pitch_lamp, 1)
			set(man_roll_lamp, 1)
			set(absu_fail_signal, 1)
		end
	end
	
	
	-- triangle lamp
	if get(rv5_alt) < 60 and power and roll_submode == 6 and pitch_submode == 5 and (get(man_pitch_lamp) == 1 or get(man_roll_lamp) == 1 or get(absu_course_out) == 1 or get(absu_gs_out) == 1) then
		set(triangle_lamp_signal, 1)
	end
	
	
	

	
	-- end alarm
	if (get(absu_fail_signal) == 1 and signal_timer > 8) then
		set(absu_fail_signal, 0)
		signal_timer = 0
	end
	
	if get(absu_fail_signal) == 0 then
		signal_timer = 0
	end
	
	-- reset lamps and alarm
	if not power or TOGA_button or AP_button then
		set(absu_fail_signal, 0)
		set(man_roll_lamp, 0)
		set(man_pitch_lamp, 0)
		set(man_toga_lamp, 0)
		set(triangle_lamp_signal, 0)
		signal_timer = 0
		--print("reset" .. passed)
	end
	
	-- fail alarm logic
	if get(absu_fail_signal) == 1 then
		signal_timer = signal_timer + passed
	else signal_timer = 0
	end
	

	

	
	
	-- reset modes on failures or turned off sources
	if get(absu_damp_roll_fail) == 1 then roll_mode_main = 0 end -- roll damper fail
	if get(absu_damp_pitch_fail) == 1 then pitch_mode_main = 0 end -- roll damper fail
	if get(absu_contr_roll_fail) == 1 and roll_mode_main == 2 then roll_mode_main = 1 end -- roll controls fail
	if get(absu_contr_pitch_fail) == 1 and pitch_mode_main == 2 then pitch_mode_main = 1 end -- pitch controls fail
	if get(absu_calc_toga_fail) == 1 and roll_mode_main >=1 and pitch_mode_main >= 1 and pitch_submode == 6 then roll_mode_main = 1 pitch_mode_main = 1 end -- TOGA calc fail
	if get(absu_calc_roll_fail) == 1 and roll_mode_main >= 1 then roll_submode = 1 end -- STU roll fail
	if get(absu_calc_pitch_fail) == 1 and pitch_mode_main >= 1 then pitch_submode = 1 end -- STU pitch fail
	
	
	
	
	
	
	
	
	
	
	
	
	-----------------------
	-- full disable ABSU --
	if not ail_hyd_sw or not sau_sw then 
		roll_mode_main = 0
		roll_submode = 0
	end
	
	if not elev_hyd_sw or not sau_sw then
		pitch_mode_main = 0
		pitch_submode = 0
	end


	-- indication modes


	
	set(absu_pnp_mode_2, get(absu_speed_mode) * bool2int(power)) -- set Co-Pilot PNP right away.
	
	-- Captain PNP
	
	
	if reset_but or not power then
		set(absu_pnp_mode_1, 0) -- off mode
	elseif land_prep ~= land_sw_last and land_prep then
		set(absu_pnp_mode_1, 4) -- landing mode
	elseif get(absu_nvu) == 1 then
		set(absu_pnp_mode_1, 1) -- NAV mode
	elseif nav_prep and get(absu_az1) == 1 then
		set(absu_pnp_mode_1, 2) -- VOR 
	elseif nav_prep and get(absu_az2) == 1 then
		set(absu_pnp_mode_1, 3) -- VOR 
	end
	

	land_sw_last = land_prep
	
	
	
	
	


	-- set results
	set(roll_main_mode, roll_mode_main)
	set(pitch_main_mode, pitch_mode_main)

	set(roll_sub_mode, roll_submode)
	set(pitch_sub_mode, pitch_submode)
	
	--set(toga_command, bool2int(TOGA_mode))


	
	set(absu_power_cc, bool2int(power))

end

end



