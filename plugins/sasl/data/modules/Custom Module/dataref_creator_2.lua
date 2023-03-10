createGlobalPropertyi("tu154ce/lang/hide_rus_objects", 0) -- спрятать русские объекты кабины
createGlobalPropertyi("tu154ce/lang/hide_eng_objects", 1) -- спрятать английские объекты кабины
createGlobalPropertyi("tu154ce/have_pedals", 0) -- есть педали с тормозами
createGlobalPropertyi("tu154ce/sounds_voulme", 1000) -- общая громкость звуков

createGlobalPropertyi("tu154ce/sounds/master_voulme", 1000) -- общая громкость звуков
createGlobalPropertyi("tu154ce/sounds/engines_voulme", 1000) -- громкость двигателей
createGlobalPropertyi("tu154ce/sounds/avionics_voulme", 1000) -- громкость авионики
createGlobalPropertyi("tu154ce/sounds/switches_voulme", 1000) -- громкость манипуляторов (кнопки, выключатели)
createGlobalPropertyf("tu154ce/elec/bat_volt_1", 25) -- напряжение батареи
createGlobalPropertyf("tu154ce/elec/bat_volt_2", 25) -- напряжение батареи
createGlobalPropertyf("tu154ce/elec/bat_volt_3", 25) -- напряжение батареи
createGlobalPropertyf("tu154ce/elec/bat_volt_4", 25) -- напряжение батареи
createGlobalPropertyf("tu154ce/elec/bat_amp_1", 0) -- ток батареи
createGlobalPropertyf("tu154ce/elec/bat_amp_2", 0) -- ток батареи
createGlobalPropertyf("tu154ce/elec/bat_amp_3", 0) -- ток батареи
createGlobalPropertyf("tu154ce/elec/bat_amp_4", 0) -- ток батареи
createGlobalPropertyf("tu154ce/elec/bat_cc_1", 0) -- ток заряда батареи
createGlobalPropertyf("tu154ce/elec/bat_cc_2", 0) -- ток заряда батареи
createGlobalPropertyf("tu154ce/elec/bat_cc_3", 0) -- ток заряда батареи
createGlobalPropertyf("tu154ce/elec/bat_cc_4", 0) -- ток заряда батареи
createGlobalPropertyf("tu154ce/elec/bat_therm_1", 20) -- температура батареи
createGlobalPropertyf("tu154ce/elec/bat_therm_2", 20) -- температура батареи
createGlobalPropertyf("tu154ce/elec/bat_therm_3", 20) -- температура батареи
createGlobalPropertyf("tu154ce/elec/bat_therm_4", 20) -- температура батареи
createGlobalPropertyf("tu154ce/elec/vu1_volt", 27) -- работа ВУ
createGlobalPropertyf("tu154ce/elec/vu2_volt", 27) -- работа ВУ
createGlobalPropertyf("tu154ce/elec/vu_res_volt", 27) -- работа ВУ
createGlobalPropertyf("tu154ce/elec/vu1_amp", 0) -- ток ВУ
createGlobalPropertyf("tu154ce/elec/vu2_amp", 0) -- ток ВУ
createGlobalPropertyf("tu154ce/elec/vu_res_amp", 0) -- ток ВУ
createGlobalPropertyi("tu154ce/elec/vu_res_to_L", 0) -- резервное ВУ подключено на лев сеть
createGlobalPropertyi("tu154ce/elec/vu_res_to_R", 0) -- резервное ВУ подключено на прав сеть
createGlobalPropertyf("tu154ce/elec/bus27_volt_left", 27) -- напряжение левой сети 27
createGlobalPropertyf("tu154ce/elec/bus27_amp_left", 27) -- напряжение левой сети 27
createGlobalPropertyf("tu154ce/elec/bus27_amp_right", 0) -- ток правой сети 27
createGlobalPropertyf("tu154ce/elec/bus27_volt_right", 0) -- ток правой сети 27
createGlobalPropertyi("tu154ce/elec/bus27_source_left", 1) -- источник питания левой сети. 0 - ничего. 1 - ВУ1, 2 - ВУрезерв, 3 - батареи 1 и 3, 4- бат 1, 5 - бат 2
createGlobalPropertyi("tu154ce/elec/bus27_source_right", 0) -- источник питания правой сети. 0 - ничего. 1 - ВУ2, 2 - ВУрезерв, 3 - батареи 1 и 3, 4- бат 1, 5 - бат 2
createGlobalPropertyi("tu154ce/elec/bat_is_source_1", 1) -- батарея является источником
createGlobalPropertyi("tu154ce/elec/bat_is_source_2", 1) -- батарея является источником
createGlobalPropertyi("tu154ce/elec/bat_is_source_3", 1) -- батарея является источником
createGlobalPropertyi("tu154ce/elec/bat_is_source_4", 1) -- батарея является источником
createGlobalPropertyi("tu154ce/elec/bat_connected", 0) -- подключена ли хотя бы какая-либо из батарей (для FMOD)
createGlobalPropertyi("tu154ce/elec/bus_connected", 0) -- сети соеденены
createGlobalPropertyf("tu154ce/elec/bus36_volt_left", 36) -- напряжение левой сети 36
createGlobalPropertyf("tu154ce/elec/bus36_volt_right", 36) -- напряжение правой сети 36
createGlobalPropertyf("tu154ce/elec/bus36_volt_pts250_1", 36) -- напряжение сети 36 ПТС 1
createGlobalPropertyf("tu154ce/elec/bus36_volt_pts250_2", 36) -- напряжение сети 36 ПТС 2
createGlobalPropertyf("tu154ce/elec/bus36_amp_left", 0) -- ток левой сети 36
createGlobalPropertyf("tu154ce/elec/bus36_amp_right", 0) -- ток правой сети 36
createGlobalPropertyf("tu154ce/elec/bus36_amp_pts250_1", 0) -- ток ПТС250 сети 36 1
createGlobalPropertyf("tu154ce/elec/bus36_amp_pts250_2", 0) -- ток ПТС250 сети 36 2
createGlobalPropertyi("tu154ce/elec/bus36_tr1_work", 1) -- трансформатор 1 работает
createGlobalPropertyi("tu154ce/elec/bus36_tr2_work", 1) -- трансформатор 2 работает
createGlobalPropertyi("tu154ce/elec/bus36_pts1_work", 1) -- ПТС250 1 работает
createGlobalPropertyi("tu154ce/elec/bus36_pts2_work", 0) -- ПТС250 2 работает
createGlobalPropertyi("tu154ce/elec/bus36_src_L", 0) -- источник левой сети. 0 = ТР1, 1 = ТР2
createGlobalPropertyi("tu154ce/elec/bus36_src_R", 0) -- источник правой сети. 0 = ТР2, 1 = ТР1
createGlobalPropertyi("tu154ce/elec/gen1_work", 1) -- генератор 1 работает
createGlobalPropertyi("tu154ce/elec/gen2_work", 1) -- генератор 2 работает
createGlobalPropertyi("tu154ce/elec/gen3_work", 1) -- генератор 3 работает
createGlobalPropertyi("tu154ce/elec/gen4_work", 0) -- генератор ВСУ работает
createGlobalPropertyi("tu154ce/elec/gpu_work", 0) -- РАП работает
createGlobalPropertyi("tu154ce/elec/gen1_overload", 0) -- генератор 1 перегрузка
createGlobalPropertyi("tu154ce/elec/gen2_overload", 0) -- генератор 2 перегрузка
createGlobalPropertyi("tu154ce/elec/gen3_overload", 0) -- генератор 3 перегрузка
createGlobalPropertyi("tu154ce/elec/gen4_overload", 0) -- генератор ВСУ работает
createGlobalPropertyi("tu154ce/elec/gpu_overload", 0) -- РАП перегрузка
createGlobalPropertyf("tu154ce/elec/gen1_volt", 115) -- напряжение на генераторе
createGlobalPropertyf("tu154ce/elec/gen2_volt", 115) -- напряжение на генераторе
createGlobalPropertyf("tu154ce/elec/gen3_volt", 115) -- напряжение на генераторе
createGlobalPropertyf("tu154ce/elec/gen4_volt", 115) -- напряжение на генераторе
createGlobalPropertyf("tu154ce/elec/gpu_volt", 115) -- напряжение на генераторе
createGlobalPropertyf("tu154ce/elec/bus115_1_volt", 115) -- напряжение на сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_2_volt", 115) -- напряжение на сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_3_volt", 115) -- напряжение на сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_em_1_volt", 115) -- напряжение на аварийной сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_em_2_volt", 115) -- напряжение на аварийной сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_1_amp", 0) -- ток в сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_2_amp", 0) -- ток в сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_3_amp", 0) -- ток в сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_em_1_amp", 0) -- ток в сети 115в
createGlobalPropertyf("tu154ce/elec/bus115_em_2_amp", 0) -- ток в сети 115в
createGlobalPropertyf("tu154ce/elec/gen1_amp", 0) -- нагрузка на генератор
createGlobalPropertyf("tu154ce/elec/gen2_amp", 0) -- нагрузка на генератор
createGlobalPropertyf("tu154ce/elec/gen3_amp", 0) -- нагрузка на генератор
createGlobalPropertyf("tu154ce/elec/gen4_amp", 0) -- нагрузка на генератор
createGlobalPropertyf("tu154ce/elec/gpu_amp", 0) -- нагрузка на генератор
createGlobalPropertyf("tu154ce/thermo/cockpit_temp", 20) -- температура в кабине
createGlobalPropertyf("tu154ce/thermo/cabin1_temp", 20) -- температура в салоне 1
createGlobalPropertyf("tu154ce/thermo/cabin2_temp", 20) -- температура в салоне 2
createGlobalPropertyf("tu154ce/elec/apu_start_bus", 27) -- напряжение в сети ВСУ
createGlobalPropertyf("tu154ce/elec/apu_start_cc", 0) -- ток стартера ВСУ
createGlobalPropertyi("tu154ce/elec/apu_start_seq", 0) -- идет процесс запуска ВСУ
createGlobalPropertyf("tu154ce/elec/apu_burning_fuel", 0) -- ток стартера ВСУ
createGlobalPropertyf("tu154ce/elec/cockpit_light_cc_left", 0) -- нагрузка на левую сеть от освещения в кабине
createGlobalPropertyf("tu154ce/elec/cockpit_light_cc_right", 0) -- нагрузка на правую сеть от освещения в кабине
createGlobalPropertyf("tu154ce/elec/cockpit_light_cc_115", 0) -- нагрузка на сеть 115 от освещения в кабине
createGlobalPropertyf("tu154ce/elec/ext_light_cc_left", 0) -- нагрузка на левую сеть от внешнего освещения
createGlobalPropertyf("tu154ce/elec/ext_light_cc_right", 0) -- нагрузка на левую сеть от внешнего освещения
createGlobalPropertyf("tu154ce/elec/ext_light_cc_115", 0) -- нагрузка на левую сеть от внешнего освещения
createGlobalPropertyf("tu154ce/eng/apu_n1", 0) -- обороты ВСУ
createGlobalPropertyf("tu154ce/eng/apu_oil_t", 0) -- температура масла ВСУ
createGlobalPropertyf("tu154ce/eng/apu_oil_q", 0) -- количество масла ВСУ
createGlobalPropertyf("tu154ce/eng/apu_oil_p", 0) -- давление масла ВСУ
createGlobalPropertyf("tu154ce/eng/apu_fuel_p", 0) -- давление топлива ВСУ
createGlobalPropertyf("tu154ce/eng/apu_fuel_last", 0) -- давление топлива ВСУ
createGlobalPropertyf("tu154ce/eng/apu_egt", 0) -- температура выходных газов ВСУ
createGlobalPropertyf("tu154ce/eng/apu_air_press", 0) -- давление воздуха для запуска двигателей
createGlobalPropertyf("tu154ce/eng/apu_air_doors", 0) -- положение створок для накачки воздуха
createGlobalPropertyi("tu154ce/eng/apu_system_on", 0) -- включение системы ВСУ
createGlobalPropertyf("tu154ce/eng/vibration_1", 0) -- вибрация двигателя
createGlobalPropertyf("tu154ce/eng/vibration_2", 0) -- вибрация двигателя
createGlobalPropertyf("tu154ce/eng/vibration_3", 0) -- вибрация двигателя
createGlobalPropertyi("tu154ce/fuel/eng_fuel_press_1", 1) -- топливо может быть подано в двигатель. без учета стоп-кранов
createGlobalPropertyi("tu154ce/fuel/eng_fuel_press_2", 1) -- топливо может быть подано в двигатель. без учета стоп-кранов
createGlobalPropertyi("tu154ce/fuel/eng_fuel_press_3", 1) -- топливо может быть подано в двигатель. без учета стоп-кранов
createGlobalPropertyi("tu154ce/fuel/pump_tank2_left_work", 1) -- насосы бака 2
createGlobalPropertyi("tu154ce/fuel/pump_tank2_right_work", 1) -- насосы бака 2
createGlobalPropertyi("tu154ce/fuel/pump_tank3_left_work", 1) -- насосы бака 3
createGlobalPropertyi("tu154ce/fuel/pump_tank3_right_work", 1) -- насосы бака 3
createGlobalPropertyi("tu154ce/fuel/pump_tank4_work", 1) -- насосы бака 4
createGlobalPropertyi("tu154ce/fuel/pump_tank1_1_work", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/fuel/pump_tank1_2_work", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/fuel/pump_tank1_3_work", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/fuel/pump_tank1_4_work", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/fuel/reserv_trans", 0) -- резервная перекачка включена
createGlobalPropertyi("tu154ce/fuel/auto_tanks_turn", 0) -- рабочие очередные баки. 0, 1 - не работает, 2, 3, 4
createGlobalPropertyi("tu154ce/fuel/auto_tank_level_2", 0) -- выравнивание в баках 2. -1 = L, 0 = none, +1 = R
createGlobalPropertyi("tu154ce/fuel/auto_tank_level_3", 0) -- выравнивание в баках 3. -1 = L, 0 = none, +1 = R
createGlobalPropertyf("tu154ce/fuel/fire_vlv_open_1", 1) -- пожарный кран открыт
createGlobalPropertyf("tu154ce/fuel/fire_vlv_open_2", 1) -- пожарный кран открыт
createGlobalPropertyf("tu154ce/fuel/fire_vlv_open_3", 1) -- пожарный кран открыт
createGlobalPropertyf("tu154ce/elec/fuel_pumps_115_1_cc", 0) -- нагрузка на сеть 1 от топливных насосов
createGlobalPropertyf("tu154ce/elec/fuel_pumps_115_3_cc", 0) -- нагрузка на сеть 3 от топливных насосов
createGlobalPropertyf("tu154ce/elec/fuel_pumps_27_cc", 0) -- нагрузка на сеть 27в от топливных насосов
createGlobalPropertyf("tu154ce/hydro/gs_press_1", 0) -- давление в ГС1
createGlobalPropertyf("tu154ce/hydro/gs_press_2", 0) -- давление в ГС2
createGlobalPropertyf("tu154ce/hydro/gs_press_3", 0) -- давление в ГС3
createGlobalPropertyf("tu154ce/hydro/gs_press_4", 0) -- давление в аварийной тормозной системе
createGlobalPropertyf("tu154ce/hydro/gs_qty_1", 55) -- остаток масла в системе
createGlobalPropertyf("tu154ce/hydro/gs_qty_2", 55) -- остаток масла в системе
createGlobalPropertyf("tu154ce/hydro/gs_qty_3", 49) -- остаток масла в системе
createGlobalPropertyf("tu154ce/hydro/gs_qty_12_show", 48) -- остаток масла в гидробаке
createGlobalPropertyf("tu154ce/hydro/gs_qty_3_show", 24) -- остаток масла в гидробаке
createGlobalPropertyf("tu154ce/hydro/gs_pump_2_cc", 0) -- ток насосной станции
createGlobalPropertyf("tu154ce/hydro/gs_pump_3_cc", 0) -- ток насосной станции
createGlobalPropertyf("tu154ce/hydro/gs_bak_qty_1", 17.17) -- остаток масла в баке
createGlobalPropertyf("tu154ce/hydro/gs_bak_qty_2", 17.17) -- остаток масла в баке
createGlobalPropertyf("tu154ce/hydro/gs_bak_qty_3", 23.8) -- остаток масла в баке
createGlobalPropertyf("tu154ce/bleed/air_usage_L", 0) -- расход воздуха лев
createGlobalPropertyf("tu154ce/bleed/air_usage_R", 0) -- расход воздуха лев
createGlobalPropertyf("tu154ce/bleed/eng_airvalve_1", 1) -- открытие отбора воздуха от двигателя
createGlobalPropertyf("tu154ce/bleed/eng_airvalve_2", 1) -- открытие отбора воздуха от двигателя
createGlobalPropertyf("tu154ce/bleed/eng_airvalve_3", 1) -- открытие отбора воздуха от двигателя
createGlobalPropertyf("tu154ce/bleed/hot_tube_t", 100) -- температура горячего воздуха в трубопроводе
createGlobalPropertyf("tu154ce/bleed/door_heat_tube_t", 80) -- температура в трубопроводе обогрева дверей
createGlobalPropertyf("tu154ce/bleed/cockpit_tube_t", 30) -- температура в трубопроводе в кабину
createGlobalPropertyf("tu154ce/bleed/cabin1_tube_t", 30) -- температура в трубопроводе в салон 1
createGlobalPropertyf("tu154ce/bleed/cabin2_tube_t", 30) -- температура в трубопроводе в салон 2
createGlobalPropertyf("tu154ce/bleed/cold_tube1_t", 30) -- температура в трубопроводе1
createGlobalPropertyf("tu154ce/bleed/cold_tube2_t", 30) -- температура в трубопроводе2
createGlobalPropertyf("tu154ce/bleed/cockpit_temp", 20) -- температура в кабине
createGlobalPropertyf("tu154ce/bleed/cabin_1_temp", 20) -- температура в салоне 1
createGlobalPropertyf("tu154ce/bleed/cabin_2_temp", 20) -- температура в салоне 2
createGlobalPropertyf("tu154ce/start/starter_pressure", 0) -- двление в системе запуска
createGlobalPropertyi("tu154ce/start/apd_working_1", 0) -- работа системы АПД
createGlobalPropertyi("tu154ce/start/apd_working_2", 0) -- работа системы АПД
createGlobalPropertyi("tu154ce/start/apd_working_3", 0) -- работа системы АПД
createGlobalPropertyi("tu154ce/start/start_sys_work", 0) -- работа системы запуска
createGlobalPropertyi("tu154ce/start/fuel_in_1", 1) -- подача топлива от системы запуска
createGlobalPropertyi("tu154ce/start/fuel_in_2", 1) -- подача топлива от системы запуска
createGlobalPropertyi("tu154ce/start/fuel_in_3", 1) -- подача топлива от системы запуска
createGlobalPropertyf("tu154ce/trimmers/int_pitch_trim", 0) -- положение триммера руля высоты
createGlobalPropertyf("tu154ce/trimmers/int_roll_trim", 0) -- положение триммера элеронов
createGlobalPropertyf("tu154ce/trimmers/int_yaw_trim", 0) -- положение триммера руля направления
createGlobalPropertyf("tu154ce/controls/control_force_pos", 0) -- положение загружателя РВ. 0 - выклчюен, 1 - подключен
createGlobalPropertyf("tu154ce/controls/control_force_pos_rud", 0) -- положение загружателя РН. 0 - выклчюен, 1 - подключен
createGlobalPropertyi("tu154ce/fire/ext_used_1", 0) -- огнетушитель использован
createGlobalPropertyi("tu154ce/fire/ext_used_2", 0) -- огнетушитель использован
createGlobalPropertyi("tu154ce/fire/ext_used_3", 0) -- огнетушитель использован
createGlobalPropertyi("tu154ce/fire/ng_used", 0) -- НГ использован
createGlobalPropertyi("tu154ce/fire/valve_open_1", 0) -- кран тушения двиг 1
createGlobalPropertyi("tu154ce/fire/valve_open_2", 0) -- кран тушения двиг 2
createGlobalPropertyi("tu154ce/fire/valve_open_3", 0) -- кран тушения двиг 3
createGlobalPropertyi("tu154ce/fire/valve_open_4", 0) -- кран тушения ВСУ
createGlobalPropertyi("tu154ce/fire/fire_siren", 0) -- работа пожарной сирены
createGlobalPropertyi("tu154ce/fire/engine_fire_state_1", 0) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("tu154ce/fire/engine_fire_state_2", 0) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("tu154ce/fire/engine_fire_state_3", 0) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("tu154ce/fire/engine_fire_state_4", 0) -- состояние ВСУ. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("tu154ce/fire/engine_fuel_cut_1", 0) -- топливо перекрыто
createGlobalPropertyi("tu154ce/fire/engine_fuel_cut_2", 0) -- топливо перекрыто
createGlobalPropertyi("tu154ce/fire/engine_fuel_cut_3", 0) -- топливо перекрыто
createGlobalPropertyi("tu154ce/fire/fire_detected", 0) -- обнаружен пожар
createGlobalPropertyf("tu154ce/fire/fire_sys_cc", 0) -- потребление тока системой
createGlobalPropertyf("tu154ce/antiice/wing_heat_t", 15) -- температура обогрева крыла
createGlobalPropertyf("tu154ce/antiice/stab_heat_t", 15) -- температура обогрева стабилизатора
createGlobalPropertyi("tu154ce/antiice/ice_detected", 0) -- обнаружен лед
createGlobalPropertyi("tu154ce/antiice/ice_detect_ok", 0) -- система СОИ работает
createGlobalPropertyi("tu154ce/antiice/wing_heating", 1) -- работает обогрев крыла
createGlobalPropertyi("tu154ce/antiice/slat_heating", 1) -- работает обогрев крыла
createGlobalPropertyf("tu154ce/antiice/ai_27_L_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/antiice/ai_27_R_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/antiice/ai_115_1_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/antiice/ai_115_2_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/antiice/ai_115_3_cc", 0) -- нагрузка на сеть
createGlobalPropertyi("tu154ce/antiice/eng_heat_open_1", 0) -- открыта заслонка обогрева двигателя
createGlobalPropertyi("tu154ce/antiice/eng_heat_open_2", 0) -- открыта заслонка обогрева двигателя
createGlobalPropertyi("tu154ce/antiice/eng_heat_open_3", 0) -- открыта заслонка обогрева двигателя
createGlobalPropertyi("tu154ce/msrp/msrp_power", 1) -- питание МСРП для индикатора часов
createGlobalPropertyi("tu154ce/msrp/msrp_recording", 1) -- питание МСРП для индикатора часов
createGlobalPropertyf("tu154ce/msrp/msrp_27_L_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/msrp/msrp_27_R_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/control/ctr_27_L_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/control/ctr_27_R_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/control/ctr_115_1_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/control/ctr_115_2_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/control/ctr_115_3_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/control/ctr_36L_cc", 0) -- нагрузка на сеть
createGlobalPropertyf("tu154ce/control/ctr_36R_cc", 0) -- нагрузка на сеть
createGlobalPropertyi("tu154ce/auasp/alpha_critical", 0) -- сигнал от АУАСП по критическом УА
createGlobalPropertyi("tu154ce/auasp/gforce_critical", 0) -- сигнал от АУАСП по критической перегрузке
createGlobalPropertyf("tu154ce/gyro/mgv_contr_roll", 0) -- крен контрольного гироскопа
createGlobalPropertyf("tu154ce/gyro/mgv_contr_pitch", 0) -- тангаж контрольного гироскопа
createGlobalPropertyi("tu154ce/gyro/mgv_contr_flag", 0) -- флаг отказа МГВ контр
createGlobalPropertyi("tu154ce/bkk/left_roll_big", 0) -- сигнал с БКК - крен лев велик
createGlobalPropertyi("tu154ce/bkk/right_roll_big", 0) -- сигнал с БКК - крен прав велик
createGlobalPropertyi("tu154ce/bkk/mgv_contr_fail", 0) -- сигнал с БКК - отказ МГВ контр
createGlobalPropertyi("tu154ce/bkk/no_contr_ag", 0) -- сигнал с БКК - нет контроля АГ
createGlobalPropertyi("tu154ce/bkk/pkp_fail_left", 0) -- сигнал с БКК - отказ левого ПКП
createGlobalPropertyi("tu154ce/bkk/pkp_fail_right", 0) -- сигнал с БКК - отказ левого ПКП
createGlobalPropertyf("tu154ce/bkk/pkp_roll_left", 0) -- крен на левом МГВ
createGlobalPropertyf("tu154ce/bkk/pkp_roll_right", 0) -- крен на правом МГВ
createGlobalPropertyf("tu154ce/bkk/pkp_left_power_cc", 0) -- отребление тока ПКП
createGlobalPropertyf("tu154ce/bkk/pkp_right_power_cc", 0) -- отребление тока ПКП
createGlobalPropertyf("tu154ce/bkk/mgv_ctr_power_cc", 0) -- отребление тока ПКП
createGlobalPropertyf("tu154ce/gyro/ahz_pitch_int_L", 0) -- тангаж на левом гироскопе
createGlobalPropertyf("tu154ce/gyro/ahz_pitch_int_R", 0) -- тангаж на правом гироскопе
createGlobalPropertyi("tu154ce/tcas/range_set", 3) -- дистанция на дисплее. 0 = 3, 1 = 5, 2 = 10, 3 = 15 nm
createGlobalPropertyi("tu154ce/tcas/mode_set", 4) -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA
createGlobalPropertyi("tu154ce/tcas/screen_mode", 0) -- режим отображения на экране.  -1 = ошибка, 0 = код ответчика, 1 = above mode, 2 = FL mode, 3 = FLT ID, 4 = PLN BIT, 5 = test, 6 = range set, 11-14 = code set, 100 = no power
createGlobalPropertyi("tu154ce/tcas/level_mode", 0) -- 1 = above, 0 = normal, -1 = below
createGlobalPropertyi("tu154ce/tcas/fl_mode", 0) -- fl mode. 0 = absolute, 1 = relative
createGlobalPropertyi("tu154ce/tcas/flt_id", 0) -- flight ID. 0 = cover, 1 = show / change code
createGlobalPropertyi("tu154ce/tcas/ra_scale_set", 0) -- RA mode scale set. 0 = none.
createGlobalPropertyi("tu154ce/tcas/traffic_det", 0) -- появление желтых или красных меток
createGlobalPropertyf("tu154ce/svs/altitude", 0) -- высота, выдаваемая СВС
createGlobalPropertyf("tu154ce/svs/machno", 0) -- скорость маха, выдаваемая СВС
createGlobalPropertyf("tu154ce/svs/true_airspeed", 0) -- TAS, выдаваемая СВС
createGlobalPropertyf("tu154ce/svs/power_27cc", 0) -- ток, потребляемый СВС
createGlobalPropertyf("tu154ce/svs/power_36cc", 0) -- ток, потребляемый СВС
createGlobalPropertyf("tu154ce/svs/power_115cc", 0) -- ток, потребляемый СВС
createGlobalPropertyf("tu154ce/elec/auasp_pow27_cc", 0) -- ток, потребляемый АУАСП
createGlobalPropertyf("tu154ce/elec/auasp_pow115_cc", 0) -- ток, потребляемый АУАСП
createGlobalPropertyf("tu154ce/elec/rv5_left_cc", 0) -- ток, потребляемый RV-5
createGlobalPropertyf("tu154ce/elec/rv5_right_cc", 0) -- ток, потребляемый RV-5
createGlobalPropertyf("tu154ce/misc/rv5_alt_left", 0) -- высота на левом высотомере
createGlobalPropertyf("tu154ce/misc/rv5_alt_right", 0) -- высота на правом высотомере
createGlobalPropertyi("tu154ce/misc/rv5_dh_signal_left", 0) -- сигнал DH
createGlobalPropertyi("tu154ce/misc/rv5_dh_signal_right", 0) -- сигнал DH
createGlobalPropertyi("tu154ce/taws/mode_set", 1) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения
createGlobalPropertyi("tu154ce/taws/distance_set", 0) -- дистанция для рисования карты, км. 0 = 10, 1 = 20, 2 = 40, 3 = 80, 4 = 160, 5 = 320, 6 = 640
createGlobalPropertyf("tu154ce/taws/taws_cc", 0) -- потребление тока системой СРПБЗ
createGlobalPropertyi("tu154ce/taws/taws_message", 0) -- сообщения СРПБЗ. 0 - none, 1 - Pull UP, 2 - alt callout, 3 - Pull Up, 4 - Terrain, 5 - Terrain Ahead, 6 - Too low, Terrain, 7 - Alt collout, 8 - Too low, Gear, 9 - Too low, Flaps, 10 - Check altitude, 11 - Sink Rate, 12 - Don't sink, 13 - Glideslope
createGlobalPropertyi("tu154ce/taws/taws_english", 0) -- язык системы. 0 - русский, 1 - английский
createGlobalPropertyf("tu154ce/taws/gs_msg_int", 5) -- интервал сигнала ГЛИССАДА
createGlobalPropertyf("tu154ce/taws/gs_msg_vol", 1) -- громкость сигнала ГЛИССАДА
createGlobalPropertyi("tu154ce/taws/taws_alt_left", 0) -- сравни высоту на левом высотомере
createGlobalPropertyi("tu154ce/taws/taws_alt_right", 0) -- сравни высоту на правом высотомере
createGlobalPropertyf("tu154ce/tks/course_mk_1", 0) -- курс на MK5
createGlobalPropertyf("tu154ce/tks/course_mk_2", 0) -- курс на MK5
createGlobalPropertyf("tu154ce/tks/course_ga_1", 0) -- курс на ГА1
createGlobalPropertyf("tu154ce/tks/course_ga_2", 0) -- курс на ГА1
createGlobalPropertyf("tu154ce/tks/course_bgmk_1", 0) -- курс на БГМК1
createGlobalPropertyf("tu154ce/tks/course_bgmk_2", 0) -- курс на БГМК1
createGlobalPropertyf("tu154ce/tks/course_gpk", 0) -- результирующий курс ТКС - ГПК
createGlobalPropertyf("tu154ce/tks/course_gmk", 0) -- результирующий курс ТКС - ГМК
createGlobalPropertyi("tu154ce/tks/fail_left", 0) -- флаг отказа
createGlobalPropertyi("tu154ce/tks/fail_right", 0) -- флаг отказа
createGlobalPropertyf("tu154ce/nvu/diss_wind_course", 0) -- курс ветра по ДИСС
createGlobalPropertyf("tu154ce/nvu/diss_wind_spd", 0) -- скорость ветра по ДИСС
createGlobalPropertyf("tu154ce/nvu/diss_groundspeed", 0) -- путевая скорость по ДИСС
createGlobalPropertyf("tu154ce/nvu/diss_slip_angle", 0) -- угол сноса по ДИСС
createGlobalPropertyi("tu154ce/nvu/diss_mode", 1) -- режим ДИСС. 0 - выкл, 1 - работа, 2 - память
createGlobalPropertyf("tu154ce/rsbn/distance", 0) -- геометрическая дистанция от маяка
createGlobalPropertyf("tu154ce/rsbn/azimuth", 0) -- азимут от маяка
createGlobalPropertyf("tu154ce/radio/adf_bear_1", 0) -- направление на маяк ADF
createGlobalPropertyf("tu154ce/radio/adf_bear_2", 0) -- направление на маяк ADF
createGlobalPropertyf("tu154ce/radio/vor_bear_1", 0) -- направление на маяк VOR
createGlobalPropertyf("tu154ce/radio/vor_bear_2", 0) -- направление на маяк VOR
createGlobalPropertyf("tu154ce/radio/vor_dme_1", 0) -- дистанция к VOR
createGlobalPropertyf("tu154ce/radio/vor_dme_2", 0) -- дистанция к VOR
createGlobalPropertyf("tu154ce/radio/nav1_cs", 0) -- отклонение курсовой планки
createGlobalPropertyf("tu154ce/radio/nav1_gs", 0) -- отклонение глиссадной планки
createGlobalPropertyf("tu154ce/radio/nav2_cs", 0) -- отклонение курсовой планки
createGlobalPropertyf("tu154ce/radio/nav2_gs", 0) -- отклонение глиссадной планки
createGlobalPropertyi("tu154ce/radio/nav1_cs_flag", 0) -- курсовой флаг
createGlobalPropertyi("tu154ce/radio/nav2_cs_flag", 0) -- курсовой флаг
createGlobalPropertyi("tu154ce/radio/nav1_gs_flag", 0) -- глиссадный флаг
createGlobalPropertyi("tu154ce/radio/nav2_gs_flag", 0) -- глиссадный флаг
createGlobalPropertyf("tu154ce/nvu/current_Z1", 0) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_S1", 0) -- S1
createGlobalPropertyf("tu154ce/nvu/next_Z1", 0) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_S1", 0) -- S1
createGlobalPropertyf("tu154ce/nvu/current_Z2", 0) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_S2", 0) -- S2
createGlobalPropertyf("tu154ce/nvu/next_Z2", 0) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_S2", 0) -- S2
createGlobalPropertyf("tu154ce/nvu/zpu1", 0) -- Z2
createGlobalPropertyf("tu154ce/nvu/zpu2", 0) -- S2
createGlobalPropertyi("tu154ce/nvu/nvu_mode", 1) -- режим НВУ. 0 = выкл, 1 = готов, 2 = счисление, 3 = коррекция
createGlobalPropertyi("tu154ce/nvu/nvu_active", 1) -- активный комплект НВУ. 1 - 2
createGlobalPropertyf("tu154ce/nvu/nvu_res_course", 0) -- курс полета по НВУ
createGlobalPropertyf("tu154ce/nvu/nvu_res_z", 0) -- смещение от курса полета НВУ
createGlobalPropertyi("tu154ce/nvu/nvu_changing_ort", 0) -- смена ЧО
createGlobalPropertyi("tu154ce/nvu/nvu_fail", 0) -- отказ или недостаточно систем для НВУ
createGlobalPropertyi("tu154ce/absu/roll_main_mode", 1) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
createGlobalPropertyi("tu154ce/absu/pitch_main_mode", 1) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб
createGlobalPropertyi("tu154ce/absu/roll_sub_mode", 0) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
createGlobalPropertyi("tu154ce/absu/pitch_sub_mode", 0) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход
createGlobalPropertyf("tu154ce/absu/contr_pitch", 0) -- отклонение штока РА56 по тангажу
createGlobalPropertyf("tu154ce/absu/contr_roll", 0) -- отклонение штока РА56 по крену
createGlobalPropertyf("tu154ce/absu/contr_yaw", 0) -- отклонение штока РА56 по направлению
createGlobalPropertyf("tu154ce/bkk/bkk_pitch", 0) -- результирующий тангаж от БКК
createGlobalPropertyf("tu154ce/bkk/bkk_roll", 0) -- результирующий крен от БКК
createGlobalPropertyi("tu154ce/absu/absu_pitch_trimm", 0) -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз
createGlobalPropertyf("tu154ce/absu/rud_1_spd", 0) -- скорость изменения положения рычага
createGlobalPropertyf("tu154ce/absu/rud_2_spd", 0) -- скорость изменения положения рычага
createGlobalPropertyf("tu154ce/absu/rud_3_spd", 0) -- скорость изменения положения рычага
createGlobalPropertyf("tu154ce/absu/absu_roll_ind", 0) -- индикация директора крена
createGlobalPropertyf("tu154ce/absu/absu_pitch_ind", 0) -- индикация директора тангажа
createGlobalPropertyi("tu154ce/absu/absu_roll_flag", 1) -- флаг директора крена
createGlobalPropertyi("tu154ce/absu/absu_pitch_flag", 1) -- флаг директора тангажа
createGlobalPropertyi("tu154ce/absu/absu_pnp_mode_1", 0) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
createGlobalPropertyi("tu154ce/absu/absu_pnp_mode_2", 0) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
createGlobalPropertyi("tu154ce/absu/stu_mode", 0) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход
createGlobalPropertyi("tu154ce/absu/toga_comm", 0) -- режим УХОД
createGlobalPropertyf("tu154ce/absu_at_dif_left", 0) -- разность скоростей для индикации на ПКП
createGlobalPropertyf("tu154ce/absu_at_dif_right", 0) -- разность скоростей для индикации на ПКП
createGlobalPropertyi("tu154ce/absu_course_out", 0) -- flying outside the course limits
createGlobalPropertyi("tu154ce/absu_gs_out", 0) -- flying outside the glideslope limits
createGlobalPropertyf("tu154ce/absu_power_cc", 0) -- потребление тока АБСУ
createGlobalPropertyf("tu154ce/absu_at_power_cc", 0) -- потребление тока АБСУ
createGlobalPropertyi("tu154ce/absu_use_second_nav", 0) -- АБСУ перешло на второй КурсМП
createGlobalPropertyi("tu154ce/absu/damp_roll_lamp", 0) -- сигнал на лампочку. отказ демпера крена
createGlobalPropertyi("tu154ce/absu/damp_pitch_lamp", 0) -- сигнал на лампочку. отказ демпера тангажа
createGlobalPropertyi("tu154ce/absu/damp_yaw_lamp", 0) -- сигнал на лампочку. отказ демпера курса
createGlobalPropertyi("tu154ce/absu/roll_contr_lamp", 0) -- сигнал на лампочку. отказ управления крена
createGlobalPropertyi("tu154ce/absu/pitch_contr_lamp", 0) -- сигнал на лампочку. отказ управления тангажа
createGlobalPropertyi("tu154ce/absu/man_roll_lamp", 0) -- сигнал на лампочку. управляй креном
createGlobalPropertyi("tu154ce/absu/man_pitch_lamp", 0) -- сигнал на лампочку. управляй тангажом
createGlobalPropertyi("tu154ce/absu/man_toga_lamp", 0) -- сигнал на лампочку. управляй уходом
createGlobalPropertyi("tu154ce/absu/triangle_lamp_signal", 0) -- сигнал на лампочку. треугольник
createGlobalPropertyi("tu154ce/absu/absu_fail_signal", 0) -- сигнал на сирену
createGlobalPropertyf("tu154ce/kln90/kln_course", 0) -- курс ЛЗП от КЛН
createGlobalPropertyf("tu154ce/kln90/kln_dev", 0) -- отклонение от ЛЗП, мили
createGlobalPropertyi("tu154ce/kln90/kln_flag", 0) -- флаг курса КЛН. 0 = флага нет, 1 = флаг
createGlobalPropertyf("tu154ce/radio/vhf1_cc", 0) -- потребление тока радиостанцией
createGlobalPropertyf("tu154ce/radio/vhf2_cc", 0) -- потребление тока радиостанцией
createGlobalPropertyf("tu154ce/tks/km5_1_cc", 0) -- потребление тока КМ5
createGlobalPropertyf("tu154ce/tks/km5_2_cc", 0) -- потребление тока КМ5
createGlobalPropertyf("tu154ce/tks/ga_1_cc", 0) -- потребление тока ГА
createGlobalPropertyf("tu154ce/tks/ga_2_cc", 0) -- потребление тока ГА
createGlobalPropertyf("tu154ce/tks/ga_heat_cc", 0) -- потребление тока подогрева ГА
createGlobalPropertyf("tu154ce/tks/bgmk_1_cc", 0) -- потребление тока БГМК
createGlobalPropertyf("tu154ce/tks/bgmk_2_cc", 0) -- потребление тока БГМК
createGlobalPropertyf("tu154ce/tks/ush_cc", 0) -- потребление тока УШ
createGlobalPropertyf("tu154ce/ahz/agr_cc", 0) -- потребление тока АГР
createGlobalPropertyf("tu154ce/nvu/nvu_cc", 0) -- потребление тока НВУ
createGlobalPropertyf("tu154ce/radio/ark15_L_cc", 0) -- потребление тока АРК
createGlobalPropertyf("tu154ce/radio/ark15_R_cc", 0) -- потребление тока АРК
createGlobalPropertyf("tu154ce/nvu/diss_cc", 0) -- потребление от ДИСС
createGlobalPropertyf("tu154ce/radio/nav1_pow_cc", 0) -- потребление тока от КурсМП
createGlobalPropertyf("tu154ce/radio/nav2_pow_cc", 0) -- потребление тока от КурсМП
createGlobalPropertyf("tu154ce/radio/radar_cc", 0) -- потребление тока от РЛС Гроза
createGlobalPropertyf("tu154ce/radio/rsbn_cc", 0) -- потребление тока от РСБН
createGlobalPropertyi("tu154ce/payload/crew_num", 3) -- экипаж в кабине
createGlobalPropertyi("tu154ce/payload/zone_1", 9) -- пассажиры
createGlobalPropertyi("tu154ce/payload/zone_2", 22) -- пассажиры
createGlobalPropertyi("tu154ce/payload/cabin_num", 4) -- экипаж в салоне
createGlobalPropertyi("tu154ce/payload/zone_4", 24) -- пассажиры
createGlobalPropertyi("tu154ce/payload/zone_5", 21) -- пассажиры
createGlobalPropertyi("tu154ce/payload/zone_6", 7) -- пассажиры
createGlobalPropertyi("tu154ce/payload/cargo_1", 2500) -- багаж 1
createGlobalPropertyi("tu154ce/payload/cargo_2", 1200) -- багаж 2
createGlobalPropertyi("tu154ce/payload/kitchens", 300) -- загрузка кухонь
createGlobalPropertyi("tu154ce/payload/various", 50) -- прочее
createGlobalPropertyi("tu154ce/payload/main_dist", 1000) -- дистанция до основного АП
createGlobalPropertyi("tu154ce/payload/alt_dist", 500) -- дистанция до запасного АП
createGlobalPropertyi("tu154ce/payload/main_fl", 380) -- эшелон до основного
createGlobalPropertyi("tu154ce/payload/alt_fl", 320) -- эшелон до запасного
createGlobalPropertyi("tu154ce/payload/nav_fuel", 2500) -- навигацонный запас
createGlobalPropertyi("tu154ce/payload/taxi_fuel", 100) -- топливо на руление
createGlobalPropertyi("tu154ce/payload/tank_1", 3300) -- топливо в баке
createGlobalPropertyi("tu154ce/payload/tank_4", 0) -- топливо в баке
createGlobalPropertyi("tu154ce/payload/tank_2L", 1500) -- топливо в баке
createGlobalPropertyi("tu154ce/payload/tank_2R", 1500) -- топливо в баке
createGlobalPropertyi("tu154ce/payload/tank_3L", 3225) -- топливо в баке
createGlobalPropertyi("tu154ce/payload/tank_3R", 3225) -- топливо в баке
createGlobalPropertyi("tu154ce/payload/load_fuel_btn", 0) -- кнопка загрузки топлива
createGlobalPropertyi("tu154ce/payload/load_fast_btn", 0) -- кнопка загрузки быстро
createGlobalPropertyi("tu154ce/payload/load_slow_btn", 0) -- кнопка загрузки медленно
createGlobalPropertyf("tu154ce/payload/paylod_set", 0) -- Нужно загрузить
createGlobalPropertyf("tu154ce/payload/cg_set", 0) -- Нужно загрузить
createGlobalPropertyi("tu154ce/sounds/taws_eng_phrase", 0) -- номер фразы СРПБЗ на английском
createGlobalPropertyi("tu154ce/sounds/taws_rus_phrase", 0) -- номер фразы СРПБЗ на русском
createGlobalPropertyi("tu154ce/sounds/enable_crew_vo", 1) -- включены фразы екипажа
createGlobalPropertyi("tu154ce/alarm/main_gear_flaps", 0) -- не взлетное положение закрылков или не выпущенны шасси
createGlobalPropertyi("tu154ce/alarm/main_pressure", 0) -- разгерметизация или перенаддув кабины
createGlobalPropertyi("tu154ce/alarm/speaker_auasp", 0) -- предельный угол атаки или перегрузки
createGlobalPropertyi("tu154ce/alarm/speaker_fuel", 0) -- остаток топлива 2500 в баке 1
createGlobalPropertyi("tu154ce/alarm/speaker_speed", 0) -- предельная скорость
createGlobalPropertyi("tu154ce/alarm/speaker_absu", 0) -- отключение режимов или отказы АБСУ
createGlobalPropertyi("tu154ce/checklist/side", 0) -- какую сторону показывать. 0 - пред взлетом, 1 - перед заходом
createGlobalPropertyi("tu154ce/checklist/fishka_1", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_2", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_3", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_4", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_5", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_6", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_7", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_8", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_9", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_10", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_11", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_12", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_13", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_14", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_15", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_16", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_17", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_18", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_19", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/checklist/fishka_20", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("tu154ce/panels/show_load_panel", 0) -- показать панель загрузки
createGlobalPropertyi("tu154ce/panels/show_absu_panel", 0) -- показать панель АБСУ
createGlobalPropertyi("tu154ce/panels/show_ohvd_panel", 0) -- показать панель верхней панели
createGlobalPropertyi("tu154ce/panels/show_nvu_panel", 0) -- показать панель НВУ
createGlobalPropertyi("tu154ce/panels/show_checklist_panel", 0) -- показать панель ККП
createGlobalPropertyi("tu154ce/panels/show_ground_panel", 0) -- показать панель наземного обслуживания
createGlobalPropertyi("tu154ce/panels/show_phone", 0) -- показать панель телефона
createGlobalPropertyi("tu154ce/panels/show_cam", 0) -- показать панель камеры
createGlobalPropertyi("tu154ce/panels/show_palette", 0) -- показать палетку
createGlobalPropertyi("tu154ce/panels/show_fail_panel", 0) -- показать палетку отказов
createGlobalPropertyf("tu154ce/misc/cg_pos_actual", 0) -- актуальное положение CG
createGlobalPropertyf("tu154ce/misc/weight_actual", 0) -- актуальная масса
createGlobalPropertyf("tu154ce/anim/rain_glass_1", 0) -- светимость маски с дождем на стекле
createGlobalPropertyf("tu154ce/anim/rain_glass_2", 0) -- светимость маски с дождем на стекле
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_1_L", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_2_L", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_3_L", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_4_L", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_5_L", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_1_L", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_2_L", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_3_L", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_4_L", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_5_L", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_1_R", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_2_R", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_3_R", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_4_R", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("tu154ce/anim/rain_glass_1_w_5_R", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_1_R", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_2_R", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_3_R", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_4_R", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("tu154ce/anim/rain_glass_2_w_5_R", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("tu154ce/anim/net_rain_ratio", 0) -- актуальное количество осадков на стеклах
createGlobalPropertyf("tu154ce/misc/water_level", 0) -- уровень воды
createGlobalPropertyf("tu154ce/gauges/alt/vbe_flightlevel_left", 0) -- установленная высота на ВБЭ
createGlobalPropertyf("tu154ce/gauges/alt/vbe_flightlevel_right", 0) -- установленная высота на ВБЭ
createGlobalPropertyf("tu154ce/brakes/int_brakes_L", 0) -- реальное положение тормоза
createGlobalPropertyf("tu154ce/brakes/int_brakes_R", 0) -- реальное положение тормоза
createGlobalPropertyf("tu154ce/gauges/vvi_left", 0) -- показания вариометра
createGlobalPropertyf("tu154ce/gauges/vvi_right", 0) -- показания вариометра
createGlobalPropertyi("tu154ce/SC/control_thro_other", 0) -- другой человек упраляет РУД-ами
createGlobalPropertyf("tu154ce/SC/yoke_pitch_ratio", 0) -- управление тангажом
createGlobalPropertyf("tu154ce/SC/yoke_roll_ratio", 0) -- управление креном
createGlobalPropertyf("tu154ce/SC/yoke_heading_ratio", 0) -- управление педалями
createGlobalPropertyf("tu154ce/SC/engine/ENGN_thro_0", 0) -- управление РУД
createGlobalPropertyf("tu154ce/SC/engine/ENGN_thro_1", 0) -- управление РУД
createGlobalPropertyf("tu154ce/SC/engine/ENGN_thro_2", 0) -- управление РУД
createGlobalPropertyf("tu154ce/SC/engine/ENGN_propmode_0", 0) -- управление реверсом
createGlobalPropertyf("tu154ce/SC/engine/ENGN_propmode_2", 0) -- управление реверсом
createGlobalPropertyf("tu154ce/SC/gear/tire_steer_command_deg", 0) -- управление передней ногой
createGlobalPropertyf("tu154ce/SC/controls/l_brake_add", 0) -- управление тормозами
createGlobalPropertyf("tu154ce/SC/controls/r_brake_add", 0) -- управление тормозами
createGlobalPropertyf("tu154ce/SC/brakes/int_brakes_L", 0) -- управление тормозами
createGlobalPropertyf("tu154ce/SC/brakes/int_brakes_R", 0) -- управление тормозами
createGlobalPropertyf("tu154ce/SC/controls/parkbrake", 0) -- управление тормозами
createGlobalPropertyi("tu154ce/speeds/v1_15", 0) -- скорость V1
createGlobalPropertyi("tu154ce/speeds/vr_15", 0) -- скорость Vr
createGlobalPropertyi("tu154ce/speeds/v2_15", 0) -- скорость V2
createGlobalPropertyi("tu154ce/speeds/v1_28", 0) -- скорость V1
createGlobalPropertyi("tu154ce/speeds/vr_28", 0) -- скорость Vr
createGlobalPropertyi("tu154ce/speeds/v2_28", 0) -- скорость V2
createGlobalPropertyi("tu154ce/checklist/checklist_selected", 0) -- выбор чеклиста.
createGlobalPropertyi("tu154ce/checklist/to_ready", 0) -- лампа горит
createGlobalPropertyi("tu154ce/sound/reset_crew", 0) -- сброс фраз команды
createGlobalPropertyf("tu154ce/SC/GNS430_dtk", 0) -- курс на ГНС
createGlobalPropertyf("tu154ce/SC/GNS430_dev", 0) -- отклонение от курса на ГНС
createGlobalPropertyi("tu154ce/SC/GNS430_flag", 0) -- флаг на ГНС
