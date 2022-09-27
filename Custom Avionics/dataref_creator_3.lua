createGlobalPropertyi("sim/custom/failures/failures_enabled", 1) -- общий выключатель отказов
createGlobalPropertyi("sim/custom/failures/lan_lamp_fail_FL", 0) -- отказ фар
createGlobalPropertyi("sim/custom/failures/lan_lamp_fail_FR", 0) -- отказ фар
createGlobalPropertyi("sim/custom/failures/lan_lamp_fail_WL", 0) -- отказ фар
createGlobalPropertyi("sim/custom/failures/lan_lamp_fail_WR", 0) -- отказ фар
createGlobalPropertyi("sim/custom/failures/lan_lamp_fail_signal", 0) -- отказ фар
createGlobalPropertyi("sim/custom/failures/acs1_fail", 0) -- отказ часов
createGlobalPropertyi("sim/custom/failures/acs2_fail", 0) -- отказ часов
createGlobalPropertyi("sim/custom/failures/acs3_fail", 0) -- отказ часов
createGlobalPropertyi("sim/custom/failures/bat_1_kz", 0) -- КЗ или тепловой разгон батареи
createGlobalPropertyi("sim/custom/failures/bat_2_kz", 0) -- КЗ или тепловой разгон батареи
createGlobalPropertyi("sim/custom/failures/bat_3_kz", 0) -- КЗ или тепловой разгон батареи
createGlobalPropertyi("sim/custom/failures/bat_4_kz", 0) -- КЗ или тепловой разгон батареи
createGlobalPropertyi("sim/custom/failures/bat_1_fail", 0) -- отказ батареи. не дает напряжения и не заряжается
createGlobalPropertyi("sim/custom/failures/bat_2_fail", 0) -- отказ батареи. не дает напряжения и не заряжается
createGlobalPropertyi("sim/custom/failures/bat_3_fail", 0) -- отказ батареи. не дает напряжения и не заряжается
createGlobalPropertyi("sim/custom/failures/bat_4_fail", 0) -- отказ батареи. не дает напряжения и не заряжается
createGlobalPropertyi("sim/custom/failures/vu1_fail", 0) -- отказ ВУ1
createGlobalPropertyi("sim/custom/failures/vu2_fail", 0) -- отказ ВУ2
createGlobalPropertyi("sim/custom/failures/vu3_fail", 0) -- отказ ВУ3
createGlobalPropertyi("sim/custom/failures/tr1_fail", 0) -- отказ ТР1
createGlobalPropertyi("sim/custom/failures/tr2_fail", 0) -- отказ ТР1
createGlobalPropertyi("sim/custom/failures/pts250_1_fail", 0) -- отказ ПТС250
createGlobalPropertyi("sim/custom/failures/pts250_2_fail", 0) -- отказ ПТС250
createGlobalPropertyi("sim/custom/failures/inv115_fail", 0) -- отказ преобразователя 115в
createGlobalPropertyi("sim/custom/failures/hydro_leak_1", 0) -- утечка в гидросистеме
createGlobalPropertyi("sim/custom/failures/hydro_leak_2", 0) -- утечка в гидросистеме
createGlobalPropertyi("sim/custom/failures/hydro_leak_3", 0) -- утечка в гидросистеме
createGlobalPropertyi("sim/custom/failures/hydro_leak_4", 0) -- утечка в гидросистеме
createGlobalPropertyi("sim/custom/failures/tth_left_fail", 0) -- отказ турбохолодильника
createGlobalPropertyi("sim/custom/failures/tth_right_fail", 0) -- отказ турбохолодильника
createGlobalPropertyi("sim/custom/failures/sard_valve_fail", 0) -- отказ выпускного клапана
createGlobalPropertyi("sim/custom/failures/psvp_fail_left", 0) -- отказ ПСВП
createGlobalPropertyi("sim/custom/failures/psvp_fail_right", 0	) -- отказ ПСВП
createGlobalPropertyi("sim/custom/failures/airbleed_1", 0) -- отказ отбора воздуха от двигателя
createGlobalPropertyi("sim/custom/failures/airbleed_2", 0) -- отказ отбора воздуха от двигателя
createGlobalPropertyi("sim/custom/failures/airbleed_3", 0) -- отказ отбора воздуха от двигателя
createGlobalPropertyi("sim/custom/failures/apu_start_fail", 0) -- отказ стартера ВСУ
createGlobalPropertyi("sim/custom/failures/apu_gen_fail", 0) -- отказ генератора ВСУ
createGlobalPropertyf("sim/custom/failures/apu_runtime", 0) -- наработка ВСУ
createGlobalPropertyi("sim/custom/failures/apu_fail_oilt", 0) -- отказ по перегреву масла
createGlobalPropertyi("sim/custom/failures/apu_fail_egt", 0) -- отказ по превышению ТВГ
createGlobalPropertyi("sim/custom/failures/apu_fail_fuel_left", 0) -- отказ по остатку топлива в камере
createGlobalPropertyi("sim/custom/failures/apu_fail", 0) -- отказ ВСУ
createGlobalPropertyi("sim/custom/failures/apu_press_fail", 0) -- отказ отбора воздуха ВСУ
createGlobalPropertyf("sim/custom/failures/apu_oil_qty", 10) -- остаток масла ВСУ
createGlobalPropertyf("sim/custom/failures/brake_heat_left", 0) -- Температура тормозов
createGlobalPropertyf("sim/custom/failures/brake_heat_right", 0) -- Температура тормозов
createGlobalPropertyf("sim/custom/failures/brake_runtime_left", 0) -- Наработка тормозных колодок
createGlobalPropertyf("sim/custom/failures/brake_runtime_right", 0) -- Наработка тормозных колодок
createGlobalPropertyi("sim/custom/failures/rio_fail", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/window_heat_fail_1", 0) -- отказ обогрева окон
createGlobalPropertyi("sim/custom/failures/window_heat_fail_2", 0) -- отказ обогрева окон
createGlobalPropertyi("sim/custom/failures/window_heat_fail_3", 0) -- отказ обогрева окон
createGlobalPropertyi("sim/custom/antiice/ppd_3_heat_fail", 0) -- отказ обогрева ППД-3
createGlobalPropertyi("sim/custom/failures/ail_fail_left", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/ail_fail_right", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/fail_spoil_inn_left", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/fail_spoil_inn_right", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/fail_spoil_mid_left", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/fail_spoil_mid_right", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/fail_spoil_out_left", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/fail_spoil_out_right", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/flap_fail_left", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/flap_fail_right", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/stab_eng_fail", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/stab_automatic_fail", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/rudder_fail", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/elev_fail_left", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/elev_fail_right", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/trim_emerg_elv_fail", 0) -- отказ датчика обледенения
createGlobalPropertyi("sim/custom/failures/slats_fail", 0) -- отказ датчика обледенения
createGlobalPropertyf("sim/custom/failures/engine_runtime_1", 0) -- ресурс двигателя
createGlobalPropertyf("sim/custom/failures/engine_runtime_2", 0) -- ресурс двигателя
createGlobalPropertyf("sim/custom/failures/engine_runtime_3", 0) -- ресурс двигателя
createGlobalPropertyf("sim/custom/failures/engn_oil_qty_1", 30) -- остаток масла
createGlobalPropertyf("sim/custom/failures/engn_oil_qty_2", 30) -- остаток масла
createGlobalPropertyf("sim/custom/failures/engn_oil_qty_3", 30) -- остаток масла
createGlobalPropertyi("sim/custom/failures/engn_oil_leak_1", 0) -- утечка масла
createGlobalPropertyi("sim/custom/failures/engn_oil_leak_2", 0) -- утечка масла
createGlobalPropertyi("sim/custom/failures/engn_oil_leak_3", 0) -- утечка масла
createGlobalPropertyi("sim/custom/failures/eng_fuel_pmp_fail_1", 0) -- отказ топливного насоса двигателя
createGlobalPropertyi("sim/custom/failures/eng_fuel_pmp_fail_2", 0) -- отказ топливного насоса двигателя
createGlobalPropertyi("sim/custom/failures/eng_fuel_pmp_fail_3", 0) -- отказ топливного насоса двигателя
createGlobalPropertyi("sim/custom/failures/fuel_pump_2l_fail", 0) -- отказ топливного насоса
createGlobalPropertyi("sim/custom/failures/fuel_pump_2r_fail", 0) -- отказ топливного насоса
createGlobalPropertyi("sim/custom/failures/fuel_pump_3l_fail", 0) -- отказ топливного насоса
createGlobalPropertyi("sim/custom/failures/fuel_pump_3r_fail", 0) -- отказ топливного насоса
createGlobalPropertyi("sim/custom/failures/fuel_pump_1_fail", 0) -- отказ топливного насоса
createGlobalPropertyi("sim/custom/failures/fuel_pump_4_fail", 0) -- отказ топливного насоса
createGlobalPropertyi("sim/custom/failures/fuel_auto_fail", 0) -- отказ автоматики
createGlobalPropertyi("sim/custom/failures/fuel_level_fail", 0) -- отказ выравнивания
createGlobalPropertyi("sim/custom/failures/fuel_porc_fail", 0) -- отказ порцевания
createGlobalPropertyi("sim/custom/failures/fuel_meter_2l_fail", 0) -- отказ топливомера
createGlobalPropertyi("sim/custom/failures/fuel_meter_2r_fail", 0) -- отказ топливомера
createGlobalPropertyi("sim/custom/failures/fuel_meter_3l_fail", 0) -- отказ топливомера
createGlobalPropertyi("sim/custom/failures/fuel_meter_3r_fail", 0) -- отказ топливомера
createGlobalPropertyi("sim/custom/failures/fuel_meter_1_fail", 0) -- отказ топливомера
createGlobalPropertyi("sim/custom/failures/fuel_meter_4_fail", 0) -- отказ топливомера
createGlobalPropertyi("sim/custom/failures/fuel_meter_summ", 0) -- отказ топливомера
createGlobalPropertyi("sim/custom/failures/fuel_flowmeter_1_fail", 0) -- отказ расходомера
createGlobalPropertyi("sim/custom/failures/fuel_flowmeter_2_fail", 0) -- отказ расходомера
createGlobalPropertyi("sim/custom/failures/fuel_flowmeter_3_fail", 0) -- отказ расходомера
createGlobalPropertyi("sim/custom/failures/hydro_pump_fail_11", 0) -- отказ гидронасосов
createGlobalPropertyi("sim/custom/failures/hydro_pump_fail_12", 0) -- отказ гидронасосов
createGlobalPropertyi("sim/custom/failures/hydro_pump_fail_2", 0) -- отказ гидронасосов
createGlobalPropertyi("sim/custom/failures/hydro_pump_fail_3", 0) -- отказ гидронасосов
createGlobalPropertyi("sim/custom/failures/hydro_elec_fail_2", 0) -- отказ електронасосов
createGlobalPropertyi("sim/custom/failures/hydro_elec_fail_3", 0) -- отказ електронасосов
createGlobalPropertyi("sim/custom/failures/main_alarm_fail", 0) -- отказ сирены
createGlobalPropertyi("sim/custom/failures/speaker_alarm_fail", 0) -- отказ сирены
createGlobalPropertyi("sim/custom/failures/absu_ra56_roll_fail", 0) -- отказ ra56
createGlobalPropertyi("sim/custom/failures/absu_ra56_pitch_fail", 0) -- отказ ra56
createGlobalPropertyi("sim/custom/failures/absu_ra56_yaw_fail", 0) -- отказ ra56
createGlobalPropertyi("sim/custom/failures/absu_at1_fail", 0) -- отказ AT
createGlobalPropertyi("sim/custom/failures/absu_at2_fail", 0) -- отказ AT
createGlobalPropertyi("sim/custom/failures/absu_damp_roll_fail", 0) -- отказ демперов крена
createGlobalPropertyi("sim/custom/failures/absu_damp_pitch_fail", 0) -- отказ демперов тангажа
createGlobalPropertyi("sim/custom/failures/absu_damp_yaw_fail", 0) -- отказ демперов курса
createGlobalPropertyi("sim/custom/failures/absu_contr_roll_fail", 0) -- отказ бокового управления
createGlobalPropertyi("sim/custom/failures/absu_contr_pitch_fail", 0) -- отказ продольного управления
createGlobalPropertyi("sim/custom/failures/absu_calc_toga_fail", 0) -- отказ вычислителя УХОД
createGlobalPropertyi("sim/custom/failures/absu_calc_roll_fail", 0) -- отказ бокового канала СТУ
createGlobalPropertyi("sim/custom/failures/absu_calc_pitch_fail", 0) -- отказ продольного канала СТУ
createGlobalPropertyi("sim/custom/failures/nav1_fail", 0) -- отказ курсМП
createGlobalPropertyi("sim/custom/failures/nav2_fail", 0) -- отказ курсМП
createGlobalPropertyi("sim/custom/failures/dme1_fail", 0) -- отказ СД72
createGlobalPropertyi("sim/custom/failures/dme2_fail", 0) -- отказ СД72
createGlobalPropertyi("sim/custom/failures/diss_fail", 0) -- отказ дисс
createGlobalPropertyi("sim/custom/failures/nvu_fail", 0) -- отказ нву
createGlobalPropertyi("sim/custom/failures/radar_fail", 0) -- отказ радара
createGlobalPropertyi("sim/custom/failures/mrp_fail", 0) -- отказ МРП
createGlobalPropertyi("sim/custom/failures/rsbn_fail", 0) -- отказ РАСБН
createGlobalPropertyi("sim/custom/failures/taws_fail", 0) -- отказ СРПБЗ
createGlobalPropertyi("sim/custom/failures/tks_km1_fail", 0) -- отказ ТКС
createGlobalPropertyi("sim/custom/failures/tks_km2_fail", 0) -- отказ ТКС
createGlobalPropertyi("sim/custom/failures/tks_bgmk1_fail", 0) -- отказ ТКС
createGlobalPropertyi("sim/custom/failures/tks_bgmk2_fail", 0) -- отказ ТКС
createGlobalPropertyi("sim/custom/failures/agr_fail", 0) -- отказ АГР
createGlobalPropertyi("sim/custom/failures/bkk_fail", 0) -- отказ БКК
createGlobalPropertyi("sim/custom/failures/mgv_fail", 0) -- отказ МГВ
createGlobalPropertyi("sim/custom/failures/rv1_fail", 0) -- отказ РВ5
createGlobalPropertyi("sim/custom/failures/rv2_fail", 0) -- отказ РВ5
createGlobalPropertyi("sim/custom/failures/uvid15_fail", 0) -- отказ УВИД
createGlobalPropertyi("sim/custom/failures/pitot1", 0) -- отказ Пито
createGlobalPropertyi("sim/custom/failures/pitot2", 0) -- отказ Пито
createGlobalPropertyi("sim/custom/failures/static1", 0) -- отказ полного давления
createGlobalPropertyi("sim/custom/failures/static2", 0) -- отказ полного давления
createGlobalPropertyi("sim/custom/failures/AOA", 0) -- отказ УА
