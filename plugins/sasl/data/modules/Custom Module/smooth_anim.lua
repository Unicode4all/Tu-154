sim_period = globalPropertyf("sim/operation/misc/frame_rate_period") 

cap01 = globalPropertyf("tu154ce/controll/stab_man_cap") -- крышка управления стабилизатором
cap02 = globalPropertyf("tu154ce/controll/contr_force_cap") -- крышка переключателя загружателя РВ РН
cap03 = globalPropertyf("tu154ce/switchers/nosewheel_turn_cap") -- крышка переключателя угла поворота
cap04 = globalPropertyf("tu154ce/switchers/slat_man_cap") -- крышка ручного урпавления предкрылками
cap05 = globalPropertyf("tu154ce/switchers/flaps_sel_cap") -- крышка выбора работы закрылков
cap06 = globalPropertyf("tu154ce/switchers/gears_retr_lock_cap") -- крышка блокировки уборки шасси
cap07 = globalPropertyf("tu154ce/switchers/gears_ext_3GS_cap") -- крышка выпуска шасси от 3ГС
cap08 = globalPropertyf("tu154ce/switchers/ovhd/bkk_contr_cap") -- крышка тумблера контроля БКК
cap09 = globalPropertyf("tu154ce/switchers/ovhd/bkk_on_cap") -- крышка выключателя БКК
cap10 = globalPropertyf("tu154ce/switchers/ovhd/sau_stu_cap") -- крышка выключателя САУ СТУ
cap11 = globalPropertyf("tu154ce/switchers/ovhd/pkp_left_cap") -- крылка ПКП лев
cap12 = globalPropertyf("tu154ce/switchers/ovhd/pkp_right_cap") -- крышка ПКП прав
cap13 = globalPropertyf("tu154ce/switchers/ovhd/mgv_contr_cap") -- контроль МГВ крышка
cap14 = globalPropertyf("tu154ce/switchers/ovhd/emerg_light_cap") -- крышка аварийного освещения
cap15 = globalPropertyf("tu154ce/switchers/ovhd/egpws_alarm_1_cap") -- сигнализация СРПБЗ общ
cap16 = globalPropertyf("tu154ce/switchers/ovhd/egpws_alarm_2_cap") -- сигнализация СРПБЗ 
cap17 = globalPropertyf("tu154ce/buttons/ovhd/transponder_emerg_cap") -- крышка кнопки аварии
cap18 = globalPropertyf("tu154ce/switchers/eng/hydro_trimm_rud_1_cap") -- триммирование РВ 1
cap19 = globalPropertyf("tu154ce/switchers/eng/hydro_trimm_rud_2_cap") -- триммирование РВ 2
cap20 = globalPropertyf("tu154ce/switchers/eng/emerg_gen_on_1_cap") -- аварийное включение генераторов
cap21 = globalPropertyf("tu154ce/switchers/eng/emerg_gen_on_2_cap") -- аварийное включение генераторов
cap22 = globalPropertyf("tu154ce/switchers/eng/emerg_gen_on_3_cap") -- аварийное включение генераторов
cap23 = globalPropertyf("tu154ce/switchers/eng/hydro_circuit_auto_man_cap") -- кольцевание автомат - ручное
cap24 = globalPropertyf("tu154ce/switchers/eng/hydro_long_control_cap") -- продольная управляемость
cap25 = globalPropertyf("tu154ce/switchers/eng/fire_buzzer_cap") -- пожарная сирена
cap26 = globalPropertyf("tu154ce/switchers/eng/srd_buzzer_cap") -- СРД сирена
cap27 = globalPropertyf("tu154ce/switchers/eng/fuel_buzzer_cap") -- сирена остатка топлива 2500кг
cap28 = globalPropertyf("tu154ce/switchers/eng/sard_disable_cap") -- перекрытие клапана сброса воздуха
cap29 = globalPropertyf("tu154ce/switchers/eng/emerg_inv115_cap") -- аварийн. преобраз 115в
cap30 = globalPropertyf("tu154ce/switchers/eng/pts250_on_cap") -- выключатель ПТС250
cap31 = globalPropertyf("tu154ce/switchers/eng/pts250_mode_cap") -- режим ПТС250. авто - ручное
cap32 = globalPropertyf("tu154ce/switchers/eng/bus27_connect_cap") -- соединение сетей 27в
cap33 = globalPropertyf("tu154ce/switchers/fuel/fuel_trans_cap") -- краны резервой перекачки
cap34 = globalPropertyf("tu154ce/switchers/fuel/fuel_porc_cap") -- принуд порц
cap35 = globalPropertyf("tu154ce/switchers/fuel/fuel_flow_on_cap") -- автомат расхода
cap36 = globalPropertyf("tu154ce/switchers/fuel/fire_valve_1_cap") -- пожарный кран
cap37 = globalPropertyf("tu154ce/switchers/fuel/fire_valve_2_cap") -- пожарный кран
cap38 = globalPropertyf("tu154ce/switchers/fuel/fire_valve_3_cap") -- пожарный кран
cap39 = globalPropertyf("tu154ce/switchers/hydro/connect2to1_cap") -- подключение 2 ГС на 1 ГС
cap40 = globalPropertyf("tu154ce/switchers/airbleed/heat_close_cap") -- прекращение обогрева
cap41 = globalPropertyf("tu154ce/switchers/airbleed/ground_cond_on_cap") -- наземное кондиционирование
cap42 = globalPropertyf("tu154ce/switchers/airbleed/skv_faster_work_cap") -- крышка
cap43 = globalPropertyf("tu154ce/switchers/airbleed/psvp_left_on_cap") -- ПСВП лев
cap44 = globalPropertyf("tu154ce/switchers/airbleed/psvp_right_on_cap") -- ПСВП прав
cap45 = globalPropertyf("tu154ce/switchers/airbleed/emerg_decompress_cap") -- сброс давления
cap46 = globalPropertyf("tu154ce/switchers/airbleed/dubler_on_cap") -- дублер
cap47 = globalPropertyf("tu154ce/switchers/eng/starter_cap") -- крышка панели запуска
cap48 = globalPropertyf("tu154ce/switchers/eng/gauges_on_1_cap") -- приборы контроля двигателей
cap49 = globalPropertyf("tu154ce/switchers/eng/gauges_on_2_cap") -- приборы контроля двигателей
cap50 = globalPropertyf("tu154ce/switchers/eng/gauges_on_3_cap") -- приборы контроля двигателей
cap51 = globalPropertyf("tu154ce/switchers/console/busters_cap") -- крышка выключателей бустеров
cap52 = globalPropertyf("tu154ce/switchers/console/absu_speed_off_cap") -- отключение 1 и 2
cap53 = globalPropertyf("tu154ce/switchers/console/absu_speed_prepare_cap") -- подготовка
cap54 = globalPropertyf("tu154ce/switchers/console/absu_smooth_on_cap") -- выключатель "в болтанку"
cap55 = globalPropertyf("tu154ce/buttons/console/absu_arrest_cap") -- крышка кнопок арретирования
cap56 = globalPropertyf("tu154ce/switchers/console/emerg_elev_trimm_cap") -- аварийное управление триммером
cap57 = globalPropertyf("tu154ce/lights/landing_light_off_cap") -- выключатель фар

cap01_anim  = globalPropertyf("tu154ce/controll/stab_man_cap_anim") -- крышка управления стабилизатором
cap02_anim  = globalPropertyf("tu154ce/controll/contr_force_cap_anim") -- крышка переключателя загружателя РВ РН
cap03_anim  = globalPropertyf("tu154ce/switchers/nosewheel_turn_cap_anim") -- крышка переключателя угла поворота
cap04_anim  = globalPropertyf("tu154ce/switchers/slat_man_cap_anim") -- крышка ручного урпавления предкрылками
cap05_anim  = globalPropertyf("tu154ce/switchers/flaps_sel_cap_anim") -- крышка выбора работы закрылков
cap06_anim  = globalPropertyf("tu154ce/switchers/gears_retr_lock_cap_anim") -- крышка блокировки уборки шасси
cap07_anim  = globalPropertyf("tu154ce/switchers/gears_ext_3GS_cap_anim") -- крышка выпуска шасси от 3ГС
cap08_anim  = globalPropertyf("tu154ce/switchers/ovhd/bkk_contr_cap_anim") -- крышка тумблера контроля БКК
cap09_anim  = globalPropertyf("tu154ce/switchers/ovhd/bkk_on_cap_anim") -- крышка выключателя БКК
cap10_anim = globalPropertyf("tu154ce/switchers/ovhd/sau_stu_cap_anim") -- крышка выключателя САУ СТУ
cap11_anim = globalPropertyf("tu154ce/switchers/ovhd/pkp_left_cap_anim") -- крылка ПКП лев
cap12_anim = globalPropertyf("tu154ce/switchers/ovhd/pkp_right_cap_anim") -- крышка ПКП прав
cap13_anim = globalPropertyf("tu154ce/switchers/ovhd/mgv_contr_cap_anim") -- контроль МГВ крышка
cap14_anim = globalPropertyf("tu154ce/switchers/ovhd/emerg_light_cap_anim") -- крышка аварийного освещения
cap15_anim = globalPropertyf("tu154ce/switchers/ovhd/egpws_alarm_1_cap_anim") -- сигнализация СРПБЗ общ
cap16_anim = globalPropertyf("tu154ce/switchers/ovhd/egpws_alarm_2_cap_anim") -- сигнализация СРПБЗ 
cap17_anim = globalPropertyf("tu154ce/buttons/ovhd/transponder_emerg_cap_anim") -- крышка кнопки аварии
cap18_anim = globalPropertyf("tu154ce/switchers/eng/hydro_trimm_rud_1_cap_anim") -- триммирование РВ 1
cap19_anim = globalPropertyf("tu154ce/switchers/eng/hydro_trimm_rud_2_cap_anim") -- триммирование РВ 2
cap20_anim = globalPropertyf("tu154ce/switchers/eng/emerg_gen_on_1_cap_anim") -- аварийное включение генераторов
cap21_anim = globalPropertyf("tu154ce/switchers/eng/emerg_gen_on_2_cap_anim") -- аварийное включение генераторов
cap22_anim = globalPropertyf("tu154ce/switchers/eng/emerg_gen_on_3_cap_anim") -- аварийное включение генераторов
cap23_anim = globalPropertyf("tu154ce/switchers/eng/hydro_circuit_auto_man_cap_anim") -- кольцевание автомат - ручное
cap24_anim = globalPropertyf("tu154ce/switchers/eng/hydro_long_control_cap_anim") -- продольная управляемость
cap25_anim = globalPropertyf("tu154ce/switchers/eng/fire_buzzer_cap_anim") -- пожарная сирена
cap26_anim = globalPropertyf("tu154ce/switchers/eng/srd_buzzer_cap_anim") -- СРД сирена
cap27_anim = globalPropertyf("tu154ce/switchers/eng/fuel_buzzer_cap_anim") -- сирена остатка топлива 2500кг
cap28_anim = globalPropertyf("tu154ce/switchers/eng/sard_disable_cap_anim") -- перекрытие клапана сброса воздуха
cap29_anim = globalPropertyf("tu154ce/switchers/eng/emerg_inv115_cap_anim") -- аварийн. преобраз 115в
cap30_anim = globalPropertyf("tu154ce/switchers/eng/pts250_on_cap_anim") -- выключатель ПТС250
cap31_anim = globalPropertyf("tu154ce/switchers/eng/pts250_mode_cap_anim") -- режим ПТС250. авто - ручное
cap32_anim = globalPropertyf("tu154ce/switchers/eng/bus27_connect_cap_anim") -- соединение сетей 27в
cap33_anim = globalPropertyf("tu154ce/switchers/fuel/fuel_trans_cap_anim") -- краны резервой перекачки
cap34_anim = globalPropertyf("tu154ce/switchers/fuel/fuel_porc_cap_anim") -- принуд порц
cap35_anim = globalPropertyf("tu154ce/switchers/fuel/fuel_flow_on_cap_anim") -- автомат расхода
cap36_anim = globalPropertyf("tu154ce/switchers/fuel/fire_valve_1_cap_anim") -- пожарный кран
cap37_anim = globalPropertyf("tu154ce/switchers/fuel/fire_valve_2_cap_anim") -- пожарный кран
cap38_anim = globalPropertyf("tu154ce/switchers/fuel/fire_valve_3_cap_anim") -- пожарный кран
cap39_anim = globalPropertyf("tu154ce/switchers/hydro/connect2to1_cap_anim") -- подключение 2 ГС на 1 ГС
cap40_anim = globalPropertyf("tu154ce/switchers/airbleed/heat_close_cap_anim") -- прекращение обогрева
cap41_anim = globalPropertyf("tu154ce/switchers/airbleed/ground_cond_on_cap_anim") -- наземное кондиционирование
cap42_anim = globalPropertyf("tu154ce/switchers/airbleed/skv_faster_work_cap_anim") -- крышка
cap43_anim = globalPropertyf("tu154ce/switchers/airbleed/psvp_left_on_cap_anim") -- ПСВП лев
cap44_anim = globalPropertyf("tu154ce/switchers/airbleed/psvp_right_on_cap_anim") -- ПСВП прав
cap45_anim = globalPropertyf("tu154ce/switchers/airbleed/emerg_decompress_cap_anim") -- сброс давления
cap46_anim = globalPropertyf("tu154ce/switchers/airbleed/dubler_on_cap_anim") -- дублер
cap47_anim = globalPropertyf("tu154ce/switchers/eng/starter_cap_anim") -- крышка панели запуска
cap48_anim = globalPropertyf("tu154ce/switchers/eng/gauges_on_1_cap_anim") -- приборы контроля двигателей
cap49_anim = globalPropertyf("tu154ce/switchers/eng/gauges_on_2_cap_anim") -- приборы контроля двигателей
cap50_anim = globalPropertyf("tu154ce/switchers/eng/gauges_on_3_cap_anim") -- приборы контроля двигателей
cap51_anim = globalPropertyf("tu154ce/switchers/console/busters_cap_anim") -- крышка выключателей бустеров
cap52_anim = globalPropertyf("tu154ce/switchers/console/absu_speed_off_cap_anim") -- отключение 1 и 2
cap53_anim = globalPropertyf("tu154ce/switchers/console/absu_speed_prepare_cap_anim") -- подготовка
cap54_anim = globalPropertyf("tu154ce/switchers/console/absu_smooth_on_cap_anim") -- выключатель "в болтанку"
cap55_anim = globalPropertyf("tu154ce/buttons/console/absu_arrest_cap_anim") -- крышка кнопок арретирования
cap56_anim = globalPropertyf("tu154ce/switchers/console/emerg_elev_trimm_cap_anim") -- аварийное управление триммером
cap57_anim = globalPropertyf("tu154ce/lights/landing_light_off_cap_anim") -- выключатель фар


function smooth_anim(target, current_value)

    local fps_factor = math.min(1.0, 9.5* get(sim_period))

    if target >= (1 - 0.001) and current_value >= (1 - 0.01) then
        return 1
    elseif target <= (0 + 0.001) and current_value <= (0 + 0.01) then
       return 0
    else
        return current_value + ((target - current_value) * fps_factor)
    end

end

function update()
    set(cap01_anim, smooth_anim(get(cap01), get(cap01_anim)))
    set(cap02_anim, smooth_anim(get(cap02), get(cap02_anim)))
    set(cap03_anim, smooth_anim(get(cap03), get(cap03_anim)))
    set(cap04_anim, smooth_anim(get(cap04), get(cap04_anim)))
    set(cap05_anim, smooth_anim(get(cap05), get(cap05_anim)))
    set(cap06_anim, smooth_anim(get(cap06), get(cap06_anim)))
    set(cap07_anim, smooth_anim(get(cap07), get(cap07_anim)))
    set(cap08_anim, smooth_anim(get(cap08), get(cap08_anim)))
    set(cap09_anim, smooth_anim(get(cap09), get(cap09_anim)))
    set(cap10_anim, smooth_anim(get(cap10), get(cap10_anim)))
    set(cap11_anim, smooth_anim(get(cap11), get(cap11_anim)))
    set(cap12_anim, smooth_anim(get(cap12), get(cap12_anim)))
    set(cap13_anim, smooth_anim(get(cap13), get(cap13_anim)))
    set(cap14_anim, smooth_anim(get(cap14), get(cap14_anim)))
    set(cap15_anim, smooth_anim(get(cap15), get(cap15_anim)))
    set(cap16_anim, smooth_anim(get(cap16), get(cap16_anim)))
    set(cap17_anim, smooth_anim(get(cap17), get(cap17_anim)))
    set(cap18_anim, smooth_anim(get(cap18), get(cap18_anim)))
    set(cap19_anim, smooth_anim(get(cap19), get(cap19_anim)))
    set(cap20_anim, smooth_anim(get(cap20), get(cap20_anim)))
    set(cap21_anim, smooth_anim(get(cap21), get(cap21_anim)))
    set(cap22_anim, smooth_anim(get(cap22), get(cap22_anim)))
    set(cap23_anim, smooth_anim(get(cap23), get(cap23_anim)))
    set(cap24_anim, smooth_anim(get(cap24), get(cap24_anim)))
    set(cap25_anim, smooth_anim(get(cap25), get(cap25_anim)))
    set(cap26_anim, smooth_anim(get(cap26), get(cap26_anim)))
    set(cap27_anim, smooth_anim(get(cap27), get(cap27_anim)))
    set(cap28_anim, smooth_anim(get(cap28), get(cap28_anim)))
    set(cap29_anim, smooth_anim(get(cap29), get(cap29_anim)))
    set(cap30_anim, smooth_anim(get(cap30), get(cap30_anim)))
    set(cap31_anim, smooth_anim(get(cap31), get(cap31_anim)))
    set(cap32_anim, smooth_anim(get(cap32), get(cap32_anim)))
    set(cap33_anim, smooth_anim(get(cap33), get(cap33_anim)))
    set(cap34_anim, smooth_anim(get(cap34), get(cap34_anim)))
    set(cap35_anim, smooth_anim(get(cap35), get(cap35_anim)))
    set(cap36_anim, smooth_anim(get(cap36), get(cap36_anim)))
    set(cap37_anim, smooth_anim(get(cap37), get(cap37_anim)))
    set(cap38_anim, smooth_anim(get(cap38), get(cap38_anim)))
    set(cap39_anim, smooth_anim(get(cap39), get(cap39_anim)))
    set(cap40_anim, smooth_anim(get(cap40), get(cap40_anim)))
    set(cap41_anim, smooth_anim(get(cap41), get(cap41_anim)))
    set(cap42_anim, smooth_anim(get(cap42), get(cap42_anim)))
    set(cap43_anim, smooth_anim(get(cap43), get(cap43_anim)))
    set(cap44_anim, smooth_anim(get(cap44), get(cap44_anim)))
    set(cap45_anim, smooth_anim(get(cap45), get(cap45_anim)))
    set(cap46_anim, smooth_anim(get(cap46), get(cap46_anim)))
    set(cap47_anim, smooth_anim(get(cap47), get(cap47_anim)))
    set(cap48_anim, smooth_anim(get(cap48), get(cap48_anim)))
    set(cap49_anim, smooth_anim(get(cap49), get(cap49_anim)))
    set(cap50_anim, smooth_anim(get(cap50), get(cap50_anim)))
    set(cap51_anim, smooth_anim(get(cap51), get(cap51_anim)))
    set(cap52_anim, smooth_anim(get(cap52), get(cap52_anim)))
    set(cap53_anim, smooth_anim(get(cap53), get(cap53_anim)))
    set(cap54_anim, smooth_anim(get(cap54), get(cap54_anim)))
    set(cap55_anim, smooth_anim(get(cap55), get(cap55_anim)))
    set(cap56_anim, smooth_anim(get(cap56), get(cap56_anim)))
    set(cap57_anim, smooth_anim(get(cap57), get(cap57_anim)))
end