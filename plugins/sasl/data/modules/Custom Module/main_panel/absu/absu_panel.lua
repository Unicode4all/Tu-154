-- this is ABSU panel script

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

-- gauges
defineProperty("absu_roll_mode", globalPropertyi("tu154ce/gauges/console/absu_roll_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
defineProperty("absu_pitch_mode", globalPropertyi("tu154ce/gauges/console/absu_pitch_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб

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
defineProperty("absu_pitch_wheel", globalPropertyf("tu154ce/switchers/console/absu_pitch_wheel")) -- колесико спуска, подъема
defineProperty("absu_pitch_wheel_dir", globalPropertyi("tu154ce/switchers/console/absu_pitch_wheel_dir")) -- колесико спуска, подъема


defineProperty("hydro_ra56_rud_1", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_1")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_2", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_2")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_3", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_3")) -- гидропитание РА56 курс

defineProperty("hydro_ra56_ail_1", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_1")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_2", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_2")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_3", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_3")) -- гидропитание РА56 крен

defineProperty("hydro_ra56_elev_1", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_1")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_2", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_2")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_3", globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_3")) -- гидропитание РА56 тангаж


defineProperty("hydro_circuit_auto_man", globalPropertyi("tu154ce/switchers/eng/hydro_circuit_auto_man")) -- кольцевание автомат - ручное
defineProperty("hydro_long_control", globalPropertyi("tu154ce/switchers/eng/hydro_long_control")) -- продольная управляемость

defineProperty("hydro_circuit_auto_man_cap", globalPropertyi("tu154ce/switchers/eng/hydro_circuit_auto_man_cap")) -- кольцевание автомат - ручное
defineProperty("hydro_long_control_cap", globalPropertyi("tu154ce/switchers/eng/hydro_long_control_cap")) -- продольная управляемость

defineProperty("ZK_select", globalPropertyi("tu154ce/switchers/ZK_select")) -- 
defineProperty("nav_select", globalPropertyi("tu154ce/switchers/nav_select")) -- 
defineProperty("vbe_select", globalPropertyi("tu154ce/switchers/vbe_select")) -- 


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


-- caps
defineProperty("absu_arrest_cap", globalPropertyi("tu154ce/buttons/console/absu_arrest_cap")) -- кнопка првоерки СТУ верхняя
defineProperty("absu_smooth_on_cap", globalPropertyi("tu154ce/switchers/console/absu_smooth_on_cap")) -- выключатель "в болтанку"
defineProperty("absu_speed_prepare_cap", globalPropertyi("tu154ce/switchers/console/absu_speed_prepare_cap")) -- подготовка
defineProperty("absu_speed_off_cap", globalPropertyi("tu154ce/switchers/console/absu_speed_off_cap")) -- отключение 1 и 2

-- lamps
defineProperty("absu_zk_lamp", globalPropertyf("tu154ce/lights/button/absu_zk")) -- АБСУ ЗК
defineProperty("absu_reset_lamp", globalPropertyf("tu154ce/lights/button/absu_reset")) -- АБСУ ЗК
defineProperty("absu_nvu_lamp", globalPropertyf("tu154ce/lights/button/absu_nvu")) -- АБСУ ЗК
defineProperty("absu_az1_lamp", globalPropertyf("tu154ce/lights/button/absu_az1")) -- АБСУ ЗК
defineProperty("absu_az2_lamp", globalPropertyf("tu154ce/lights/button/absu_az2")) -- АБСУ ЗК
defineProperty("absu_app_lamp", globalPropertyf("tu154ce/lights/button/absu_app")) -- АБСУ ЗК
defineProperty("absu_gz_lamp", globalPropertyf("tu154ce/lights/button/absu_gz")) -- АБСУ ЗК
defineProperty("absu_stab_m_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_m")) -- АБСУ ЗК
defineProperty("absu_stab_v_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_v")) -- АБСУ ЗК
defineProperty("absu_stab_h_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_h")) -- АБСУ ЗК
defineProperty("absu_stab_lamp", globalPropertyf("tu154ce/lights/button/absu_stab")) -- АБСУ ЗК
defineProperty("absu_stab_spd_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_spd")) -- АБСУ ЗК
defineProperty("absu_thro1_lamp", globalPropertyf("tu154ce/lights/button/absu_thro1")) -- АБСУ ЗК
defineProperty("absu_thro2_lamp", globalPropertyf("tu154ce/lights/button/absu_thro2")) -- АБСУ ЗК
defineProperty("absu_thro3_lamp", globalPropertyf("tu154ce/lights/button/absu_thro3")) -- АБСУ ЗК

defineProperty("stu_roll_lamp", globalPropertyf("tu154ce/lights/small/stu_roll")) -- крен
defineProperty("stu_pitch_lamp", globalPropertyf("tu154ce/lights/small/stu_pitch")) -- тангаж
defineProperty("stu_toga_lamp", globalPropertyf("tu154ce/lights/small/stu_toga")) -- УХОД

defineProperty("at_1_lamp", globalPropertyf("tu154ce/lights/small/at_1")) -- АТ 1
defineProperty("at_2_lamp", globalPropertyf("tu154ce/lights/small/at_2")) -- АТ 2

defineProperty("course_lim", globalPropertyf("tu154ce/lights/course_lim")) -- выход за пределы курса
defineProperty("gs_lim", globalPropertyf("tu154ce/lights/gs_lim")) -- выход за пределы глиссады




-- forward panel lamps
defineProperty("wrong_trimm", globalPropertyf("tu154ce/lights/wrong_trimm")) -- ложное триммирование
defineProperty("controll_roll", globalPropertyf("tu154ce/lights/controll_roll")) -- управляй креном
defineProperty("controll_pitch", globalPropertyf("tu154ce/lights/controll_pitch")) -- управляй тангажом
defineProperty("yoke_sign", globalPropertyf("tu154ce/lights/yoke_sign")) -- сигнализация ухода на второй круг в штурвальном режиме
defineProperty("triangle", globalPropertyf("tu154ce/lights/triangle")) -- интегральный сигнальный огонь
defineProperty("controll_thrust", globalPropertyf("tu154ce/lights/controll_thrust")) -- управляй тягой

defineProperty("toga", globalPropertyf("tu154ce/lights/toga")) -- уход

defineProperty("course", globalPropertyf("tu154ce/lights/course")) -- КУРС
defineProperty("glideslope", globalPropertyf("tu154ce/lights/glideslope")) -- ГЛИСС
defineProperty("zk_lamp", globalPropertyf("tu154ce/lights/zk_lamp")) -- ЗК
defineProperty("thrust_automat", globalPropertyf("tu154ce/lights/thrust_automat")) -- автомат тяги
defineProperty("stab_roll", globalPropertyf("tu154ce/lights/stab_roll")) -- стабилизация боков
defineProperty("stab_pitch", globalPropertyf("tu154ce/lights/stab_pitch")) -- стабилизация продольная
defineProperty("nvu_lamp", globalPropertyf("tu154ce/lights/nvu_lamp")) -- НВУ
defineProperty("vor_lamp", globalPropertyf("tu154ce/lights/vor_lamp")) -- VOR

defineProperty("stab_h", globalPropertyf("tu154ce/lights/stab_h")) -- стаб H
defineProperty("stab_v", globalPropertyf("tu154ce/lights/stab_v")) -- стаб V
defineProperty("stab_m", globalPropertyf("tu154ce/lights/stab_m")) -- стаб M

defineProperty("pitch_control_fail", globalPropertyf("tu154ce/lights/pitch_control_fail")) -- продол управл
defineProperty("roll_control_fail", globalPropertyf("tu154ce/lights/roll_control_fail")) -- боков управл

defineProperty("absu_work", globalPropertyf("tu154ce/lights/absu_work")) -- испр АБСУ

defineProperty("sns_lamp", globalPropertyf("tu154ce/lights/sns_lamp")) -- SNS lamp



-- eng panel lamps
defineProperty("ra56_roll_fail_1", globalPropertyf("tu154ce/lights/ra56_roll_fail_1")) -- отказ РА56 крен
defineProperty("ra56_roll_fail_2", globalPropertyf("tu154ce/lights/ra56_roll_fail_2")) -- отказ РА56 крен
defineProperty("ra56_roll_fail_3", globalPropertyf("tu154ce/lights/ra56_roll_fail_3")) -- отказ РА56 крен

defineProperty("ra56_pitch_fail_1", globalPropertyf("tu154ce/lights/ra56_pitch_fail_1")) -- отказ РА56 тангаж
defineProperty("ra56_pitch_fail_2", globalPropertyf("tu154ce/lights/ra56_pitch_fail_2")) -- отказ РА56 тангаж
defineProperty("ra56_pitch_fail_3", globalPropertyf("tu154ce/lights/ra56_pitch_fail_3")) -- отказ РА56 тангаж

defineProperty("ra56_course_fail_1", globalPropertyf("tu154ce/lights/ra56_course_fail_1")) -- отказ РА56 курс
defineProperty("ra56_course_fail_2", globalPropertyf("tu154ce/lights/ra56_course_fail_2")) -- отказ РА56 курс
defineProperty("ra56_course_fail_3", globalPropertyf("tu154ce/lights/ra56_course_fail_3")) -- отказ РА56 курс

defineProperty("eng_at_on_lamp", globalPropertyf("tu154ce/lights/engines/eng_at_on")) -- АТ включен

-- other sources
defineProperty("lamp_test", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп на передней панели	0
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

defineProperty("lamp_test_eng", globalPropertyi("tu154ce/buttons/lamp_test_pa56")) -- кнопка проверки ламп на панели	БИ


-- 

defineProperty("roll_main_mode", globalPropertyi("tu154ce/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154ce/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("roll_sub_mode", globalPropertyi("tu154ce/absu/roll_sub_mode")) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
defineProperty("pitch_sub_mode", globalPropertyi("tu154ce/absu/pitch_sub_mode")) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход

defineProperty("stu_mode", globalPropertyi("tu154ce/absu/stu_mode")) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	
defineProperty("absu_speed_off", globalPropertyi("tu154ce/switchers/console/absu_speed_off")) -- отключение 1 и 2

defineProperty("absu_throt_off_1", globalPropertyi("tu154ce/buttons/console/absu_throt_off_1")) -- кнопка откл Г1 на панели АБСУ
defineProperty("absu_throt_off_2", globalPropertyi("tu154ce/buttons/console/absu_throt_off_2")) -- кнопка откл Г2 на панели АБСУ
defineProperty("absu_throt_off_3", globalPropertyi("tu154ce/buttons/console/absu_throt_off_3")) -- кнопка откл Г3 на панели АБСУ


defineProperty("absu_pnp_mode_1", globalPropertyi("tu154ce/absu/absu_pnp_mode_1")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
defineProperty("absu_pnp_mode_2", globalPropertyi("tu154ce/absu/absu_pnp_mode_2")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС

defineProperty("absu_course_out", globalPropertyi("tu154ce/absu_course_out")) -- flying outside the course limits
defineProperty("absu_gs_out", globalPropertyi("tu154ce/absu_gs_out")) -- flying outside the course limits


defineProperty("pkp_fail_left", globalPropertyf("tu154ce/gauges/ahz/ahz_flag_L")) -- 
defineProperty("pkp_fail_right", globalPropertyf("tu154ce/gauges/ahz/ahz_flag_R")) -- 
defineProperty("mgv_contr_fail", globalPropertyf("tu154ce/gyro/mgv_contr_flag")) -- 


defineProperty("pressure_ind_1", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_1")) -- индикатор давления гидросистемы 1
defineProperty("pressure_ind_2", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_2")) -- индикатор давления гидросистемы 2
defineProperty("pressure_ind_3", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_3")) -- индикатор давления гидросистемы 3

defineProperty("sau_stu_on", globalPropertyi("tu154ce/switchers/ovhd/sau_stu_on"))  -- САУ СТУ выключатель

defineProperty("tks_fail_left", globalPropertyi("tu154ce/tks/fail_left")) -- флаг отказа
defineProperty("tks_fail_right", globalPropertyi("tu154ce/tks/fail_right")) -- флаг отказа


defineProperty("elev_trimm_switcher", globalPropertyi("tu154ce/controll/elev_trimm_switcher")) -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование
defineProperty("emerg_elev_trimm", globalPropertyi("tu154ce/switchers/console/emerg_elev_trimm")) -- аварийное управление триммером


-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

defineProperty("int_pitch_trim", globalPropertyf("tu154ce/trimmers/int_pitch_trim")) -- положение триммера руля высоты
defineProperty("absu_pitch_trimm", globalPropertyi("tu154ce/absu/absu_pitch_trimm")) -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз


-- engines
defineProperty("eng1_N1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm


defineProperty("damp_roll_lamp", globalPropertyi("tu154ce/absu/damp_roll_lamp")) -- 
defineProperty("damp_pitch_lamp", globalPropertyi("tu154ce/absu/damp_pitch_lamp")) -- 
defineProperty("damp_yaw_lamp", globalPropertyi("tu154ce/absu/damp_yaw_lamp")) -- 
defineProperty("roll_contr_lamp", globalPropertyi("tu154ce/absu/roll_contr_lamp")) -- 
defineProperty("pitch_contr_lamp", globalPropertyi("tu154ce/absu/pitch_contr_lamp")) -- 
defineProperty("man_roll_lamp", globalPropertyi("tu154ce/absu/man_roll_lamp")) -- 
defineProperty("man_pitch_lamp", globalPropertyi("tu154ce/absu/man_pitch_lamp")) -- 
defineProperty("man_toga_lamp", globalPropertyi("tu154ce/absu/man_toga_lamp")) -- 
defineProperty("triangle_lamp_signal", globalPropertyi("tu154ce/absu/triangle_lamp_signal")) -- 


-- failures
defineProperty("absu_ra56_roll_fail", globalPropertyi("tu154ce/failures/absu_ra56_roll_fail")) -- отказ ra56
defineProperty("absu_ra56_pitch_fail", globalPropertyi("tu154ce/failures/absu_ra56_pitch_fail")) -- отказ ra56
defineProperty("absu_ra56_yaw_fail", globalPropertyi("tu154ce/failures/absu_ra56_yaw_fail")) -- отказ ra56

defineProperty("absu_at1_fail", globalPropertyi("tu154ce/failures/absu_at1_fail")) -- отказ AT
defineProperty("absu_at2_fail", globalPropertyi("tu154ce/failures/absu_at2_fail")) -- отказ AT

defineProperty("absu_damp_roll_fail", globalPropertyi("tu154ce/failures/absu_damp_roll_fail")) -- отказ демперов крена
defineProperty("absu_damp_pitch_fail", globalPropertyi("tu154ce/failures/absu_damp_pitch_fail")) -- отказ демперов тангажа
defineProperty("absu_damp_yaw_fail", globalPropertyi("tu154ce/failures/absu_damp_yaw_fail")) -- отказ демперов курса
defineProperty("absu_contr_roll_fail", globalPropertyi("tu154ce/failures/absu_contr_roll_fail")) -- отказ бокового управления
defineProperty("absu_contr_pitch_fail", globalPropertyi("tu154ce/failures/absu_contr_pitch_fail")) -- отказ продольного управления
defineProperty("absu_calc_toga_fail", globalPropertyi("tu154ce/failures/absu_calc_toga_fail")) -- отказ вычислителя УХОД
defineProperty("absu_calc_roll_fail", globalPropertyi("tu154ce/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154ce/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ




-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control






local passed = get(frame_time)
local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(absu_needles_on, 0)
		set(absu_nav_on, 0)
		set(absu_speed_prepare, 0)
		
		set(absu_roll_ch_on, 0)
		set(absu_pitch_ch_on, 0)
		
		--[[
		set(hydro_ra56_rud_1, 0)
		set(hydro_ra56_rud_2, 0)
		set(hydro_ra56_rud_3, 0)
		
		set(hydro_ra56_ail_1, 0)
		set(hydro_ra56_ail_2, 0)
		set(hydro_ra56_ail_3, 0)
		
		set(hydro_ra56_elev_1, 0)
		set(hydro_ra56_elev_2, 0)
		set(hydro_ra56_elev_3, 0)
		--]]
		
	end
	
	notLoaded = false

end




-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')


local button_summ_last = 0

local function buttons()

	local summ = get(absu_zk) + get(absu_reset) + get(absu_nvu) + get(absu_az1) + get(absu_az2) + get(absu_app)
	summ = summ + get(absu_gs) + get(absu_stab_m) + get(absu_stab_v) + get(absu_stab_h) + get(absu_stab)
	summ = summ + get(absu_arrest) + get(absu_speed_test_1) + get(absu_speed_test_2)
	summ = summ + get(absu_stab_speed) + get(absu_throt_off_1) + get(absu_throt_off_2) + get(absu_throt_off_3) + get(lamp_test_eng)
	
	if button_summ_last ~= summ then playSample(button_sound, 0) end
	
	button_summ_last = summ

end


local switchers_summ = 0

local function switchers()

	local summ = get(absu_zpu_sel) + get(absu_nav_on) + get(absu_landing_on) + get(absu_needles_on) + get(absu_speed_mode)
	summ = summ + get(absu_speed_change) + get(absu_speed_off) + get(absu_speed_prepare) + get(absu_speed_us_right_left)
	summ = summ + get(absu_roll_ch_on) + get(absu_pitch_ch_on) + get(absu_smooth_on)
	summ = summ + get(hydro_ra56_rud_1) + get(hydro_ra56_rud_2) + get(hydro_ra56_rud_3)
	summ = summ + get(hydro_ra56_ail_1) + get(hydro_ra56_ail_2) + get(hydro_ra56_ail_3)
	summ = summ + get(hydro_ra56_elev_1) + get(hydro_ra56_elev_2) + get(hydro_ra56_elev_3)
	summ = summ + get(hydro_circuit_auto_man) + get(hydro_long_control)
	summ = summ + get(ZK_select) + get(nav_select) + get(vbe_select)
	
	if switchers_summ ~= summ then playSample(switcher_sound, 0) end
	
	switchers_summ = summ
	
	-- pitch wheel

	local wheel = get(absu_pitch_wheel) 
	wheel = wheel + get(absu_pitch_wheel_dir) * get(frame_time) * 10
	
	while wheel > 20 do wheel = wheel - 20 end
	while wheel < -20 do wheel = wheel + 20 end 
	

	set(absu_pitch_wheel, wheel)
	
	-- turn handle
	
	if math.abs(get(absu_turn_handle)) <= 1 then set(absu_turn_handle, 0) end
	
	
	
end


local caps_summ = 0

local function caps()
	
	local summ = get(absu_arrest_cap) + get(absu_smooth_on_cap) + get(absu_speed_prepare_cap) + get(absu_speed_off_cap)
	summ = summ + get(hydro_circuit_auto_man_cap) + get(hydro_long_control_cap)
	
	if caps_summ ~= summ then playSample(cap_sound, 0) end
	
	caps_summ = summ
	
	if get(hydro_circuit_auto_man_cap) == 0 then set(hydro_circuit_auto_man, 0) end
	if get(hydro_long_control_cap) == 0 then set(hydro_long_control, 1) end
	


end


local function gauges()

	set(absu_roll_mode, get(roll_main_mode))
	set(absu_pitch_mode, get(pitch_main_mode))



end

local elev_tr_last = get(int_pitch_trim)

local stu_test_1_cntr = 0
local stu_test_2_cntr = 0
local triangle_timer = 0
local triangle_lit = 0

local function lamps()
	local test_btn = get(lamp_test) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	local small_lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) -- small lamps and buttons

	local roll_mode = get(roll_main_mode)
	local pitch_mode = get(pitch_main_mode)
	
	local roll_submode = get(roll_sub_mode)
	local pitch_submode = get(pitch_sub_mode)
	
	
	-- 	button lamps
	local absu_zk_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 2) * lamps_brt * day_night, test_btn)
	set(absu_zk_lamp, absu_zk_lamp_brt)
	
	local absu_reset_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 1 and pitch_submode ~= 6) * lamps_brt * day_night, test_btn) 
	set(absu_reset_lamp, absu_reset_lamp_brt)
	
	local absu_nvu_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 3) * lamps_brt * day_night, test_btn)
	set(absu_nvu_lamp, absu_nvu_lamp_brt)
	
	local absu_az1_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 4) * lamps_brt * day_night, test_btn)
	set(absu_az1_lamp, absu_az1_lamp_brt)
	
	local absu_az2_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 5) * lamps_brt * day_night, test_btn)
	set(absu_az2_lamp, absu_az2_lamp_brt)
	
	local absu_app_lamp_brt = math.max(bool2int(roll_mode > 0 and (roll_submode == 6 or roll_submode == 10)) * lamps_brt * day_night, test_btn) 
	set(absu_app_lamp, absu_app_lamp_brt)
	
	local absu_gz_lamp_brt = math.max(bool2int(roll_mode > 0 and (pitch_submode == 5 or pitch_submode == 10)) * lamps_brt * day_night, test_btn) 
	set(absu_gz_lamp, absu_gz_lamp_brt)
	
	local absu_stab_m_lamp_brt = math.max(bool2int(pitch_mode > 0 and pitch_submode == 3) * lamps_brt * day_night, test_btn) 
	set(absu_stab_m_lamp, absu_stab_m_lamp_brt)
	
	local absu_stab_v_lamp_brt = math.max(bool2int(pitch_mode > 0 and pitch_submode == 2) * lamps_brt * day_night, test_btn)
	set(absu_stab_v_lamp, absu_stab_v_lamp_brt)
	
	local absu_stab_h_lamp_brt = math.max(bool2int(pitch_mode > 0 and pitch_submode == 4) * lamps_brt * day_night, test_btn) 
	set(absu_stab_h_lamp, absu_stab_h_lamp_brt)
	
	--local absu_stab_lamp_brt = math.max(bool2int(pitch_mode == 2 or roll_mode == 2) * lamps_brt * day_night, test_btn)
	set(absu_stab_lamp, 0)
	
	local AT_mode = get(stu_mode)
	
	local absu_stab_spd_lamp_brt = math.max(bool2int(AT_mode > 2) * lamps_brt * day_night, test_btn)
	set(absu_stab_spd_lamp, absu_stab_spd_lamp_brt)
	
	local absu_thro1_lamp_brt = math.max(bool2int(AT_mode > 2 and get(absu_throt_off_1) == 1) * lamps_brt * day_night, test_btn)
	set(absu_thro1_lamp, absu_thro1_lamp_brt)
	
	local absu_thro2_lamp_brt = math.max(bool2int(AT_mode > 2 and get(absu_throt_off_2) == 1) * lamps_brt * day_night, test_btn) 
	set(absu_thro2_lamp, absu_thro2_lamp_brt)
	
	local absu_thro3_lamp_brt = math.max(bool2int(AT_mode > 2 and get(absu_throt_off_3) == 1) * lamps_brt * day_night, test_btn) 
	set(absu_thro3_lamp, absu_thro3_lamp_brt)

	
	local nav_prep = get(absu_nav_on) == 1
	local land_prep = get(absu_landing_on) == 1
	
	local absu_roll_mod = get(roll_main_mode)
	local absu_pitch_mod = get(pitch_main_mode)
	
	if get(absu_speed_test_2) == 1 and (nav_prep or land_prep) then
		stu_test_1_cntr = stu_test_1_cntr + passed
	else
		stu_test_1_cntr = 0
	end
	
	
	local stu_roll_lamp_brt = math.max(bool2int(absu_roll_mod >= 1 and absu_pitch_mod >= 1 and (land_prep) and stu_test_1_cntr < 1 and get(absu_calc_roll_fail) == 0) * lamps_brt * day_night, test_btn) 
	set(stu_roll_lamp, stu_roll_lamp_brt)
	
	local stu_pitch_lamp_brt = math.max(bool2int(absu_roll_mod >= 1 and absu_pitch_mod >= 1 and land_prep and stu_test_1_cntr < 0.5 and get(absu_calc_pitch_fail) == 0) * lamps_brt * day_night, test_btn) 
	set(stu_pitch_lamp, stu_pitch_lamp_brt)
	
	local stu_toga_lamp_brt = math.max(bool2int(absu_roll_mod >= 1 and absu_pitch_mod >= 1 and land_prep and stu_test_1_cntr < 0.5 and get(absu_calc_toga_fail) == 0) * lamps_brt * day_night, test_btn)
	set(stu_toga_lamp, stu_toga_lamp_brt)
	
	
	local at_off = get(absu_speed_off)
	
	if get(absu_speed_test_1) == 1 and AT_mode > 1 then
		stu_test_2_cntr = stu_test_2_cntr + passed
	else
		stu_test_2_cntr = 0
	end
	
	
	local at_1_lamp_brt = math.max(bool2int(AT_mode > 1 and at_off ~= 1 and stu_test_2_cntr < 10 and get(absu_at1_fail) == 0) * lamps_brt * day_night, test_btn)
	set(at_1_lamp, at_1_lamp_brt)
	
	local at_2_lamp_brt = math.max(bool2int(AT_mode > 1 and at_off ~= -1 and stu_test_2_cntr < 10 and get(absu_at2_fail) == 0) * lamps_brt * day_night, test_btn)
	set(at_2_lamp, at_2_lamp_brt)
	
	
	
	
	-- panel lamps
	
	local elev_tr_now = get(int_pitch_trim)
	local trim_fail = bool2int(get(pitch_main_mode) == 2 and (get(elev_trimm_switcher) ~= 0 or get(emerg_elev_trimm) ~= 0) or (get(absu_pitch_trimm) ~= 0 and elev_tr_now - elev_tr_last == 0))
	elev_tr_last = elev_tr_now
	
	local wrong_trimm_brt = math.max(trim_fail * lamps_brt * day_night, test_btn)
	
	if get(ismaster) ~= 1 then
	set(wrong_trimm, wrong_trimm_brt)
	end
	
	
	local controll_roll_brt = math.max(get(man_roll_lamp) * lamps_brt * day_night, test_btn) 
	set(controll_roll, controll_roll_brt)
	
	local controll_pitch_brt = math.max(get(man_pitch_lamp) * lamps_brt * day_night, test_btn)
	set(controll_pitch, controll_pitch_brt)
	
	local yoke_sign_brt = math.max(get(man_toga_lamp) * lamps_brt * day_night, test_btn)
	set(yoke_sign, yoke_sign_brt)
	
	if get(triangle_lamp_signal) == 1 then
		triangle_timer = triangle_timer + passed
		if triangle_timer > 0.3 then 
			triangle_lit = 1 - triangle_lit 
			triangle_timer = 0
		end
		
	else
		triangle_lit = 0
		triangle_timer = 0
	end
	
	
	
	
	
	local triangle_brt = math.max(triangle_lit * lamps_brt * day_night, test_btn)
	set(triangle, triangle_brt)
	
	local controll_thrust_brt = math.max(bool2int(AT_mode == -1) * lamps_brt * day_night, test_btn)
	set(controll_thrust, controll_thrust_brt)
	
	local toga_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 6) * lamps_brt * day_night, test_btn)
	set(toga, toga_brt)
	
	
	local course_lim_brt = math.max(get(absu_course_out) * lamps_brt * day_night, test_btn) 
	set(course_lim, course_lim_brt)
	
	local gs_lim_brt = math.max(get(absu_gs_out) * lamps_brt * day_night, test_btn)
	set(gs_lim, gs_lim_brt)
	
	
	
	local course_brt = math.max(bool2int(roll_mode == 2 and roll_submode == 6) * lamps_brt * day_night, test_btn)
	set(course, course_brt)
	
	local glideslope_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 5) * lamps_brt * day_night, test_btn)
	set(glideslope, glideslope_brt)
	
	local zk_lamp_brt = math.max(bool2int(roll_mode == 2 and roll_submode == 2) * lamps_brt * day_night, test_btn)
	set(zk_lamp, zk_lamp_brt)
	
	local thrust_automat_brt = math.max(bool2int(AT_mode > 2) * lamps_brt * day_night, test_btn)
	set(thrust_automat, thrust_automat_brt)
	
	local stab_roll_brt = math.max(bool2int(roll_mode == 2 and (roll_submode == 1 or roll_submode == 10)) * lamps_brt * day_night, test_btn) 
	set(stab_roll, stab_roll_brt)
	
	local stab_pitch_brt = math.max(bool2int(pitch_mode == 2 and (pitch_submode == 1 or pitch_submode == 10)) * lamps_brt * day_night, test_btn)
	set(stab_pitch, stab_pitch_brt)
	
	local nvu_lamp_brt = math.max(bool2int(roll_mode == 2 and roll_submode == 3) * lamps_brt * day_night, test_btn)
	set(nvu_lamp, nvu_lamp_brt)
	
	local vor_lamp_brt = math.max(bool2int(roll_mode == 2 and (roll_submode == 4 or roll_submode == 5)) * lamps_brt * day_night, test_btn)
	set(vor_lamp, vor_lamp_brt)
	
	local sns_lamp_brt = math.max(bool2int(roll_mode >= 1 and roll_submode == 3 and get(nav_select) == 1) * lamps_brt * day_night, test_btn)
	set(sns_lamp, sns_lamp_brt)
	
	
	local stab_h_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 4) * lamps_brt * day_night, test_btn)
	set(stab_h, stab_h_brt)
	
	local stab_v_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 2) * lamps_brt * day_night, test_btn)
	set(stab_v, stab_v_brt)
	
	local stab_m_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 3) * lamps_brt * day_night, test_btn)
	set(stab_m, stab_m_brt)
	
	local pitch_control_fail_brt = math.max(get(pitch_contr_lamp) * lamps_brt * day_night, test_btn)
	set(pitch_control_fail, pitch_control_fail_brt)
	
	local roll_control_fail_brt = math.max(get(roll_contr_lamp) * lamps_brt * day_night, test_btn) 
	set(roll_control_fail, roll_control_fail_brt)
	
	
	
	local absu_work_logic = get(pkp_fail_left) + get(pkp_fail_right) + get(mgv_contr_fail) < 2
	absu_work_logic = absu_work_logic and bool2int(get(pressure_ind_1) < 100) + bool2int(get(pressure_ind_2) < 100) + bool2int(get(pressure_ind_3) < 100) < 2
	
	local ra56_rud_on = get(hydro_ra56_rud_1) * bool2int(get(absu_ra56_yaw_fail) ~= 3) + get(hydro_ra56_rud_2) * bool2int(get(absu_ra56_yaw_fail) == 0) + get(hydro_ra56_rud_3)  * bool2int(get(absu_ra56_yaw_fail) < 2) > 1

	local ra56_ail_on = get(hydro_ra56_ail_1) * bool2int(get(absu_ra56_roll_fail) == 0) + get(hydro_ra56_ail_2) * bool2int(get(absu_ra56_roll_fail) ~= 3) + get(hydro_ra56_ail_3) * bool2int(get(absu_ra56_roll_fail) < 2) > 1
	
	local ra56_elev_on = get(hydro_ra56_elev_1) * bool2int(get(absu_ra56_pitch_fail) ~= 3) + get(hydro_ra56_elev_2) * bool2int(get(absu_ra56_pitch_fail) < 2) + get(hydro_ra56_elev_3) * bool2int(get(absu_ra56_pitch_fail) == 0) > 1
	
	local chan_1_work = get(hydro_ra56_rud_1) * bool2int(get(absu_ra56_yaw_fail) ~= 3) + get(hydro_ra56_ail_1) * bool2int(get(absu_ra56_roll_fail) == 0) + get(hydro_ra56_elev_1) * bool2int(get(absu_ra56_pitch_fail) ~= 3) > 0
	local chan_2_work = get(hydro_ra56_rud_2) * bool2int(get(absu_ra56_yaw_fail) == 0) + get(hydro_ra56_ail_2) * bool2int(get(absu_ra56_roll_fail) ~= 3) + get(hydro_ra56_elev_2) * bool2int(get(absu_ra56_pitch_fail) < 2) > 0
	local chan_3_work = get(hydro_ra56_rud_3)  * bool2int(get(absu_ra56_yaw_fail) < 2) + get(hydro_ra56_ail_3) * bool2int(get(absu_ra56_roll_fail) < 2) + get(hydro_ra56_elev_3) * bool2int(get(absu_ra56_pitch_fail) == 0) > 0
		
	absu_work_logic = absu_work_logic and (ra56_rud_on and ra56_ail_on and ra56_elev_on)
	absu_work_logic = absu_work_logic and chan_1_work and chan_2_work and chan_3_work
	absu_work_logic = absu_work_logic and get(sau_stu_on) == 1 and get(tks_fail_left) + get(tks_fail_right) == 0
	absu_work_logic = absu_work_logic and stu_test_1_cntr < 0.5
	absu_work_logic = absu_work_logic and get(absu_damp_roll_fail) == 0 and get(absu_damp_pitch_fail) == 0 and get(absu_damp_yaw_fail) == 0
	absu_work_logic = absu_work_logic and get(absu_contr_roll_fail) == 0 and get(absu_contr_pitch_fail) == 0
	
	local absu_work_brt = bool2int(absu_work_logic)
	
	
	
	absu_work_brt = math.max(absu_work_brt * lamps_brt * day_night, 0) 
	set(absu_work, absu_work_brt)
	
	
	-- eng panel lamps
	local test_btn_eng = get(lamp_test_eng) * math.max(get(bus27_volt_right) - 10 / 18.5, 0)
	
	local ra56_roll_fail_1_brt = math.max(bool2int(get(hydro_ra56_ail_1) == 0 or get(absu_ra56_roll_fail) > 0) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_roll_fail_1, ra56_roll_fail_1_brt)
	
	local ra56_roll_fail_2_brt = math.max(bool2int(get(hydro_ra56_ail_2) == 0 or get(absu_ra56_roll_fail) > 2) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_roll_fail_2, ra56_roll_fail_2_brt)
	
	local ra56_roll_fail_3_brt = math.max(bool2int(get(hydro_ra56_ail_3) == 0 or get(absu_ra56_roll_fail) > 1) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_roll_fail_3, ra56_roll_fail_3_brt)
	
	
	local ra56_pitch_fail_1_brt = math.max(bool2int(get(hydro_ra56_elev_1) == 0 or get(absu_ra56_pitch_fail) > 2) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_pitch_fail_1, ra56_pitch_fail_1_brt)
	
	local ra56_pitch_fail_2_brt = math.max(bool2int(get(hydro_ra56_elev_2) == 0 or get(absu_ra56_pitch_fail) > 1) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_pitch_fail_2, ra56_pitch_fail_2_brt)
	
	local ra56_pitch_fail_3_brt = math.max(bool2int(get(hydro_ra56_elev_3) == 0 or get(absu_ra56_pitch_fail) > 0) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_pitch_fail_3, ra56_pitch_fail_3_brt)
	
	
	local ra56_course_fail_1_brt = math.max(bool2int(get(hydro_ra56_rud_1) == 0 or get(absu_ra56_yaw_fail) > 2) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_course_fail_1, ra56_course_fail_1_brt)
	
	local ra56_course_fail_2_brt = math.max(bool2int(get(hydro_ra56_rud_2) == 0 or get(absu_ra56_yaw_fail) > 0) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_course_fail_2, ra56_course_fail_2_brt)
	
	local ra56_course_fail_3_brt = math.max(bool2int(get(hydro_ra56_rud_3) == 0 or get(absu_ra56_yaw_fail) > 1) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_course_fail_3, ra56_course_fail_3_brt)
	
	
	

end




function update()

	buttons()
	switchers()
	caps()
	lamps()
	gauges()
	
	
	passed = get(frame_time)
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end

end








