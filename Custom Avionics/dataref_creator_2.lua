createGlobalPropertyi("sim/custom/lang/hide_rus_objects", 0) -- спрятать русские объекты кабины
createGlobalPropertyi("sim/custom/lang/hide_eng_objects", 1) -- спрятать английские объекты кабины
createGlobalPropertyi("sim/custom/have_pedals", 0) -- есть педали с тормозами
createGlobalPropertyi("sim/custom/sounds_voulme", 1000) -- общая громкость звуков
createGlobalPropertyf("sim/custom/elec/bat_volt_1", 25																) -- напряжение батареи
createGlobalPropertyf("sim/custom/elec/bat_volt_2", 25																) -- напряжение батареи
createGlobalPropertyf("sim/custom/elec/bat_volt_3", 25																) -- напряжение батареи
createGlobalPropertyf("sim/custom/elec/bat_volt_4", 25																) -- напряжение батареи
createGlobalPropertyf("sim/custom/elec/bat_amp_1", 0																) -- ток батареи
createGlobalPropertyf("sim/custom/elec/bat_amp_2", 0																) -- ток батареи
createGlobalPropertyf("sim/custom/elec/bat_amp_3", 0																) -- ток батареи
createGlobalPropertyf("sim/custom/elec/bat_amp_4", 0																) -- ток батареи
createGlobalPropertyf("sim/custom/elec/bat_cc_1", 0																) -- ток заряда батареи
createGlobalPropertyf("sim/custom/elec/bat_cc_2", 0																) -- ток заряда батареи
createGlobalPropertyf("sim/custom/elec/bat_cc_3", 0																) -- ток заряда батареи
createGlobalPropertyf("sim/custom/elec/bat_cc_4", 0																) -- ток заряда батареи
createGlobalPropertyf("sim/custom/elec/bat_therm_1", 20																) -- температура батареи
createGlobalPropertyf("sim/custom/elec/bat_therm_2", 20																) -- температура батареи
createGlobalPropertyf("sim/custom/elec/bat_therm_3", 20																) -- температура батареи
createGlobalPropertyf("sim/custom/elec/bat_therm_4", 20																) -- температура батареи
createGlobalPropertyf("sim/custom/elec/vu1_volt", 27																) -- работа ВУ
createGlobalPropertyf("sim/custom/elec/vu2_volt", 27																) -- работа ВУ
createGlobalPropertyf("sim/custom/elec/vu_res_volt", 27																) -- работа ВУ
createGlobalPropertyf("sim/custom/elec/vu1_amp", 0																) -- ток ВУ
createGlobalPropertyf("sim/custom/elec/vu2_amp", 0																) -- ток ВУ
createGlobalPropertyf("sim/custom/elec/vu_res_amp", 0																) -- ток ВУ
createGlobalPropertyi("sim/custom/elec/vu_res_to_L", 0																) -- резервное ВУ подключено на лев сеть
createGlobalPropertyi("sim/custom/elec/vu_res_to_R", 0																) -- резервное ВУ подключено на прав сеть
createGlobalPropertyf("sim/custom/elec/bus27_volt_left", 27																) -- напряжение левой сети 27
createGlobalPropertyf("sim/custom/elec/bus27_amp_left", 27																) -- напряжение левой сети 27
createGlobalPropertyf("sim/custom/elec/bus27_amp_right", 0																) -- ток правой сети 27
createGlobalPropertyf("sim/custom/elec/bus27_volt_right", 0																) -- ток правой сети 27
createGlobalPropertyi("sim/custom/elec/bus27_source_left", 1																) -- источник питания левой сети. 0 - ничего. 1 - ВУ1, 2 - ВУрезерв, 3 - батареи 1 и 3, 4- бат 1, 5 - бат 2
createGlobalPropertyi("sim/custom/elec/bus27_source_right", 0																) -- источник питания правой сети. 0 - ничего. 1 - ВУ2, 2 - ВУрезерв, 3 - батареи 1 и 3, 4- бат 1, 5 - бат 2
createGlobalPropertyi("sim/custom/elec/bat_is_source_1", 1																) -- батарея является источником
createGlobalPropertyi("sim/custom/elec/bat_is_source_2", 1																) -- батарея является источником
createGlobalPropertyi("sim/custom/elec/bat_is_source_3", 1																) -- батарея является источником
createGlobalPropertyi("sim/custom/elec/bat_is_source_4", 1																) -- батарея является источником
createGlobalPropertyi("sim/custom/elec/bus_connected", 0																) -- сети соеденены
createGlobalPropertyf("sim/custom/elec/bus36_volt_left", 36																) -- напряжение левой сети 36
createGlobalPropertyf("sim/custom/elec/bus36_volt_right", 36																) -- напряжение правой сети 36
createGlobalPropertyf("sim/custom/elec/bus36_volt_pts250_1", 36																) -- напряжение сети 36 ПТС 1
createGlobalPropertyf("sim/custom/elec/bus36_volt_pts250_2", 36																) -- напряжение сети 36 ПТС 2
createGlobalPropertyf("sim/custom/elec/bus36_amp_left", 0																) -- ток левой сети 36
createGlobalPropertyf("sim/custom/elec/bus36_amp_right", 0																) -- ток правой сети 36
createGlobalPropertyf("sim/custom/elec/bus36_amp_pts250_1", 0																) -- ток ПТС250 сети 36 1
createGlobalPropertyf("sim/custom/elec/bus36_amp_pts250_2", 0																) -- ток ПТС250 сети 36 2
createGlobalPropertyi("sim/custom/elec/bus36_tr1_work", 1																) -- трансформатор 1 работает
createGlobalPropertyi("sim/custom/elec/bus36_tr2_work", 1																) -- трансформатор 2 работает
createGlobalPropertyi("sim/custom/elec/bus36_pts1_work", 1																) -- ПТС250 1 работает
createGlobalPropertyi("sim/custom/elec/bus36_pts2_work", 0																) -- ПТС250 2 работает
createGlobalPropertyi("sim/custom/elec/bus36_src_L", 0																) -- источник левой сети. 0 = ТР1, 1 = ТР2
createGlobalPropertyi("sim/custom/elec/bus36_src_R", 0																) -- источник правой сети. 0 = ТР2, 1 = ТР1
createGlobalPropertyi("sim/custom/elec/gen1_work", 1																) -- генератор 1 работает
createGlobalPropertyi("sim/custom/elec/gen2_work", 1																) -- генератор 2 работает
createGlobalPropertyi("sim/custom/elec/gen3_work", 1																) -- генератор 3 работает
createGlobalPropertyi("sim/custom/elec/gen4_work", 0																) -- генератор ВСУ работает
createGlobalPropertyi("sim/custom/elec/gpu_work", 0																) -- РАП работает
createGlobalPropertyi("sim/custom/elec/gen1_overload", 0																) -- генератор 1 перегрузка
createGlobalPropertyi("sim/custom/elec/gen2_overload", 0																) -- генератор 2 перегрузка
createGlobalPropertyi("sim/custom/elec/gen3_overload", 0																) -- генератор 3 перегрузка
createGlobalPropertyi("sim/custom/elec/gen4_overload", 0																) -- генератор ВСУ работает
createGlobalPropertyi("sim/custom/elec/gpu_overload", 0																) -- РАП перегрузка
createGlobalPropertyf("sim/custom/elec/gen1_volt", 115																) -- напряжение на генераторе
createGlobalPropertyf("sim/custom/elec/gen2_volt", 115																) -- напряжение на генераторе
createGlobalPropertyf("sim/custom/elec/gen3_volt", 115																) -- напряжение на генераторе
createGlobalPropertyf("sim/custom/elec/gen4_volt", 115																) -- напряжение на генераторе
createGlobalPropertyf("sim/custom/elec/gpu_volt", 115																) -- напряжение на генераторе
createGlobalPropertyf("sim/custom/elec/bus115_1_volt", 115																) -- напряжение на сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_2_volt", 115																) -- напряжение на сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_3_volt", 115																) -- напряжение на сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_em_1_volt", 115																) -- напряжение на аварийной сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_em_2_volt", 115																) -- напряжение на аварийной сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_1_amp", 0																) -- ток в сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_2_amp", 0																) -- ток в сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_3_amp", 0																) -- ток в сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_em_1_amp", 0																) -- ток в сети 115в
createGlobalPropertyf("sim/custom/elec/bus115_em_2_amp", 0																) -- ток в сети 115в
createGlobalPropertyf("sim/custom/elec/gen1_amp", 0																) -- нагрузка на генератор
createGlobalPropertyf("sim/custom/elec/gen2_amp", 0																) -- нагрузка на генератор
createGlobalPropertyf("sim/custom/elec/gen3_amp", 0																) -- нагрузка на генератор
createGlobalPropertyf("sim/custom/elec/gen4_amp", 0																) -- нагрузка на генератор
createGlobalPropertyf("sim/custom/elec/gpu_amp", 0																) -- нагрузка на генератор
createGlobalPropertyf("sim/custom/thermo/cockpit_temp", 20																) -- температура в кабине
createGlobalPropertyf("sim/custom/thermo/cabin1_temp", 20																) -- температура в салоне 1
createGlobalPropertyf("sim/custom/thermo/cabin2_temp", 20																) -- температура в салоне 2
createGlobalPropertyf("sim/custom/elec/apu_start_bus", 27																) -- напряжение в сети ВСУ
createGlobalPropertyf("sim/custom/elec/apu_start_cc", 0																) -- ток стартера ВСУ
createGlobalPropertyi("sim/custom/elec/apu_start_seq", 0																) -- идет процесс запуска ВСУ
createGlobalPropertyf("sim/custom/elec/apu_burning_fuel", 0																) -- ток стартера ВСУ
createGlobalPropertyf("sim/custom/elec/cockpit_light_cc_left", 0																) -- нагрузка на левую сеть от освещения в кабине
createGlobalPropertyf("sim/custom/elec/cockpit_light_cc_right", 0																) -- нагрузка на правую сеть от освещения в кабине
createGlobalPropertyf("sim/custom/elec/cockpit_light_cc_115", 0																) -- нагрузка на сеть 115 от освещения в кабине
createGlobalPropertyf("sim/custom/elec/ext_light_cc_left", 0																) -- нагрузка на левую сеть от внешнего освещения
createGlobalPropertyf("sim/custom/elec/ext_light_cc_right", 0																) -- нагрузка на левую сеть от внешнего освещения
createGlobalPropertyf("sim/custom/elec/ext_light_cc_115", 0																) -- нагрузка на левую сеть от внешнего освещения
createGlobalPropertyf("sim/custom/eng/apu_n1", 0																) -- обороты ВСУ
createGlobalPropertyf("sim/custom/eng/apu_oil_t", 0																) -- температура масла ВСУ
createGlobalPropertyf("sim/custom/eng/apu_oil_q", 0																) -- количество масла ВСУ
createGlobalPropertyf("sim/custom/eng/apu_oil_p", 0																) -- давление масла ВСУ
createGlobalPropertyf("sim/custom/eng/apu_fuel_p", 0																) -- давление топлива ВСУ
createGlobalPropertyf("sim/custom/eng/apu_egt", 0																) -- температура выходных газов ВСУ
createGlobalPropertyf("sim/custom/eng/apu_air_press", 0																) -- давление воздуха для запуска двигателей
createGlobalPropertyf("sim/custom/eng/apu_air_doors", 0																) -- положение створок для накачки воздуха
createGlobalPropertyi("sim/custom/eng/apu_system_on", 0																) -- включение системы ВСУ
createGlobalPropertyf("sim/custom/eng/vibration_1", 0																) -- вибрация двигателя
createGlobalPropertyf("sim/custom/eng/vibration_2", 0																) -- вибрация двигателя
createGlobalPropertyf("sim/custom/eng/vibration_3", 0																) -- вибрация двигателя
createGlobalPropertyi("sim/custom/fuel/eng_fuel_press_1", 1																) -- топливо может быть подано в двигатель. без учета стоп-кранов
createGlobalPropertyi("sim/custom/fuel/eng_fuel_press_2", 1																) -- топливо может быть подано в двигатель. без учета стоп-кранов
createGlobalPropertyi("sim/custom/fuel/eng_fuel_press_3", 1																) -- топливо может быть подано в двигатель. без учета стоп-кранов
createGlobalPropertyi("sim/custom/fuel/pump_tank2_left_work", 1																) -- насосы бака 2
createGlobalPropertyi("sim/custom/fuel/pump_tank2_right_work", 1																) -- насосы бака 2
createGlobalPropertyi("sim/custom/fuel/pump_tank3_left_work", 1																) -- насосы бака 3
createGlobalPropertyi("sim/custom/fuel/pump_tank3_right_work", 1																) -- насосы бака 3
createGlobalPropertyi("sim/custom/fuel/pump_tank4_work", 1																) -- насосы бака 4
createGlobalPropertyi("sim/custom/fuel/pump_tank1_1_work", 1																) -- насосы бака 1
createGlobalPropertyi("sim/custom/fuel/pump_tank1_2_work", 1																) -- насосы бака 1
createGlobalPropertyi("sim/custom/fuel/pump_tank1_3_work", 1																) -- насосы бака 1
createGlobalPropertyi("sim/custom/fuel/pump_tank1_4_work", 1																) -- насосы бака 1
createGlobalPropertyi("sim/custom/fuel/reserv_trans", 0																) -- резервная перекачка включена
createGlobalPropertyi("sim/custom/fuel/auto_tanks_turn", 0																) -- рабочие очередные баки. 0, 1 - не работает, 2, 3, 4
createGlobalPropertyi("sim/custom/fuel/auto_tank_level_2", 0) -- выравнивание в баках 2. -1 = L, 0 = none, +1 = R
createGlobalPropertyi("sim/custom/fuel/auto_tank_level_3", 0															) -- выравнивание в баках 3. -1 = L, 0 = none, +1 = R
createGlobalPropertyf("sim/custom/fuel/fire_vlv_open_1", 1																) -- пожарный кран открыт
createGlobalPropertyf("sim/custom/fuel/fire_vlv_open_2", 1																) -- пожарный кран открыт
createGlobalPropertyf("sim/custom/fuel/fire_vlv_open_3", 1																) -- пожарный кран открыт
createGlobalPropertyf("sim/custom/elec/fuel_pumps_115_1_cc", 0																) -- нагрузка на сеть 1 от топливных насосов
createGlobalPropertyf("sim/custom/elec/fuel_pumps_115_3_cc", 0																) -- нагрузка на сеть 3 от топливных насосов
createGlobalPropertyf("sim/custom/elec/fuel_pumps_27_cc", 0																) -- нагрузка на сеть 27в от топливных насосов
createGlobalPropertyf("sim/custom/hydro/gs_press_1", 0																) -- давление в ГС1
createGlobalPropertyf("sim/custom/hydro/gs_press_2", 0																) -- давление в ГС2
createGlobalPropertyf("sim/custom/hydro/gs_press_3", 0																) -- давление в ГС3
createGlobalPropertyf("sim/custom/hydro/gs_press_4", 0																) -- давление в аварийной тормозной системе
createGlobalPropertyf("sim/custom/hydro/gs_qty_1", 55																) -- остаток масла в системе
createGlobalPropertyf("sim/custom/hydro/gs_qty_2", 55																) -- остаток масла в системе
createGlobalPropertyf("sim/custom/hydro/gs_qty_3", 49																) -- остаток масла в системе
createGlobalPropertyf("sim/custom/hydro/gs_qty_12_show", 48																) -- остаток масла в гидробаке
createGlobalPropertyf("sim/custom/hydro/gs_qty_3_show", 24																) -- остаток масла в гидробаке
createGlobalPropertyf("sim/custom/hydro/gs_pump_2_cc", 0																) -- ток насосной станции
createGlobalPropertyf("sim/custom/hydro/gs_pump_3_cc", 0																) -- ток насосной станции
createGlobalPropertyf("sim/custom/hydro/gs_bak_qty_1", 17.17																) -- остаток масла в баке
createGlobalPropertyf("sim/custom/hydro/gs_bak_qty_2", 17.17																) -- остаток масла в баке
createGlobalPropertyf("sim/custom/hydro/gs_bak_qty_3", 23.8																) -- остаток масла в баке
createGlobalPropertyf("sim/custom/bleed/air_usage_L", 0																) -- расход воздуха лев
createGlobalPropertyf("sim/custom/bleed/air_usage_R", 0																) -- расход воздуха лев
createGlobalPropertyf("sim/custom/bleed/eng_airvalve_1", 1																) -- открытие отбора воздуха от двигателя
createGlobalPropertyf("sim/custom/bleed/eng_airvalve_2", 1																) -- открытие отбора воздуха от двигателя
createGlobalPropertyf("sim/custom/bleed/eng_airvalve_3", 1																) -- открытие отбора воздуха от двигателя
createGlobalPropertyf("sim/custom/bleed/hot_tube_t", 100																) -- температура горячего воздуха в трубопроводе
createGlobalPropertyf("sim/custom/bleed/door_heat_tube_t", 80																) -- температура в трубопроводе обогрева дверей
createGlobalPropertyf("sim/custom/bleed/cockpit_tube_t", 30																) -- температура в трубопроводе в кабину
createGlobalPropertyf("sim/custom/bleed/cabin1_tube_t", 30																) -- температура в трубопроводе в салон 1
createGlobalPropertyf("sim/custom/bleed/cabin2_tube_t", 30																) -- температура в трубопроводе в салон 2
createGlobalPropertyf("sim/custom/bleed/cold_tube1_t", 30																) -- температура в трубопроводе1
createGlobalPropertyf("sim/custom/bleed/cold_tube2_t", 30																) -- температура в трубопроводе2
createGlobalPropertyf("sim/custom/bleed/cockpit_temp", 20																) -- температура в кабине
createGlobalPropertyf("sim/custom/bleed/cabin_1_temp", 20																) -- температура в салоне 1
createGlobalPropertyf("sim/custom/bleed/cabin_2_temp", 20																) -- температура в салоне 2
createGlobalPropertyf("sim/custom/start/starter_pressure", 0																) -- двление в системе запуска
createGlobalPropertyi("sim/custom/start/apd_working_1", 0																) -- работа системы АПД
createGlobalPropertyi("sim/custom/start/apd_working_2", 0																) -- работа системы АПД
createGlobalPropertyi("sim/custom/start/apd_working_3", 0																) -- работа системы АПД
createGlobalPropertyi("sim/custom/start/start_sys_work", 0																) -- работа системы запуска
createGlobalPropertyi("sim/custom/start/fuel_in_1", 1																) -- подача топлива от системы запуска
createGlobalPropertyi("sim/custom/start/fuel_in_2", 1																) -- подача топлива от системы запуска
createGlobalPropertyi("sim/custom/start/fuel_in_3", 1																) -- подача топлива от системы запуска
createGlobalPropertyf("sim/custom/trimmers/int_pitch_trim", 0																) -- положение триммера руля высоты
createGlobalPropertyf("sim/custom/trimmers/int_roll_trim", 0																) -- положение триммера элеронов
createGlobalPropertyf("sim/custom/trimmers/int_yaw_trim", 0																) -- положение триммера руля направления
createGlobalPropertyf("sim/custom/controls/control_force_pos", 0) -- положение загружателя РВ. 0 - выклчюен, 1 - подключен
createGlobalPropertyf("sim/custom/controls/control_force_pos_rud", 0																	) -- положение загружателя РН. 0 - выклчюен, 1 - подключен
createGlobalPropertyi("sim/custom/fire/ext_used_1", 0																) -- огнетушитель использован
createGlobalPropertyi("sim/custom/fire/ext_used_2", 0																) -- огнетушитель использован
createGlobalPropertyi("sim/custom/fire/ext_used_3", 0																) -- огнетушитель использован
createGlobalPropertyi("sim/custom/fire/ng_used", 0																) -- НГ использован
createGlobalPropertyi("sim/custom/fire/valve_open_1", 0																) -- кран тушения двиг 1
createGlobalPropertyi("sim/custom/fire/valve_open_2", 0																) -- кран тушения двиг 2
createGlobalPropertyi("sim/custom/fire/valve_open_3", 0																) -- кран тушения двиг 3
createGlobalPropertyi("sim/custom/fire/valve_open_4", 0																) -- кран тушения ВСУ
createGlobalPropertyi("sim/custom/fire/fire_siren", 0																) -- работа пожарной сирены
createGlobalPropertyi("sim/custom/fire/engine_fire_state_1", 0																) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("sim/custom/fire/engine_fire_state_2", 0																) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("sim/custom/fire/engine_fire_state_3", 0																) -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("sim/custom/fire/engine_fire_state_4", 0																) -- состояние ВСУ. 0 - норм, 1 - перегрев, 2 - пожар
createGlobalPropertyi("sim/custom/fire/engine_fuel_cut_1", 0																) -- топливо перекрыто
createGlobalPropertyi("sim/custom/fire/engine_fuel_cut_2", 0																) -- топливо перекрыто
createGlobalPropertyi("sim/custom/fire/engine_fuel_cut_3", 0																) -- топливо перекрыто
createGlobalPropertyi("sim/custom/fire/fire_detected", 0																) -- обнаружен пожар
createGlobalPropertyf("sim/custom/fire/fire_sys_cc", 0																) -- потребление тока системой
createGlobalPropertyf("sim/custom/antiice/wing_heat_t", 15																) -- температура обогрева крыла
createGlobalPropertyf("sim/custom/antiice/stab_heat_t", 15																) -- температура обогрева стабилизатора
createGlobalPropertyi("sim/custom/antiice/ice_detected", 0																) -- обнаружен лед
createGlobalPropertyi("sim/custom/antiice/ice_detect_ok", 0																) -- система СОИ работает
createGlobalPropertyi("sim/custom/antiice/wing_heating", 1																) -- работает обогрев крыла
createGlobalPropertyi("sim/custom/antiice/slat_heating", 1																) -- работает обогрев крыла
createGlobalPropertyf("sim/custom/antiice/ai_27_L_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/antiice/ai_27_R_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/antiice/ai_115_1_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/antiice/ai_115_2_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/antiice/ai_115_3_cc", 0) -- нагрузка на сеть
createGlobalPropertyi("sim/custom/antiice/eng_heat_open_1", 0) -- открыта заслонка обогрева двигателя
createGlobalPropertyi("sim/custom/antiice/eng_heat_open_2", 0) -- открыта заслонка обогрева двигателя
createGlobalPropertyi("sim/custom/antiice/eng_heat_open_3", 0															) -- открыта заслонка обогрева двигателя
createGlobalPropertyi("sim/custom/msrp/msrp_power", 1																) -- питание МСРП для индикатора часов
createGlobalPropertyi("sim/custom/msrp/msrp_recording", 1																) -- питание МСРП для индикатора часов
createGlobalPropertyf("sim/custom/msrp/msrp_27_L_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/msrp/msrp_27_R_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/control/ctr_27_L_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/control/ctr_27_R_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/control/ctr_115_1_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/control/ctr_115_2_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/control/ctr_115_3_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/control/ctr_36L_cc", 0																) -- нагрузка на сеть
createGlobalPropertyf("sim/custom/control/ctr_36R_cc", 0																) -- нагрузка на сеть
createGlobalPropertyi("sim/custom/auasp/alpha_critical", 0																) -- сигнал от АУАСП по критическом УА
createGlobalPropertyi("sim/custom/auasp/gforce_critical", 0																) -- сигнал от АУАСП по критической перегрузке
createGlobalPropertyf("sim/custom/gyro/mgv_contr_roll", 0																) -- крен контрольного гироскопа
createGlobalPropertyf("sim/custom/gyro/mgv_contr_pitch", 0																) -- тангаж контрольного гироскопа
createGlobalPropertyi("sim/custom/gyro/mgv_contr_flag", 0																) -- флаг отказа МГВ контр
createGlobalPropertyi("sim/custom/bkk/left_roll_big", 0																) -- сигнал с БКК - крен лев велик
createGlobalPropertyi("sim/custom/bkk/right_roll_big", 0																) -- сигнал с БКК - крен прав велик
createGlobalPropertyi("sim/custom/bkk/mgv_contr_fail", 0																) -- сигнал с БКК - отказ МГВ контр
createGlobalPropertyi("sim/custom/bkk/no_contr_ag", 0																) -- сигнал с БКК - нет контроля АГ
createGlobalPropertyi("sim/custom/bkk/pkp_fail_left", 0																) -- сигнал с БКК - отказ левого ПКП
createGlobalPropertyi("sim/custom/bkk/pkp_fail_right", 0																) -- сигнал с БКК - отказ левого ПКП
createGlobalPropertyf("sim/custom/bkk/pkp_roll_left", 0																) -- крен на левом МГВ
createGlobalPropertyf("sim/custom/bkk/pkp_roll_right", 0																) -- крен на правом МГВ
createGlobalPropertyf("sim/custom/bkk/pkp_left_power_cc", 0																) -- отребление тока ПКП
createGlobalPropertyf("sim/custom/bkk/pkp_right_power_cc", 0																) -- отребление тока ПКП
createGlobalPropertyf("sim/custom/bkk/mgv_ctr_power_cc", 0																) -- отребление тока ПКП
createGlobalPropertyf("sim/custom/gyro/ahz_pitch_int_L", 0) -- тангаж на левом гироскопе
createGlobalPropertyf("sim/custom/gyro/ahz_pitch_int_R", 0																		) -- тангаж на правом гироскопе
createGlobalPropertyi("sim/custom/tcas/range_set", 3																) -- дистанция на дисплее. 0 = 3, 1 = 5, 2 = 10, 3 = 15 nm
createGlobalPropertyi("sim/custom/tcas/mode_set", 4																) -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA
createGlobalPropertyi("sim/custom/tcas/screen_mode", 0																) -- режим отображения на экране.  -1 = ошибка, 0 = код ответчика, 1 = above mode, 2 = FL mode, 3 = FLT ID, 4 = PLN BIT, 5 = test, 6 = range set, 11-14 = code set, 100 = no power
createGlobalPropertyi("sim/custom/tcas/level_mode", 0																) -- 1 = above, 0 = normal, -1 = below
createGlobalPropertyi("sim/custom/tcas/fl_mode", 0																) -- fl mode. 0 = absolute, 1 = relative
createGlobalPropertyi("sim/custom/tcas/flt_id", 0																) -- flight ID. 0 = cover, 1 = show / change code
createGlobalPropertyi("sim/custom/tcas/ra_scale_set", 0																) -- RA mode scale set. 0 = none.
createGlobalPropertyi("sim/custom/tcas/traffic_det", 0																) -- появление желтых или красных меток
createGlobalPropertyf("sim/custom/svs/altitude", 0																) -- высота, выдаваемая СВС
createGlobalPropertyf("sim/custom/svs/machno", 0																) -- скорость маха, выдаваемая СВС
createGlobalPropertyf("sim/custom/svs/true_airspeed", 0																) -- TAS, выдаваемая СВС
createGlobalPropertyf("sim/custom/svs/power_27cc", 0																) -- ток, потребляемый СВС
createGlobalPropertyf("sim/custom/svs/power_36cc", 0																) -- ток, потребляемый СВС
createGlobalPropertyf("sim/custom/svs/power_115cc", 0																) -- ток, потребляемый СВС
createGlobalPropertyf("sim/custom/elec/auasp_pow27_cc", 0																) -- ток, потребляемый АУАСП
createGlobalPropertyf("sim/custom/elec/auasp_pow115_cc", 0																) -- ток, потребляемый АУАСП
createGlobalPropertyf("sim/custom/elec/rv5_left_cc", 0																) -- ток, потребляемый RV-5
createGlobalPropertyf("sim/custom/elec/rv5_right_cc", 0																) -- ток, потребляемый RV-5
createGlobalPropertyf("sim/custom/misc/rv5_alt_left", 0																) -- высота на левом высотомере
createGlobalPropertyf("sim/custom/misc/rv5_alt_right", 0) -- высота на правом высотомере
createGlobalPropertyi("sim/custom/misc/rv5_dh_signal_left", 0																) -- сигнал DH
createGlobalPropertyi("sim/custom/misc/rv5_dh_signal_right", 0																) -- сигнал DH
createGlobalPropertyi("sim/custom/taws/mode_set", 1																) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения
createGlobalPropertyi("sim/custom/taws/distance_set", 0																) -- дистанция для рисования карты, км. 0 = 10, 1 = 20, 2 = 40, 3 = 80, 4 = 160, 5 = 320, 6 = 640
createGlobalPropertyf("sim/custom/taws/taws_cc", 0																) -- потребление тока системой СРПБЗ
createGlobalPropertyi("sim/custom/taws/taws_message", 0																) -- сообщения СРПБЗ. 0 - none, 1 - Pull UP, 2 - alt callout, 3 - Pull Up, 4 - Terrain, 5 - Terrain Ahead, 6 - Too low, Terrain, 7 - Alt collout, 8 - Too low, Gear, 9 - Too low, Flaps, 10 - Check altitude, 11 - Sink Rate, 12 - Don't sink, 13 - Glideslope
createGlobalPropertyi("sim/custom/taws/taws_english", 0																) -- язык системы. 0 - русский, 1 - английский
createGlobalPropertyf("sim/custom/taws/gs_msg_int", 5																) -- интервал сигнала ГЛИССАДА
createGlobalPropertyf("sim/custom/taws/gs_msg_vol", 1																) -- громкость сигнала ГЛИССАДА
createGlobalPropertyi("sim/custom/taws/taws_alt_left", 0																) -- сравни высоту на левом высотомере
createGlobalPropertyi("sim/custom/taws/taws_alt_right", 0																) -- сравни высоту на правом высотомере
createGlobalPropertyf("sim/custom/tks/course_mk_1", 0																) -- курс на MK5
createGlobalPropertyf("sim/custom/tks/course_mk_2", 0																) -- курс на MK5
createGlobalPropertyf("sim/custom/tks/course_ga_1", 0																) -- курс на ГА1
createGlobalPropertyf("sim/custom/tks/course_ga_2", 0																) -- курс на ГА1
createGlobalPropertyf("sim/custom/tks/course_bgmk_1", 0																) -- курс на БГМК1
createGlobalPropertyf("sim/custom/tks/course_bgmk_2", 0																) -- курс на БГМК1
createGlobalPropertyf("sim/custom/tks/course_gpk", 0																) -- результирующий курс ТКС - ГПК
createGlobalPropertyf("sim/custom/tks/course_gmk", 0																) -- результирующий курс ТКС - ГМК
createGlobalPropertyi("sim/custom/tks/fail_left", 0																) -- флаг отказа
createGlobalPropertyi("sim/custom/tks/fail_right", 0																) -- флаг отказа
createGlobalPropertyf("sim/custom/nvu/diss_wind_course", 0																) -- курс ветра по ДИСС
createGlobalPropertyf("sim/custom/nvu/diss_wind_spd", 0																) -- скорость ветра по ДИСС
createGlobalPropertyf("sim/custom/nvu/diss_groundspeed", 0																) -- путевая скорость по ДИСС
createGlobalPropertyf("sim/custom/nvu/diss_slip_angle", 0																) -- угол сноса по ДИСС
createGlobalPropertyi("sim/custom/nvu/diss_mode", 1																) -- режим ДИСС. 0 - выкл, 1 - работа, 2 - память
createGlobalPropertyf("sim/custom/rsbn/distance", 0																) -- геометрическая дистанция от маяка
createGlobalPropertyf("sim/custom/rsbn/azimuth", 0																) -- азимут от маяка
createGlobalPropertyf("sim/custom/radio/adf_bear_1", 0																) -- направление на маяк ADF
createGlobalPropertyf("sim/custom/radio/adf_bear_2", 0																) -- направление на маяк ADF
createGlobalPropertyf("sim/custom/radio/vor_bear_1", 0																) -- направление на маяк VOR
createGlobalPropertyf("sim/custom/radio/vor_bear_2", 0																) -- направление на маяк VOR
createGlobalPropertyf("sim/custom/radio/vor_dme_1", 0																) -- дистанция к VOR
createGlobalPropertyf("sim/custom/radio/vor_dme_2", 0																) -- дистанция к VOR
createGlobalPropertyf("sim/custom/radio/nav1_cs", 0																) -- отклонение курсовой планки
createGlobalPropertyf("sim/custom/radio/nav1_gs", 0																) -- отклонение глиссадной планки
createGlobalPropertyf("sim/custom/radio/nav2_cs", 0																) -- отклонение курсовой планки
createGlobalPropertyf("sim/custom/radio/nav2_gs", 0																) -- отклонение глиссадной планки
createGlobalPropertyi("sim/custom/radio/nav1_cs_flag", 0																) -- курсовой флаг
createGlobalPropertyi("sim/custom/radio/nav2_cs_flag", 0																) -- курсовой флаг
createGlobalPropertyi("sim/custom/radio/nav1_gs_flag", 0																) -- глиссадный флаг
createGlobalPropertyi("sim/custom/radio/nav2_gs_flag", 0																) -- глиссадный флаг
createGlobalPropertyf("sim/custom/nvu/current_Z1", 0																) -- Z1
createGlobalPropertyf("sim/custom/nvu/current_S1", 0																) -- S1
createGlobalPropertyf("sim/custom/nvu/next_Z1", 0																) -- Z1
createGlobalPropertyf("sim/custom/nvu/next_S1", 0																) -- S1
createGlobalPropertyf("sim/custom/nvu/current_Z2", 0																) -- Z2
createGlobalPropertyf("sim/custom/nvu/current_S2", 0																) -- S2
createGlobalPropertyf("sim/custom/nvu/next_Z2", 0																) -- Z2
createGlobalPropertyf("sim/custom/nvu/next_S2", 0																) -- S2
createGlobalPropertyf("sim/custom/nvu/zpu1", 0																) -- Z2
createGlobalPropertyf("sim/custom/nvu/zpu2", 0																) -- S2
createGlobalPropertyi("sim/custom/nvu/nvu_mode", 1																) -- режим НВУ. 0 = выкл, 1 = готов, 2 = счисление, 3 = коррекция
createGlobalPropertyi("sim/custom/nvu/nvu_active", 1																) -- активный комплект НВУ. 1 - 2
createGlobalPropertyf("sim/custom/nvu/nvu_res_course", 0																) -- курс полета по НВУ
createGlobalPropertyf("sim/custom/nvu/nvu_res_z", 0																) -- смещение от курса полета НВУ
createGlobalPropertyi("sim/custom/nvu/nvu_changing_ort", 0																) -- смена ЧО
createGlobalPropertyi("sim/custom/nvu/nvu_fail", 0																) -- отказ или недостаточно систем для НВУ
createGlobalPropertyi("sim/custom/absu/roll_main_mode", 1																) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
createGlobalPropertyi("sim/custom/absu/pitch_main_mode", 1																) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб
createGlobalPropertyi("sim/custom/absu/roll_sub_mode", 0																) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
createGlobalPropertyi("sim/custom/absu/pitch_sub_mode", 0																) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход
createGlobalPropertyf("sim/custom/absu/contr_pitch", 0																) -- отклонение штока РА56 по тангажу
createGlobalPropertyf("sim/custom/absu/contr_roll", 0																) -- отклонение штока РА56 по крену
createGlobalPropertyf("sim/custom/absu/contr_yaw", 0																) -- отклонение штока РА56 по направлению
createGlobalPropertyf("sim/custom/bkk/bkk_pitch", 0																) -- результирующий тангаж от БКК
createGlobalPropertyf("sim/custom/bkk/bkk_roll", 0																) -- результирующий крен от БКК
createGlobalPropertyi("sim/custom/absu/absu_pitch_trimm", 0																) -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз
createGlobalPropertyf("sim/custom/absu/rud_1_spd", 0																) -- скорость изменения положения рычага
createGlobalPropertyf("sim/custom/absu/rud_2_spd", 0																) -- скорость изменения положения рычага
createGlobalPropertyf("sim/custom/absu/rud_3_spd", 0																) -- скорость изменения положения рычага
createGlobalPropertyf("sim/custom/absu/absu_roll_ind", 0																) -- индикация директора крена
createGlobalPropertyf("sim/custom/absu/absu_pitch_ind", 0																) -- индикация директора тангажа
createGlobalPropertyi("sim/custom/absu/absu_roll_flag", 1																) -- флаг директора крена
createGlobalPropertyi("sim/custom/absu/absu_pitch_flag", 1																) -- флаг директора тангажа
createGlobalPropertyi("sim/custom/absu/absu_pnp_mode_1", 0																) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
createGlobalPropertyi("sim/custom/absu/absu_pnp_mode_2", 0																) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
createGlobalPropertyi("sim/custom/absu/stu_mode", 0) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход
createGlobalPropertyi("sim/custom/absu/toga_comm", 0																) -- режим УХОД
createGlobalPropertyf("sim/custom/absu_at_dif_left", 0																) -- разность скоростей для индикации на ПКП
createGlobalPropertyf("sim/custom/absu_at_dif_right", 0																) -- разность скоростей для индикации на ПКП
createGlobalPropertyi("sim/custom/absu_course_out", 0																) -- flying outside the course limits
createGlobalPropertyi("sim/custom/absu_gs_out", 0																) -- flying outside the glideslope limits
createGlobalPropertyf("sim/custom/absu_power_cc", 0	) -- потребление тока АБСУ
createGlobalPropertyf("sim/custom/absu_at_power_cc", 0) -- потребление тока АБСУ
createGlobalPropertyi("sim/custom/absu_use_second_nav", 0) -- АБСУ перешло на второй КурсМП
createGlobalPropertyi("sim/custom/absu/damp_roll_lamp", 0) -- сигнал на лампочку. отказ демпера крена
createGlobalPropertyi("sim/custom/absu/damp_pitch_lamp", 0) -- сигнал на лампочку. отказ демпера тангажа
createGlobalPropertyi("sim/custom/absu/damp_yaw_lamp", 0) -- сигнал на лампочку. отказ демпера курса
createGlobalPropertyi("sim/custom/absu/roll_contr_lamp", 0) -- сигнал на лампочку. отказ управления крена
createGlobalPropertyi("sim/custom/absu/pitch_contr_lamp", 0) -- сигнал на лампочку. отказ управления тангажа
createGlobalPropertyi("sim/custom/absu/man_roll_lamp", 0) -- сигнал на лампочку. управляй креном
createGlobalPropertyi("sim/custom/absu/man_pitch_lamp", 0) -- сигнал на лампочку. управляй тангажом
createGlobalPropertyi("sim/custom/absu/man_toga_lamp", 0) -- сигнал на лампочку. управляй уходом
createGlobalPropertyi("sim/custom/absu/triangle_lamp_signal", 0) -- сигнал на лампочку. треугольник
createGlobalPropertyi("sim/custom/absu/absu_fail_signal", 0															) -- сигнал на сирену
createGlobalPropertyf("sim/custom/kln90/kln_course", 0																) -- курс ЛЗП от КЛН
createGlobalPropertyf("sim/custom/kln90/kln_dev", 0																) -- отклонение от ЛЗП, мили
createGlobalPropertyi("sim/custom/kln90/kln_flag", 0																) -- флаг курса КЛН. 0 = флага нет, 1 = флаг
createGlobalPropertyf("sim/custom/radio/vhf1_cc", 0) -- потребление тока радиостанцией
createGlobalPropertyf("sim/custom/radio/vhf2_cc", 0) -- потребление тока радиостанцией
createGlobalPropertyf("sim/custom/tks/km5_1_cc", 0) -- потребление тока КМ5
createGlobalPropertyf("sim/custom/tks/km5_2_cc", 0) -- потребление тока КМ5
createGlobalPropertyf("sim/custom/tks/ga_1_cc", 0) -- потребление тока ГА
createGlobalPropertyf("sim/custom/tks/ga_2_cc", 0) -- потребление тока ГА
createGlobalPropertyf("sim/custom/tks/ga_heat_cc", 0) -- потребление тока подогрева ГА
createGlobalPropertyf("sim/custom/tks/bgmk_1_cc", 0) -- потребление тока БГМК
createGlobalPropertyf("sim/custom/tks/bgmk_2_cc", 0) -- потребление тока БГМК
createGlobalPropertyf("sim/custom/tks/ush_cc", 0) -- потребление тока УШ
createGlobalPropertyf("sim/custom/ahz/agr_cc", 0) -- потребление тока АГР
createGlobalPropertyf("sim/custom/nvu/nvu_cc", 0) -- потребление тока НВУ
createGlobalPropertyf("sim/custom/radio/ark15_L_cc", 0) -- потребление тока АРК
createGlobalPropertyf("sim/custom/radio/ark15_R_cc", 0) -- потребление тока АРК
createGlobalPropertyf("sim/custom/nvu/diss_cc", 0) -- потребление от ДИСС
createGlobalPropertyf("sim/custom/radio/nav1_pow_cc", 0) -- потребление тока от КурсМП
createGlobalPropertyf("sim/custom/radio/nav2_pow_cc", 0) -- потребление тока от КурсМП
createGlobalPropertyf("sim/custom/radio/radar_cc", 0) -- потребление тока от РЛС Гроза
createGlobalPropertyf("sim/custom/radio/rsbn_cc", 0) -- потребление тока от РСБН
createGlobalPropertyi("sim/custom/payload/crew_num", 3) -- экипаж в кабине
createGlobalPropertyi("sim/custom/payload/zone_1", 9) -- пассажиры
createGlobalPropertyi("sim/custom/payload/zone_2", 22) -- пассажиры
createGlobalPropertyi("sim/custom/payload/cabin_num", 4) -- экипаж в салоне
createGlobalPropertyi("sim/custom/payload/zone_4", 24) -- пассажиры
createGlobalPropertyi("sim/custom/payload/zone_5", 21) -- пассажиры
createGlobalPropertyi("sim/custom/payload/zone_6", 7) -- пассажиры
createGlobalPropertyi("sim/custom/payload/cargo_1", 2500) -- багаж 1
createGlobalPropertyi("sim/custom/payload/cargo_2", 1200) -- багаж 2
createGlobalPropertyi("sim/custom/payload/kitchens", 300) -- загрузка кухонь
createGlobalPropertyi("sim/custom/payload/various", 50) -- прочее
createGlobalPropertyi("sim/custom/payload/main_dist", 1000) -- дистанция до основного АП
createGlobalPropertyi("sim/custom/payload/alt_dist", 500) -- дистанция до запасного АП
createGlobalPropertyi("sim/custom/payload/main_fl", 380) -- эшелон до основного
createGlobalPropertyi("sim/custom/payload/alt_fl", 320) -- эшелон до запасного
createGlobalPropertyi("sim/custom/payload/nav_fuel", 2500) -- навигацонный запас
createGlobalPropertyi("sim/custom/payload/taxi_fuel", 100) -- топливо на руление
createGlobalPropertyi("sim/custom/payload/tank_1", 3300) -- топливо в баке
createGlobalPropertyi("sim/custom/payload/tank_4", 0) -- топливо в баке
createGlobalPropertyi("sim/custom/payload/tank_2L", 1500) -- топливо в баке
createGlobalPropertyi("sim/custom/payload/tank_2R", 1500) -- топливо в баке
createGlobalPropertyi("sim/custom/payload/tank_3L", 3225) -- топливо в баке
createGlobalPropertyi("sim/custom/payload/tank_3R", 3225) -- топливо в баке
createGlobalPropertyi("sim/custom/payload/load_fuel_btn", 0) -- кнопка загрузки топлива
createGlobalPropertyi("sim/custom/payload/load_fast_btn", 0) -- кнопка загрузки быстро
createGlobalPropertyi("sim/custom/payload/load_slow_btn", 0) -- кнопка загрузки медленно
createGlobalPropertyf("sim/custom/payload/paylod_set", 0) -- Нужно загрузить
createGlobalPropertyf("sim/custom/payload/cg_set", 0) -- Нужно загрузить
createGlobalPropertyi("sim/custom/sounds/taws_eng_phrase", 0) -- номер фразы СРПБЗ на английском
createGlobalPropertyi("sim/custom/sounds/taws_rus_phrase", 0) -- номер фразы СРПБЗ на русском
createGlobalPropertyi("sim/custom/sounds/enable_crew_vo", 1) -- включены фразы екипажа
createGlobalPropertyi("sim/custom/alarm/main_gear_flaps", 0) -- не взлетное положение закрылков или не выпущенны шасси
createGlobalPropertyi("sim/custom/alarm/main_pressure", 0) -- разгерметизация или перенаддув кабины
createGlobalPropertyi("sim/custom/alarm/speaker_auasp", 0) -- предельный угол атаки или перегрузки
createGlobalPropertyi("sim/custom/alarm/speaker_fuel", 0) -- остаток топлива 2500 в баке 1
createGlobalPropertyi("sim/custom/alarm/speaker_speed", 0) -- предельная скорость
createGlobalPropertyi("sim/custom/alarm/speaker_absu", 0) -- отключение режимов или отказы АБСУ
createGlobalPropertyi("sim/custom/checklist/side", 0) -- какую сторону показывать. 0 - пред взлетом, 1 - перед заходом
createGlobalPropertyi("sim/custom/checklist/fishka_1", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_2", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_3", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_4", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_5", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_6", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_7", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_8", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_9", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_10", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_11", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_12", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_13", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_14", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_15", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_16", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_17", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_18", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_19", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/checklist/fishka_20", 1) -- положение фишки. 0 - слева, 1 - справа
createGlobalPropertyi("sim/custom/panels/show_load_panel", 0) -- показать панель загрузки
createGlobalPropertyi("sim/custom/panels/show_absu_panel", 0) -- показать панель АБСУ
createGlobalPropertyi("sim/custom/panels/show_ohvd_panel", 0) -- показать панель верхней панели
createGlobalPropertyi("sim/custom/panels/show_nvu_panel", 0) -- показать панель НВУ
createGlobalPropertyi("sim/custom/panels/show_checklist_panel", 0) -- показать панель ККП
createGlobalPropertyi("sim/custom/panels/show_ground_panel", 0) -- показать панель наземного обслуживания
createGlobalPropertyi("sim/custom/panels/show_phone", 0) -- показать панель телефона
createGlobalPropertyi("sim/custom/panels/show_cam", 0) -- показать панель камеры
createGlobalPropertyi("sim/custom/panels/show_palette", 0) -- показать палетку
createGlobalPropertyi("sim/custom/panels/show_fail_panel", 0) -- показать палетку отказов
createGlobalPropertyf("sim/custom/misc/cg_pos_actual", 0) -- актуальное положение CG
createGlobalPropertyf("sim/custom/misc/weight_actual", 0) -- актуальная масса
createGlobalPropertyf("sim/custom/anim/rain_glass_1", 0) -- светимость маски с дождем на стекле
createGlobalPropertyf("sim/custom/anim/rain_glass_2", 0) -- светимость маски с дождем на стекле
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_1_L", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_2_L", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_3_L", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_4_L", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_5_L", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_1_L", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_2_L", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_3_L", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_4_L", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_5_L", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_1_R", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_2_R", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_3_R", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_4_R", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("sim/custom/anim/rain_glass_1_w_5_R", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_1_R", 0) -- светимость маски с дождем на левом стекле сектор 1
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_2_R", 0) -- светимость маски с дождем на левом стекле сектор 2
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_3_R", 0) -- светимость маски с дождем на левом стекле сектор 3
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_4_R", 0) -- светимость маски с дождем на левом стекле сектор 4
createGlobalPropertyf("sim/custom/anim/rain_glass_2_w_5_R", 0) -- светимость маски с дождем на левом стекле сектор 5
createGlobalPropertyf("sim/custom/anim/net_rain_ratio", 0) -- актуальное количество осадков на стеклах
createGlobalPropertyf("sim/custom/misc/water_level", 0) -- уровень воды
createGlobalPropertyf("sim/custom/gauges/alt/vbe_flightlevel_left", 0) -- установленная высота на ВБЭ
createGlobalPropertyf("sim/custom/gauges/alt/vbe_flightlevel_right", 0) -- установленная высота на ВБЭ
createGlobalPropertyf("sim/custom/brakes/int_brakes_L", 0) -- реальное положение тормоза
createGlobalPropertyf("sim/custom/brakes/int_brakes_R", 0) -- реальное положение тормоза
createGlobalPropertyf("sim/custom/gauges/vvi_left", 0) -- показания вариометра
createGlobalPropertyf("sim/custom/gauges/vvi_right", 0) -- показания вариометра
createGlobalPropertyi("sim/custom/SC/control_thro_other", 0) -- другой человек упраляет РУД-ами
createGlobalPropertyf("sim/custom/SC/yoke_pitch_ratio", 0) -- управление тангажом
createGlobalPropertyf("sim/custom/SC/yoke_roll_ratio", 0) -- управление креном
createGlobalPropertyf("sim/custom/SC/yoke_heading_ratio", 0) -- управление педалями
createGlobalPropertyf("sim/custom/SC/engine/ENGN_thro_0", 0) -- управление РУД
createGlobalPropertyf("sim/custom/SC/engine/ENGN_thro_1", 0) -- управление РУД
createGlobalPropertyf("sim/custom/SC/engine/ENGN_thro_2", 0) -- управление РУД
createGlobalPropertyf("sim/custom/SC/engine/ENGN_propmode_0", 0) -- управление реверсом
createGlobalPropertyf("sim/custom/SC/engine/ENGN_propmode_2", 0) -- управление реверсом
createGlobalPropertyf("sim/custom/SC/gear/tire_steer_command_deg", 0) -- управление передней ногой
createGlobalPropertyf("sim/custom/SC/controls/l_brake_add", 0) -- управление тормозами
createGlobalPropertyf("sim/custom/SC/controls/r_brake_add", 0) -- управление тормозами
createGlobalPropertyf("sim/custom/SC/brakes/int_brakes_L", 0) -- управление тормозами
createGlobalPropertyf("sim/custom/SC/brakes/int_brakes_R", 0) -- управление тормозами
createGlobalPropertyf("sim/custom/SC/controls/parkbrake", 0) -- управление тормозами
createGlobalPropertyi("sim/custom/speeds/v1_15", 0) -- скорость V1
createGlobalPropertyi("sim/custom/speeds/vr_15", 0) -- скорость Vr
createGlobalPropertyi("sim/custom/speeds/v2_15", 0) -- скорость V2
createGlobalPropertyi("sim/custom/speeds/v1_28", 0) -- скорость V1
createGlobalPropertyi("sim/custom/speeds/vr_28", 0) -- скорость Vr
createGlobalPropertyi("sim/custom/speeds/v2_28", 0) -- скорость V2
createGlobalPropertyi("sim/custom/checklist/checklist_selected", 0) -- выбор чеклиста.
createGlobalPropertyi("sim/custom/checklist/to_ready", 0) -- лампа горит
createGlobalPropertyi("sim/custom/sound/reset_crew", 0) -- сброс фраз команды
createGlobalPropertyf("sim/custom/SC/GNS430_dtk", 0) -- курс на ГНС
createGlobalPropertyf("sim/custom/SC/GNS430_dev", 0) -- отклонение от курса на ГНС
createGlobalPropertyi("sim/custom/SC/GNS430_flag", 0) -- флаг на ГНС
