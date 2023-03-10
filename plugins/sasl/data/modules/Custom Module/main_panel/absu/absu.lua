--this is main ABSU script

-- Properties --------------------------------
ias_left = globalPropertyf("tu154ce/gauges/speed/ias_left") -- приборная скорость КВС
ias_right = globalPropertyf("tu154ce/gauges/speed/ias_right") -- приборная скорость 2П

-- controls
absu_speed_change = globalPropertyi("tu154ce/switchers/console/absu_speed_change") -- ручка изменения скорости.
absu_speed_off = globalPropertyi("tu154ce/switchers/console/absu_speed_off") -- отключение 1 и 2
absu_speed_prepare = globalPropertyi("tu154ce/switchers/console/absu_speed_prepare") -- подготовка
absu_speed_us_right_left = globalPropertyi("tu154ce/switchers/console/absu_speed_us_right_left") -- подготовка

absu_stab_speed = globalPropertyi("tu154ce/buttons/console/absu_stab_speed") -- кнопка C на панели АБСУ
absu_throt_off_1 = globalPropertyi("tu154ce/buttons/console/absu_throt_off_1") -- кнопка откл Г1 на панели АБСУ
absu_throt_off_2 = globalPropertyi("tu154ce/buttons/console/absu_throt_off_2") -- кнопка откл Г2 на панели АБСУ
absu_throt_off_3 = globalPropertyi("tu154ce/buttons/console/absu_throt_off_3") -- кнопка откл Г3 на панели АБСУ

anim_rud1 = globalPropertyf("tu154ce/controlls/throttle_1") -- РУД 1
anim_rud2 = globalPropertyf("tu154ce/controlls/throttle_2") -- РУД 2
anim_rud3 = globalPropertyf("tu154ce/controlls/throttle_3") -- РУД 3

--tro_comm_1 = globalProperty("sim/flightmodel/engine/ENGN_thro[0]")
--tro_comm_2 = globalProperty("sim/flightmodel/engine/ENGN_thro[1]")
--tro_comm_3 = globalProperty("sim/flightmodel/engine/ENGN_thro[2]")

tro_comm_1 = globalPropertyf("tu154ce/SC/engine/ENGN_thro_0")
tro_comm_2 = globalPropertyf("tu154ce/SC/engine/ENGN_thro_1")
tro_comm_3 = globalPropertyf("tu154ce/SC/engine/ENGN_thro_2")


absu_nav_on = globalPropertyi("tu154ce/switchers/console/absu_nav_on") -- стрелки навигация
absu_landing_on = globalPropertyi("tu154ce/switchers/console/absu_landing_on") -- стрелки посадка

roll_main_mode = globalPropertyi("tu154ce/absu/roll_main_mode") -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
pitch_main_mode = globalPropertyi("tu154ce/absu/pitch_main_mode") -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

roll_sub_mode = globalPropertyi("tu154ce/absu/roll_sub_mode") -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход, 7 - уход, 10 - арм ЗАХОД
pitch_sub_mode = globalPropertyi("tu154ce/absu/pitch_sub_mode") -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход, 10 - арм ГЛИСС

-- power
bus27_volt_left = globalPropertyf("tu154ce/elec/bus27_volt_left")
bus27_volt_right = globalPropertyf("tu154ce/elec/bus27_volt_right")

bus36_volt_left = globalPropertyf("tu154ce/elec/bus36_volt_left")

bus115_1_volt = globalPropertyf("tu154ce/elec/bus115_1_volt")

absu_at_power_cc = globalPropertyf("tu154ce/absu_at_power_cc") -- потребление тока АБСУ




frame_time = globalPropertyf("tu154ce/time/frame_time") -- time of frame

-- results
ias_yellow_left = globalPropertyf("tu154ce/gauges/speed/ias_yellow_left") -- желтый маркер на индкиторе скорости КВС
ias_yellow_right = globalPropertyf("tu154ce/gauges/speed/ias_yellow_right") -- желтый маркер на индкиторе скорости 2П


absu_at_dif_left = globalPropertyf("tu154ce/absu_at_dif_left") -- разность скоростей для индикации на ПКП
absu_at_dif_right = globalPropertyf("tu154ce/absu_at_dif_right") -- разность скоростей для индикации на ПКП


rud_1_spd = globalPropertyf("tu154ce/absu/rud_1_spd") -- скорость изменения положения рычага
rud_2_spd = globalPropertyf("tu154ce/absu/rud_2_spd") -- скорость изменения положения рычага
rud_3_spd = globalPropertyf("tu154ce/absu/rud_3_spd") -- скорость изменения положения рычага

stu_mode = globalPropertyi("tu154ce/absu/stu_mode") -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	
toga_command = globalPropertyi("tu154ce/absu/toga_comm") -- 	режим УХОД


-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
absu_at1_fail = globalPropertyi("tu154ce/failures/absu_at1_fail") -- отказ AT
absu_at2_fail = globalPropertyi("tu154ce/failures/absu_at2_fail") -- отказ AT


-- XP 11.10 fix
sim_vers = globalPropertyi("sim/version/xplane_internal_version") -- версия сима

absu_zk = globalPropertyi("tu154ce/buttons/console/absu_zk") -- кнопка ЗК на панели АБСУ
absu_reset = globalPropertyi("tu154ce/buttons/console/absu_reset") -- кнопка сброс программы на панели АБСУ
absu_nvu = globalPropertyi("tu154ce/buttons/console/absu_nvu") -- кнопка НВУ на панели АБСУ
absu_app = globalPropertyi("tu154ce/buttons/console/absu_app") -- кнопка заход на панели АБСУ
absu_gs = globalPropertyi("tu154ce/buttons/console/absu_gs") -- кнопка глиссада на панели АБСУ
absu_stab_m = globalPropertyi("tu154ce/buttons/console/absu_stab_m") -- кнопка M на панели АБСУ
absu_stab_v = globalPropertyi("tu154ce/buttons/console/absu_stab_v") -- кнопка V на панели АБСУ
absu_stab_h = globalPropertyi("tu154ce/buttons/console/absu_stab_h") -- кнопка H на панели АБСУ
absu_stab = globalPropertyi("tu154ce/buttons/console/absu_stab") -- кнопка СТАБ на панели АБСУ


absu_stab_speed = globalPropertyi("tu154ce/buttons/console/absu_stab_speed") -- кнопка C на панели АБСУ

absu_speed_change = globalPropertyi("tu154ce/switchers/console/absu_speed_change") -- ручка изменения скорости.
absu_turn_handle = globalPropertyi("tu154ce/switchers/console/absu_turn_handle") -- ручка поворота
absu_pitch_wheel_dir = globalPropertyi("tu154ce/switchers/console/absu_pitch_wheel_dir") -- колесико спуска, подъема


pkp_course_L = globalPropertyf("tu154ce/gauges/compas/pkp_helper_course_L") -- устанвока курса желтой стрелкой на ПКП
pkp_course_R = globalPropertyf("tu154ce/gauges/compas/pkp_helper_course_R") -- устанвока курса желтой стрелкой на ПКП




-- failures
failures_enabled = globalPropertyi("tu154ce/failures/failures_enabled") -- включение неисправностей
absu_ra56_roll_fail = globalPropertyi("tu154ce/failures/absu_ra56_roll_fail") -- отказ ra56
absu_ra56_pitch_fail = globalPropertyi("tu154ce/failures/absu_ra56_pitch_fail") -- отказ ra56
absu_ra56_yaw_fail = globalPropertyi("tu154ce/failures/absu_ra56_yaw_fail") -- отказ ra56
absu_at1_fail = globalPropertyi("tu154ce/failures/absu_at1_fail") -- отказ AT
absu_at2_fail = globalPropertyi("tu154ce/failures/absu_at2_fail") -- отказ AT
absu_damp_roll_fail = globalPropertyi("tu154ce/failures/absu_damp_roll_fail") -- отказ демперов крена
absu_damp_pitch_fail = globalPropertyi("tu154ce/failures/absu_damp_pitch_fail") -- отказ демперов тангажа
absu_damp_yaw_fail = globalPropertyi("tu154ce/failures/absu_damp_yaw_fail") -- отказ демперов курса
absu_contr_roll_fail = globalPropertyi("tu154ce/failures/absu_contr_roll_fail") -- отказ бокового управления
absu_contr_pitch_fail = globalPropertyi("tu154ce/failures/absu_contr_pitch_fail") -- отказ продольного управления
absu_calc_toga_fail = globalPropertyi("tu154ce/failures/absu_calc_toga_fail") -- отказ вычислителя УХОД
absu_calc_roll_fail = globalPropertyi("tu154ce/failures/absu_calc_roll_fail") -- отказ бокового канала СТУ
absu_calc_pitch_fail = globalPropertyi("tu154ce/failures/absu_calc_pitch_fail") -- отказ продольного канала СТУ

joy_pitch = globalPropertyf("tu154ce/SC/yoke_pitch_ratio")
joy_roll = globalPropertyf("tu154ce/SC/yoke_roll_ratio")
joy_yaw = globalPropertyf("tu154ce/SC/yoke_heading_ratio")


frame_time = globalPropertyf("tu154ce/time/frame_time") -- time of frame

-- hydraulics
gs_press_1 = globalPropertyf("tu154ce/hydro/gs_press_1") -- давление в ГС1
gs_press_2 = globalPropertyf("tu154ce/hydro/gs_press_2") -- давление в ГС2
gs_press_3 = globalPropertyf("tu154ce/hydro/gs_press_3") -- давление в ГС3


-- controls
hydro_ra56_rud_1 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_1") -- гидропитание РА56 курс
hydro_ra56_rud_2 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_2") -- гидропитание РА56 курс
hydro_ra56_rud_3 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_3") -- гидропитание РА56 курс

hydro_ra56_ail_1 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_1") -- гидропитание РА56 крен
hydro_ra56_ail_2 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_2") -- гидропитание РА56 крен
hydro_ra56_ail_3 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_3") -- гидропитание РА56 крен

hydro_ra56_elev_1 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_1") -- гидропитание РА56 тангаж
hydro_ra56_elev_2 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_2") -- гидропитание РА56 тангаж
hydro_ra56_elev_3 = globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_3") -- гидропитание РА56 тангаж

absu_turn_handle = globalPropertyi("tu154ce/switchers/console/absu_turn_handle") -- ручка поворота
absu_pitch_wheel = globalPropertyi("tu154ce/switchers/console/absu_pitch_wheel") -- колесико спуска, подъема

absu_zpu_sel = globalPropertyi("tu154ce/switchers/console/absu_zpu_sel") -- переключатель ЗПУ. лев - прав
ZK_select = globalPropertyi("tu154ce/switchers/ZK_select") -- тумблер "ввод ЗК" на передней панели. 0-лев, 1-прав	0

absu_smooth_on = globalPropertyi("tu154ce/switchers/console/absu_smooth_on") -- тумблер "вкл в болтанку"

absu_nav_on = globalPropertyi("tu154ce/switchers/console/absu_nav_on") -- стрелки навигация
absu_landing_on = globalPropertyi("tu154ce/switchers/console/absu_landing_on") -- стрелки посадка
absu_needles_on = globalPropertyi("tu154ce/switchers/console/absu_needles_on") -- стрелки

nav_select = globalPropertyi("tu154ce/switchers/nav_select") -- тумблер НВУ-СНС 0 - НВУ, 1 - СНС


absu_speed_test_1 = globalPropertyi("tu154ce/buttons/console/absu_speed_test_1") -- кнопка првоерки СТУ нижняя
absu_speed_test_2 = globalPropertyi("tu154ce/buttons/console/absu_speed_test_2") -- кнопка првоерки СТУ верхняя


absu_use_second_nav = globalPropertyi("tu154ce/absu_use_second_nav") -- АБСУ использует второй КурсМП



-- PNP
pkp_course_L = globalPropertyf("tu154ce/gauges/compas/pkp_helper_course_L") -- устанвока курса желтой стрелкой на ПКП
pkp_course_R = globalPropertyf("tu154ce/gauges/compas/pkp_helper_course_R") -- устанвока курса желтой стрелкой на ПКП

pkp_gyro_course_L = globalPropertyf("tu154ce/gauges/compas/pkp_gyro_course_L") -- курс гироскопа ПКП
pkp_gyro_course_R = globalPropertyf("tu154ce/gauges/compas/pkp_gyro_course_R") -- курс гироскопа ПКП


pkp_obs_1 = globalPropertyf("tu154ce/gauges/compas/pkp_obs_L") -- курс полета на ПКП
pkp_obs_2 = globalPropertyf("tu154ce/gauges/compas/pkp_obs_R") -- курс полета на ПКП
-- angular speeds
roll_rate = globalPropertyf("sim/flightmodel/position/P") -- deg/sec	The roll rotation rates (relative to the flight)
pitch_rate = globalPropertyf("sim/flightmodel/position/Q") -- deg/sec	The pitch rotation rates (relative to the flight)
yaw_rate = globalPropertyf("sim/flightmodel/position/R") -- deg/sec	The yaw rotation rates (relative to the flight)

roll_acc = globalPropertyf("sim/flightmodel/position/P_dot") -- deg/sec2	The roll angular acceleration (relative to the flight)
pitch_acc = globalPropertyf("sim/flightmodel/position/Q_dot") -- deg/sec2 The pitch angular acceleration (relative to the flight)
yaw_acc = globalPropertyf("sim/flightmodel/position/R_dot") -- deg/sec2 The yaw angular acceleration rates (relative to the flight)

--slip =  globalPropertyf("sim/flightmodel/misc/slip")
--slip =  globalPropertyf("sim/cockpit2/gauges/indicators/slip_deg")
slip = globalPropertyf("sim/cockpit2/gauges/indicators/sideslip_degrees")


-- SVS
mach_svs = globalPropertyf("tu154ce/svs/machno") -- Mach number
alt_svs = globalPropertyf("tu154ce/svs/altitude") -- Altitude by 1013 hpa
tas_svs = globalPropertyf("tu154ce/svs/true_airspeed") -- TAS

ias = globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot") -- indicated airspeed in KTS

-- NVU
nvu_res_course = globalPropertyf("tu154ce/nvu/nvu_res_course") -- курс полета по НВУ
nvu_res_z = globalPropertyf("tu154ce/nvu/nvu_res_z") -- смещение от курса полета НВУ

-- ABSU modes
roll_main_mode = globalPropertyi("tu154ce/absu/roll_main_mode") -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
pitch_main_mode = globalPropertyi("tu154ce/absu/pitch_main_mode") -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

roll_sub_mode = globalPropertyi("tu154ce/absu/roll_sub_mode") -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
pitch_sub_mode = globalPropertyi("tu154ce/absu/pitch_sub_mode") -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход


-- БКК
bkk_pitch = globalPropertyf("tu154ce/bkk/bkk_pitch") -- результирующий тангаж от БКК
bkk_roll = globalPropertyf("tu154ce/bkk/bkk_roll") -- результирующий тангаж от БКК

-- TKS
course_gpk = globalPropertyf("tu154ce/tks/course_gpk") -- результирующий курс ТКС - ГПК
course_gmk = globalPropertyf("tu154ce/tks/course_gmk") -- результирующий курс ТКС - ГМК
tks_fail_left = globalPropertyi("tu154ce/tks/fail_left") -- флаг отказа
tks_fail_right = globalPropertyi("tu154ce/tks/fail_right") -- флаг отказа


-- DISS
diss_groundspeed = globalPropertyf("tu154ce/nvu/diss_groundspeed") -- путевая скорость по ДИСС
diss_slip_angle = globalPropertyf("tu154ce/nvu/diss_slip_angle") -- угол сноса по ДИСС

-- Course MP
obs_1 = globalPropertyf("sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot") -- OBS course
obs_2 = globalPropertyf("sim/cockpit2/radios/actuators/nav2_obs_deg_mag_pilot") -- OBS course
nav_cs_1 = globalPropertyf("tu154ce/radio/nav1_cs") -- course plank
nav_cs_2 = globalPropertyf("tu154ce/radio/nav2_cs") -- course plank
nav_gs_1 = globalPropertyf("tu154ce/radio/nav1_gs") -- glideslope
nav_gs_2 = globalPropertyf("tu154ce/radio/nav2_gs") -- glideslope

freq_1 = globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz") -- set the frequency
freq_2 = globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz") -- set the frequency

nav_cs_flag_1 = globalPropertyi("tu154ce/radio/nav1_cs_flag")
nav_gs_flag_1 = globalPropertyi("tu154ce/radio/nav1_gs_flag")

nav_cs_flag_2 = globalPropertyi("tu154ce/radio/nav2_cs_flag")
nav_gs_flag_2 = globalPropertyi("tu154ce/radio/nav2_gs_flag")

cr_flag_1 = globalPropertyf("sim/cockpit2/radios/indicators/nav1_flag_from_to_pilot") -- Nav-To-From indication, nav1, pilot, 0 is flag, 1 is to, 2 is from.
cr_flag_2 = globalPropertyf("sim/cockpit2/radios/indicators/nav2_flag_from_to_pilot") -- Nav-To-From indication, nav1, pilot, 0 is flag, 1 is to, 2 is from.


-- KLN
kln_course = globalPropertyf("tu154ce/kln90/kln_course") -- курс ЛЗП от КЛН
kln_dev = globalPropertyf("tu154ce/kln90/kln_dev") -- отклонение от ЛЗП, мили


show_gns = globalPropertyi("tu154ce/anim/show_gns")
show_RXP = globalPropertyi("tu154ce/anim/RXP")


-- RXP
RXP_course = globalPropertyf("RXP/radios/indicators/gps_course_degtm") -- курс ЛЗП от КЛН
RXP_dev = globalPropertyf("RXP/radios/indicators/gps_cross_track_nm") -- отклонение от ЛЗП, мили

-- GNS
GNS430_dtk = globalPropertyf("tu154ce/SC/GNS430_dtk") -- курс на ГНС
GNS430_dev = globalPropertyf("tu154ce/SC/GNS430_dev") -- отклонение от курса на ГНС



-- RV
rv5_alt = globalPropertyf("tu154ce/misc/rv5_alt_left") -- высота на левом высотомере

dh_set = globalPropertyf("tu154ce/gauges/alt/radioalt_dh_left") -- DH angle
rv_angle = globalPropertyf("tu154ce/gauges/alt/radioalt_needle_left") -- RV needle

-- Landing Gears
gear1_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[0]") -- deploy of front gear
gear2_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[1]") -- deploy of right gear
gear3_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[2]") -- deploy of left gear
-- flaps
flap_inn_L = globalPropertyf("sim/flightmodel/controls/wing1l_fla1def") -- inner flaps left
flap_inn_R = globalPropertyf("sim/flightmodel/controls/wing1r_fla1def") -- inner flaps right

-- ailerons 20, rudder 25, elevator 25-20

gear1_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]") -- vertical deflection of front gear

-- results
absu_roll_ind = globalPropertyf("tu154ce/absu/absu_roll_ind") -- индикация директора крена
absu_pitch_ind = globalPropertyf("tu154ce/absu/absu_pitch_ind") -- индикация директора тангажа

absu_roll_flag = globalPropertyi("tu154ce/absu/absu_roll_flag") --	флаг директора крена
absu_pitch_flag = globalPropertyi("tu154ce/absu/absu_pitch_flag") -- флаг директора тангажа

-- result ABSU controls
absu_contr_pitch = globalPropertyf("tu154ce/absu/contr_pitch") -- отклонение штока РА56 по тангажу
absu_contr_roll = globalPropertyf("tu154ce/absu/contr_roll") -- отклонение штока РА56 по крену
absu_contr_yaw = globalPropertyf("tu154ce/absu/contr_yaw") -- отклонение штока РА56 по направлению

absu_pitch_trimm = globalPropertyi("tu154ce/absu/absu_pitch_trimm") -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз

absu_course_out = globalPropertyi("tu154ce/absu_course_out") -- flying outside the course limits
absu_gs_out = globalPropertyi("tu154ce/absu_gs_out") -- flying outside the course limits



-- failures
absu_damp_roll_fail = globalPropertyi("tu154ce/failures/absu_damp_roll_fail") -- отказ демперов крена
absu_damp_pitch_fail = globalPropertyi("tu154ce/failures/absu_damp_pitch_fail") -- отказ демперов тангажа
absu_damp_yaw_fail = globalPropertyi("tu154ce/failures/absu_damp_yaw_fail") -- отказ демперов курса
absu_contr_roll_fail = globalPropertyi("tu154ce/failures/absu_contr_roll_fail") -- отказ бокового управления
absu_contr_pitch_fail = globalPropertyi("tu154ce/failures/absu_contr_pitch_fail") -- отказ продольного управления
absu_calc_toga_fail = globalPropertyi("tu154ce/failures/absu_calc_toga_fail") -- отказ вычислителя УХОД
absu_calc_roll_fail = globalPropertyi("tu154ce/failures/absu_calc_roll_fail") -- отказ бокового канала СТУ
absu_calc_pitch_fail = globalPropertyi("tu154ce/failures/absu_calc_pitch_fail") -- отказ продольного канала СТУ


man_roll_lamp = globalPropertyi("tu154ce/absu/man_roll_lamp")
man_pitch_lamp = globalPropertyi("tu154ce/absu/man_pitch_lamp")

absu_contr_pitch = globalPropertyf("tu154ce/absu/contr_pitch") -- отклонение штока РА56 по тангажу
absu_contr_roll = globalPropertyf("tu154ce/absu/contr_roll") -- отклонение штока РА56 по крену
absu_contr_yaw = globalPropertyf("tu154ce/absu/contr_yaw") -- отклонение штока РА56 по направлению


int_pitch_trim = globalPropertyf("tu154ce/trimmers/int_pitch_trim") -- положение триммера руля высоты
gear1_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]") -- vertical deflection of front gear

-- results
rudder_pos_ind = globalPropertyf("tu154ce/gauges/misc/rudder_pos_ind") -- индикатор положения РН
aileron_pos_ind = globalPropertyf("tu154ce/gauges/misc/aileron_pos_ind") -- индикатор положения элеронов
elevator_pos_ind = globalPropertyf("tu154ce/gauges/misc/elevator_pos_ind") -- индикатор положения РВ

-- controls
absu_zpu_sel =  globalPropertyi("tu154ce/switchers/console/absu_zpu_sel") -- переключатель ЗПУ. лев - прав
absu_nav_on =  globalPropertyi("tu154ce/switchers/console/absu_nav_on") -- стрелки навигация
absu_landing_on =  globalPropertyi("tu154ce/switchers/console/absu_landing_on") -- стрелки посадка
absu_needles_on =  globalPropertyi("tu154ce/switchers/console/absu_needles_on") -- стрелки
absu_speed_mode =  globalPropertyi("tu154ce/switchers/console/absu_speed_mode") -- режим СТУ. 0 - откл, 1 - нву, 2 - аз1, 3 - аз2, 4 - пос
absu_speed_change =  globalPropertyi("tu154ce/switchers/console/absu_speed_change") -- ручка изменения скорости. 
absu_speed_off =  globalPropertyi("tu154ce/switchers/console/absu_speed_off") -- отключение 1 и 2
absu_speed_prepare =  globalPropertyi("tu154ce/switchers/console/absu_speed_prepare") -- подготовка
absu_speed_us_right_left =  globalPropertyi("tu154ce/switchers/console/absu_speed_us_right_left") -- подготовка

absu_roll_ch_on =  globalPropertyi("tu154ce/switchers/console/absu_roll_ch_on") -- выключатель канал крена
absu_pitch_ch_on =  globalPropertyi("tu154ce/switchers/console/absu_pitch_ch_on") -- выключатель канала тангажа
absu_smooth_on =  globalPropertyi("tu154ce/switchers/console/absu_smooth_on") -- выключатель "в болтанку"

absu_turn_handle =  globalPropertyi("tu154ce/switchers/console/absu_turn_handle") -- ручка поворота
absu_pitch_wheel =  globalPropertyi("tu154ce/switchers/console/absu_pitch_wheel") -- колесико спуска, подъема

hydro_ra56_rud_1 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_1") -- гидропитание РА56 курс
hydro_ra56_rud_2 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_2") -- гидропитание РА56 курс
hydro_ra56_rud_3 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_3") -- гидропитание РА56 курс

hydro_ra56_ail_1 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_1") -- гидропитание РА56 крен
hydro_ra56_ail_2 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_2") -- гидропитание РА56 крен
hydro_ra56_ail_3 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_3") -- гидропитание РА56 крен

hydro_ra56_elev_1 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_1") -- гидропитание РА56 тангаж
hydro_ra56_elev_2 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_2") -- гидропитание РА56 тангаж
hydro_ra56_elev_3 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_3") -- гидропитание РА56 тангаж

sau_stu_on =  globalPropertyi("tu154ce/switchers/ovhd/sau_stu_on")  -- САУ СТУ выключатель

--tro_comm_1 =  globalProperty("sim/flightmodel/engine/ENGN_thro[0]")
--tro_comm_2 =  globalProperty("sim/flightmodel/engine/ENGN_thro[1]")
--tro_comm_3 =  globalProperty("sim/flightmodel/engine/ENGN_thro[2]")

tro_comm_1 =  globalPropertyf("tu154ce/SC/engine/ENGN_thro_0") 
tro_comm_2 =  globalPropertyf("tu154ce/SC/engine/ENGN_thro_1") 
tro_comm_3 =  globalPropertyf("tu154ce/SC/engine/ENGN_thro_2")



-- buttons
absu_zk =  globalPropertyi("tu154ce/buttons/console/absu_zk") -- кнопка ЗК на панели АБСУ
absu_reset =  globalPropertyi("tu154ce/buttons/console/absu_reset") -- кнопка сброс программы на панели АБСУ
absu_nvu =  globalPropertyi("tu154ce/buttons/console/absu_nvu") -- кнопка НВУ на панели АБСУ
absu_az1 =  globalPropertyi("tu154ce/buttons/console/absu_az1") -- кнопка АЗ 1 на панели АБСУ
absu_az2 =  globalPropertyi("tu154ce/buttons/console/absu_az2") -- кнопка АЗ 2 на панели АБСУ
absu_app =  globalPropertyi("tu154ce/buttons/console/absu_app") -- кнопка заход на панели АБСУ
absu_gs =  globalPropertyi("tu154ce/buttons/console/absu_gs") -- кнопка глиссада на панели АБСУ
absu_stab_m =  globalPropertyi("tu154ce/buttons/console/absu_stab_m") -- кнопка M на панели АБСУ
absu_stab_v =  globalPropertyi("tu154ce/buttons/console/absu_stab_v") -- кнопка V на панели АБСУ
absu_stab_h =  globalPropertyi("tu154ce/buttons/console/absu_stab_h") -- кнопка H на панели АБСУ
absu_stab =  globalPropertyi("tu154ce/buttons/console/absu_stab") -- кнопка СТАБ на панели АБСУ

absu_arrest =  globalPropertyi("tu154ce/buttons/console/absu_arrest") -- кнопки арретировки МГВ
absu_speed_test_1 =  globalPropertyi("tu154ce/buttons/console/absu_speed_test_1") -- кнопка првоерки СТУ нижняя
absu_speed_test_2 =  globalPropertyi("tu154ce/buttons/console/absu_speed_test_2") -- кнопка првоерки СТУ верхняя

absu_stab_speed =  globalPropertyi("tu154ce/buttons/console/absu_stab_speed") -- кнопка C на панели АБСУ
absu_throt_off_1 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_1") -- кнопка откл Г1 на панели АБСУ
absu_throt_off_2 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_2") -- кнопка откл Г2 на панели АБСУ
absu_throt_off_3 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_3") -- кнопка откл Г3 на панели АБСУ

-- power
bus27_volt_left =  globalPropertyf("tu154ce/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right =  globalPropertyf("tu154ce/elec/bus27_volt_right") -- напряжение сети 27

bus115_1_volt =  globalPropertyf("tu154ce/elec/bus115_1_volt") -- напряжение на сети 115в
bus115_3_volt =  globalPropertyf("tu154ce/elec/bus115_3_volt") -- напряжение на сети 115в

bus36_volt_left =  globalPropertyf("tu154ce/elec/bus36_volt_left") -- напряжение сети 36в лев
bus36_volt_right =  globalPropertyf("tu154ce/elec/bus36_volt_right") -- напряжение сети 36в прав
bus36_volt_pts250_1 =  globalPropertyf("tu154ce/elec/bus36_volt_pts250_1") -- напряжение сети 36 ПТС 1
bus36_volt_pts250_2 =  globalPropertyf("tu154ce/elec/bus36_volt_pts250_2") -- напряжение сети 36 ПТС 2

absu_power_cc =  globalPropertyf("tu154ce/absu_power_cc") -- потребление тока АБСУ

-- other sources
nvu_mode =  globalPropertyi("tu154ce/nvu/nvu_mode") -- режим НВУ. 0 = выкл, 1 = готов, 2 = счисление, 3 = коррекция
freq_1 =  globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz")  -- set the frequency
freq_2 =  globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz")  -- set the frequency

nav_cs_flag_1 =  globalPropertyi("tu154ce/radio/nav1_cs_flag")
nav_gs_flag_1 =  globalPropertyi("tu154ce/radio/nav1_gs_flag")
	
nav_cs_flag_2 =  globalPropertyi("tu154ce/radio/nav2_cs_flag")
nav_gs_flag_2 =  globalPropertyi("tu154ce/radio/nav2_gs_flag")

nav_gs_1 =  globalPropertyf("tu154ce/radio/nav1_gs") -- glideslope

svs_on =  globalPropertyi("tu154ce/switchers/ovhd/svs_on") -- выключатель СВС
svs_fail =  globalPropertyi("sim/operation/failures/rel_adc_comp")  -- static fail


rv5_alt =  globalPropertyf("tu154ce/misc/rv5_alt_left")  -- высота на левом высотомере
rv_flag =  globalPropertyi("tu154ce/gauges/alt/radioalt_flag_left")  -- RV flag


absu_course_out =  globalPropertyi("tu154ce/absu_course_out") -- flying outside the course limits
absu_gs_out =  globalPropertyi("tu154ce/absu_gs_out") -- flying outside the course limits

frame_time =  globalPropertyf("tu154ce/time/frame_time") -- time of frame

-- Throttles
anim_rud1 =  globalPropertyf("tu154ce/controlls/throttle_1") -- РУД 1
anim_rud2 =  globalPropertyf("tu154ce/controlls/throttle_2") -- РУД 2
anim_rud3 =  globalPropertyf("tu154ce/controlls/throttle_3") -- РУД 3
-- flaps
flap_inn_L =  globalPropertyf("sim/flightmodel/controls/wing1l_fla1def") -- inner flaps left
flap_inn_R =  globalPropertyf("sim/flightmodel/controls/wing1r_fla1def") -- inner flaps right

-- joystick
--joy_pitch =  globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio") -- pitch position of joytick
--joy_roll =  globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio") -- roll position of joystick
--joy_yaw =  globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio") -- yaw position of joystick

joy_pitch =  globalPropertyf("tu154ce/SC/yoke_pitch_ratio") 
joy_roll =  globalPropertyf("tu154ce/SC/yoke_roll_ratio") 
joy_yaw =  globalPropertyf("tu154ce/SC/yoke_heading_ratio") 


manip_pitch =  globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio") 
manip_roll =  globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio") 

--sim/cockpit2/controls/yoke_roll_ratio	sim/cockpit2/controls/yoke_pitch_ratio




pkp_fail_left =  globalPropertyf("tu154ce/gauges/ahz/ahz_flag_L") -- 
pkp_fail_right =  globalPropertyf("tu154ce/gauges/ahz/ahz_flag_R") -- 
mgv_contr_fail =  globalPropertyf("tu154ce/gyro/mgv_contr_flag") -- 

pressure_ind_1 =  globalPropertyf("tu154ce/gauges/hydro/pressure_ind_1") -- индикатор давления гидросистемы 1
pressure_ind_2 =  globalPropertyf("tu154ce/gauges/hydro/pressure_ind_2") -- индикатор давления гидросистемы 2
pressure_ind_3 =  globalPropertyf("tu154ce/gauges/hydro/pressure_ind_3") -- индикатор давления гидросистемы 3

gs_press_1 =  globalPropertyf("tu154ce/hydro/gs_press_1") -- давление в ГС1
gs_press_2 =  globalPropertyf("tu154ce/hydro/gs_press_2") -- давление в ГС2
gs_press_3 =  globalPropertyf("tu154ce/hydro/gs_press_3") -- давление в ГС3
gs_press_4 =  globalPropertyf("tu154ce/hydro/gs_press_4") -- давление в ГС4

tks_fail_left =  globalPropertyi("tu154ce/tks/fail_left") -- флаг отказа
tks_fail_right =  globalPropertyi("tu154ce/tks/fail_right") -- флаг отказа

outer_marker =  globalPropertyi("sim/cockpit/misc/outer_marker_lit")


-- results
roll_main_mode =  globalPropertyi("tu154ce/absu/roll_main_mode") -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
pitch_main_mode =  globalPropertyi("tu154ce/absu/pitch_main_mode") -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

roll_sub_mode =  globalPropertyi("tu154ce/absu/roll_sub_mode") -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход, 7 - уход, 10 арм заход
pitch_sub_mode =  globalPropertyi("tu154ce/absu/pitch_sub_mode") -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход, 10 - арм глисс

absu_pnp_mode_1 =  globalPropertyi("tu154ce/absu/absu_pnp_mode_1") -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
absu_pnp_mode_2 =  globalPropertyi("tu154ce/absu/absu_pnp_mode_2") -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС


autopilot_mode =  globalPropertyi("sim/cockpit/autopilot/autopilot_mode") -- автопилот в симе

toga_command =  globalPropertyi("tu154ce/absu/toga_comm") -- 	режим УХОД


absu_use_second_nav =  globalPropertyi("tu154ce/absu_use_second_nav") -- АБСУ использует второй КурсМП



damp_roll_lamp =  globalPropertyi("tu154ce/absu/damp_roll_lamp") -- 
damp_pitch_lamp =  globalPropertyi("tu154ce/absu/damp_pitch_lamp") -- 
damp_yaw_lamp =  globalPropertyi("tu154ce/absu/damp_yaw_lamp") -- 
roll_contr_lamp =  globalPropertyi("tu154ce/absu/roll_contr_lamp") -- 
pitch_contr_lamp =  globalPropertyi("tu154ce/absu/pitch_contr_lamp") -- 
man_roll_lamp =  globalPropertyi("tu154ce/absu/man_roll_lamp") -- 
man_pitch_lamp =  globalPropertyi("tu154ce/absu/man_pitch_lamp") -- 
man_toga_lamp =  globalPropertyi("tu154ce/absu/man_toga_lamp") -- 
triangle_lamp_signal =  globalPropertyi("tu154ce/absu/triangle_lamp_signal") -- 






-- Smart Copilot
ismaster =  globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 =  globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- failures
absu_ra56_roll_fail =  globalPropertyi("tu154ce/failures/absu_ra56_roll_fail") -- отказ ra56
absu_ra56_pitch_fail =  globalPropertyi("tu154ce/failures/absu_ra56_pitch_fail") -- отказ ra56
absu_ra56_yaw_fail =  globalPropertyi("tu154ce/failures/absu_ra56_yaw_fail") -- отказ ra56

-- failures
absu_damp_roll_fail =  globalPropertyi("tu154ce/failures/absu_damp_roll_fail") -- отказ демперов крена
absu_damp_pitch_fail =  globalPropertyi("tu154ce/failures/absu_damp_pitch_fail") -- отказ демперов тангажа
absu_damp_yaw_fail =  globalPropertyi("tu154ce/failures/absu_damp_yaw_fail") -- отказ демперов курса
absu_contr_roll_fail =  globalPropertyi("tu154ce/failures/absu_contr_roll_fail") -- отказ бокового управления
absu_contr_pitch_fail =  globalPropertyi("tu154ce/failures/absu_contr_pitch_fail") -- отказ продольного управления
absu_calc_toga_fail =  globalPropertyi("tu154ce/failures/absu_calc_toga_fail") -- отказ вычислителя УХОД
absu_calc_roll_fail =  globalPropertyi("tu154ce/failures/absu_calc_roll_fail") -- отказ бокового канала СТУ
absu_calc_pitch_fail =  globalPropertyi("tu154ce/failures/absu_calc_pitch_fail") -- отказ продольного канала СТУ

absu_fail_signal =  globalPropertyi("tu154ce/absu/absu_fail_signal") -- сигнал на сирену

frame_time =  globalPropertyf("tu154ce/time/frame_time") -- time of frame

-- gauges
absu_roll_mode =  globalPropertyi("tu154ce/gauges/console/absu_roll_mode") -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
absu_pitch_mode =  globalPropertyi("tu154ce/gauges/console/absu_pitch_mode") -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб

-- controls
absu_zpu_sel =  globalPropertyi("tu154ce/switchers/console/absu_zpu_sel") -- переключатель ЗПУ. лев - прав
absu_nav_on =  globalPropertyi("tu154ce/switchers/console/absu_nav_on") -- стрелки навигация
absu_landing_on =  globalPropertyi("tu154ce/switchers/console/absu_landing_on") -- стрелки посадка
absu_needles_on =  globalPropertyi("tu154ce/switchers/console/absu_needles_on") -- стрелки
absu_speed_mode =  globalPropertyi("tu154ce/switchers/console/absu_speed_mode") -- режим СТУ. 0 - откл, 1 - нву, 2 - аз1, 3 - аз2, 4 - пос
absu_speed_change =  globalPropertyi("tu154ce/switchers/console/absu_speed_change") -- ручка изменения скорости. 
absu_speed_off =  globalPropertyi("tu154ce/switchers/console/absu_speed_off") -- отключение 1 и 2
absu_speed_prepare =  globalPropertyi("tu154ce/switchers/console/absu_speed_prepare") -- подготовка
absu_speed_us_right_left =  globalPropertyi("tu154ce/switchers/console/absu_speed_us_right_left") -- подготовка

absu_roll_ch_on =  globalPropertyi("tu154ce/switchers/console/absu_roll_ch_on") -- выключатель канал крена
absu_pitch_ch_on =  globalPropertyi("tu154ce/switchers/console/absu_pitch_ch_on") -- выключатель канала тангажа
absu_smooth_on =  globalPropertyi("tu154ce/switchers/console/absu_smooth_on") -- выключатель "в болтанку"

absu_turn_handle =  globalPropertyi("tu154ce/switchers/console/absu_turn_handle") -- ручка поворота
absu_pitch_wheel =  globalPropertyf("tu154ce/switchers/console/absu_pitch_wheel") -- колесико спуска, подъема
absu_pitch_wheel_dir =  globalPropertyi("tu154ce/switchers/console/absu_pitch_wheel_dir") -- колесико спуска, подъема


hydro_ra56_rud_1 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_1") -- гидропитание РА56 курс
hydro_ra56_rud_2 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_2") -- гидропитание РА56 курс
hydro_ra56_rud_3 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_3") -- гидропитание РА56 курс

hydro_ra56_ail_1 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_1") -- гидропитание РА56 крен
hydro_ra56_ail_2 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_2") -- гидропитание РА56 крен
hydro_ra56_ail_3 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_3") -- гидропитание РА56 крен

hydro_ra56_elev_1 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_1") -- гидропитание РА56 тангаж
hydro_ra56_elev_2 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_2") -- гидропитание РА56 тангаж
hydro_ra56_elev_3 =  globalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_3") -- гидропитание РА56 тангаж


hydro_circuit_auto_man =  globalPropertyi("tu154ce/switchers/eng/hydro_circuit_auto_man") -- кольцевание автомат - ручное
hydro_long_control =  globalPropertyi("tu154ce/switchers/eng/hydro_long_control") -- продольная управляемость

hydro_circuit_auto_man_cap =  globalPropertyi("tu154ce/switchers/eng/hydro_circuit_auto_man_cap") -- кольцевание автомат - ручное
hydro_long_control_cap =  globalPropertyi("tu154ce/switchers/eng/hydro_long_control_cap") -- продольная управляемость

ZK_select =  globalPropertyi("tu154ce/switchers/ZK_select") -- 
nav_select =  globalPropertyi("tu154ce/switchers/nav_select") -- 
vbe_select =  globalPropertyi("tu154ce/switchers/vbe_select") -- 


-- buttons
absu_zk =  globalPropertyi("tu154ce/buttons/console/absu_zk") -- кнопка ЗК на панели АБСУ
absu_reset =  globalPropertyi("tu154ce/buttons/console/absu_reset") -- кнопка сброс программы на панели АБСУ
absu_nvu =  globalPropertyi("tu154ce/buttons/console/absu_nvu") -- кнопка НВУ на панели АБСУ
absu_az1 =  globalPropertyi("tu154ce/buttons/console/absu_az1") -- кнопка АЗ 1 на панели АБСУ
absu_az2 =  globalPropertyi("tu154ce/buttons/console/absu_az2") -- кнопка АЗ 2 на панели АБСУ
absu_app =  globalPropertyi("tu154ce/buttons/console/absu_app") -- кнопка заход на панели АБСУ
absu_gs =  globalPropertyi("tu154ce/buttons/console/absu_gs") -- кнопка глиссада на панели АБСУ
absu_stab_m =  globalPropertyi("tu154ce/buttons/console/absu_stab_m") -- кнопка M на панели АБСУ
absu_stab_v =  globalPropertyi("tu154ce/buttons/console/absu_stab_v") -- кнопка V на панели АБСУ
absu_stab_h =  globalPropertyi("tu154ce/buttons/console/absu_stab_h") -- кнопка H на панели АБСУ
absu_stab =  globalPropertyi("tu154ce/buttons/console/absu_stab") -- кнопка СТАБ на панели АБСУ

absu_arrest =  globalPropertyi("tu154ce/buttons/console/absu_arrest") -- кнопки арретировки МГВ
absu_speed_test_1 =  globalPropertyi("tu154ce/buttons/console/absu_speed_test_1") -- кнопка првоерки СТУ нижняя
absu_speed_test_2 =  globalPropertyi("tu154ce/buttons/console/absu_speed_test_2") -- кнопка првоерки СТУ верхняя

absu_stab_speed =  globalPropertyi("tu154ce/buttons/console/absu_stab_speed") -- кнопка C на панели АБСУ
absu_throt_off_1 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_1") -- кнопка откл Г1 на панели АБСУ
absu_throt_off_2 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_2") -- кнопка откл Г2 на панели АБСУ
absu_throt_off_3 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_3") -- кнопка откл Г3 на панели АБСУ


-- caps
absu_arrest_cap =  globalPropertyi("tu154ce/buttons/console/absu_arrest_cap") -- кнопка првоерки СТУ верхняя
absu_smooth_on_cap =  globalPropertyi("tu154ce/switchers/console/absu_smooth_on_cap") -- выключатель "в болтанку"
absu_speed_prepare_cap =  globalPropertyi("tu154ce/switchers/console/absu_speed_prepare_cap") -- подготовка
absu_speed_off_cap =  globalPropertyi("tu154ce/switchers/console/absu_speed_off_cap") -- отключение 1 и 2

-- lamps
absu_zk_lamp =  globalPropertyf("tu154ce/lights/button/absu_zk") -- АБСУ ЗК
absu_reset_lamp =  globalPropertyf("tu154ce/lights/button/absu_reset") -- АБСУ ЗК
absu_nvu_lamp =  globalPropertyf("tu154ce/lights/button/absu_nvu") -- АБСУ ЗК
absu_az1_lamp =  globalPropertyf("tu154ce/lights/button/absu_az1") -- АБСУ ЗК
absu_az2_lamp =  globalPropertyf("tu154ce/lights/button/absu_az2") -- АБСУ ЗК
absu_app_lamp =  globalPropertyf("tu154ce/lights/button/absu_app") -- АБСУ ЗК
absu_gz_lamp =  globalPropertyf("tu154ce/lights/button/absu_gz") -- АБСУ ЗК
absu_stab_m_lamp =  globalPropertyf("tu154ce/lights/button/absu_stab_m") -- АБСУ ЗК
absu_stab_v_lamp =  globalPropertyf("tu154ce/lights/button/absu_stab_v") -- АБСУ ЗК
absu_stab_h_lamp =  globalPropertyf("tu154ce/lights/button/absu_stab_h") -- АБСУ ЗК
absu_stab_lamp =  globalPropertyf("tu154ce/lights/button/absu_stab") -- АБСУ ЗК
absu_stab_spd_lamp =  globalPropertyf("tu154ce/lights/button/absu_stab_spd") -- АБСУ ЗК
absu_thro1_lamp =  globalPropertyf("tu154ce/lights/button/absu_thro1") -- АБСУ ЗК
absu_thro2_lamp =  globalPropertyf("tu154ce/lights/button/absu_thro2") -- АБСУ ЗК
absu_thro3_lamp =  globalPropertyf("tu154ce/lights/button/absu_thro3") -- АБСУ ЗК

stu_roll_lamp =  globalPropertyf("tu154ce/lights/small/stu_roll") -- крен
stu_pitch_lamp =  globalPropertyf("tu154ce/lights/small/stu_pitch") -- тангаж
stu_toga_lamp =  globalPropertyf("tu154ce/lights/small/stu_toga") -- УХОД

at_1_lamp =  globalPropertyf("tu154ce/lights/small/at_1") -- АТ 1
at_2_lamp =  globalPropertyf("tu154ce/lights/small/at_2") -- АТ 2

course_lim =  globalPropertyf("tu154ce/lights/course_lim") -- выход за пределы курса
gs_lim =  globalPropertyf("tu154ce/lights/gs_lim") -- выход за пределы глиссады




-- forward panel lamps
wrong_trimm =  globalPropertyf("tu154ce/lights/wrong_trimm") -- ложное триммирование
controll_roll =  globalPropertyf("tu154ce/lights/controll_roll") -- управляй креном
controll_pitch =  globalPropertyf("tu154ce/lights/controll_pitch") -- управляй тангажом
yoke_sign =  globalPropertyf("tu154ce/lights/yoke_sign") -- сигнализация ухода на второй круг в штурвальном режиме
triangle =  globalPropertyf("tu154ce/lights/triangle") -- интегральный сигнальный огонь
controll_thrust =  globalPropertyf("tu154ce/lights/controll_thrust") -- управляй тягой

toga =  globalPropertyf("tu154ce/lights/toga") -- уход

course =  globalPropertyf("tu154ce/lights/course") -- КУРС
glideslope =  globalPropertyf("tu154ce/lights/glideslope") -- ГЛИСС
zk_lamp =  globalPropertyf("tu154ce/lights/zk_lamp") -- ЗК
thrust_automat =  globalPropertyf("tu154ce/lights/thrust_automat") -- автомат тяги
stab_roll =  globalPropertyf("tu154ce/lights/stab_roll") -- стабилизация боков
stab_pitch =  globalPropertyf("tu154ce/lights/stab_pitch") -- стабилизация продольная
nvu_lamp =  globalPropertyf("tu154ce/lights/nvu_lamp") -- НВУ
vor_lamp =  globalPropertyf("tu154ce/lights/vor_lamp") -- VOR

stab_h =  globalPropertyf("tu154ce/lights/stab_h") -- стаб H
stab_v =  globalPropertyf("tu154ce/lights/stab_v") -- стаб V
stab_m =  globalPropertyf("tu154ce/lights/stab_m") -- стаб M

pitch_control_fail =  globalPropertyf("tu154ce/lights/pitch_control_fail") -- продол управл
roll_control_fail =  globalPropertyf("tu154ce/lights/roll_control_fail") -- боков управл

absu_work =  globalPropertyf("tu154ce/lights/absu_work") -- испр АБСУ

sns_lamp =  globalPropertyf("tu154ce/lights/sns_lamp") -- SNS lamp



-- eng panel lamps
ra56_roll_fail_1 =  globalPropertyf("tu154ce/lights/ra56_roll_fail_1") -- отказ РА56 крен
ra56_roll_fail_2 =  globalPropertyf("tu154ce/lights/ra56_roll_fail_2") -- отказ РА56 крен
ra56_roll_fail_3 =  globalPropertyf("tu154ce/lights/ra56_roll_fail_3") -- отказ РА56 крен

ra56_pitch_fail_1 =  globalPropertyf("tu154ce/lights/ra56_pitch_fail_1") -- отказ РА56 тангаж
ra56_pitch_fail_2 =  globalPropertyf("tu154ce/lights/ra56_pitch_fail_2") -- отказ РА56 тангаж
ra56_pitch_fail_3 =  globalPropertyf("tu154ce/lights/ra56_pitch_fail_3") -- отказ РА56 тангаж

ra56_course_fail_1 =  globalPropertyf("tu154ce/lights/ra56_course_fail_1") -- отказ РА56 курс
ra56_course_fail_2 =  globalPropertyf("tu154ce/lights/ra56_course_fail_2") -- отказ РА56 курс
ra56_course_fail_3 =  globalPropertyf("tu154ce/lights/ra56_course_fail_3") -- отказ РА56 курс

eng_at_on_lamp =  globalPropertyf("tu154ce/lights/engines/eng_at_on") -- АТ включен

-- other sources
lamp_test =  globalPropertyi("tu154ce/buttons/lamp_test_front") -- кнопка проверки ламп на передней панели	0
day_night_set =  globalPropertyf("tu154ce/lights/day_night_set") -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

lamp_test_eng =  globalPropertyi("tu154ce/buttons/lamp_test_pa56") -- кнопка проверки ламп на панели	БИ


-- 

roll_main_mode =  globalPropertyi("tu154ce/absu/roll_main_mode") -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
pitch_main_mode =  globalPropertyi("tu154ce/absu/pitch_main_mode") -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

roll_sub_mode =  globalPropertyi("tu154ce/absu/roll_sub_mode") -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
pitch_sub_mode =  globalPropertyi("tu154ce/absu/pitch_sub_mode") -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход

stu_mode =  globalPropertyi("tu154ce/absu/stu_mode") -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	
absu_speed_off =  globalPropertyi("tu154ce/switchers/console/absu_speed_off") -- отключение 1 и 2

absu_throt_off_1 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_1") -- кнопка откл Г1 на панели АБСУ
absu_throt_off_2 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_2") -- кнопка откл Г2 на панели АБСУ
absu_throt_off_3 =  globalPropertyi("tu154ce/buttons/console/absu_throt_off_3") -- кнопка откл Г3 на панели АБСУ


absu_pnp_mode_1 =  globalPropertyi("tu154ce/absu/absu_pnp_mode_1") -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
absu_pnp_mode_2 =  globalPropertyi("tu154ce/absu/absu_pnp_mode_2") -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС

absu_course_out =  globalPropertyi("tu154ce/absu_course_out") -- flying outside the course limits
absu_gs_out =  globalPropertyi("tu154ce/absu_gs_out") -- flying outside the course limits


pkp_fail_left =  globalPropertyf("tu154ce/gauges/ahz/ahz_flag_L") -- 
pkp_fail_right =  globalPropertyf("tu154ce/gauges/ahz/ahz_flag_R") -- 
mgv_contr_fail =  globalPropertyf("tu154ce/gyro/mgv_contr_flag") -- 


pressure_ind_1 =  globalPropertyf("tu154ce/gauges/hydro/pressure_ind_1") -- индикатор давления гидросистемы 1
pressure_ind_2 =  globalPropertyf("tu154ce/gauges/hydro/pressure_ind_2") -- индикатор давления гидросистемы 2
pressure_ind_3 =  globalPropertyf("tu154ce/gauges/hydro/pressure_ind_3") -- индикатор давления гидросистемы 3

sau_stu_on =  globalPropertyi("tu154ce/switchers/ovhd/sau_stu_on")  -- САУ СТУ выключатель

tks_fail_left =  globalPropertyi("tu154ce/tks/fail_left") -- флаг отказа
tks_fail_right =  globalPropertyi("tu154ce/tks/fail_right") -- флаг отказа


elev_trimm_switcher =  globalPropertyi("tu154ce/controll/elev_trimm_switcher") -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование
emerg_elev_trimm =  globalPropertyi("tu154ce/switchers/console/emerg_elev_trimm") -- аварийное управление триммером


-- power
bus27_volt_left =  globalPropertyf("tu154ce/elec/bus27_volt_left")
bus27_volt_right =  globalPropertyf("tu154ce/elec/bus27_volt_right")

int_pitch_trim =  globalPropertyf("tu154ce/trimmers/int_pitch_trim") -- положение триммера руля высоты
absu_pitch_trimm =  globalPropertyi("tu154ce/absu/absu_pitch_trimm") -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз


-- engines
eng1_N1 =  globalProperty("sim/flightmodel/engine/ENGN_N1_[0]") -- engine 1 rpm
eng2_N1 =  globalProperty("sim/flightmodel/engine/ENGN_N1_[1]") -- engine 2 rpm
eng3_N1 =  globalProperty("sim/flightmodel/engine/ENGN_N1_[2]") -- engine 3 rpm


damp_roll_lamp =  globalPropertyi("tu154ce/absu/damp_roll_lamp") -- 
damp_pitch_lamp =  globalPropertyi("tu154ce/absu/damp_pitch_lamp") -- 
damp_yaw_lamp =  globalPropertyi("tu154ce/absu/damp_yaw_lamp") -- 
roll_contr_lamp =  globalPropertyi("tu154ce/absu/roll_contr_lamp") -- 
pitch_contr_lamp =  globalPropertyi("tu154ce/absu/pitch_contr_lamp") -- 
man_roll_lamp =  globalPropertyi("tu154ce/absu/man_roll_lamp") -- 
man_pitch_lamp =  globalPropertyi("tu154ce/absu/man_pitch_lamp") -- 
man_toga_lamp =  globalPropertyi("tu154ce/absu/man_toga_lamp") -- 
triangle_lamp_signal =  globalPropertyi("tu154ce/absu/triangle_lamp_signal") -- 


-- failures
absu_ra56_roll_fail =  globalPropertyi("tu154ce/failures/absu_ra56_roll_fail") -- отказ ra56
absu_ra56_pitch_fail =  globalPropertyi("tu154ce/failures/absu_ra56_pitch_fail") -- отказ ra56
absu_ra56_yaw_fail =  globalPropertyi("tu154ce/failures/absu_ra56_yaw_fail") -- отказ ra56

absu_at1_fail =  globalPropertyi("tu154ce/failures/absu_at1_fail") -- отказ AT
absu_at2_fail =  globalPropertyi("tu154ce/failures/absu_at2_fail") -- отказ AT

absu_damp_roll_fail =  globalPropertyi("tu154ce/failures/absu_damp_roll_fail") -- отказ демперов крена
absu_damp_pitch_fail =  globalPropertyi("tu154ce/failures/absu_damp_pitch_fail") -- отказ демперов тангажа
absu_damp_yaw_fail =  globalPropertyi("tu154ce/failures/absu_damp_yaw_fail") -- отказ демперов курса
absu_contr_roll_fail =  globalPropertyi("tu154ce/failures/absu_contr_roll_fail") -- отказ бокового управления
absu_contr_pitch_fail =  globalPropertyi("tu154ce/failures/absu_contr_pitch_fail") -- отказ продольного управления
absu_calc_toga_fail =  globalPropertyi("tu154ce/failures/absu_calc_toga_fail") -- отказ вычислителя УХОД
absu_calc_roll_fail =  globalPropertyi("tu154ce/failures/absu_calc_roll_fail") -- отказ бокового канала СТУ
absu_calc_pitch_fail =  globalPropertyi("tu154ce/failures/absu_calc_pitch_fail") -- отказ продольного канала СТУ




-- Smart Copilot
ismaster =  globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 =  globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control

ack_anim       = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_ack_anim")
flt_anim       = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_flt_anim")
lookup_anim    = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_lookup_anim")
poweroff_anim  = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_poweroff_anim")
snp_anim       = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_snp_anim")
t1_anim        = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_t1_anim")
t2_anim        = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_t2_anim")
t3_anim        = globalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_t3_anim")
test_absu_anim = globalPropertyf("tu154ce/manipulators/switches/absu/ppn13_test_absu_anim")
test_svk_anim  = globalPropertyf("tu154ce/manipulators/switches/absu/ppn13_test_svk_anim")
lid_anim       = globalPropertyf("tu154ce/manipulators/caps/ppn13_lid")

ack            = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_ack")
flt            = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_flt")
lookup         = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_lookup")
poweroff       = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_poweroff")
snp            = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_snp")
t1             = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_t1")
t2             = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_t2")
t3             = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_t3")
test_absu      = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_test_absu")
test_svk       = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_test_svk")
lid            = globalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_lid")

servo_pitch_lt = globalPropertyf("tu154ce/systems/absu/ppn13/servo_pitch_lt")
servo_roll_lt  = globalPropertyf("tu154ce/systems/absu/ppn13/servo_roll_lt")
servo_yaw_lt   = globalPropertyf("tu154ce/systems/absu/ppn13/servo_yaw_lt")
bdg_pitch_lt   = globalPropertyf("tu154ce/systems/absu/ppn13/bdg_pitch_lt")
bdg_roll_lt    = globalPropertyf("tu154ce/systems/absu/ppn13/bdg_roll_lt")
bdg_yaw_lt     = globalPropertyf("tu154ce/systems/absu/ppn13/bdg_yaw_lt")

cws1_lt        = globalPropertyf("tu154ce/systems/absu/ppn13/cws1_lt")
cws2_lt        = globalPropertyf("tu154ce/systems/absu/ppn13/cws2_lt")
bns_p_lt       = globalPropertyf("tu154ce/systems/absu/ppn13/bns_p_lt")
bap_p_lt       = globalPropertyf("tu154ce/systems/absu/ppn13/bap_p_lt")
bap_r_lt       = globalPropertyf("tu154ce/systems/absu/ppn13/bap_r_lt")
vkv_lt         = globalPropertyf("tu154ce/systems/absu/ppn13/vkv_lt")

vu_lt          = globalPropertyf("tu154ce/systems/absu/ppn13/vu_lt")
ute_lt         = globalPropertyf("tu154ce/systems/absu/ppn13/ute_lt")
stu_p_lt       = globalPropertyf("tu154ce/systems/absu/ppn13/stu_p_lt")
stu_r_lt       = globalPropertyf("tu154ce/systems/absu/ppn13/stu_r_lt")
at_lt          = globalPropertyf("tu154ce/systems/absu/ppn13/at_lt")
bsn_lt         = globalPropertyf("tu154ce/systems/absu/ppn13/bsn_lt")

mgv_p_stu_lt   = globalPropertyf("tu154ce/systems/absu/ppn13/mgv_p_stu_lt")
mgv_r_stu_lt   = globalPropertyf("tu154ce/systems/absu/ppn13/mgv_r_stu_lt")
mgv_p_sau_lt   = globalPropertyf("tu154ce/systems/absu/ppn13/mgv_p_sau_lt")
mgv_r_sau_lt   = globalPropertyf("tu154ce/systems/absu/ppn13/mgv_r_sau_lt")
ks_lt          = globalPropertyf("tu154ce/systems/absu/ppn13/ks_lt")
bns_r_lt       = globalPropertyf("tu154ce/systems/absu/ppn13/bns_r_lt")

ch1_lt         = globalPropertyf("tu154ce/systems/absu/ppn13/ch1_lt")
ch2_lt         = globalPropertyf("tu154ce/systems/absu/ppn13/ch2_lt")
ch3_lt         = globalPropertyf("tu154ce/systems/absu/ppn13/ch3_lt")
ch4_lt         = globalPropertyf("tu154ce/systems/absu/ppn13/ch4_lt")

bus27_volt_left = globalPropertyf("tu154ce/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154ce/elec/bus27_volt_right") -- напряжение сети 27
test_lights = globalPropertyi("tu154ce/buttons/lamp_test_pa56")
absu_ready_lt = globalPropertyf("tu154ce/systems/absu/ppn13/absu_ready_lt")

servo_pitch_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/servo_pitch_test_signal")
servo_roll_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/servo_roll_test_signal")
servo_yaw_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/servo_yaw_test_signal")
bdg_pitch_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bdg_pitch_test_signal")
bdg_roll_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bdg_roll_test_signal")
bdg_yaw_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bdg_yaw_test_signal")

cws1_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/cws1_test_signal")
cws2_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/cws2_test_signal")
bns_p_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bns_p_test_signal")
bap_p_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bap_p_test_signal")
bap_r_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bap_r_test_signal")
vkv_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/vkv_test_signal")

vu_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/vu_test_signal")
ute_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/ute_test_signal")
stu_p_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/stu_p_test_signal")
stu_r_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/stu_r_test_signal")
at_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/at_test_signal")
bsn_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bsn_test_signal")

mgv_p_stu_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/mgv_p_stu_test_signal")
mgv_r_stu_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/mgv_r_stu_test_signal")
mgv_p_sau_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/mgv_p_sau_test_signal")
mgv_r_sau_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/mgv_r_sau_test_signal")
ks_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/ks_test_signal")
bns_r_test_signal = globalPropertyia("tu154ce/systems/absu/ppn13/bns_r_test_signal")


components = {

	absu_commands {},
	absu_panel {},
	absu_ppn13 {},
	absu_mode {},
	absu_controls {},
	absu_at {},
	absu_indicator {},
	absu_fails {},

}
