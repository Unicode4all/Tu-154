createGlobalPropertyi("tu154ce/save_state_enabled", 1) -- включено ли сохранение состояния самолета
createGlobalPropertyi("tu154ce/reset_state", 0) -- сброс состояния самолета
createGlobalPropertyi("tu154ce/save_state", 0) -- принудительное сохранение состояния самолета
createGlobalPropertyi("tu154ce/hardware_cockpit", 0) -- Самолет подготовлен для железного кокпита
createGlobalPropertyf("tu154ce/time/frame_time", 0.1) -- время между кадрами. при прокрутке назад, не принимает отрицательного значения. при FPS меньше 10 - ставит время кадра = 0.1
createGlobalPropertyf("tu154ce/anim/cargo_1", 0) -- положение багажной двери 1. 0 - закрыта, 1 - открыта
createGlobalPropertyf("tu154ce/anim/cargo_2", 0) -- положение багажной двери 2. 0 - закрыта, 1 - открыта
createGlobalPropertyf("tu154ce/anim/apu_doors", 0) -- положение створок ВСУ. 0 - закрыты, 1 - открыты.
createGlobalPropertyf("tu154ce/anim/pax_door_1", 0) -- положение передних пасс дверей
createGlobalPropertyf("tu154ce/anim/pax_door_2", 0) -- положение средних пасс дверей
createGlobalPropertyf("tu154ce/anim/pax_door_3", 0) -- положение правых аварийных дверей
createGlobalPropertyf("tu154ce/anim/lg/front_pos", 1) -- положение передней стойки шасси
createGlobalPropertyf("tu154ce/anim/lg/front_defl", 0) -- просадка аммортизатора передней стойки
createGlobalPropertyf("tu154ce/anim/lg/front_turn", 0) -- поворот передней стойки шасси
createGlobalPropertyf("tu154ce/anim/lg/main_pos_left", 1) -- положение левой основной стойки. 0-1 - выпуск, 1+ - просадка аммортизатора
createGlobalPropertyf("tu154ce/anim/lg/main_rot_left", 0) -- поворот левой тележки на земле
createGlobalPropertyf("tu154ce/anim/lg/main_pos_right", 1) -- положение правой основной стойки. 0-1 - выпуск, 1+ - просадка аммортизатора
createGlobalPropertyf("tu154ce/anim/lg/main_rot_right", 0) -- поворот правой тележки на земле
createGlobalPropertyf("tu154ce/anim/light_open_left", 0) -- выпуск левой фары
createGlobalPropertyf("tu154ce/anim/light_open_right", 0) -- выпуск правой фары
createGlobalPropertyf("tu154ce/anim/spd_brk_inn_left", 0) -- положение левого внутреннего спидбрейка
createGlobalPropertyf("tu154ce/anim/spd_brk_inn_right", 0) -- положение правого внутреннего спидбрейка
createGlobalPropertyf("tu154ce/anim/wing_flx_left", 0) -- угол изгиба левого крыла. положительные значения - изгиб вверх
createGlobalPropertyf("tu154ce/anim/wing_flx_right", 0) -- угол изгиба правого крыла. положительные значения - изгиб вверх
createGlobalPropertyf("tu154ce/anim/rudder_anim", 0) -- угол поворота руля направления для анимации. его физичческая модель будет поворачиваться на меньший угол при реверсе.
createGlobalPropertyf("tu154ce/anim/elev_anim_L", 0) -- угол поворота руля высоты
createGlobalPropertyf("tu154ce/anim/elev_anim_R", 0) -- угол поворота руля высоты
createGlobalPropertyf("tu154ce/anim/cockpit_door", 0) -- открывание двери в кабину
createGlobalPropertyf("tu154ce/anim/cockpit_table_1", 0) -- столики на сидениях пилотов
createGlobalPropertyf("tu154ce/anim/cockpit_table_2", 0) -- столики на сидениях пилотов
createGlobalPropertyf("tu154ce/anim/cockpit_vent_1", 0) -- угол поворота вентиляторов
createGlobalPropertyf("tu154ce/anim/cockpit_vent_2", 0) -- угол поворота вентиляторов
createGlobalPropertyf("tu154ce/anim/cockpit_vent_3", 0) -- угол поворота вентиляторов
createGlobalPropertyf("tu154ce/anim/cockpit_window_left", 0) -- открытие форточки
createGlobalPropertyf("tu154ce/anim/cockpit_window_right", 0) -- открытие форточки
createGlobalPropertyi("tu154ce/anim/show_gns", 1) -- в самолете установлена GNS430 вместо KLN
createGlobalPropertyi("tu154ce/anim/RXP", 0) -- в системе установлена RXP
createGlobalPropertyi("tu154ce/anim/show_yokes", 1) -- видны ли штурвалы
createGlobalPropertyi("tu154ce/anim/show_chairs", 1) -- видны ли кресла
createGlobalPropertyf("tu154ce/anim/rise_chair_arm_L", 0) -- поднять ручку кресла
createGlobalPropertyf("tu154ce/anim/rise_chair_arm_R", 0) -- поднять ручку кресла
createGlobalPropertyi("tu154ce/anim/table_up_L", 0) -- поднять столики
createGlobalPropertyi("tu154ce/anim/table_up_R", 0) -- поднять столики
createGlobalPropertyi("tu154ce/anim/gpu_present", 0) -- РАП присутствует
createGlobalPropertyf("tu154ce/anim/gpu_work", 0) -- РАП работает. поднятие крышки выхлопа
createGlobalPropertyf("tu154ce/anim/ground_stuff_angle", 0) -- коррекция угла по тангажу для техники
createGlobalPropertyf("tu154ce/anim/window_ice_1", 0) -- уровень льда на стеклах
createGlobalPropertyf("tu154ce/anim/window_ice_2", 0) -- уровень льда на стеклах
createGlobalPropertyf("tu154ce/anim/window_ice_3", 0) -- уровень льда на стеклах
createGlobalPropertyf("tu154ce/anim/window_ice_4", 0) -- уровень льда на остальных стеклах
createGlobalPropertyi("tu154ce/anim/gear_blocks", 0) -- установка блоков шасси
createGlobalPropertyi("tu154ce/anim/sensors_caps", 0) -- установка крышек датчиков
createGlobalPropertyi("tu154ce/anim/engine_caps", 0) -- установка крышек двигателей
createGlobalPropertyf("tu154ce/anim/ladder_1", 500) -- трап. 500 - скрыт. +50..0 - подъезжает, 0 - стоит возле замолета, 0..-50 - уезжает
createGlobalPropertyf("tu154ce/anim/ladder_2", 500) -- трап
createGlobalPropertyf("tu154ce/anim/catering", 500) -- кухни
createGlobalPropertyf("tu154ce/anim/fuel_tanker", 500) -- заправщик
createGlobalPropertyi("tu154ce/anim/ladder_1_call", 0) -- трап. 1 подъехать,0 - уехать
createGlobalPropertyi("tu154ce/anim/ladder_2_call", 0) -- трап
createGlobalPropertyi("tu154ce/anim/catering_call", 0) -- кухни
createGlobalPropertyi("tu154ce/anim/fuel_tanker_call", 0) -- заправщик
createGlobalPropertyf("tu154ce/anim/reverse_mid", 0) -- положение общего манипулятора реверса
createGlobalPropertyi("tu154ce/buttons/clock_24_left", 0) -- левая кнопка 24-часовых часов. 0 - отжата, 1 - нажата (касается всех кнопок)
createGlobalPropertyi("tu154ce/buttons/clock_24_right", 0) -- правая кнопка 24-часовых часов
createGlobalPropertyf("tu154ce/gauges/clock_24_hours", 0) -- часовая стрелка
createGlobalPropertyf("tu154ce/gauges/clock_24_mins", 0) -- минутная стрелка
createGlobalPropertyf("tu154ce/gauges/clock_24_red", 0) -- красная стрелка
createGlobalPropertyi("tu154ce/switchers/spu_1_power", 1) -- переключатель питания на СПУ КВС.  -1 - сеть 2, 0 - выкл, 1 - сеть 1
createGlobalPropertyi("tu154ce/switchers/spu_1_mode", 0) -- переключатель режимов на СПУ КВС. 0 - радио, 1 - СПУ
createGlobalPropertyi("tu154ce/switchers/spu_1_source", 0) -- переключатель источников на СПУ КВС
createGlobalPropertyi("tu154ce/switchers/spu_2_power", 1) -- переключатель питания на СПУ 2П
createGlobalPropertyi("tu154ce/switchers/spu_2_mode", 0) -- переключатель режимов на СПУ 2П
createGlobalPropertyi("tu154ce/switchers/spu_2_source", 0) -- переключатель источников на СПУ 2П
createGlobalPropertyi("tu154ce/switchers/spu_3_power", 1) -- переключатель питания на СПУ ШТ
createGlobalPropertyi("tu154ce/switchers/spu_3_mode", 0) -- переключатель режимов на СПУ ШТ
createGlobalPropertyi("tu154ce/switchers/spu_3_source", 0) -- переключатель источников на СПУ ШТ
createGlobalPropertyi("tu154ce/switchers/spu_4_power", 1) -- переключатель питания на СПУ БИ
createGlobalPropertyi("tu154ce/switchers/spu_4_mode", 0) -- переключатель режимов на СПУ БИ
createGlobalPropertyi("tu154ce/switchers/spu_4_source", 0) -- переключатель источников на СПУ БИ
createGlobalPropertyi("tu154ce/lights/mid_left_panel_int_set", 3) -- регулятор встроенного освещения передней панели КВС
createGlobalPropertyi("tu154ce/lights/left_panel_int_set", 3) -- регулятор встроенного освещения левой панели
createGlobalPropertyi("tu154ce/lights/right_panel_int_set", 3) -- регулятор встроенного освещения правой панели
createGlobalPropertyi("tu154ce/lights/mid_right_panel_int_set", 3) -- регулятор встроенного освещения передней панели 2П
createGlobalPropertyi("tu154ce/lights/ovhd_panel_int_set", 3) -- регулятор встроенного освещения верхней панели
createGlobalPropertyf("tu154ce/lights/left_panel_flood_set", 0.3) -- регулятор яркости заливающего света левой панели
createGlobalPropertyf("tu154ce/lights/right_panel_flood_set", 0.3) -- регулятор яркости заливающего света правой панели
createGlobalPropertyf("tu154ce/lights/mid_panel_flood_set", 0.3) -- регулятор яркости заливающего света центральной панели
createGlobalPropertyf("tu154ce/lights/front_panel_flood_set", 0.3) -- регулятор яркости заливающего света передней панели
createGlobalPropertyf("tu154ce/lights/ovhd_front_panel_flood_set", 0.3) -- регулятор яркости заливающего света передней части оверхеда
createGlobalPropertyf("tu154ce/lights/ovhd_back_panel_flood_set", 0.3) -- регулятор яркости заливающего света заднией части оверхеда
createGlobalPropertyf("tu154ce/lights/eng_panel_flood_set", 0.3) -- регулятор яркости освещения панели БИ
createGlobalPropertyi("tu154ce/lights/cabinl_flood_set", 0) -- выключатель освещения кабины
createGlobalPropertyi("tu154ce/lights/azs_panel_flood_set", 0) -- выключатель освещения панели АЗС
createGlobalPropertyi("tu154ce/lights/day_night_set", 0) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.
createGlobalPropertyi("tu154ce/lights/cargo_light_1_set", 0) -- выключатель освещения грузового отсека
createGlobalPropertyi("tu154ce/lights/cargo_light_2_set", 0) -- выключатель освещения грузового отсека
createGlobalPropertyi("tu154ce/lights/tech_light_set", 0) -- выключатель освещения технического отсека
createGlobalPropertyi("tu154ce/lights/gear_nacelle_light_set", 0) -- выключатель освещения гондол шасси
createGlobalPropertyf("tu154ce/lights/cabin_2d_light", 0) -- яркость 2D подсветки в салоне
createGlobalPropertyi("tu154ce/lights/nav_lights_set", 1) -- выключатель нав огней
createGlobalPropertyi("tu154ce/lights/strobe_set", 1) -- выключатель строб огней
createGlobalPropertyi("tu154ce/lights/wing_light_left_set", 0) -- выключатель подсвета крыла
createGlobalPropertyi("tu154ce/lights/wing_light_right_set", 0) -- выключатель подсвета крыла
createGlobalPropertyi("tu154ce/lights/tail_light_set", 1) -- выключатель подсвета хвоста
createGlobalPropertyi("tu154ce/lights/wing_light_left", 0) -- подсветка крыла лев
createGlobalPropertyi("tu154ce/lights/wing_light_right", 0) -- подсветка крыла прав
createGlobalPropertyi("tu154ce/lights/tail_light", 0) -- подсветка хвоста
createGlobalPropertyi("tu154ce/lights/landing_ext_set_L", 0) -- выпуск фар лев
createGlobalPropertyi("tu154ce/lights/landing_ext_set_R", 0) -- выпуск фар прав
createGlobalPropertyi("tu154ce/lights/landing_mode_set_L", 0) -- режим фар лев. -1 - рулежный, 0 - выкл, +1 - посадочный
createGlobalPropertyi("tu154ce/lights/landing_mode_set_R", 0) -- режим фар прав
createGlobalPropertyi("tu154ce/lights/light_signal_set", 0) -- сигнал в полете
createGlobalPropertyf("tu154ce/controlls/nosewheel_lever", 0) -- рычаг поворота передней ноги
createGlobalPropertyf("tu154ce/controlls/yoke_pitch", 0) -- поворот штурвала ко тангажу
createGlobalPropertyf("tu154ce/controlls/yoke_roll", 0) -- поворот штурвала по крену
createGlobalPropertyf("tu154ce/controlls/pedals", 0) -- поворот педалей
createGlobalPropertyf("tu154ce/controlls/brake_L", 0) -- тормоз педалей лев
createGlobalPropertyf("tu154ce/controlls/brake_R", 0) -- тормоз педалей прав
createGlobalPropertyf("tu154ce/controlls/brake_emerg", 0) -- аварийный тормоз
createGlobalPropertyf("tu154ce/controlls/brake_emerg_L", 0) -- аварийный тормоз лев
createGlobalPropertyf("tu154ce/controlls/brake_emerg_R", 0) -- аварийный тормоз прав
createGlobalPropertyf("tu154ce/controlls/spoilers_lever", 0) -- рычаг интерцепторов
createGlobalPropertyf("tu154ce/controlls/throttle_1", 0) -- РУД 1
createGlobalPropertyf("tu154ce/controlls/throttle_2", 0) -- РУД 2
createGlobalPropertyf("tu154ce/controlls/throttle_3", 0) -- РУД 3
createGlobalPropertyf("tu154ce/controlls/throttle_1_ENG", 0) -- РУД 1 БИ
createGlobalPropertyf("tu154ce/controlls/throttle_2_ENG", 0) -- РУД 2 БИ
createGlobalPropertyf("tu154ce/controlls/throttle_3_ENG", 0) -- РУД 3 БИ
createGlobalPropertyf("tu154ce/controlls/revers_L", 0) -- рычаг реверса лев
createGlobalPropertyf("tu154ce/controlls/revers_R", 0) -- рычаг реверса прав
createGlobalPropertyf("tu154ce/controlls/fuel_cutoff_1", 0) -- рычаг пожарного крана 1
createGlobalPropertyf("tu154ce/controlls/fuel_cutoff_2", 0) -- рычаг пожарного крана 2
createGlobalPropertyf("tu154ce/controlls/fuel_cutoff_3", 0) -- рычаг пожарного крана 3
createGlobalPropertyf("tu154ce/controlls/throttle_lock", 0) -- рычаг фиксации РУД
createGlobalPropertyi("tu154ce/controll/parking_brake", 0) -- ручка фиксации тормоза
createGlobalPropertyi("tu154ce/controll/emerg_gear_ext", 0) -- ручка аварийного выпуска шасси
createGlobalPropertyf("tu154ce/controll/flaps_lever", 0) -- ручка выпуска закрылок. 0-45
createGlobalPropertyi("tu154ce/controll/gear_lever", 0) -- ручка выпуска шасси. -1 - уборка, 0 - нейтр, +1 - выпуск
createGlobalPropertyi("tu154ce/controll/elev_trimm_switcher", 0) -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование
createGlobalPropertyi("tu154ce/controll/stab_man_cap", 0) -- крышка управления стабилизатором
createGlobalPropertyi("tu154ce/controll/stab_manual", 0) -- ручное уплавение стабилизатором. 0 - нейтр, +1 - кабрирование
createGlobalPropertyi("tu154ce/controll/stab_setting", 1) -- положение центровки для стаба. 0 - З, 1 - С, 2 - П
createGlobalPropertyi("tu154ce/controll/ail_trimm_sw", 0) -- переключатель триммера элеронов
createGlobalPropertyi("tu154ce/controll/rudd_trimm_sw", 0) -- переключатель триммера РН
createGlobalPropertyi("tu154ce/controll/contr_force_cap", 0) -- крышка переключателя загружателя РВ РН
createGlobalPropertyi("tu154ce/controll/contr_force_set", 0) -- переключатель загружателя РВ РН. -1 - полет, 0 авто, +1 - взлет-посадка
createGlobalPropertyi("tu154ce/switchers/nosewheel_turn_enable", 1) -- выключатель поворота передней стойки на штурвале
createGlobalPropertyi("tu154ce/switchers/nosewheel_turn_sel", 0) -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63
createGlobalPropertyi("tu154ce/switchers/nosewheel_turn_cap", 0) -- крышка переключателя угла поворота
createGlobalPropertyi("tu154ce/switchers/slat_man", 0) -- ручное управление предкрылками. -1 - уборка, 0 выкл, +1 - выпуск
createGlobalPropertyi("tu154ce/switchers/slat_man_cap", 0) -- крышка ручного урпавления предкрылками
createGlobalPropertyi("tu154ce/switchers/flaps_sel", 0) -- выбор режимов работы закрылков. -1 - выкл, 0 - авт, +1 - ручное
createGlobalPropertyi("tu154ce/switchers/flaps_sel_cap", 0) -- крышка выбора работы закрылков
createGlobalPropertyi("tu154ce/switchers/gears_retr_lock", 0) -- блокировка уборки шасси
createGlobalPropertyi("tu154ce/switchers/gears_retr_lock_cap", 0) -- крышка блокировки уборки шасси
createGlobalPropertyi("tu154ce/switchers/gears_ext_3GS", 0) -- выпуск шасси от 3ГС
createGlobalPropertyi("tu154ce/switchers/gears_ext_3GS_cap", 0) -- крышка выпуска шасси от 3ГС
createGlobalPropertyi("tu154ce/gauges/acs1/left_knob_press", 0) -- левая кнопка часов АЧС1 КВС
createGlobalPropertyi("tu154ce/gauges/acs1/right_knob_press", 0) -- правая кнопка часов АЧС1 КВС
createGlobalPropertyf("tu154ce/gauges/acs1/needle_hours", 0) -- часовая стрелка АЧС1 КВС
createGlobalPropertyf("tu154ce/gauges/acs1/needle_mins", 0) -- минутная стрелка АЧС1 КВС
createGlobalPropertyf("tu154ce/gauges/acs1/needle_secs", 0) -- секундная стрелка АЧС1 КВС
createGlobalPropertyi("tu154ce/gauges/acs1/flag_pos", 0) -- красно-белый флажок АЧС1 КВС. -1 - белый, 0 - бело-красный, +1 - красный
createGlobalPropertyf("tu154ce/gauges/acs1/flight_timer_hours", 0) -- часовая стрелка таймера полета
createGlobalPropertyf("tu154ce/gauges/acs1/flight_timer_mins", 0) -- минутная стрелка таймера полета
createGlobalPropertyf("tu154ce/gauges/acs1/stopwatch_mins", 0) -- минутная стрелка секундомера
createGlobalPropertyi("tu154ce/gauges/acs2/left_knob_press", 0) -- левая кнопка часов АЧС1 2П
createGlobalPropertyi("tu154ce/gauges/acs2/right_knob_press", 0) -- правая кнопка часов АЧС1 2П
createGlobalPropertyf("tu154ce/gauges/acs2/needle_hours", 0) -- часовая стрелка АЧС1 2П
createGlobalPropertyf("tu154ce/gauges/acs2/needle_mins", 0) -- минутная стрелка АЧС1 2П
createGlobalPropertyf("tu154ce/gauges/acs2/needle_secs", 0) -- секундная стрелка АЧС1 2П
createGlobalPropertyi("tu154ce/gauges/acs2/flag_pos", 0) -- красно-белый флажок АЧС1 2П
createGlobalPropertyf("tu154ce/gauges/acs2/flight_timer_hours", 0) -- часовая стрелка таймера полета
createGlobalPropertyf("tu154ce/gauges/acs2/flight_timer_mins", 0) -- минутная стрелка таймера полета
createGlobalPropertyf("tu154ce/gauges/acs2/stopwatch_mins", 0) -- минутная стрелка секундомера
createGlobalPropertyi("tu154ce/gauges/acs3/left_knob_press", 0) -- левая кнопка часов АЧС1 БИ
createGlobalPropertyi("tu154ce/gauges/acs3/right_knob_press", 0) -- правая кнопка часов АЧС1 БИ
createGlobalPropertyf("tu154ce/gauges/acs3/needle_hours", 0) -- часовая стрелка АЧС1 БИ
createGlobalPropertyf("tu154ce/gauges/acs3/needle_mins", 0) -- минутная стрелка АЧС1 БИ
createGlobalPropertyf("tu154ce/gauges/acs3/needle_secs", 0) -- секундная стрелка АЧС1 БИ
createGlobalPropertyi("tu154ce/gauges/acs3/flag_pos", 0) -- красно-белый флажок АЧС1 БИ
createGlobalPropertyf("tu154ce/gauges/acs3/flight_timer_hours", 0) -- часовая стрелка таймера полета
createGlobalPropertyf("tu154ce/gauges/acs3/flight_timer_mins", 0) -- минутная стрелка таймера полета
createGlobalPropertyf("tu154ce/gauges/acs3/stopwatch_mins", 0) -- минутная стрелка секундомера
createGlobalPropertyf("tu154ce/gauges/speed/kus_ias_left", 0) -- приборная скорость на КУС730 КВС
createGlobalPropertyf("tu154ce/gauges/speed/kus_tas_left", 0) -- истинная скорость на КУС730 КВС
createGlobalPropertyf("tu154ce/gauges/speed/kus_ias_right", 0) -- приборная скорость на КУС730 2П
createGlobalPropertyf("tu154ce/gauges/speed/kus_tas_right", 0) -- истинная скорость на КУС730 2П
createGlobalPropertyf("tu154ce/gauges/speed/kus_ias_eng", 0) -- приборная скорость на КУС730 БИ
createGlobalPropertyf("tu154ce/gauges/speed/kus_tas_eng", 0) -- истинная скорость на КУС730 БИ
createGlobalPropertyf("tu154ce/gauges/speed/ias_left", 0) -- приборная скорость КВС
createGlobalPropertyf("tu154ce/gauges/speed/ias_yellow_left", 0) -- желтый маркер на индкиторе скорости КВС
createGlobalPropertyf("tu154ce/gauges/speed/ias_right", 0) -- приборная скорость 2П
createGlobalPropertyf("tu154ce/gauges/speed/ias_yellow_right", 0) -- желтый маркер на индкиторе скорости 2П
createGlobalPropertyf("tu154ce/gauges/speed/mach_left", 0) -- скорость маха КВС
createGlobalPropertyf("tu154ce/gauges/speed/mach_right", 0) -- скорость маха 2П
createGlobalPropertyf("tu154ce/gauges/speed/speed_mid_needle", 0) -- стрелка индикатора скорости в центре
createGlobalPropertyi("tu154ce/gauges/speed/speed_mid_flag", 0) -- флажок индикатора скорости в центре 0 - возд, 1 - пут
createGlobalPropertyf("tu154ce/gauges/alt/var75", 0) -- выриометр 75 КВС
createGlobalPropertyf("tu154ce/gauges/alt/var30", 0) -- выриометр 30 БИ
createGlobalPropertyf("tu154ce/gauges/alt/radioalt_needle_left", 0) -- стрелка радиовысотомера КВС
createGlobalPropertyf("tu154ce/gauges/alt/radioalt_dh_left", 0) -- стрелка ВПР радиовысотомера КВС
createGlobalPropertyf("tu154ce/gauges/alt/radioalt_flag_left", 0) -- флаг радиовысотомера КВС
createGlobalPropertyi("tu154ce/gauges/alt/radioalt_button_left", 0) -- кнопка тест радиовысотомера КВС
createGlobalPropertyf("tu154ce/gauges/alt/radioalt_needle_right", 0) -- стрелка радиовысотомера 2П
createGlobalPropertyf("tu154ce/gauges/alt/radioalt_dh_right", 0) -- стрелка ВПР радиовысотомера 2П
createGlobalPropertyf("tu154ce/gauges/alt/radioalt_flag_right", 0) -- флаг радиовысотомера 2П
createGlobalPropertyi("tu154ce/gauges/alt/radioalt_button_right", 0) -- кнопка тест радиовысотомера 2П
createGlobalPropertyf("tu154ce/gauges/alt/uvid_needle_left", 0) -- стрелка высотомера УВИД КВС
createGlobalPropertyf("tu154ce/gauges/alt/uvid_feet_counter", 0) -- барабанчик счета удиниц футов
createGlobalPropertyf("tu154ce/gauges/alt/uvid_hundreads_counter", 0) -- барабанчик счета сотен футов
createGlobalPropertyf("tu154ce/gauges/alt/uvid_thousands_counter", 0) -- барабанчик счета тысяч футов.
createGlobalPropertyf("tu154ce/gauges/alt/uvid_tens_thousands_counter", 0) -- барабанчик счета десятков тысяч футов.
createGlobalPropertyf("tu154ce/gauges/alt/uvid_pressure_knob", 1013) -- ручка установки давления
createGlobalPropertyf("tu154ce/gauges/alt/uvid_pressure_one", 3) -- единицы давления
createGlobalPropertyf("tu154ce/gauges/alt/uvid_pressure_ten", 1) -- десятки давления
createGlobalPropertyf("tu154ce/gauges/alt/uvid_pressure_hund", 0) -- сотни давления
createGlobalPropertyf("tu154ce/gauges/alt/uvid_pressure_thous", 1) -- тысячи давления
createGlobalPropertyf("tu154ce/gauges/alt/vd15_alt_left", 0) -- высота на ВД15 КВС
createGlobalPropertyf("tu154ce/gauges/alt/vd15_tri_needle_left", 0) -- стрелка коррекции на ВД15 КВС
createGlobalPropertyf("tu154ce/gauges/alt/vd15_pressure_left", 760) -- давление на ВД15 КВС
createGlobalPropertyf("tu154ce/gauges/alt/vd15_alt_right", 0) -- высота на ВД15 2П
createGlobalPropertyf("tu154ce/gauges/alt/vd15_tri_needle_right", 0) -- стрелка коррекции на ВД15 2П
createGlobalPropertyf("tu154ce/gauges/alt/vd15_pressure_right", 760) -- давление на ВД15 2П
createGlobalPropertyf("tu154ce/gauges/alt/vd15_alt_eng", 0) -- высота на ВД15 БИ
createGlobalPropertyf("tu154ce/gauges/alt/vd15_tri_needle_eng", 0) -- стрелка коррекции на ВД15 БИ
createGlobalPropertyf("tu154ce/gauges/alt/vd15_pressure_eng", 760) -- давление на ВД15 БИ
createGlobalPropertyf("tu154ce/gauges/alt/vbe_alt_left", 0) -- высота на ВБЭ лев
createGlobalPropertyi("tu154ce/gauges/alt/vbe_press_left", 1013) -- давление на ВБЭ лев
createGlobalPropertyf("tu154ce/gauges/alt/vbe_brt_left", 0.7) -- яркость на ВБЭ лев
createGlobalPropertyi("tu154ce/gauges/alt/vbe_press_knob_left", 0) -- ручка набора давления на ВБЭ лев
createGlobalPropertyi("tu154ce/gauges/alt/vbe_fl_knob_left", 0) -- ручка набора эшелона на ВБЭ лев
createGlobalPropertyi("tu154ce/gauges/alt/vbe_mode_but_left", 0) -- кнопка выбора режимов на ВБЭ лев
createGlobalPropertyi("tu154ce/gauges/alt/vbe_mode_left", 0) -- режим на ВБЭ лев
createGlobalPropertyi("tu154ce/gauges/alt/vbe_std_left", 0) -- включение стандартного давления
createGlobalPropertyf("tu154ce/gauges/alt/vbe_alt_right", 0) -- высота на ВБЭ прав
createGlobalPropertyi("tu154ce/gauges/alt/vbe_press_right", 1013) -- давление на ВБЭ прав
createGlobalPropertyf("tu154ce/gauges/alt/vbe_brt_right", 0.7) -- яркость на ВБЭ прав
createGlobalPropertyi("tu154ce/gauges/alt/vbe_press_knob_right", 0) -- ручка набора давления на ВБЭ прав
createGlobalPropertyi("tu154ce/gauges/alt/vbe_fl_knob_right", 0) -- ручка набора эшелона на ВБЭ прав
createGlobalPropertyi("tu154ce/gauges/alt/vbe_mode_but_right", 0) -- кнопка выбора режимов на ВБЭ прав
createGlobalPropertyi("tu154ce/gauges/alt/vbe_mode_right", 0) -- режим на ВБЭ прав
createGlobalPropertyi("tu154ce/gauges/alt/vbe_std_right", 0) -- включение стандартного давления
createGlobalPropertyf("tu154ce/gauges/vsi/vsi_brt_left", 0.7) -- яркость экрана VSI
createGlobalPropertyf("tu154ce/gauges/vsi/vsi_brt_right", 0.7) -- яркость экрана VSI
createGlobalPropertyf("tu154ce/gauges/compas/radiocomp_scale_left", 0) -- шкала курса на радиокомпасе КВС
createGlobalPropertyf("tu154ce/gauges/compas/bearing_1_left", 0) -- стрелка направления 1 радиокомпаса КВС
createGlobalPropertyf("tu154ce/gauges/compas/bearing_2_left", 0) -- стрелка направления 2 радиокомпаса КВС
createGlobalPropertyi("tu154ce/gauges/compas/source_1_switch_left", 1) -- переключатель стрелки 1 радиокомпаса КВС. 0 - пусто, 1 - АРК1, 2 - АРК2, 3 - VOR1, 4 - VOR2, 5 - РСБН
createGlobalPropertyi("tu154ce/gauges/compas/source_2_switch_left", 2) -- переключатель стрелки 2 радиокомпаса КВС
createGlobalPropertyf("tu154ce/gauges/compas/radiocomp_scale_right", 0) -- шкала курса на радиокомпасе 2П
createGlobalPropertyf("tu154ce/gauges/compas/bearing_1_right", 0) -- стрелка направления 1 радиокомпаса 2П
createGlobalPropertyf("tu154ce/gauges/compas/bearing_2_right", 0) -- стрелка направления 2 радиокомпаса 2П
createGlobalPropertyi("tu154ce/gauges/compas/source_1_switch_right", 1) -- переключатель стрелки 1 радиокомпаса 2П. 0 - пусто, 1 - АРК1, 2 - АРК2, 3 - VOR1, 4 - VOR2, 5 - РСБН
createGlobalPropertyi("tu154ce/gauges/compas/source_2_switch_right", 2) -- переключатель стрелки 2 радиокомпаса 2П
createGlobalPropertyf("tu154ce/gauges/compas/big_knob", 0) -- поворот руски ЗК на большом компасе
createGlobalPropertyf("tu154ce/gauges/compas/big_course_needle", 0) -- стрелка "самолетик"
createGlobalPropertyf("tu154ce/gauges/compas/big_true_course_needle", 0) -- стрелка ПУ
createGlobalPropertyf("tu154ce/gauges/compas/big_tri_needle", 0) -- треугольная стрелка
createGlobalPropertyf("tu154ce/gauges/compas/pkp_gyro_course_L", 0) -- курс гироскопа ПКП КВС
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_L", 0) -- курс полета на ПКП КВС
createGlobalPropertyf("tu154ce/gauges/compas/pkp_helper_course_L", 0) -- устанвока курса желтой стрелкой на ПКП КВС
createGlobalPropertyf("tu154ce/gauges/compas/pkp_slip_angle_L", 0) -- угол сноса на ПКП КВС
createGlobalPropertyf("tu154ce/gauges/compas/pkp_course_plank_L", 0) -- курсовая планка ПКП КВС + отклонение планки вправо
createGlobalPropertyf("tu154ce/gauges/compas/pkp_gs_plank_L", 0) -- глиссадная планка ПКП КВС + отклонение планки вверх
createGlobalPropertyi("tu154ce/gauges/compas/pkp_course_flag_L", 0) -- флаг отказа курсовой планки
createGlobalPropertyi("tu154ce/gauges/compas/pkp_gs_flag_L", 0) -- флаг отказа глиссадной планки
createGlobalPropertyi("tu154ce/gauges/compas/pkp_main_flag_L", 0) -- флаг отказа курса
createGlobalPropertyi("tu154ce/gauges/compas/pkp_obs_flag_L", 0) -- флаг отказа счетчика курса
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_one_L", 0) -- счетчик курса. единицы
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_ten_L", 0) -- счетчик курса. десятки
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_hundr_L", 0) -- счетчик курса. сотни
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_knob_L", 0) -- ручка настройки курса
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_set_L", 0) -- курс ПНП
createGlobalPropertyf("tu154ce/gauges/compas/pkp_gyro_course_R", 0) -- курс гироскопа ПКП 2П
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_R", 0) -- курс полета на ПКП 2П
createGlobalPropertyf("tu154ce/gauges/compas/pkp_helper_course_R", 0) -- устанвока курса желтой стрелкой на ПКП 2П
createGlobalPropertyf("tu154ce/gauges/compas/pkp_slip_angle_R", 0) -- угол сноса на ПКП 2П
createGlobalPropertyf("tu154ce/gauges/compas/pkp_course_plank_R", 0) -- курсовая планка ПКП 2П + отклонение планки вправо
createGlobalPropertyf("tu154ce/gauges/compas/pkp_gs_plank_R", 0) -- глиссадная планка ПКП 2П + отклонение планки вверх
createGlobalPropertyi("tu154ce/gauges/compas/pkp_course_flag_R", 0) -- флаг отказа курсовой планки
createGlobalPropertyi("tu154ce/gauges/compas/pkp_gs_flag_R", 0) -- флаг отказа глиссадной планки
createGlobalPropertyi("tu154ce/gauges/compas/pkp_main_flag_R", 0) -- флаг отказа курса
createGlobalPropertyi("tu154ce/gauges/compas/pkp_obs_flag_R", 0) -- флаг отказа счетчика курса
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_one_R", 0) -- счетчик курса. единицы
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_ten_R", 0) -- счетчик курса. десятки
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_hundr_R", 0) -- счетчик курса. сотни
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_knob_R", 0) -- ручка настройки курса
createGlobalPropertyf("tu154ce/gauges/compas/pkp_obs_set_R", 0) -- курс ПНП
createGlobalPropertyf("tu154ce/gauges/ahz/roll_L", 0) -- крен на АГД КВС + в право
createGlobalPropertyf("tu154ce/gauges/ahz/pitch_L", 0) -- тангаж на АГД КВС + нос вверх
createGlobalPropertyf("tu154ce/gauges/ahz/dir_roll_L", 0) -- директор крена АГД КВС + в право
createGlobalPropertyf("tu154ce/gauges/ahz/dir_pitch_L", 0) -- директор тангажа на АГД КВС + вверх
createGlobalPropertyf("tu154ce/gauges/ahz/course_plank_L", 0) -- курсовая планка АГД КВС + в право
createGlobalPropertyf("tu154ce/gauges/ahz/gs_plank_L", 0) -- глиссадная планка АГД КВС + вверх
createGlobalPropertyf("tu154ce/gauges/ahz/speed_plank_L", 0) -- изменение скорости АГД КВС + вверх
createGlobalPropertyf("tu154ce/gauges/ahz/pitch_corr_L", 0) -- коррекция тангаа на АГД КВС + вправо
createGlobalPropertyi("tu154ce/gauges/ahz/ahz_flag_L", 0) -- флаг отказа АГД КВС
createGlobalPropertyi("tu154ce/gauges/ahz/dir_roll_flag_L", 0) -- флаг отказа директора крена АГД КВС
createGlobalPropertyi("tu154ce/gauges/ahz/dir_pitch_flag_L", 0) -- флаг отказа директора тангажа АГД КВС
createGlobalPropertyf("tu154ce/gauges/ahz/roll_R", 0) -- крен на АГД 2П + в право
createGlobalPropertyf("tu154ce/gauges/ahz/pitch_R", 0) -- тангаж на АГД 2П + нос вверх
createGlobalPropertyf("tu154ce/gauges/ahz/dir_roll_R", 0) -- директор крена АГД 2П + в право
createGlobalPropertyf("tu154ce/gauges/ahz/dir_pitch_R", 0) -- директор тангажа на АГД 2П + вверх
createGlobalPropertyf("tu154ce/gauges/ahz/course_plank_R", 0) -- курсовая планка АГД 2П + в право
createGlobalPropertyf("tu154ce/gauges/ahz/gs_plank_R", 0) -- глиссадная планка АГД 2П + вверх
createGlobalPropertyf("tu154ce/gauges/ahz/speed_plank_R", 0) -- изменение скорости АГД 2П + вверх
createGlobalPropertyf("tu154ce/gauges/ahz/pitch_corr_R", 0) -- коррекция тангаа на АГД 2П + вправо
createGlobalPropertyi("tu154ce/gauges/ahz/ahz_flag_R", 0) -- флаг отказа АГД КВС
createGlobalPropertyi("tu154ce/gauges/ahz/dir_roll_flag_R", 0) -- флаг отказа директора крена АГД КВС
createGlobalPropertyi("tu154ce/gauges/ahz/dir_pitch_flag_R", 0) -- флаг отказа директора тангажа АГД КВС
createGlobalPropertyf("tu154ce/gauges/ahz/roll_C", 0) -- крен на АГР + в право
createGlobalPropertyf("tu154ce/gauges/ahz/pitch_C", 0) -- тангаж на АГР + нос вверх
createGlobalPropertyf("tu154ce/gauges/ahz/pitch_corr_C", 0) -- коррекция тангажа на АГР + вправо
createGlobalPropertyi("tu154ce/gauges/ahz/ahz_flag_C", 0) -- флаг АГР
createGlobalPropertyf("tu154ce/gauges/misc/aoa_ind", 0) -- индикатор угла атаки
createGlobalPropertyf("tu154ce/gauges/misc/aoa_sector", 0) -- сектор индикатора угла атаки
createGlobalPropertyf("tu154ce/gauges/misc/gforce_ind", 0) -- индикатор перегрузки
createGlobalPropertyf("tu154ce/gauges/misc/gforce_max", 0) -- индикатор макс перегрузки
createGlobalPropertyf("tu154ce/gauges/misc/gforce_min", 0) -- индикатор мин перегрузки
createGlobalPropertyi("tu154ce/buttons/misc/gforce_reset", 0) -- кнопка сброса стрелок максимальных перегрузок
createGlobalPropertyf("tu154ce/gauges/engine/rpm_low_1", 0) -- обороты турбины низкого давления №1
createGlobalPropertyf("tu154ce/gauges/engine/rpm_low_2", 0) -- обороты турбины низкого давления №2
createGlobalPropertyf("tu154ce/gauges/engine/rpm_low_3", 0) -- обороты турбины низкого давления №3
createGlobalPropertyf("tu154ce/gauges/engine/rpm_high_1", 0) -- обороты турбины высокого давления №1
createGlobalPropertyf("tu154ce/gauges/engine/rpm_high_2", 0) -- обороты турбины высокого давления №2
createGlobalPropertyf("tu154ce/gauges/engine/rpm_high_3", 0) -- обороты турбины высокого давления №3
createGlobalPropertyf("tu154ce/gauges/misc/stab_ind", 0) -- индикатор положения стаб
createGlobalPropertyf("tu154ce/gauges/misc/elevator_ind", 0) -- индикатор положения РВ
createGlobalPropertyf("tu154ce/gauges/misc/flap_left_ind", 0) -- индикатор положения левого закрылка
createGlobalPropertyf("tu154ce/gauges/misc/flap_right_ind", 0) -- индикатор положения правого закрылка
createGlobalPropertyi("tu154ce/switchers/ZK_select", 0) -- тумблер "ввод ЗК" на передней панели. 0-лев, 1-прав
createGlobalPropertyi("tu154ce/switchers/nav_select", 0) -- тумблер НВУ-СНС 0 - НВУ, 1 - СНС
createGlobalPropertyi("tu154ce/switchers/vbe_select", 0) -- тумблер ВБЭ. 0-лев, 1-прав
createGlobalPropertyf("tu154ce/gauges/hydro/pressure_ind_1", 0) -- индикатор давления гидросистемы 1
createGlobalPropertyf("tu154ce/gauges/hydro/pressure_ind_2", 0) -- индикатор давления гидросистемы 2
createGlobalPropertyf("tu154ce/gauges/hydro/pressure_ind_3", 0) -- индикатор давления гидросистемы 3
createGlobalPropertyf("tu154ce/gauges/hydro/pressure_ind_emerg", 0) -- индикатор давления аварийного торможения
createGlobalPropertyf("tu154ce/gauges/misc/thermo_outside", 0) -- индикатор температуры за бортом
createGlobalPropertyf("tu154ce/gauges/misc/turn_rate_ind", 0) -- индикатор разворота
createGlobalPropertyf("tu154ce/gauges/misc/slip_rate_ind", 0) -- индикатор скольжения
createGlobalPropertyf("tu154ce/gauges/misc/rudder_pos_ind", 0) -- индикатор положения РН
createGlobalPropertyf("tu154ce/gauges/misc/aileron_pos_ind", 0) -- индикатор положения элеронов
createGlobalPropertyf("tu154ce/gauges/misc/elevator_pos_ind", 0) -- индикатор положения РВ
createGlobalPropertyf("tu154ce/gauges/misc/fuel_front_ind", 0) -- индикатор топлива на передней панели
createGlobalPropertyi("tu154ce/buttons/misc/fuel_front_zero", 0) -- индикатор топлива на передней панели.кнопка нуля
createGlobalPropertyi("tu154ce/buttons/misc/fuel_front_max", 0) -- индикатор топлива на передней панели.кнопка макс
createGlobalPropertyf("tu154ce/gauges/misc/rsbn_azimuth_ind", 0) -- азимут РСБН
createGlobalPropertyf("tu154ce/gauges/misc/rsbn_distance_km", 0) -- дистанция РСБН
createGlobalPropertyf("tu154ce/gauges/misc/rsbn_km_one", 0) -- барабанчик единиц км
createGlobalPropertyf("tu154ce/gauges/misc/rsbn_km_ten", 0) -- барабанчик десятков км
createGlobalPropertyf("tu154ce/gauges/misc/rsbn_km_hun", 0) -- барабанчик сотен км
createGlobalPropertyf("tu154ce/gauges/misc/compas_big_needle", 0) -- длинная стрелка на компасе 2П
createGlobalPropertyf("tu154ce/gauges/misc/compas_small_needle", 0) -- короткая стрелка на компасе 2П
createGlobalPropertyf("tu154ce/gauges/misc/compas_knob", 0) -- крутилка на компасе 2П
createGlobalPropertyf("tu154ce/gauges/misc/diss_abs_angle_1", 1) -- барабанчик единиц угла
createGlobalPropertyf("tu154ce/gauges/misc/diss_abs_angle_10", 2) -- барабанчик десятков угла
createGlobalPropertyf("tu154ce/gauges/misc/diss_abs_angle_100", 3) -- барабанчик сотен угла
createGlobalPropertyf("tu154ce/gauges/misc/diss_plus_angle_1", 0) -- барабанчик единиц угла
createGlobalPropertyf("tu154ce/gauges/misc/diss_plus_angle_10", 0) -- барабанчик десятков угла
createGlobalPropertyf("tu154ce/gauges/misc/diss_minus_angle_1", 0) -- барабанчик единиц угла
createGlobalPropertyf("tu154ce/gauges/misc/diss_minus_angle_10", 0) -- барабанчик десятков угла
createGlobalPropertyf("tu154ce/gauges/misc/diss_wind_spd_1", 0) -- барабанчик единиц скорости ветра
createGlobalPropertyf("tu154ce/gauges/misc/diss_wind_spd_10", 0) -- барабанчик десятков скорости ветра
createGlobalPropertyf("tu154ce/gauges/misc/diss_wind_spd_100", 0) -- барабанчик сотен скорости ветра
createGlobalPropertyi("tu154ce/switchers/ovhd/var_left", 1) -- оерхед. вар лев
createGlobalPropertyi("tu154ce/switchers/ovhd/var_right", 1) -- оерхед. вар прав
createGlobalPropertyi("tu154ce/switchers/ovhd/uvid_on", 1) -- выключатель УВИД
createGlobalPropertyi("tu154ce/switchers/ovhd/auasp_on", 1) -- оерхед. АУАСП
createGlobalPropertyi("tu154ce/switchers/ovhd/auasp_contr", 0) -- оерхед. АУАСП контроль
createGlobalPropertyi("tu154ce/switchers/ovhd/eup_on", 1) -- выключатель ЭУП
createGlobalPropertyi("tu154ce/switchers/ovhd/agr_on", 1) -- выключатель АГР
createGlobalPropertyi("tu154ce/switchers/ovhd/bkk_contr_cap", 0) -- крышка тумблера контроля БКК
createGlobalPropertyi("tu154ce/switchers/ovhd/bkk_contr", 0) -- контроль БКК. -1 - 2, 0 - выкл, +1 - 1
createGlobalPropertyi("tu154ce/switchers/ovhd/bkk_on_cap", 0) -- крышка выключателя БКК
createGlobalPropertyi("tu154ce/switchers/ovhd/bkk_on", 1) -- выключатель БКК
createGlobalPropertyi("tu154ce/switchers/ovhd/sau_stu_on", 1) -- САУ СТУ выключатель
createGlobalPropertyi("tu154ce/switchers/ovhd/sau_stu_cap", 0) -- крышка выключателя САУ СТУ
createGlobalPropertyi("tu154ce/switchers/ovhd/pkp_left_cap", 0) -- крылка ПКП лев
createGlobalPropertyi("tu154ce/switchers/ovhd/pkp_left_on", 1) -- ПКП лев
createGlobalPropertyi("tu154ce/switchers/ovhd/pkp_right_cap", 0) -- крышка ПКП прав
createGlobalPropertyi("tu154ce/switchers/ovhd/pkp_right_on", 1) -- ПКП прав
createGlobalPropertyi("tu154ce/switchers/ovhd/mgv_contr_cap", 0) -- контроль МГВ крышка
createGlobalPropertyi("tu154ce/switchers/ovhd/mgv_contr", 1) -- контроль МГВ  
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_on_1", 1) -- выключатель ТКС 1
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_on_2", 1) -- выключатель ТКС 2
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_heat", 0) -- обогрев ГА
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_corr_1", 1) -- коррекция БГМК 2 - 1
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_corr_2", 1) -- коррекция БГМК 2 - 2
createGlobalPropertyi("tu154ce/switchers/ovhd/curs_pnp_mode_1", 1) -- режим курс ПНП. 0 - ГМК, 1 - ГПК
createGlobalPropertyi("tu154ce/switchers/ovhd/curs_pnp_mode_2", 1) -- режим курс ПНП. 0 - ГМК, 1 - ГПК
createGlobalPropertyi("tu154ce/buttons/ovhd/svs_contr", 0) -- кнопка контроля СВС
createGlobalPropertyi("tu154ce/switchers/ovhd/svs_on", 1) -- выключатель СВС
createGlobalPropertyi("tu154ce/switchers/ovhd/svs_heat", 1) -- обогрев СВС
createGlobalPropertyi("tu154ce/switchers/ovhd/kln_on", 0) -- выключатель КЛН
createGlobalPropertyi("tu154ce/switchers/ovhd/tcas_on", 1) -- выключатель TCAS
createGlobalPropertyi("tu154ce/switchers/ovhd/emerg_light_cap", 0) -- крышка аварийного освещения
createGlobalPropertyi("tu154ce/switchers/ovhd/emerg_light_on", 0) -- аварийное освещение
createGlobalPropertyi("tu154ce/switchers/ovhd/vbe_1_on", 1) -- ВБЭ 1
createGlobalPropertyi("tu154ce/switchers/ovhd/vbe_2_on", 1) -- ВБЭ 2
createGlobalPropertyi("tu154ce/switchers/ovhd/curs_np_on_1", 1) -- курс МП 1
createGlobalPropertyi("tu154ce/switchers/ovhd/curs_np_on_2", 1) -- курс МП 2
createGlobalPropertyi("tu154ce/switchers/ovhd/tra_67_on", 1) -- ТРА 67
createGlobalPropertyi("tu154ce/buttons/ovhd/tks_signal_off", 0) -- снятие блокировки сигнала ТКС
createGlobalPropertyi("tu154ce/switchers/ovhd/rsbn_on", 1) -- РСБН питание
createGlobalPropertyi("tu154ce/switchers/ovhd/rsbn_recon", 1) -- РСБН опознавание
createGlobalPropertyi("tu154ce/switchers/ovhd/rv5_1_on", 1) -- РВ5 1
createGlobalPropertyi("tu154ce/switchers/ovhd/rv5_2_on", 1) -- РВ5 2
createGlobalPropertyi("tu154ce/switchers/ovhd/vhf_1_on", 1) -- УКВ 1
createGlobalPropertyi("tu154ce/switchers/ovhd/vhf_2_on", 1) -- УКВ 2
createGlobalPropertyi("tu154ce/switchers/ovhd/stabil_ga_main", 1) -- стабилизация ГА по крену осн
createGlobalPropertyi("tu154ce/switchers/ovhd/stabil_ga_reserv", 1) -- стабилизация ГА резерв
createGlobalPropertyi("tu154ce/switchers/ovhd/micron_1_on", 1) -- микрон 1
createGlobalPropertyi("tu154ce/switchers/ovhd/micron_2_on", 1) -- микрон 2
createGlobalPropertyi("tu154ce/switchers/ovhd/spu_on", 1) -- СПУ
createGlobalPropertyi("tu154ce/switchers/ovhd/sgs_on", 1) -- СГС
createGlobalPropertyi("tu154ce/switchers/ovhd/sd75_1_on", 1) -- СД75 1
createGlobalPropertyi("tu154ce/switchers/ovhd/sd75_2_on", 1) -- СД75 2
createGlobalPropertyi("tu154ce/switchers/ovhd/mars_on", 1) -- МАРС
createGlobalPropertyi("tu154ce/switchers/ovhd/diss_on", 1) -- питание ДИСС
createGlobalPropertyi("tu154ce/switchers/ovhd/diss_mode", 1) -- режим дисс. 0 - море, 1 - суша
createGlobalPropertyi("tu154ce/switchers/ovhd/nvu_calc_set", 1) -- счисление. -1 - контроль ДИСС в полете, 0 - НВУ по СВС, 1 - НВУ по ДИСС
createGlobalPropertyi("tu154ce/switchers/ovhd/vent_1", 0) -- вентилятор КВС
createGlobalPropertyi("tu154ce/switchers/ovhd/vent_2", 0) -- вентилятор 2П
createGlobalPropertyi("tu154ce/switchers/ovhd/vent_3", 0) -- вентилятор БИ
createGlobalPropertyi("tu154ce/switchers/ovhd/sign_belts", 1) -- транспарант пристегните ремни
createGlobalPropertyi("tu154ce/switchers/ovhd/sign_nosmoke", 1) -- транспарант не курить
createGlobalPropertyi("tu154ce/switchers/ovhd/sign_exit", 0) -- транспарант выход
createGlobalPropertyi("tu154ce/switchers/ovhd/window_heat_1", -1) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
createGlobalPropertyi("tu154ce/switchers/ovhd/window_heat_2", -1) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
createGlobalPropertyi("tu154ce/switchers/ovhd/window_heat_3", -1) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
createGlobalPropertyi("tu154ce/switchers/ovhd/pitot_heat_1", 1) -- обогрев ППД лев
createGlobalPropertyi("tu154ce/switchers/ovhd/pitot_heat_2", 1) -- обогрев ППД прав
createGlobalPropertyi("tu154ce/switchers/ovhd/pitot_heat_3", 1) -- обогрев ППД АБСУ
createGlobalPropertyi("tu154ce/switchers/ovhd/arm406", 1) -- АРМ 406
createGlobalPropertyi("tu154ce/switchers/ovhd/ushdb_mode_1", 0) -- УШДБ и СПУ 1. 0 - АРК, 1 - VOR
createGlobalPropertyi("tu154ce/switchers/ovhd/ushdb_mode_2", 0) -- обогрев ППД
createGlobalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_1", 1) -- сигнализация СРПБЗ общ
createGlobalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_2", 1) -- сигнализация СРПБЗ 
createGlobalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_1_cap", 0) -- сигнализация СРПБЗ общ
createGlobalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_2_cap", 0) -- сигнализация СРПБЗ 
createGlobalPropertyi("tu154ce/switchers/ovhd/egpws_relief", 1) -- рельеф
createGlobalPropertyi("tu154ce/switchers/ovhd/egpws_mode", 0) -- QNH - QFE
createGlobalPropertyi("tu154ce/buttons/ovhd/egpws_control", 0) -- кнопка контроля СРПБЗ
createGlobalPropertyi("tu154ce/buttons/ovhd/egpws_contr_gs", 0) -- контроль СРПБЗ глиссада
createGlobalPropertyi("tu154ce/buttons/ovhd/rsbn_control_strobe", 0) -- контроль строба РСБН
createGlobalPropertyi("tu154ce/buttons/ovhd/rsbn_control_azimuth", 0) -- контроль нуля азимут РСБН
createGlobalPropertyi("tu154ce/buttons/ovhd/rsbn_control_distance", 0) -- контроль нуля дальность РСБН
createGlobalPropertyi("tu154ce/buttons/ovhd/rsbn_ch_ten", 0) -- ручка установки десятков канала
createGlobalPropertyi("tu154ce/buttons/ovhd/rsbn_ch_one", 0) -- ручка установки единиц канала
createGlobalPropertyi("tu154ce/switchers/ovhd/transponder_mode", 0) -- режим ответчика. 0 откл, 1 готов, 2 рсп, 3 увд, 4 увд-м, 5 ас, 6 а. 
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_control", 0) -- кнопка контроль
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_sign", 0) -- кнопка знак
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_but_1", 0) -- кнопка 1
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_but_2", 0) -- кнопка 2
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_but_3", 0) -- кнопка 3
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_but_4", 0) -- кнопка 4
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_emerg", 0) -- кнопка авария
createGlobalPropertyi("tu154ce/buttons/ovhd/transponder_emerg_cap", 0) -- крышка кнопки аварии
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_mode", 1) -- режим ТКС 0 - МК, 1 - ГПК, 2 - АК
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_mode_left", 1) -- режим левого ГА. 0 - контр, 1 - осн
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_mode_right", 1) -- режим правого ГА
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_lat_mode", 1) -- режим установки широты. 0 - авто, 1 - ручн
createGlobalPropertyi("tu154ce/switchers/ovhd/tks_course_set", 0) -- задатчик курса
createGlobalPropertyi("tu154ce/buttons/ovhd/tks_corrr_button", 0) -- кнопка согласования
createGlobalPropertyf("tu154ce/rotary/ovhd/tks_lat_set", 45) -- ручка установки широты
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_mode", 1) -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_channel", 1) -- канал АРК 1
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_left", 1) -- сотни частоты 1 - 17
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_left", 1) -- десятки частоты 1 - 10 (0)
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_left", 0) -- единицы частоты 0 - 9
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_right", 1) -- сотни частоты 1 - 17
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_right", 1) -- десятки частоты 1 - 10 (0)
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_right", 0) -- единицы частоты 0 - 9
createGlobalPropertyi("tu154ce/buttons/ovhd/ark_1_ramka", 0) -- кнопка рамки
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_mode", 1) -- режим АРК 2
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_channel", 1) -- канал АРК 2
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_hundr_left", 1) -- сотни частоты 1 - 17
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_tens_left", 1) -- десятки частоты 1 - 10 (0)
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_ones_left", 0) -- единицы частоты 0 - 9
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_hundr_right", 1) -- сотни частоты 1 - 17
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_tens_right", 1) -- десятки частоты 1 - 10 (0)
createGlobalPropertyi("tu154ce/switchers/ovhd/ark_2_ones_right", 0) -- единицы частоты 0 - 9
createGlobalPropertyi("tu154ce/buttons/ovhd/ark_2_ramka", 0) -- кнопка рамки
createGlobalPropertyi("tu154ce/switchers/ovhd/sp50_mode", 0) -- режим СП50. 0 - ILS, 1 - Katet, 2 - SP-50
createGlobalPropertyi("tu154ce/switchers/ovhd/sp50_nav_mode", 0) -- режим СП50. посадка - маршрут
createGlobalPropertyi("tu154ce/switchers/ovhd/sp50_night_day", 1) -- режим СП50. ночь - день
createGlobalPropertyi("tu154ce/switchers/ovhd/sp50_dme_rsbn", 0) -- режим СП50. DME - РСБН
createGlobalPropertyi("tu154ce/rotary/ovhd/vhf_1_left", 0) -- левая крутилка радио
createGlobalPropertyi("tu154ce/rotary/ovhd/vhf_1_right", 0) -- правая крутилка радио
createGlobalPropertyi("tu154ce/rotary/ovhd/vhf_2_left", 0) -- левая крутилка радио
createGlobalPropertyi("tu154ce/rotary/ovhd/vhf_2_right", 0) -- правая крутилка радио
createGlobalPropertyi("tu154ce/switchers/nav_1_mode", 1) -- режим НАВ1. Захват - VOR-DME
createGlobalPropertyi("tu154ce/switchers/nav_1_man_auto", 0) -- режим ручной - автомат
createGlobalPropertyi("tu154ce/switchers/nav_1_mile_km", 1) -- режим мили - км
createGlobalPropertyi("tu154ce/rotary/ovhd/nav_1_left", 0) -- левая крутилка
createGlobalPropertyi("tu154ce/rotary/ovhd/nav_1_right", 0) -- правая крутилка
createGlobalPropertyi("tu154ce/buttons/ovhd/nav_1_but_1", 0) -- кнопка 1
createGlobalPropertyi("tu154ce/buttons/ovhd/nav_1_but_2", 0) -- кнопка 2
createGlobalPropertyi("tu154ce/buttons/ovhd/nav_1_but_3", 0) -- кнопка 3
createGlobalPropertyi("tu154ce/switchers/nav_2_mode", 1) -- режим НАВ1. Захват - VOR-DME
createGlobalPropertyi("tu154ce/switchers/nav_2_man_auto", 0) -- режим ручной - автомат
createGlobalPropertyi("tu154ce/switchers/nav_2_mile_km", 1) -- режим мили - км
createGlobalPropertyi("tu154ce/rotary/ovhd/nav_2_left", 0) -- левая крутилка
createGlobalPropertyi("tu154ce/rotary/ovhd/nav_2_right", 0) -- правая крутилка
createGlobalPropertyi("tu154ce/buttons/ovhd/nav_2_but_1", 0) -- кнопка 1
createGlobalPropertyi("tu154ce/buttons/ovhd/nav_2_but_2", 0) -- кнопка 2
createGlobalPropertyi("tu154ce/buttons/ovhd/nav_2_but_3", 0) -- кнопка 3
createGlobalPropertyf("tu154ce/gauges/eng/fuel_temp_1", 20) -- температура топлива
createGlobalPropertyf("tu154ce/gauges/eng/fuel_temp_2", 20) -- температура топлива
createGlobalPropertyf("tu154ce/gauges/eng/oil_qty_1", 1) -- количество масла
createGlobalPropertyf("tu154ce/gauges/eng/oil_qty_2", 1) -- количество масла
createGlobalPropertyf("tu154ce/gauges/eng/oil_qty_3", 1) -- количество масла
createGlobalPropertyf("tu154ce/gauges/eng/km5_scale_1", 0) -- поворот шкалы на КМ5
createGlobalPropertyf("tu154ce/gauges/eng/km5_needle_1", 0) -- стрелка КМ5
createGlobalPropertyf("tu154ce/gauges/eng/km5_knob_1", 0) -- крутилка на КМ5
createGlobalPropertyf("tu154ce/gauges/eng/km5_scale_2", 0) -- поворот шкалы на КМ5
createGlobalPropertyf("tu154ce/gauges/eng/km5_needle_2", 0) -- стрелка КМ5
createGlobalPropertyf("tu154ce/gauges/eng/km5_knob_2", 0) -- крутилка на КМ5
createGlobalPropertyi("tu154ce/buttons/lamp_test_front", 0) -- кнопка проверки ламп передней панели
createGlobalPropertyi("tu154ce/buttons/lamp_test_upper_gear", 0) -- кнопка проверки ламп верхней панели шасси
createGlobalPropertyi("tu154ce/buttons/lamp_test_eng_up_1", 0) -- кнопка проверки ламп на панели сливных насадок
createGlobalPropertyi("tu154ce/buttons/lamp_test_eng_up_2", 0) -- кнопка проверки ламп на панели сливных насадок
createGlobalPropertyi("tu154ce/buttons/lamp_test_msrp", 0) -- кнопка проверки ламп МСРП
createGlobalPropertyi("tu154ce/buttons/lamp_test_pa56", 0) -- кнопка проверки ламп на панели гидропитания РА-56
createGlobalPropertyi("tu154ce/buttons/lamp_test_fire_panel", 0) -- кнопка проверки ламп на пожарной панели
createGlobalPropertyi("tu154ce/buttons/lamp_test_apu", 0) -- кнопка проверки ламп на панели ВСУ
createGlobalPropertyi("tu154ce/buttons/lamp_test_engines", 0) -- кнопка проверки ламп на панели приборов двигателей
createGlobalPropertyi("tu154ce/buttons/lamp_test_hydro", 0) -- кнопка проверки ламп на панели гидросистемы
createGlobalPropertyi("tu154ce/buttons/lamp_test_srd", 0) -- кнопка проверки ламп на панели наддува
createGlobalPropertyi("tu154ce/buttons/lamp_test_doors", 0) -- кнопка проверки ламп на панели индикации дверей и люков
createGlobalPropertyi("tu154ce/switchers/eng/wing_light", 1) -- габаритные наземные огни на крыле
createGlobalPropertyi("tu154ce/switchers/eng/door_heat", 0) -- обогрев дверей
createGlobalPropertyi("tu154ce/switchers/eng/gear_fan", 0) -- вентиляция шасси
createGlobalPropertyi("tu154ce/switchers/eng/galley_heat", 0) -- обогрев слива кухни
createGlobalPropertyi("tu154ce/switchers/eng/lavatory_heat", 0) -- обогрев слива туалетов
createGlobalPropertyi("tu154ce/switchers/eng/water_meter", 0) -- уровень воды в баке
createGlobalPropertyi("tu154ce/switchers/eng/water_compressor_1", 0) -- обогрев слива кухни
createGlobalPropertyi("tu154ce/switchers/eng/water_compressor_2", 0) -- обогрев слива кухни
createGlobalPropertyf("tu154ce/gauges/eng/water_pressure", 0) -- давление воды
createGlobalPropertyi("tu154ce/buttons/eng/tail_temp_signal_control_1", 0) -- контроль сигнала температуры хвостового отсека
createGlobalPropertyi("tu154ce/buttons/eng/tail_temp_signal_control_2", 0) -- контроль сигнала температуры хвостового отсека
createGlobalPropertyi("tu154ce/switchers/eng/tail_temp_signal", 0) -- сигнал температуры хвостового отсека
createGlobalPropertyi("tu154ce/switchers/eng/tail_temp_heat", 0) -- обогрев АРД
createGlobalPropertyi("tu154ce/switchers/eng/msrp_date_ten", 0) -- МРСП дата число десятки
createGlobalPropertyi("tu154ce/switchers/eng/msrp_date_one", 0) -- МРСП дата число единицы
createGlobalPropertyi("tu154ce/switchers/eng/msrp_month_ten", 0) -- МРСП дата месяц десятки
createGlobalPropertyi("tu154ce/switchers/eng/msrp_month_one", 0) -- МРСП дата месяц единицы
createGlobalPropertyi("tu154ce/switchers/eng/msrp_year_ten", 0) -- МРСП дата год десятки
createGlobalPropertyi("tu154ce/switchers/eng/msrp_year_one", 0) -- МРСП дата год единицы
createGlobalPropertyi("tu154ce/switchers/eng/msrp_route_hun", 0) -- МРСП рейс. сотни
createGlobalPropertyi("tu154ce/switchers/eng/msrp_route_ten", 0) -- МРСП рейс. десятки
createGlobalPropertyi("tu154ce/switchers/eng/msrp_route_one", 0) -- МРСП рейс. единицы
createGlobalPropertyi("tu154ce/switchers/eng/msrp_mlp_1", 1) -- МРСП млп осн
createGlobalPropertyi("tu154ce/switchers/eng/msrp_mlp_2", 1) -- МРСП млп доп
createGlobalPropertyi("tu154ce/switchers/eng/msrp_night_day", 1) -- МРСП ночь - день
createGlobalPropertyi("tu154ce/switchers/eng/msrp_main_switch", 1) -- МРСП главный выключатель
createGlobalPropertyi("tu154ce/switchers/eng/hydro_trimm_rud_1", 1) -- триммирование РВ 1
createGlobalPropertyi("tu154ce/switchers/eng/hydro_trimm_rud_2", 1) -- триммирование РВ 2
createGlobalPropertyi("tu154ce/switchers/eng/hydro_trimm_rud_1_cap", 0) -- триммирование РВ 1
createGlobalPropertyi("tu154ce/switchers/eng/hydro_trimm_rud_2_cap", 0) -- триммирование РВ 2
createGlobalPropertyi("tu154ce/switchers/eng/emerg_gen_on_1", 0) -- аварийное включение генераторов
createGlobalPropertyi("tu154ce/switchers/eng/emerg_gen_on_2", 0) -- аварийное включение генераторов
createGlobalPropertyi("tu154ce/switchers/eng/emerg_gen_on_3", 0) -- аварийное включение генераторов
createGlobalPropertyi("tu154ce/switchers/eng/emerg_gen_on_1_cap", 0) -- аварийное включение генераторов
createGlobalPropertyi("tu154ce/switchers/eng/emerg_gen_on_2_cap", 0) -- аварийное включение генераторов
createGlobalPropertyi("tu154ce/switchers/eng/emerg_gen_on_3_cap", 0) -- аварийное включение генераторов
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_1", 1) -- гидропитание РА56 курс
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_2", 1) -- гидропитание РА56 курс
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_rud_3", 1) -- гидропитание РА56 курс
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_1", 1) -- гидропитание РА56 крен
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_2", 1) -- гидропитание РА56 крен
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_ail_3", 1) -- гидропитание РА56 крен
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_1", 1) -- гидропитание РА56 тангаж
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_2", 1) -- гидропитание РА56 тангаж
createGlobalPropertyi("tu154ce/switchers/eng/hydro_ra56_elev_3", 1) -- гидропитание РА56 тангаж
createGlobalPropertyi("tu154ce/switchers/eng/hydro_circuit_auto_man", 0) -- кольцевание автомат - ручное
createGlobalPropertyi("tu154ce/switchers/eng/hydro_long_control", 1) -- продольная управляемость
createGlobalPropertyi("tu154ce/switchers/eng/hydro_circuit_auto_man_cap", 0) -- кольцевание автомат - ручное
createGlobalPropertyi("tu154ce/switchers/eng/hydro_long_control_cap", 0) -- продольная управляемость
createGlobalPropertyi("tu154ce/buttons/eng/fire_ext_1", 0) -- очередь тушения пожара
createGlobalPropertyi("tu154ce/buttons/eng/fire_ext_2", 0) -- очередь тушения пожара
createGlobalPropertyi("tu154ce/buttons/eng/fire_ext_3", 0) -- очередь тушения пожара
createGlobalPropertyi("tu154ce/buttons/eng/cold_eng_1", 0) -- подача хладона
createGlobalPropertyi("tu154ce/buttons/eng/cold_eng_2", 0) -- подача хладона
createGlobalPropertyi("tu154ce/buttons/eng/cold_eng_3", 0) -- подача хладона
createGlobalPropertyi("tu154ce/buttons/eng/cold_apu", 0) -- подача хладона
createGlobalPropertyi("tu154ce/buttons/eng/neutral_gas", 0) -- нейтральный газ
createGlobalPropertyi("tu154ce/buttons/eng/smoke_test", 0) -- подача хладона
createGlobalPropertyi("tu154ce/buttons/eng/ext_test", 0) -- подача хладона
createGlobalPropertyi("tu154ce/switchers/eng/fire_sensor_sel", 0) -- выбор группы датчиков
createGlobalPropertyi("tu154ce/switchers/eng/fire_place_sel", 0) -- выбор отсека
createGlobalPropertyi("tu154ce/switchers/eng/fire_main_switch", 1) -- выключатель пожарной системы
createGlobalPropertyi("tu154ce/switchers/eng/fire_buzzer", 1) -- пожарная сирена
createGlobalPropertyi("tu154ce/switchers/eng/fire_buzzer_cap", 0) -- пожарная сирена
createGlobalPropertyi("tu154ce/switchers/eng/srd_buzzer", 1) -- СРД сирена
createGlobalPropertyi("tu154ce/switchers/eng/srd_buzzer_cap", 0) -- СРД сирена
createGlobalPropertyi("tu154ce/buttons/eng/srd_buzzer_test", 0) -- проверка сирены СРД
createGlobalPropertyi("tu154ce/switchers/eng/fuel_buzzer", 1) -- сирена остатка топлива 2500кг
createGlobalPropertyi("tu154ce/switchers/eng/fuel_buzzer_cap", 0) -- сирена остатка топлива 2500кг
createGlobalPropertyi("tu154ce/switchers/eng/soi21_on", 1) -- выключатель СОИ 21
createGlobalPropertyi("tu154ce/buttons/eng/soi21_test", 0) -- проверка СОИ 21
createGlobalPropertyi("tu154ce/switchers/eng/antiice_slats", 0) -- противообледенители
createGlobalPropertyi("tu154ce/switchers/eng/antiice_eng_1", 0) -- противообледенители
createGlobalPropertyi("tu154ce/switchers/eng/antiice_eng_2", 0) -- противообледенители
createGlobalPropertyi("tu154ce/switchers/eng/antiice_eng_3", 0) -- противообледенители
createGlobalPropertyi("tu154ce/switchers/eng/antiice_wing", 0) -- противообледенители
createGlobalPropertyf("tu154ce/gauges/eng/stab_temp", 20) -- температура стабилизатора
createGlobalPropertyf("tu154ce/gauges/eng/wing_temp", 20) -- температура крыла
createGlobalPropertyi("tu154ce/switchers/eng/sard_disable", 0) -- перекрытие клапана сброса воздуха
createGlobalPropertyi("tu154ce/switchers/eng/sard_disable_cap", 0) -- перекрытие клапана сброса воздуха
createGlobalPropertyf("tu154ce/gauges/eng/bus115_freq", 0) -- частотомер сети 115в - угол
createGlobalPropertyf("tu154ce/gauges/eng/bus115_volt", 0) -- вольтметр сети 115в - угол
createGlobalPropertyf("tu154ce/gauges/eng/bus115_amp", 0) -- амерметр сети 115в - угол
createGlobalPropertyi("tu154ce/switchers/eng/gpu_on", 0) -- выключатель РАП
createGlobalPropertyi("tu154ce/switchers/eng/apu_gen_on", 0) -- выключатель ген ВСУ
createGlobalPropertyi("tu154ce/switchers/eng/bus115_volt_sel", 0) -- переключатель источника вольтметра
createGlobalPropertyi("tu154ce/switchers/eng/bus115_volt_phase_sel", 0) -- переключатель источника вольтметра
createGlobalPropertyi("tu154ce/switchers/eng/bus115_amp_sel", 0) -- переключатель источника амерметра
createGlobalPropertyi("tu154ce/switchers/eng/bus115_amp_phase_sel", 0) -- переключатель источника амерметра
createGlobalPropertyi("tu154ce/switchers/eng/gen_1_on", 1) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл.
createGlobalPropertyi("tu154ce/switchers/eng/gen_2_on", 1) -- выключатель генератора 2. -1 - проверка, 0 - выкл, +1 - вкл.
createGlobalPropertyi("tu154ce/switchers/eng/gen_3_on", 1) -- выключатель генератора 3. -1 - проверка, 0 - выкл, +1 - вкл.
createGlobalPropertyi("tu154ce/switchers/eng/emerg_inv115", 0) -- аварийн. преобраз 115в
createGlobalPropertyi("tu154ce/switchers/eng/emerg_inv115_cap", 0) -- аварийн. преобраз 115в
createGlobalPropertyf("tu154ce/gauges/eng/bus36_volt", 0) -- вольтметр сети 36в - угол
createGlobalPropertyi("tu154ce/switchers/eng/bus36_volt_sel", 0) -- переключатель вольтметра 36в
createGlobalPropertyi("tu154ce/switchers/eng/pts250_sel", 0) -- переключатель ПТС250. 0 - №1, 1 - №2
createGlobalPropertyi("tu154ce/switchers/eng/bus36_tr_left_to_right", 0) -- лев сеть на тр2. 0 - авто, 1 - ручное
createGlobalPropertyi("tu154ce/switchers/eng/bus36_tr_right_to_left", 0) -- прав сеть на тр1
createGlobalPropertyi("tu154ce/switchers/eng/pts250_on", 0) -- выключатель ПТС250
createGlobalPropertyi("tu154ce/switchers/eng/pts250_mode", 0) -- режим ПТС250. авто - ручное
createGlobalPropertyi("tu154ce/switchers/eng/pts250_on_cap", 0) -- выключатель ПТС250
createGlobalPropertyi("tu154ce/switchers/eng/pts250_mode_cap", 0) -- режим ПТС250. авто - ручное
createGlobalPropertyf("tu154ce/gauges/eng/bus27_volt", 0) -- вольтметр сети 27в - угол
createGlobalPropertyf("tu154ce/gauges/eng/bus27_amp1", 0) -- амперметр сети 27в - угол
createGlobalPropertyf("tu154ce/gauges/eng/bus27_amp2", 0) -- амперметр сети 27в - угол
createGlobalPropertyi("tu154ce/switchers/eng/bus27_volt_sel", 0) -- переключатель вольтметра 27в
createGlobalPropertyi("tu154ce/switchers/eng/bus27_amp1_sel", 0) -- переключатель амперметра 27в
createGlobalPropertyi("tu154ce/switchers/eng/bus27_amp2_sel", 0) -- переключатель амперметра 27в
createGlobalPropertyi("tu154ce/switchers/eng/bus27_connect", 0) -- соединение сетей 27в
createGlobalPropertyi("tu154ce/switchers/eng/bus27_connect_cap", 0) -- соединение сетей 27в
createGlobalPropertyi("tu154ce/switchers/eng/bus27_vu1", 1) -- ВУ1. -1 - резерв, 0 - выкл, +1 - вкл.
createGlobalPropertyi("tu154ce/switchers/eng/bus27_vu2", 1) -- ВУ2. -1 - резерв, 0 - выкл, +1 - вкл.
createGlobalPropertyi("tu154ce/switchers/eng/bat1_on", 1) -- батарея 1
createGlobalPropertyi("tu154ce/switchers/eng/bat2_on", 1) -- батарея 2
createGlobalPropertyi("tu154ce/switchers/eng/bat3_on", 1) -- батарея 3
createGlobalPropertyi("tu154ce/switchers/eng/bat4_on", 1) -- батарея 4
createGlobalPropertyi("tu154ce/switchers/eng/apu_main_switch", 0) -- выключатель ВСУ
createGlobalPropertyi("tu154ce/switchers/eng/apu_start_mode", 0) -- режим запуска ВСУ
createGlobalPropertyi("tu154ce/switchers/eng/apu_air_bleed", 0) -- переключение заслонки отбора воздуха. -1 - закрыть, 0 - нейтр, +1 - открыть
createGlobalPropertyi("tu154ce/buttons/eng/apu_start", 0) -- кнопка старта ВСУ
createGlobalPropertyi("tu154ce/buttons/eng/apu_stop", 0) -- кнопка стоп ВСУ
createGlobalPropertyf("tu154ce/gauges/eng/apu_rpm", 0) -- обороты ВСУ
createGlobalPropertyf("tu154ce/gauges/eng/apu_egt", 0) -- ТВГ ВСУ
createGlobalPropertyf("tu154ce/gauges/eng/apu_oil_temp", 0) -- температура масла ВСУ
createGlobalPropertyf("tu154ce/gauges/eng/egt_1", 20) -- ТВГ двиг 1
createGlobalPropertyf("tu154ce/gauges/eng/egt_2", 20) -- ТВГ двиг 2
createGlobalPropertyf("tu154ce/gauges/eng/egt_3", 20) -- ТВГ двиг 3
createGlobalPropertyf("tu154ce/gauges/eng/fuel_press_1", 0) -- давление топлива двиг 1
createGlobalPropertyf("tu154ce/gauges/eng/fuel_press_2", 0) -- давление топлива двиг 2
createGlobalPropertyf("tu154ce/gauges/eng/fuel_press_3", 0) -- давление топлива двиг 3
createGlobalPropertyf("tu154ce/gauges/eng/oil_press_1", 0) -- давление масла двиг 1
createGlobalPropertyf("tu154ce/gauges/eng/oil_press_2", 0) -- давление масла двиг 2
createGlobalPropertyf("tu154ce/gauges/eng/oil_press_3", 0) -- давление масла двиг 3
createGlobalPropertyf("tu154ce/gauges/eng/oil_temp_1", 0) -- температура масла двиг 1
createGlobalPropertyf("tu154ce/gauges/eng/oil_temp_2", 0) -- температура масла двиг 2
createGlobalPropertyf("tu154ce/gauges/eng/oil_temp_3", 0) -- температура масла двиг 3
createGlobalPropertyf("tu154ce/gauges/eng/fuel_flow_1", 0) -- расход топлива двиг 1
createGlobalPropertyf("tu154ce/gauges/eng/fuel_flow_2", 0) -- расход топлива двиг 2
createGlobalPropertyf("tu154ce/gauges/eng/fuel_flow_3", 0) -- расход топлива двиг 3
createGlobalPropertyf("tu154ce/gauges/eng/vibra_1", 0) -- вибрация двиг 1
createGlobalPropertyf("tu154ce/gauges/eng/vibra_2", 0) -- вибрация двиг 2
createGlobalPropertyf("tu154ce/gauges/eng/vibra_3", 0) -- вибрация двиг 3
createGlobalPropertyi("tu154ce/buttons/eng/control_ut", 0) -- кнопка контроль УТ
createGlobalPropertyi("tu154ce/buttons/eng/control_vibro_1", 0) -- кнопка контроль вибрации
createGlobalPropertyi("tu154ce/buttons/eng/control_vibro_2", 0) -- кнопка контроль вибрации
createGlobalPropertyi("tu154ce/buttons/eng/control_vibro_3", 0) -- кнопка контроль вибрации
createGlobalPropertyi("tu154ce/switchers/eng/vibro_sel_1", 0) -- переключатель прибора вибрации
createGlobalPropertyi("tu154ce/switchers/eng/vibro_sel_2", 0) -- переключатель прибора вибрации
createGlobalPropertyi("tu154ce/switchers/eng/vibro_sel_3", 0) -- переключатель прибора вибрации
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_summ", 0) -- сумарная масса топлива
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank1", 0) -- масса топлива в баке 1
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank2_left", 0) -- масса топлива в баке 2
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank2_right", 0) -- масса топлива в баке 2
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank3_left", 0) -- масса топлива в баке 3
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank3_right", 0) -- масса топлива в баке 3
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank4", 0) -- масса топлива в баке 4
createGlobalPropertyf("tu154ce/gauges/fuel/fuel_meter_mech", 0) -- расходомер
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_summ_zero", 0) -- сумарная масса топлива. кнопка нуля
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_summ_max", 0) -- сумарная масса топлива. кнопка P
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_tank2_zero", 0) -- топливомер бака 2. кнопка нуля
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_tank2_max", 0) -- топливомер бака 2. кнопка P
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_tank3_zero", 0) -- топливомер бака 3. кнопка нуля
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_tank3_max", 0) -- топливомер бака 3. кнопка P
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_tank4_zero", 0) -- топливомер бака 4. кнопка нуля
createGlobalPropertyi("tu154ce/buttons/fuel/fuel_meter_tank4_max", 0) -- топливомер бака 4. кнопка P
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank2_left", 1) -- насосы бака 2
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank2_right", 1) -- насосы бака 2
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank3_left", 1) -- насосы бака 3
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank3_right", 1) -- насосы бака 3
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank4", 1) -- насосы бака 4
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank1_1", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank1_2", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank1_3", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/switchers/fuel/pump_tank1_4", 1) -- насосы бака 1
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_trans", 0) -- краны резервой перекачки
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_trans_cap", 0) -- краны резервой перекачки
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_porc", 0) -- принуд порц
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_porc_cap", 0) -- принуд порц
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_level", 1) -- автомат выравнивания
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_flow_mode", 1) -- режим расходомера. ручное - автомат
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_flow_on", 1) -- автомат расхода
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_flow_on_cap", 0) -- автомат расхода
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_meter_on", 1) -- топливомер
createGlobalPropertyi("tu154ce/switchers/fuel/fuel_meter_mech_on", 1) -- расходомер
createGlobalPropertyi("tu154ce/switchers/fuel/fire_valve_1", 1) -- пожарный кран
createGlobalPropertyi("tu154ce/switchers/fuel/fire_valve_2", 1) -- пожарный кран
createGlobalPropertyi("tu154ce/switchers/fuel/fire_valve_3", 1) -- пожарный кран
createGlobalPropertyi("tu154ce/switchers/fuel/fire_valve_1_cap", 0) -- пожарный кран
createGlobalPropertyi("tu154ce/switchers/fuel/fire_valve_2_cap", 0) -- пожарный кран
createGlobalPropertyi("tu154ce/switchers/fuel/fire_valve_3_cap", 0) -- пожарный кран
createGlobalPropertyf("tu154ce/gauges/hydro/qty_12", 0) -- гидробаки
createGlobalPropertyf("tu154ce/gauges/hydro/qty_3", 0) -- гидробаки
createGlobalPropertyi("tu154ce/switchers/hydro/connect2to1", 0) -- подключение 2 ГС на 1 ГС
createGlobalPropertyi("tu154ce/switchers/hydro/connect2to1_cap", 0) -- подключение 2 ГС на 1 ГС
createGlobalPropertyi("tu154ce/switchers/hydro/pump_2", 0) -- гидронасосы 2
createGlobalPropertyi("tu154ce/switchers/hydro/pump_3", 0) -- гидронасосы 3
createGlobalPropertyi("tu154ce/buttons/hydro/qty_test_12", 0) -- контроль уровня
createGlobalPropertyi("tu154ce/buttons/hydro/qty_test_3", 0) -- контроль уровня
createGlobalPropertyi("tu154ce/buttons/hydro/accum_fill", 0) -- зарядка аккумулятора
createGlobalPropertyf("tu154ce/gauges/airbleed/cabin_alt", 0) -- высота в кабине
createGlobalPropertyf("tu154ce/gauges/airbleed/cabin_diff", 0) -- перепад давления
createGlobalPropertyf("tu154ce/gauges/airbleed/cabin_vvi", 0) -- кабинный вариометр. угол
createGlobalPropertyf("tu154ce/gauges/airbleed/cockpit_temp", 20) -- температура в кабине
createGlobalPropertyf("tu154ce/gauges/airbleed/cabin_temp", 20) -- температура в салонах
createGlobalPropertyf("tu154ce/gauges/airbleed/system_temp", 20) -- температура в трубопроводе
createGlobalPropertyf("tu154ce/gauges/airbleed/air_flow_1", 0) -- расход воздуха. угол
createGlobalPropertyf("tu154ce/gauges/airbleed/air_flow_2", 0) -- расход воздуха. угол
createGlobalPropertyi("tu154ce/switchers/airbleed/cabin_sel", 0) -- выбор салона
createGlobalPropertyi("tu154ce/switchers/airbleed/cockpit_temp_set", 20) -- установка температуры кабины
createGlobalPropertyi("tu154ce/switchers/airbleed/cabin1_temp_set", 20) -- установка температуры салона
createGlobalPropertyi("tu154ce/switchers/airbleed/cabin2_temp_set", 20) -- установка температуры салона
createGlobalPropertyi("tu154ce/switchers/airbleed/cockpit_mode_set", 1) -- установка режима обогрева. 0 - нейтр. 1 - авто, 2 - хол, 3 - гор
createGlobalPropertyi("tu154ce/switchers/airbleed/cabin1_mode_set", 1) -- установка режима обогрева
createGlobalPropertyi("tu154ce/switchers/airbleed/cabin2_mode_set", 1) -- установка режима обогрева
createGlobalPropertyi("tu154ce/switchers/airbleed/heat_close", 0) -- прекращение обогрева
createGlobalPropertyi("tu154ce/switchers/airbleed/heat_close_cap", 0) -- прекращение обогрева
createGlobalPropertyi("tu154ce/switchers/airbleed/left_sys_temp_set", 22) -- установка температуры левой магистрали
createGlobalPropertyi("tu154ce/switchers/airbleed/right_sys_temp_set", 22) -- установка температуры правой магистрали
createGlobalPropertyi("tu154ce/switchers/airbleed/left_sys_mode_set", 1) -- установка режима левой магистрали
createGlobalPropertyi("tu154ce/switchers/airbleed/right_sys_mode_set", 1) -- установка режима правой магистрали
createGlobalPropertyi("tu154ce/switchers/airbleed/ground_cond_on", 0) -- наземное кондиционирование
createGlobalPropertyi("tu154ce/switchers/airbleed/ground_cond_on_cap", 0) -- наземное кондиционирование
createGlobalPropertyi("tu154ce/switchers/airbleed/skv_faster_work", 0) -- -1 - охлаждение ГК, 0 - выкл, +1 - ускоренноые режимы обогрева
createGlobalPropertyi("tu154ce/switchers/airbleed/skv_faster_work_cap", 0) -- крышка
createGlobalPropertyi("tu154ce/switchers/airbleed/sys_temp_select", 1) -- переключение источников термометра. 0 - обогрев дверей, 1 - экип, 2 - салон 1, 3 - салон 2, 4 - маг лев, 5 - маг прав
createGlobalPropertyi("tu154ce/switchers/airbleed/psvp_left_on", 1) -- ПСВП лев
createGlobalPropertyi("tu154ce/switchers/airbleed/psvp_right_on", 1) -- ПСВП прав
createGlobalPropertyi("tu154ce/switchers/airbleed/psvp_left_on_cap", 0) -- ПСВП лев
createGlobalPropertyi("tu154ce/switchers/airbleed/psvp_right_on_cap", 0) -- ПСВП прав
createGlobalPropertyi("tu154ce/switchers/airbleed/air_valve_left", 0) -- краны наддува. -1 закр, 0 - нейтр, +1 откр
createGlobalPropertyi("tu154ce/switchers/airbleed/air_valve_right", 0) -- краны наддува. -1 закр, 0 - нейтр, +1 откр
createGlobalPropertyi("tu154ce/switchers/airbleed/air_valve_both", 0) -- краны наддува. -1 закр, 0 - нейтр, +1 откр
createGlobalPropertyi("tu154ce/switchers/airbleed/emerg_decompress", 0) -- сброс давления
createGlobalPropertyi("tu154ce/switchers/airbleed/emerg_decompress_cap", 0) -- сброс давления
createGlobalPropertyi("tu154ce/switchers/airbleed/eng_valve_1", 1) -- отбор воздуха от двигателей
createGlobalPropertyi("tu154ce/switchers/airbleed/eng_valve_2", 1) -- отбор воздуха от двигателей
createGlobalPropertyi("tu154ce/switchers/airbleed/eng_valve_3", 1) -- отбор воздуха от двигателей
createGlobalPropertyi("tu154ce/switchers/airbleed/dubler_on", 0) -- дублер
createGlobalPropertyi("tu154ce/switchers/airbleed/dubler_on_cap", 0) -- дублер
createGlobalPropertyf("tu154ce/gauges/eng/starter_press", 0) -- давление в системе запуска
createGlobalPropertyi("tu154ce/switchers/eng/starter_cap", 0) -- крышка панели запуска
createGlobalPropertyi("tu154ce/switchers/eng/starter_switch", 0) -- выключатель запуска
createGlobalPropertyi("tu154ce/switchers/eng/starter_eng_select", 0) -- выбор двигателя
createGlobalPropertyi("tu154ce/switchers/eng/starter_mode", 0) -- режим запуска
createGlobalPropertyi("tu154ce/buttons/eng/starter_start", 0) -- кнопка запуска
createGlobalPropertyi("tu154ce/buttons/eng/starter_stop", 0) -- кнопка преркащения запуска
createGlobalPropertyi("tu154ce/buttons/eng/flight_start_1", 0) -- запуск в полете
createGlobalPropertyi("tu154ce/buttons/eng/flight_start_2", 0) -- запуск в полете
createGlobalPropertyi("tu154ce/buttons/eng/flight_start_3", 0) -- запуск в полете
createGlobalPropertyi("tu154ce/switchers/eng/gauges_on_1", 1) -- приборы контроля двигателей
createGlobalPropertyi("tu154ce/switchers/eng/gauges_on_2", 1) -- приборы контроля двигателей
createGlobalPropertyi("tu154ce/switchers/eng/gauges_on_3", 1) -- приборы контроля двигателей
createGlobalPropertyi("tu154ce/switchers/eng/gauges_on_1_cap", 0) -- приборы контроля двигателей
createGlobalPropertyi("tu154ce/switchers/eng/gauges_on_2_cap", 0) -- приборы контроля двигателей
createGlobalPropertyi("tu154ce/switchers/eng/gauges_on_3_cap", 0) -- приборы контроля двигателей
createGlobalPropertyi("tu154ce/buttons/eng/reserv_pump_test", 0) -- проверка резерв топл насоса
createGlobalPropertyi("tu154ce/buttons/console/absu_zk", 0) -- кнопка ЗК на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_reset", 0) -- кнопка сброс программы на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_nvu", 0) -- кнопка НВУ на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_az1", 0) -- кнопка АЗ 1 на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_az2", 0) -- кнопка АЗ 2 на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_app", 0) -- кнопка заход на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_gs", 0) -- кнопка глиссада на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_stab_m", 0) -- кнопка M на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_stab_v", 0) -- кнопка V на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_stab_h", 0) -- кнопка H на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_stab", 0) -- кнопка СТАБ на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_stab_speed", 0) -- кнопка C на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_throt_off_1", 0) -- кнопка откл Г1 на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_throt_off_2", 0) -- кнопка откл Г2 на панели АБСУ
createGlobalPropertyi("tu154ce/buttons/console/absu_throt_off_3", 0) -- кнопка откл Г3 на панели АБСУ
createGlobalPropertyi("tu154ce/gauges/console/absu_roll_mode", 0) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
createGlobalPropertyi("tu154ce/gauges/console/absu_pitch_mode", 0) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
createGlobalPropertyf("tu154ce/gauges/console/gear_brake_press_L", 0) -- давление тормозов лев
createGlobalPropertyf("tu154ce/gauges/console/gear_brake_press_R", 0) -- давление тормозов прав
createGlobalPropertyf("tu154ce/gauges/console/map_angle", 0) -- угол карты
createGlobalPropertyi("tu154ce/switchers/console/buster_on_1", 1) -- выключатель бустера
createGlobalPropertyi("tu154ce/switchers/console/buster_on_2", 1) -- выключатель бустера
createGlobalPropertyi("tu154ce/switchers/console/buster_on_3", 1) -- выключатель бустера
createGlobalPropertyi("tu154ce/switchers/console/busters_cap", 0) -- крышка выключателей бустеров
createGlobalPropertyi("tu154ce/switchers/console/rls_on", 1) -- выключатель РЛС
createGlobalPropertyi("tu154ce/switchers/console/rls_mode", 0) -- режимы РЛС. 0 -готов, 1 - метео
createGlobalPropertyi("tu154ce/switchers/console/rls_distance", 4) -- дистанции РЛС
createGlobalPropertyf("tu154ce/switchers/console/rls_brt", 1) -- яркость РЛС
createGlobalPropertyf("tu154ce/switchers/console/rls_contr", 1) -- контраст РЛС
createGlobalPropertyf("tu154ce/switchers/console/rls_signs", 1) -- яркость меток РЛС
createGlobalPropertyi("tu154ce/switchers/console/absu_zpu_sel", 0) -- переключатель ЗПУ. лев - прав
createGlobalPropertyi("tu154ce/switchers/console/absu_nav_on", 1) -- стрелки навигация
createGlobalPropertyi("tu154ce/switchers/console/absu_landing_on", 0) -- стрелки посадка
createGlobalPropertyi("tu154ce/switchers/console/absu_needles_on", 1) -- стрелки
createGlobalPropertyi("tu154ce/switchers/console/absu_speed_mode", 0) -- режим СТУ. 0 - откл, 1 - нву, 2 - аз1, 3 - аз2, 4 - пос
createGlobalPropertyi("tu154ce/switchers/console/absu_speed_change", 0) -- ручка изменения скорости. 
createGlobalPropertyi("tu154ce/switchers/console/absu_speed_off", 0) -- отключение 1 и 2
createGlobalPropertyi("tu154ce/switchers/console/absu_speed_prepare", 1) -- подготовка
createGlobalPropertyi("tu154ce/switchers/console/absu_speed_off_cap", 0) -- отключение 1 и 2
createGlobalPropertyi("tu154ce/switchers/console/absu_speed_prepare_cap", 0) -- подготовка
createGlobalPropertyi("tu154ce/switchers/console/absu_speed_us_right_left", 1) -- подготовка
createGlobalPropertyi("tu154ce/buttons/console/absu_speed_test_1", 0) -- кнопка првоерки СТУ нижняя
createGlobalPropertyi("tu154ce/buttons/console/absu_speed_test_2", 0) -- кнопка првоерки СТУ верхняя
createGlobalPropertyi("tu154ce/switchers/console/absu_turn_handle", 0) -- ручка поворота
createGlobalPropertyf("tu154ce/switchers/console/absu_pitch_wheel", 0) -- колесико спуска, подъема
createGlobalPropertyi("tu154ce/switchers/console/absu_roll_ch_on", 1) -- выключатель канал крена
createGlobalPropertyi("tu154ce/switchers/console/absu_pitch_ch_on", 1) -- выключатель канала тангажа
createGlobalPropertyi("tu154ce/switchers/console/absu_smooth_on", 0) -- выключатель "в болтанку"
createGlobalPropertyi("tu154ce/switchers/console/absu_smooth_on_cap", 0) -- выключатель "в болтанку"
createGlobalPropertyi("tu154ce/switchers/console/absu_pitch_wheel_dir", 0) -- направление колесика спуска, подъема
createGlobalPropertyi("tu154ce/buttons/console/absu_arrest", 0) -- кнопки арретирования
createGlobalPropertyi("tu154ce/buttons/console/absu_arrest_cap", 0) -- крышка кнопок арретирования
createGlobalPropertyi("tu154ce/switchers/console/nvu_param_sel", 0) -- ручка выбора вводимого параметра НВУ. -4 - Z, -3 - S, -2 - Zm, -1 - Sm, 0 - off, 1 - Sn, 2 - Zn, 3 - S, 4 - Z
createGlobalPropertyi("tu154ce/switchers/console/nvu_turn_sel", 0) -- ручка выбора радиуса разворота, -1 - принуд, 0 - выкл, 1 - 5, 2 - 10, 3 - 15, 4 - 20, 5 - 25
createGlobalPropertyi("tu154ce/switchers/console/nvu_power_on", 1) -- питание НВУ
createGlobalPropertyi("tu154ce/switchers/console/nvu_calc_on", 0) -- счисление НВУ
createGlobalPropertyi("tu154ce/switchers/console/nvu_corr_on", 0) -- коррекция НВУ
createGlobalPropertyf("tu154ce/nvu/current_Z1_1", 4) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_Z1_10", 3) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_Z1_100", 2) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_Z1_1000", 1) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_Z1_min_1", 4) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_Z1_min_10", 3) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_Z1_min_100", 2) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_Z1_min_1000", 1) -- Z1
createGlobalPropertyf("tu154ce/nvu/current_S1_1", 4) -- S1
createGlobalPropertyf("tu154ce/nvu/current_S1_10", 3) -- S1
createGlobalPropertyf("tu154ce/nvu/current_S1_100", 2) -- S1
createGlobalPropertyf("tu154ce/nvu/current_S1_1000", 1) -- S1
createGlobalPropertyf("tu154ce/nvu/current_S1_min_1", 4) -- S1
createGlobalPropertyf("tu154ce/nvu/current_S1_min_10", 3) -- S1
createGlobalPropertyf("tu154ce/nvu/current_S1_min_100", 2) -- S1
createGlobalPropertyf("tu154ce/nvu/current_S1_min_1000", 1) -- S1
createGlobalPropertyf("tu154ce/nvu/next_Z1_1", 4) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_Z1_10", 3) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_Z1_100", 2) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_Z1_1000", 1) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_Z1_min_1", 4) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_Z1_min_10", 3) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_Z1_min_100", 2) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_Z1_min_1000", 1) -- Z1
createGlobalPropertyf("tu154ce/nvu/next_S1_1", 4) -- S1
createGlobalPropertyf("tu154ce/nvu/next_S1_10", 3) -- S1
createGlobalPropertyf("tu154ce/nvu/next_S1_100", 2) -- S1
createGlobalPropertyf("tu154ce/nvu/next_S1_1000", 1) -- S1
createGlobalPropertyf("tu154ce/nvu/next_S1_min_1", 4) -- S1
createGlobalPropertyf("tu154ce/nvu/next_S1_min_10", 3) -- S1
createGlobalPropertyf("tu154ce/nvu/next_S1_min_100", 2) -- S1
createGlobalPropertyf("tu154ce/nvu/next_S1_min_1000", 1) -- S1
createGlobalPropertyf("tu154ce/nvu/current_Z2_1", 4) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_Z2_10", 3) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_Z2_100", 2) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_Z2_1000", 1) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_S2_1", 4) -- S2
createGlobalPropertyf("tu154ce/nvu/current_S2_10", 3) -- S2
createGlobalPropertyf("tu154ce/nvu/current_S2_100", 2) -- S2
createGlobalPropertyf("tu154ce/nvu/current_S2_1000", 1) -- S2
createGlobalPropertyf("tu154ce/nvu/next_Z2_1", 4) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_Z2_10", 3) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_Z2_100", 2) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_Z2_1000", 1) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_S2_1", 4) -- S2
createGlobalPropertyf("tu154ce/nvu/next_S2_10", 3) -- S2
createGlobalPropertyf("tu154ce/nvu/next_S2_100", 2) -- S2
createGlobalPropertyf("tu154ce/nvu/next_S2_1000", 1) -- S2
createGlobalPropertyf("tu154ce/nvu/current_Z2_min_1", 4) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_Z2_min_10", 3) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_Z2_min_100", 2) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_Z2_min_1000", 1) -- Z2
createGlobalPropertyf("tu154ce/nvu/current_S2_min_1", 4) -- S2
createGlobalPropertyf("tu154ce/nvu/current_S2_min_10", 3) -- S2
createGlobalPropertyf("tu154ce/nvu/current_S2_min_100", 2) -- S2
createGlobalPropertyf("tu154ce/nvu/current_S2_min_1000", 1) -- S2
createGlobalPropertyf("tu154ce/nvu/next_Z2_min_1", 4) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_Z2_min_10", 3) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_Z2_min_100", 2) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_Z2_min_1000", 1) -- Z2
createGlobalPropertyf("tu154ce/nvu/next_S2_min_1", 4) -- S2
createGlobalPropertyf("tu154ce/nvu/next_S2_min_10", 3) -- S2
createGlobalPropertyf("tu154ce/nvu/next_S2_min_100", 2) -- S2
createGlobalPropertyf("tu154ce/nvu/next_S2_min_1000", 1) -- S2
createGlobalPropertyf("tu154ce/nvu/zpu1_01", 5) -- ZPU
createGlobalPropertyf("tu154ce/nvu/zpu1_1", 3) -- ZPU
createGlobalPropertyf("tu154ce/nvu/zpu1_10", 2) -- ZPU
createGlobalPropertyf("tu154ce/nvu/zpu1_100", 1) -- ZPU
createGlobalPropertyf("tu154ce/nvu/zpu2_01", 5) -- ZPU
createGlobalPropertyf("tu154ce/nvu/zpu2_1", 3) -- ZPU
createGlobalPropertyf("tu154ce/nvu/zpu2_10", 2) -- ZPU
createGlobalPropertyf("tu154ce/nvu/zpu2_100", 1) -- ZPU
createGlobalPropertyf("tu154ce/nvu/z1_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/z1_plus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s1_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s1_plus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/z2_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/z2_plus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s2_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s2_plus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/z1_next_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/z1_next_plus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s1_next_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s1_next_plus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/z2_next_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/z2_next_plus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s2_next_minus_cap", 1) -- digits cap
createGlobalPropertyf("tu154ce/nvu/s2_next_plus_cap", 1) -- digits cap
createGlobalPropertyi("tu154ce/buttons/nvu/nvu_left_btn", 0) -- левая кнопка НВУ
createGlobalPropertyi("tu154ce/buttons/nvu/nvu_ctr_btn", 0) -- центр кнопка НВУ
createGlobalPropertyi("tu154ce/buttons/nvu/nvu_right_btn", 0) -- правая кнопка НВУ
createGlobalPropertyi("tu154ce/buttons/nvu/zpu_1_left_btn", 0) -- левая кнопка ЗПУ
createGlobalPropertyi("tu154ce/buttons/nvu/zpu_1_ctr_btn", 0) -- центр кнопка ЗПУ
createGlobalPropertyi("tu154ce/buttons/nvu/zpu_1_right_btn", 0) -- правая кнопка ЗПУ
createGlobalPropertyi("tu154ce/buttons/nvu/zpu_2_left_btn", 0) -- левая кнопка ЗПУ
createGlobalPropertyi("tu154ce/buttons/nvu/zpu_2_ctr_btn", 0) -- центр кнопка ЗПУ
createGlobalPropertyi("tu154ce/buttons/nvu/zpu_2_right_btn", 0) -- правая кнопка ЗПУ
createGlobalPropertyi("tu154ce/rotary/console/nav_1_course", 0) -- курс нав 1
createGlobalPropertyf("tu154ce/rotary/console/nav_1_course_1", 0) -- курс нав 1
createGlobalPropertyf("tu154ce/rotary/console/nav_1_course_10", 0) -- курс нав 1
createGlobalPropertyf("tu154ce/rotary/console/nav_1_course_100", 0) -- курс нав 1
createGlobalPropertyi("tu154ce/rotary/console/nav_2_course", 0) -- курс нав 2
createGlobalPropertyf("tu154ce/rotary/console/nav_2_course_1", 0) -- курс нав 2
createGlobalPropertyf("tu154ce/rotary/console/nav_2_course_10", 0) -- курс нав 2
createGlobalPropertyf("tu154ce/rotary/console/nav_2_course_100", 0) -- курс нав 2
createGlobalPropertyf("tu154ce/rotary/console/wind_set", 0) -- установка ветра
createGlobalPropertyi("tu154ce/button/console/wind_course_left", 0) -- кнопка установки курса ветра 
createGlobalPropertyi("tu154ce/button/console/wind_course_ctr", 0) -- кнопка установки курса ветра 
createGlobalPropertyi("tu154ce/button/console/wind_course_right", 0) -- кнопка установки курса ветра 
createGlobalPropertyi("tu154ce/button/console/wind_spd_left", 0) -- кнопка установки скорости ветра 
createGlobalPropertyi("tu154ce/button/console/wind_spd_ctr", 0) -- кнопка установки скорости ветра
createGlobalPropertyi("tu154ce/button/console/wind_spd_right", 0) -- кнопка установки скорости ветра
createGlobalPropertyi("tu154ce/switchers/console/emerg_elev_trimm", 0) -- аварийное управление триммером
createGlobalPropertyi("tu154ce/switchers/console/emerg_elev_trimm_cap", 0) -- аварийное управление триммером
createGlobalPropertyi("tu154ce/buttons/console/radio", 0) -- кнопка радио на пъедестале
createGlobalPropertyi("tu154ce/buttons/console/pdu406_control", 0) -- кнопка дежур-контроль
createGlobalPropertyi("tu154ce/buttons/console/pdu406_sound_off", 0) -- кнопка отключение звука
createGlobalPropertyf("tu154ce/switchers/sard/sard_cabin_press_set", 650) -- установка давления в кабине
createGlobalPropertyf("tu154ce/switchers/sard/sard_abs_press_set", 1013) -- установка абсолютного давления
createGlobalPropertyf("tu154ce/switchers/sard/sard_diff_set", 0.6) -- установка перепада давлений
createGlobalPropertyf("tu154ce/switchers/sard/sard_spd_set", 0.5) -- установка скорости работы САРД
createGlobalPropertyi("tu154ce/switchers/tcas/tcas_mode", 4) -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA
createGlobalPropertyi("tu154ce/switchers/tcas/tcas_rot_big", 0) -- большая вертелка
createGlobalPropertyi("tu154ce/switchers/tcas/tcas_rot_small", 0) -- малая вертелка
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_ident_btn", 0) -- кнопка IDENT
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_fcn_btn", 0) -- кнопка FCN
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_left_btn", 0) -- кнопка <
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_right_btn", 0) -- кнопка >
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_ent_btn", 0) -- кнопка ENT
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_atc_btn", 0) -- кнопка ATC
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_alt_btn", 0) -- кнопка ALT
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_rng_dn_btn", 0) -- кнопка RNG DN
createGlobalPropertyi("tu154ce/buttons/tcas/tcas_rng_up_btn", 0) -- кнопка RNG UP
createGlobalPropertyi("tu154ce/buttons/srpbz/but_view", 0) -- кнопка ВИД
createGlobalPropertyi("tu154ce/buttons/srpbz/but_empty", 0) -- кнопка -
createGlobalPropertyi("tu154ce/buttons/srpbz/but_down", 0) -- кнопка масштаб вниз
createGlobalPropertyi("tu154ce/buttons/srpbz/but_up", 0) -- кнопка масштаб вверх
createGlobalPropertyf("tu154ce/rotary/srpbz/brightness", 0.7) -- ручка яркости
createGlobalPropertyf("tu154ce/light/no_LIT", 0) -- переменная для отключения светимости у объектов, которые имеют LIT текстуру, но светиться не должны
createGlobalPropertyf("tu154ce/lights/exit_lamp", 0) -- лампа выхода
createGlobalPropertyf("tu154ce/lights/fasten_seatbelts_lamp", 0) -- лампа пристегните ремни
createGlobalPropertyf("tu154ce/lights/nosmoking_lamp", 0) -- лампа не курить
createGlobalPropertyf("tu154ce/lights/toilet_busy_lamp", 0) -- лампа туалет занят
createGlobalPropertyf("tu154ce/lights/seats_leters_lamp", 0) -- лампы с буквами кресел
createGlobalPropertyf("tu154ce/lights/mid_left_panel_int", 0) -- яркость свечения пъедестала
createGlobalPropertyf("tu154ce/lights/left_panel_int", 0) -- яркость свечения встроенного освещения панели КВС
createGlobalPropertyf("tu154ce/lights/right_panel_int", 0) -- яркость свечения встроенного освещения панели 2П
createGlobalPropertyf("tu154ce/lights/mid_right_panel_int", 0) -- яркость свечения встроенного освещения средней передней панели
createGlobalPropertyf("tu154ce/lights/ovhd_panel_int", 0) -- яркость свечения встроенного освещения верхней панели
createGlobalPropertyf("tu154ce/lights/left_panel_flood", 0) -- яркость заливающего света левой панели
createGlobalPropertyf("tu154ce/lights/right_panel_flood", 0) -- яркость заливающего света правой панели
createGlobalPropertyf("tu154ce/lights/mid_panel_flood", 0) -- яркость заливающего света центральной панели
createGlobalPropertyf("tu154ce/lights/front_panel_flood", 0) -- яркость заливающего света передней панели
createGlobalPropertyf("tu154ce/lights/ovhd_front_panel_flood", 0) -- яркость заливающего света передней части оверхеда
createGlobalPropertyf("tu154ce/lights/ovhd_back_panel_flood", 0) -- яркость заливающего света задней части оверхеда
createGlobalPropertyf("tu154ce/lights/eng_panel_flood", 0) -- яркость освещения панели БИ
createGlobalPropertyf("tu154ce/lights/azs_panel_flood", 0) -- освещение панели АЗС
createGlobalPropertyf("tu154ce/lights/cargo_light_1", 0) -- освещение грузового отсека 1
createGlobalPropertyf("tu154ce/lights/cargo_light_2", 0) -- освещение грузового отсека 2
createGlobalPropertyf("tu154ce/lights/tech_light", 0) -- отсвещение тех-отсека
createGlobalPropertyf("tu154ce/lights/gear_nacelle_light", 0) -- освещение гондол шасси
createGlobalPropertyf("tu154ce/lights/left_spotlight_flood", 0) -- яркость левого фонарика
createGlobalPropertyf("tu154ce/lights/ark1_left_lit", 0) -- подсветка левой части АРК 1
createGlobalPropertyf("tu154ce/lights/ark1_right_lit", 0) -- подсветка правой части АРК 1
createGlobalPropertyf("tu154ce/lights/ark1_all_lit", 0) -- подсветка АРК 1
createGlobalPropertyf("tu154ce/lights/ark2_left_lit", 0) -- подсветка левой части АРК 2
createGlobalPropertyf("tu154ce/lights/ark2_right_lit", 0) -- подсветка правой части АРК 2
createGlobalPropertyf("tu154ce/lights/ark2_all_lit", 0) -- подсветка АРК 2
createGlobalPropertyf("tu154ce/lights/tks_mode_lit_mk", 0) -- лампочка режима ТКС - МК
createGlobalPropertyf("tu154ce/lights/tks_mode_lit_ak", 0) -- лампочка режима ТКС - АК
createGlobalPropertyf("tu154ce/lights/tks_mode_lit_gpk", 0) -- лампочка режима ТКС - ГПК
createGlobalPropertyf("tu154ce/lights/to_not_ready", 0) -- к взлету не готов
createGlobalPropertyf("tu154ce/lights/wrong_trimm", 0) -- ложное триммирование
createGlobalPropertyf("tu154ce/lights/controll_roll", 0) -- управляй креном
createGlobalPropertyf("tu154ce/lights/controll_pitch", 0) -- управляй тангажом
createGlobalPropertyf("tu154ce/lights/yoke_sign", 0) -- сигнализация ухода на второй круг в штурвальном режиме
createGlobalPropertyf("tu154ce/lights/triangle", 0) -- интегральный сигнальный огонь
createGlobalPropertyf("tu154ce/lights/controll_thrust", 0) -- управляй тягой
createGlobalPropertyf("tu154ce/lights/course_lim", 0) -- выход за пределы курса
createGlobalPropertyf("tu154ce/lights/gs_lim", 0) -- выход за пределы глиссады
createGlobalPropertyf("tu154ce/lights/fire", 0) -- ПОЖАР
createGlobalPropertyf("tu154ce/lights/no_ag_controll", 0) -- нет контроля АГ
createGlobalPropertyf("tu154ce/lights/fuel_less_2500", 0) -- остаток топлива 2500
createGlobalPropertyf("tu154ce/lights/sso_danger", 0) -- ССО опасно
createGlobalPropertyf("tu154ce/lights/sso_connect", 0) -- ССО связь
createGlobalPropertyf("tu154ce/lights/speed_high", 0) -- предел скорости
createGlobalPropertyf("tu154ce/lights/roll_left_high", 0) -- крен лев велик
createGlobalPropertyf("tu154ce/lights/roll_right_high", 0) -- крен прав велик
createGlobalPropertyf("tu154ce/lights/alpha_high", 0) -- предельный УА
createGlobalPropertyf("tu154ce/lights/g_force_high", 0) -- передельная перегрузка
createGlobalPropertyf("tu154ce/lights/auasp_lamp", 0) -- лампа на АУАСП
createGlobalPropertyf("tu154ce/lights/toga", 0) -- уход
createGlobalPropertyf("tu154ce/lights/decision_height", 0) -- ССО связьвысота принятия решения Н
createGlobalPropertyf("tu154ce/lights/course", 0) -- КУРС
createGlobalPropertyf("tu154ce/lights/glideslope", 0) -- ГЛИСС
createGlobalPropertyf("tu154ce/lights/zk_lamp", 0) -- ЗК
createGlobalPropertyf("tu154ce/lights/thrust_automat", 0) -- автомат тяги
createGlobalPropertyf("tu154ce/lights/stab_roll", 0) -- стабилизация боков
createGlobalPropertyf("tu154ce/lights/stab_pitch", 0) -- стабилизация продольная
createGlobalPropertyf("tu154ce/lights/nvu_lamp", 0) -- НВУ
createGlobalPropertyf("tu154ce/lights/vor_lamp", 0) -- VOR
createGlobalPropertyf("tu154ce/lights/stab_h", 0) -- стаб H
createGlobalPropertyf("tu154ce/lights/stab_v", 0) -- стаб V
createGlobalPropertyf("tu154ce/lights/stab_m", 0) -- стаб M
createGlobalPropertyf("tu154ce/lights/marker_1", 0) -- маркер 1
createGlobalPropertyf("tu154ce/lights/marker_2", 0) -- маркер 2
createGlobalPropertyf("tu154ce/lights/marker_3", 0) -- маркер 3
createGlobalPropertyf("tu154ce/lights/pull_up", 0) -- тяни вверх
createGlobalPropertyf("tu154ce/lights/check_alt_left", 0) -- проверь Н
createGlobalPropertyf("tu154ce/lights/check_alt_right", 0) -- проверь Н
createGlobalPropertyf("tu154ce/lights/sns_lamp", 0) -- СНС
createGlobalPropertyf("tu154ce/lights/fp_eng_fail_1", 0) -- двиг. неиспр 1 на передней панели
createGlobalPropertyf("tu154ce/lights/fp_eng_fail_2", 0) -- двиг. неиспр 2 на передней панели
createGlobalPropertyf("tu154ce/lights/fp_eng_fail_3", 0) -- двиг. неиспр 3 на передней панели
createGlobalPropertyf("tu154ce/lights/fp_reverse_1", 0) -- створки реверса 1 на передней панели
createGlobalPropertyf("tu154ce/lights/fp_reverse_3", 0) -- створки реверса 3 на передней панели
createGlobalPropertyf("tu154ce/lights/stab_work", 0) -- стабилиз включен
createGlobalPropertyf("tu154ce/lights/flaps_1_valve", 0) -- закрылки 1 ПК
createGlobalPropertyf("tu154ce/lights/flaps_2_valve", 0) -- закрылки 2 ПК
createGlobalPropertyf("tu154ce/lights/spoilers_mid_left", 0) -- интерцепторы средн лев
createGlobalPropertyf("tu154ce/lights/spoilers_mid_right", 0) -- интерцепторы средн прав
createGlobalPropertyf("tu154ce/lights/spoilers_inn_left", 0) -- интерцепторы внутр лев
createGlobalPropertyf("tu154ce/lights/spoilers_inn_right", 0) -- интерцепторы внутр прав
createGlobalPropertyf("tu154ce/lights/gears_not_ext", 0) -- шасси не выпущенны
createGlobalPropertyf("tu154ce/lights/gears_red_left", 0) -- красная лампа шасси
createGlobalPropertyf("tu154ce/lights/gears_red_front", 0) -- красная лампа шасси
createGlobalPropertyf("tu154ce/lights/gears_red_right", 0) -- красная лампа шасси
createGlobalPropertyf("tu154ce/lights/gears_green_left", 0) -- зеленая лампа шасси
createGlobalPropertyf("tu154ce/lights/gears_green_front", 0) -- зеленая лампа шасси
createGlobalPropertyf("tu154ce/lights/gears_green_right", 0) -- зеленая лампа шасси
createGlobalPropertyf("tu154ce/lights/gears_red_left_eng", 0) -- красная лампа шасси на панели БИ
createGlobalPropertyf("tu154ce/lights/gears_red_front_eng", 0) -- красная лампа шасси на панели БИ
createGlobalPropertyf("tu154ce/lights/gears_red_right_eng", 0) -- красная лампа шасси на панели БИ
createGlobalPropertyf("tu154ce/lights/gears_green_left_eng", 0) -- зеленая лампа шасси на панели БИ
createGlobalPropertyf("tu154ce/lights/gears_green_front_eng", 0) -- зеленая лампа шасси на панели БИ
createGlobalPropertyf("tu154ce/lights/gears_green_right_eng", 0) -- зеленая лампа шасси на панели БИ
createGlobalPropertyf("tu154ce/lights/flaps_unsync", 0) -- рассинхр закрылки
createGlobalPropertyf("tu154ce/lights/slats_unsync", 0) -- рассинхр предкр
createGlobalPropertyf("tu154ce/lights/slats_extended", 0) -- предкрылки выпущены
createGlobalPropertyf("tu154ce/lights/to_rudder", 0) -- взлет-посадка РН
createGlobalPropertyf("tu154ce/lights/to_elevator", 0) -- взлет-посадка РВ
createGlobalPropertyf("tu154ce/lights/trimm_zero_course", 0) -- нетрально курс
createGlobalPropertyf("tu154ce/lights/trimm_zero_roll", 0) -- нетрально крен
createGlobalPropertyf("tu154ce/lights/trimm_zero_pitch", 0) -- нетрально тангаж
createGlobalPropertyf("tu154ce/lights/damper_course", 0) -- демпер курс
createGlobalPropertyf("tu154ce/lights/damper_roll", 0) -- демпер крен
createGlobalPropertyf("tu154ce/lights/damper_pitch", 0) -- демпер тангаж
createGlobalPropertyf("tu154ce/lights/no_reserve_c", 0) -- нет резерва К
createGlobalPropertyf("tu154ce/lights/no_reserve_g", 0) -- нет резерва Г
createGlobalPropertyf("tu154ce/lights/pitch_control_fail", 0) -- продол управл
createGlobalPropertyf("tu154ce/lights/roll_control_fail", 0) -- боков управл
createGlobalPropertyf("tu154ce/lights/ga_main_fail", 0) -- отказ ГА осн
createGlobalPropertyf("tu154ce/lights/ga_reserve_fail", 0) -- отказ ГА контр
createGlobalPropertyf("tu154ce/lights/msg_lamp", 0) -- MSG
createGlobalPropertyf("tu154ce/lights/wpt_lamp", 0) -- WPT
createGlobalPropertyf("tu154ce/lights/stuard_call", 0) -- вызов БП
createGlobalPropertyf("tu154ce/lights/mgv_control_fail", 0) -- отказ МГВ контр
createGlobalPropertyf("tu154ce/lights/sns_lamp", 0) -- СНС
createGlobalPropertyf("tu154ce/lights/correct_on", 0) -- коррекция включ
createGlobalPropertyf("tu154ce/lights/change_ch_o", 0) -- смена ЧО
createGlobalPropertyf("tu154ce/lights/warning_terrain", 0) -- внимание земля
createGlobalPropertyf("tu154ce/lights/gs_low", 0) -- глиссада низко
createGlobalPropertyf("tu154ce/lights/cockpit_p_low", 0) -- Р каб мало
createGlobalPropertyf("tu154ce/lights/nvu_fail", 0) -- отаказ НВУ
createGlobalPropertyf("tu154ce/lights/nvu_vor_automat", 0) -- НВУ-VOR автомат
createGlobalPropertyf("tu154ce/lights/dist_autonom", 0) -- дист автоном
createGlobalPropertyf("tu154ce/lights/diss_memory", 0) -- память ДИСС
createGlobalPropertyf("tu154ce/lights/azimuth_autonom", 0) -- азимут автоном
createGlobalPropertyf("tu154ce/lights/srpbz_fail", 0) -- отказ СРПБЗ
createGlobalPropertyf("tu154ce/lights/tcas_ident", 0) -- лампа идентификации ТКАС
createGlobalPropertyf("tu154ce/lights/other_hatches", 0) -- лампа для незадействованных люков
createGlobalPropertyf("tu154ce/lights/left_front_pax_door", 0) -- левая передняя дверь открыта
createGlobalPropertyf("tu154ce/lights/left_mid_pax_door", 0) -- левая средняя дверь открыта
createGlobalPropertyf("tu154ce/lights/right_mid_pax_door", 0) -- средняя средняя дверь открыта
createGlobalPropertyf("tu154ce/lights/cargo_front_door", 0) -- передний багажный люк
createGlobalPropertyf("tu154ce/lights/cargo_back_door", 0) -- передний багажный люк
createGlobalPropertyf("tu154ce/lights/turn63_lamp", 0) -- разворот 63 
createGlobalPropertyf("tu154ce/lights/nosewheel_turn_off", 0) -- поворот не включен
createGlobalPropertyf("tu154ce/lights/busters_off", 0) -- лампа бустера
createGlobalPropertyf("tu154ce/lights/water_level_1", 0) -- уровень воды 1
createGlobalPropertyf("tu154ce/lights/water_level_12", 0) -- уровень воды 1/2
createGlobalPropertyf("tu154ce/lights/water_level_14", 0) -- уровень воды 1/4
createGlobalPropertyf("tu154ce/lights/water_level_0", 0) -- уровень воды 0
createGlobalPropertyf("tu154ce/lights/ra56_roll_fail_1", 0) -- отказ РА56 крен
createGlobalPropertyf("tu154ce/lights/ra56_roll_fail_2", 0) -- отказ РА56 крен
createGlobalPropertyf("tu154ce/lights/ra56_roll_fail_3", 0) -- отказ РА56 крен
createGlobalPropertyf("tu154ce/lights/ra56_pitch_fail_1", 0) -- отказ РА56 тангаж
createGlobalPropertyf("tu154ce/lights/ra56_pitch_fail_2", 0) -- отказ РА56 тангаж
createGlobalPropertyf("tu154ce/lights/ra56_pitch_fail_3", 0) -- отказ РА56 тангаж
createGlobalPropertyf("tu154ce/lights/ra56_course_fail_1", 0) -- отказ РА56 курс
createGlobalPropertyf("tu154ce/lights/ra56_course_fail_2", 0) -- отказ РА56 курс
createGlobalPropertyf("tu154ce/lights/ra56_course_fail_3", 0) -- отказ РА56 курс
createGlobalPropertyf("tu154ce/lights/nvu_no_reserve", 0) -- резерва НВУ нет
createGlobalPropertyf("tu154ce/lights/absu_work", 0) -- испр АБСУ
createGlobalPropertyf("tu154ce/lights/fire/smoke_1", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_2", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_zone2_left", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_zone2_right", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_zone3", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_zone4", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_zone5_left", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_zone5_right", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/smoke_zone6", 0) -- дым в отсеках
createGlobalPropertyf("tu154ce/lights/fire/fire_eng_1", 0) -- пожар в двигателе
createGlobalPropertyf("tu154ce/lights/fire/fire_eng_2", 0) -- пожар в двигателе
createGlobalPropertyf("tu154ce/lights/fire/fire_eng_3", 0) -- пожар в двигателе
createGlobalPropertyf("tu154ce/lights/fire/overheat_eng_1", 0) -- перегрев двигателя
createGlobalPropertyf("tu154ce/lights/fire/overheat_eng_2", 0) -- перегрев двигателя
createGlobalPropertyf("tu154ce/lights/fire/overheat_eng_3", 0) -- перегрев двигателя
createGlobalPropertyf("tu154ce/lights/fire/fuel_off_eng_1", 0) -- топливо закрыто
createGlobalPropertyf("tu154ce/lights/fire/fuel_off_eng_2", 0) -- топливо закрыто
createGlobalPropertyf("tu154ce/lights/fire/fuel_off_eng_3", 0) -- топливо закрыто
createGlobalPropertyf("tu154ce/lights/fire/check_overheat", 0) -- проверь перегрев и дым
createGlobalPropertyf("tu154ce/lights/fire/fire_apu", 0) -- пожар ВСУ
createGlobalPropertyf("tu154ce/lights/fire/turn_on_spz", 0) -- включи СПЗ
createGlobalPropertyf("tu154ce/lights/apu/low_oil", 0) -- масла мало
createGlobalPropertyf("tu154ce/lights/apu/low_oil_press", 0) -- Р масла
createGlobalPropertyf("tu154ce/lights/apu/high_temp", 0) -- предельная температура
createGlobalPropertyf("tu154ce/lights/apu/high_rpm", 0) -- предельные обороты
createGlobalPropertyf("tu154ce/lights/apu/pta6_fail", 0) -- ПТА 6А неисправн
createGlobalPropertyf("tu154ce/lights/apu/doors_open", 0) -- створки открыты
createGlobalPropertyf("tu154ce/lights/apu/fuel_press", 0) -- Р топлива
createGlobalPropertyf("tu154ce/lights/apu/start_ready", 0) -- Готов к запуску
createGlobalPropertyf("tu154ce/lights/apu/work_mode", 0) -- Выход на режим
createGlobalPropertyf("tu154ce/lights/apu/start_apu", 0) -- запусти ВСУ
createGlobalPropertyf("tu154ce/lights/engines/eng1_dangerous_vibro", 0) -- опасная вибрация
createGlobalPropertyf("tu154ce/lights/engines/eng1_oil_level", 0) -- уровень масла
createGlobalPropertyf("tu154ce/lights/engines/eng1_oil_p", 0) -- давление масла
createGlobalPropertyf("tu154ce/lights/engines/eng1_bypass_valve", 0) -- клапаны перепуска
createGlobalPropertyf("tu154ce/lights/engines/eng1_vna33", 0) -- ВНА 33
createGlobalPropertyf("tu154ce/lights/engines/eng1_reverse_lock", 0) -- замок реверса
createGlobalPropertyf("tu154ce/lights/engines/eng1_high_vibro", 0) -- вибрация велика
createGlobalPropertyf("tu154ce/lights/engines/eng1_chips", 0) -- стружка в масле
createGlobalPropertyf("tu154ce/lights/engines/eng1_fuel_p", 0) -- давление топлива
createGlobalPropertyf("tu154ce/lights/engines/eng1_filter_fail", 0) -- фильтр засорен
createGlobalPropertyf("tu154ce/lights/engines/eng1_vna0", 0) -- ВНА 0
createGlobalPropertyf("tu154ce/lights/engines/eng1_reverse_doors", 0) -- створки реверса
createGlobalPropertyf("tu154ce/lights/engines/eng2_dangerous_vibro", 0) -- опасная вибрация
createGlobalPropertyf("tu154ce/lights/engines/eng2_oil_level", 0) -- уровень масла
createGlobalPropertyf("tu154ce/lights/engines/eng2_oil_p", 0) -- давление масла
createGlobalPropertyf("tu154ce/lights/engines/eng2_bypass_valve", 0) -- клапаны перепуска
createGlobalPropertyf("tu154ce/lights/engines/eng2_vna33", 0) -- ВНА 33
createGlobalPropertyf("tu154ce/lights/engines/eng_at_on", 0) -- АТ включен
createGlobalPropertyf("tu154ce/lights/engines/eng2_high_vibro", 0) -- вибрация велика
createGlobalPropertyf("tu154ce/lights/engines/eng2_chips", 0) -- стружка в масле
createGlobalPropertyf("tu154ce/lights/engines/eng2_fuel_p", 0) -- давление топлива
createGlobalPropertyf("tu154ce/lights/engines/eng2_filter_fail", 0) -- фильтр засорен
createGlobalPropertyf("tu154ce/lights/engines/eng2_vna0", 0) -- ВНА 0
createGlobalPropertyf("tu154ce/lights/engines/eng_block", 0) -- расстоп сектора
createGlobalPropertyf("tu154ce/lights/engines/eng3_dangerous_vibro", 0) -- опасная вибрация
createGlobalPropertyf("tu154ce/lights/engines/eng3_oil_level", 0) -- уровень масла
createGlobalPropertyf("tu154ce/lights/engines/eng3_oil_p", 0) -- давление масла
createGlobalPropertyf("tu154ce/lights/engines/eng3_bypass_valve", 0) -- клапаны перепуска
createGlobalPropertyf("tu154ce/lights/engines/eng3_vna33", 0) -- ВНА 33
createGlobalPropertyf("tu154ce/lights/engines/eng3_reverse_lock", 0) -- замок реверса
createGlobalPropertyf("tu154ce/lights/engines/eng3_high_vibro", 0) -- вибрация велика
createGlobalPropertyf("tu154ce/lights/engines/eng3_chips", 0) -- стружка в масле
createGlobalPropertyf("tu154ce/lights/engines/eng3_fuel_p", 0) -- давление топлива
createGlobalPropertyf("tu154ce/lights/engines/eng3_filter_fail", 0) -- фильтр засорен
createGlobalPropertyf("tu154ce/lights/engines/eng3_vna0", 0) -- ВНА 0
createGlobalPropertyf("tu154ce/lights/engines/eng3_reverse_doors", 0) -- створки реверса
createGlobalPropertyf("tu154ce/lights/small/transponder1_fail", 0) -- левая панель. отказ передатчика
createGlobalPropertyf("tu154ce/lights/small/transponder1_kd", 0) -- левая панель. КД
createGlobalPropertyf("tu154ce/lights/small/transponder1_kp", 0) -- левая панель. КП
createGlobalPropertyf("tu154ce/lights/small/leftside_yellow", 0) -- желтая лампа слева
createGlobalPropertyf("tu154ce/lights/small/turn_on_aux", 0) -- включи запасной
createGlobalPropertyf("tu154ce/lights/small/front_hydr_fail_1", 0) -- низкое давление ГС 1. передняя панель
createGlobalPropertyf("tu154ce/lights/small/front_hydr_fail_2", 0) -- низкое давление ГС 2. передняя панель
createGlobalPropertyf("tu154ce/lights/small/front_hydr_fail_3", 0) -- низкое давление ГС 3. передняя панель
createGlobalPropertyf("tu154ce/lights/small/front_hydr_fail_4", 0) -- низкое давление ГС аварийн. передняя панель
createGlobalPropertyf("tu154ce/lights/small/rv5_left_dh", 0) -- ВПР на левом РВ5
createGlobalPropertyf("tu154ce/lights/small/rv5_right_dh", 0) -- ВПР на правом РВ5
createGlobalPropertyf("tu154ce/lights/small/vd15_lamp", 0) -- лампа возле высотомера на передней панели
createGlobalPropertyf("tu154ce/lights/small/bkk_ok", 0) -- лампа исправности БКК на верхней панели
createGlobalPropertyf("tu154ce/lights/small/heat_ok_1", 0) -- лампа исправности обогрева
createGlobalPropertyf("tu154ce/lights/small/heat_ok_2", 0) -- лампа исправности обогрева
createGlobalPropertyf("tu154ce/lights/small/heat_ok_3", 0) -- лампа исправности обогрева
createGlobalPropertyf("tu154ce/lights/small/sp50_c1", 0) -- панель СП50 - курс 1
createGlobalPropertyf("tu154ce/lights/small/sp50_g1", 0) -- панель СП50 - глисс 1
createGlobalPropertyf("tu154ce/lights/small/sp50_c2", 0) -- панель СП50 - курс 2
createGlobalPropertyf("tu154ce/lights/small/sp50_g2", 0) -- панель СП50 - глисс 2
createGlobalPropertyf("tu154ce/lights/small/transponder_red", 0) -- красная лампа на ответчике
createGlobalPropertyf("tu154ce/lights/small/transponder_green", 0) -- зеленая лампа на ответчике
createGlobalPropertyf("tu154ce/lights/small/tks_main_fail", 0) -- отказ осн ГА на ТКС
createGlobalPropertyf("tu154ce/lights/small/tks_contr_fail", 0) -- отказ контр ГА на ТКС
createGlobalPropertyf("tu154ce/lights/small/rls_ready", 0) -- РЛС готов
createGlobalPropertyf("tu154ce/lights/small/rls_weather", 0) -- РЛС метео
createGlobalPropertyf("tu154ce/lights/small/stu_roll", 0) -- СТУ бок
createGlobalPropertyf("tu154ce/lights/small/stu_pitch", 0) -- СТУ прод
createGlobalPropertyf("tu154ce/lights/small/stu_toga", 0) -- УХОД
createGlobalPropertyf("tu154ce/lights/small/at_2", 0) -- AT 2
createGlobalPropertyf("tu154ce/lights/small/at_1", 0) -- AT 1
createGlobalPropertyf("tu154ce/lights/small/nvu_on", 0) -- НВУ испр
createGlobalPropertyf("tu154ce/lights/small/nvu_corr", 0) -- НВУ КОРР
createGlobalPropertyf("tu154ce/lights/small/nav_1_to", 0) -- NAV 1 НА
createGlobalPropertyf("tu154ce/lights/small/nav_1_from", 0) -- NAV 1 ОТ
createGlobalPropertyf("tu154ce/lights/small/nav_2_to", 0) -- NAV 2 НА
createGlobalPropertyf("tu154ce/lights/small/nav_2_from", 0) -- NAV 2 ОТ
createGlobalPropertyf("tu154ce/lights/small/apu_gen_on", 0) -- РАП подключен
createGlobalPropertyf("tu154ce/lights/small/bus_npk_1", 0) -- сети НПК лев на 3
createGlobalPropertyf("tu154ce/lights/small/bus_npk_2", 0) -- сети НПК прав на 1
createGlobalPropertyf("tu154ce/lights/small/emerg_inv_115", 0) -- аварийный преобразов. 115в
createGlobalPropertyf("tu154ce/lights/small/gen_fail_1", 0) -- генератор не работает
createGlobalPropertyf("tu154ce/lights/small/gen_fail_2", 0) -- генератор не работает
createGlobalPropertyf("tu154ce/lights/small/gen_fail_3", 0) -- генератор не работает
createGlobalPropertyf("tu154ce/lights/small/bus_connected", 0) -- сети соединены
createGlobalPropertyf("tu154ce/lights/small/left_bus_use_bat", 0) -- левая сеть от батарей
createGlobalPropertyf("tu154ce/lights/small/right_bus_use_bat", 0) -- правая сеть от батарей
createGlobalPropertyf("tu154ce/lights/small/turn_off_bat_1", 0) -- выключи батарею
createGlobalPropertyf("tu154ce/lights/small/turn_off_bat_3", 0) -- выключи батарею
createGlobalPropertyf("tu154ce/lights/small/turn_off_bat_2", 0) -- выключи батарею
createGlobalPropertyf("tu154ce/lights/small/turn_off_bat_4", 0) -- выключи батарею
createGlobalPropertyf("tu154ce/lights/small/vu_on_1", 0) -- ВУ1
createGlobalPropertyf("tu154ce/lights/small/vu_on_2", 0) -- ВУ1
createGlobalPropertyf("tu154ce/lights/small/left_bus_on_tr2", 0) -- левая сеть на тр 2
createGlobalPropertyf("tu154ce/lights/small/right_bus_on_tr1", 0) -- правая сеть на тр 1
createGlobalPropertyf("tu154ce/lights/small/pts250_n1", 0) -- ПТС 250 не работает
createGlobalPropertyf("tu154ce/lights/small/pts250_n2", 0) -- ПТС 250 на сеть 
createGlobalPropertyf("tu154ce/lights/small/throttle_1_fire", 0) -- лампа пожара на РУД
createGlobalPropertyf("tu154ce/lights/small/throttle_2_fire", 0) -- лампа пожара на РУД
createGlobalPropertyf("tu154ce/lights/small/throttle_3_fire", 0) -- лампа пожара на РУД
createGlobalPropertyf("tu154ce/lights/small/oil_meter_1", 0) -- зеленая масла на уровнях масла
createGlobalPropertyf("tu154ce/lights/small/oil_meter_2", 0) -- зеленая масла на уровнях масла
createGlobalPropertyf("tu154ce/lights/small/oil_meter_3", 0) -- зеленая масла на уровнях масла
createGlobalPropertyf("tu154ce/lights/small/starter_high_rpm_1", 0) -- опасные обороты стартера
createGlobalPropertyf("tu154ce/lights/small/starter_high_rpm_2", 0) -- опасные обороты стартера
createGlobalPropertyf("tu154ce/lights/small/starter_high_rpm_3", 0) -- опасные обороты стартера
createGlobalPropertyf("tu154ce/lights/small/fuel_2500", 0) -- остаток топлива 2500
createGlobalPropertyf("tu154ce/lights/small/fuel_tank1_used", 0) -- расход из бака 1
createGlobalPropertyf("tu154ce/lights/small/fuel_tank3_left_fail", 0) -- красная лампа бака 3 лев
createGlobalPropertyf("tu154ce/lights/small/fuel_tank2_left_fail", 0) -- красная лампа бака 2 лев
createGlobalPropertyf("tu154ce/lights/small/fuel_tank2_right_fail", 0) -- красная лампа бака 2 прав
createGlobalPropertyf("tu154ce/lights/small/fuel_tank3_right_fail", 0) -- красная лампа бака 3 прав
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_left_5", 0) -- насос бака 5 лев
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_left_6", 0) -- насос бака 6 лев
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_left_7", 0) -- насос бака 7 лев
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_left_8", 0) -- насос бака 8 лев
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_left_9", 0) -- насос бака 9 лев
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_right_5", 0) -- насос бака 5 прав
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_right_6", 0) -- насос бака 6 прав
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_right_7", 0) -- насос бака 7 прав
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_right_8", 0) -- насос бака 8 прав
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_right_9", 0) -- насос бака 9 прав
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_10", 0) -- насос бака 10
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_11", 0) -- насос бака 11
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_1", 0) -- насос бака 1
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_2", 0) -- насос бака 2
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_3", 0) -- насос бака 3
createGlobalPropertyf("tu154ce/lights/small/fuel_pump_4", 0) -- насос бака 4
createGlobalPropertyf("tu154ce/lights/small/fuel_cut_off_1", 0) -- перекрывные краны
createGlobalPropertyf("tu154ce/lights/small/fuel_cut_off_2", 0) -- перекрывные краны
createGlobalPropertyf("tu154ce/lights/small/fuel_cut_off_3", 0) -- перекрывные краны
createGlobalPropertyf("tu154ce/lights/small/fuel_flow_from_2", 0) -- порядок расхода
createGlobalPropertyf("tu154ce/lights/small/fuel_flow_from_3", 0) -- порядок расхода
createGlobalPropertyf("tu154ce/lights/small/fuel_flow_from_4", 0) -- порядок расхода
createGlobalPropertyf("tu154ce/lights/small/fuel_flow_auto_fail", 0) -- автомат расхода не работает
createGlobalPropertyf("tu154ce/lights/small/fuel_reserv_trans_left", 0) -- резервная перекачка в бак 1 
createGlobalPropertyf("tu154ce/lights/small/fuel_reserv_trans_right", 0) -- резервная перекачка в бак 1 
createGlobalPropertyf("tu154ce/lights/small/fuel_porc_reserv", 0) -- порцевание
createGlobalPropertyf("tu154ce/lights/small/fuel_level_automat", 0) -- автомат выравнивания
createGlobalPropertyf("tu154ce/lights/small/skv_overheat", 0) -- перегрев СКВ
createGlobalPropertyf("tu154ce/lights/small/skv_overpress_left", 0) -- превышение давления
createGlobalPropertyf("tu154ce/lights/small/skv_overpress_right", 0) -- превышение давления
createGlobalPropertyf("tu154ce/lights/small/skv_tail_temp", 0) -- температура хв отсека велика
createGlobalPropertyf("tu154ce/lights/small/skv_bleed_fail_1", 0) -- отказ отбора
createGlobalPropertyf("tu154ce/lights/small/skv_bleed_fail_2", 0) -- отказ отбора
createGlobalPropertyf("tu154ce/lights/small/skv_bleed_fail_3", 0) -- отказ отбора
createGlobalPropertyf("tu154ce/lights/small/skv_bleed_closed_1", 0) -- отбор закрыт
createGlobalPropertyf("tu154ce/lights/small/skv_bleed_closed_2", 0) -- отбор закрыт
createGlobalPropertyf("tu154ce/lights/small/skv_bleed_closed_3", 0) -- отбор закрыт
createGlobalPropertyf("tu154ce/lights/small/apd_work_1", 0) -- АПД работает
createGlobalPropertyf("tu154ce/lights/small/apd_work_2", 0) -- АПД работает
createGlobalPropertyf("tu154ce/lights/small/apd_work_3", 0) -- АПД работает
createGlobalPropertyf("tu154ce/lights/small/eng_hydr_fail_1", 0) -- низкое давление ГС 1.панель БИ
createGlobalPropertyf("tu154ce/lights/small/eng_hydr_fail_2", 0) -- низкое давление ГС 2. панель БИ
createGlobalPropertyf("tu154ce/lights/small/eng_hydr_fail_3", 0) -- низкое давление ГС 3. панель БИ
createGlobalPropertyf("tu154ce/lights/small/eng_hydr_fail_4", 0) -- низкое давление ГС аварийн. панель БИ
createGlobalPropertyf("tu154ce/lights/small/tail_temp_high", 0) -- тем. хв. отсека велика
createGlobalPropertyf("tu154ce/lights/small/lavatory_heat", 0) -- обогрев слива туалета
createGlobalPropertyf("tu154ce/lights/small/galley_heat", 0) -- обогрев слива кухни
createGlobalPropertyf("tu154ce/lights/small/msrp_mlp_main", 0) -- МСРП. МЛП ОСН
createGlobalPropertyf("tu154ce/lights/small/msrp_mlp_aux", 0) -- МСРП. МЛП ДОП
createGlobalPropertyf("tu154ce/lights/small/msrp_up2", 0) -- МСРП. УП2
createGlobalPropertyf("tu154ce/lights/small/msrp_mars", 0) -- МСРП. МАРС
createGlobalPropertyf("tu154ce/lights/small/srd_low_press", 0) -- давление кабины мало
createGlobalPropertyf("tu154ce/lights/small/srd_overpress", 0) -- перенаддув кабины
createGlobalPropertyf("tu154ce/lights/small/soi_work", 0) -- СОИ исправен
createGlobalPropertyf("tu154ce/lights/small/soi_ice_detected", 0) -- СОИ обледенение
createGlobalPropertyf("tu154ce/lights/small/antiice_slats", 0) -- заслонки продивообледенителей
createGlobalPropertyf("tu154ce/lights/small/antiice_eng_1", 0) -- заслонки продивообледенителей
createGlobalPropertyf("tu154ce/lights/small/antiice_eng_2", 0) -- заслонки продивообледенителей
createGlobalPropertyf("tu154ce/lights/small/antiice_eng_3", 0) -- заслонки продивообледенителей
createGlobalPropertyf("tu154ce/lights/small/antiice_wings", 0) -- заслонки продивообледенителей
createGlobalPropertyf("tu154ce/lights/small/close_toilet", 0) -- закройте туалет
createGlobalPropertyf("tu154ce/lights/small/pnp_sp_left", 0) -- лампа СП на ПНП лев
createGlobalPropertyf("tu154ce/lights/small/pnp_vor_left", 0) -- лампа VOR на ПНП лев
createGlobalPropertyf("tu154ce/lights/small/pnp_nv_left", 0) -- лампа HB на ПНП лев
createGlobalPropertyf("tu154ce/lights/small/pnp_rsbn_left", 0) -- лампа РСБН на ПНП лев
createGlobalPropertyf("tu154ce/lights/small/pnp_sp_right", 0) -- лампа СП на ПНП прав
createGlobalPropertyf("tu154ce/lights/small/pnp_vor_right", 0) -- лампа VOR на ПНП прав
createGlobalPropertyf("tu154ce/lights/small/pnp_nv_right", 0) -- лампа HB на ПНП прав
createGlobalPropertyf("tu154ce/lights/small/pnp_rsbn_right", 0) -- лампа РСБН на ПНП прав
createGlobalPropertyf("tu154ce/lights/small/dme_mile_left", 0) -- лампа мили на ДМЕ лев
createGlobalPropertyf("tu154ce/lights/small/dme_km_left", 0) -- лампа км на ДМЕ лев
createGlobalPropertyf("tu154ce/lights/small/dme_mile_right", 0) -- лампа мили на ДМЕ прав
createGlobalPropertyf("tu154ce/lights/small/dme_km_right", 0) -- лампа км на ДМЕ прав
createGlobalPropertyf("tu154ce/lights/button/absu_zk", 0) -- АБСУ ЗК
createGlobalPropertyf("tu154ce/lights/button/absu_reset", 0) -- АБСУ сброс
createGlobalPropertyf("tu154ce/lights/button/absu_nvu", 0) -- АБСУ НВУ
createGlobalPropertyf("tu154ce/lights/button/absu_az1", 0) -- АБСУ АЗ1
createGlobalPropertyf("tu154ce/lights/button/absu_az2", 0) -- АБСУ АЗ2
createGlobalPropertyf("tu154ce/lights/button/absu_app", 0) -- АБСУ заход
createGlobalPropertyf("tu154ce/lights/button/absu_gz", 0) -- АБСУ глисс
createGlobalPropertyf("tu154ce/lights/button/absu_stab_m", 0) -- АБСУ стаб М
createGlobalPropertyf("tu154ce/lights/button/absu_stab_v", 0) -- АБСУ стаб V
createGlobalPropertyf("tu154ce/lights/button/absu_stab_h", 0) -- АБСУ стаб H
createGlobalPropertyf("tu154ce/lights/button/absu_stab", 0) -- АБСУ стаб H
createGlobalPropertyf("tu154ce/lights/button/absu_stab_spd", 0) -- АБСУ стаб скорости
createGlobalPropertyf("tu154ce/lights/button/absu_thro1", 0) -- АБСУ откл Г1
createGlobalPropertyf("tu154ce/lights/button/absu_thro2", 0) -- АБСУ откл Г2
createGlobalPropertyf("tu154ce/lights/button/absu_thro3", 0) -- АБСУ откл Г3
createGlobalPropertyf("tu154ce/lights/button/dejur_contr", 0) -- дежур контр
createGlobalPropertyf("tu154ce/lights/button/sound_off", 0) -- откл звук
createGlobalPropertyf("tu154ce/lights/button/fire_eng_1", 0) -- тушение пожара двиг 1
createGlobalPropertyf("tu154ce/lights/button/fire_eng_2", 0) -- тушение пожара двиг 2
createGlobalPropertyf("tu154ce/lights/button/fire_eng_3", 0) -- тушение пожара двиг 3
createGlobalPropertyf("tu154ce/lights/button/fire_apu", 0) -- тушение пожара ВСУ
createGlobalPropertyf("tu154ce/lights/button/fire_ng", 0) -- тушение пожара НГ
createGlobalPropertyf("tu154ce/lights/button/fire_turn_3", 0) -- тушение пожара очередь 3
createGlobalPropertyf("tu154ce/lights/button/fire_turn_2", 0) -- тушение пожара очередь 2
createGlobalPropertyf("tu154ce/lights/button/fire_turn_1", 0) -- тушение пожара очередь 1
createGlobalPropertyi("tu154ce/lights/white_light_left", 1) -- светимость левого белого огня на крыле
createGlobalPropertyi("tu154ce/lights/white_light_right", 1) -- светимость правого белого огня на крыле
createGlobalPropertyi("tu154ce/lights/beacon_light_B", 1) -- светимость красного маяка внизу
createGlobalPropertyi("tu154ce/lights/beacon_light_T", 1) -- светимость красного маяка вверху
createGlobalPropertyf("tu154ce/lights/sard_panel_lit", 0) -- светимость панели САРД
createGlobalPropertyf("tu154ce/lights/nvu_1_active", 0) -- светимость активной панели НВУ
createGlobalPropertyf("tu154ce/lights/nvu_2_active", 0) -- светимость активной панели НВУ
createGlobalPropertyf("tu154ce/lights/oil_qty_work_1", 1) -- светимость лампы на масломере
createGlobalPropertyf("tu154ce/lights/oil_qty_work_2", 1) -- светимость лампы на масломере
createGlobalPropertyf("tu154ce/lights/oil_qty_work_3", 1) -- светимость лампы на масломере
createGlobalPropertyi("tu154ce/rotary/KLN90/3D_L_Angle", 0) -- поворот левой ручки КЛН90
createGlobalPropertyi("tu154ce/rotary/KLN90/3D_R_Angle", 0) -- поворот правой ручки КЛН90
createGlobalPropertyi("tu154ce/rotary/KLN90/power_knob", 0) -- вытягивание ручки питания
createGlobalPropertyi("tu154ce/rotary/KLN90/power_knob_angle", 0) -- поворот ручки питания КЛН90
createGlobalPropertyi("tu154ce/rotary/KLN90/scan_knob", 0) -- вытягивание ручки scan
createGlobalPropertyi("tu154ce/switchers/wiper_left", 0) -- переключатель работы стеклоочистителя. -1 - медленно, 0 - выкл, +1 - быстро
createGlobalPropertyi("tu154ce/switchers/wiper_right", 0) -- переключатель работы стеклоочистителя. -1 - медленно, 0 - выкл, +1 - быстро
createGlobalPropertyf("tu154ce/anim/wiper_angle_left", 0) -- угол поворота стеклоочистителя от края. 0 - 62
createGlobalPropertyf("tu154ce/anim/wiper_angle_right", 0) -- угол поворота стеклоочистителя от края. 0 - 62
createGlobalPropertyi("tu154ce/switchers/kln_knob_out", 0) -- вытягивание ручки КЛН
createGlobalPropertyi("tu154ce/switchers/kln_power_knob", 0) -- вдавливание ручки питания КЛН
createGlobalPropertyi("tu154ce/lights/landing_light_off", 0) -- выключатель фар
createGlobalPropertyi("tu154ce/lights/landing_light_off_cap", 0) -- выключатель фар
createGlobalPropertyf("tu154ce/lights/gns430_lit", 1) -- светимость панели ГНС
createGlobalPropertyi("tu154ce/rotary/GNS430/LB_angle", 0) -- поворот левой большой ручки GN430
createGlobalPropertyi("tu154ce/rotary/GNS430/LS_angle", 0) -- поворот левой малой ручки GN430
createGlobalPropertyi("tu154ce/rotary/GNS430/RB_angle", 0) -- поворот правой большой ручки GN430
createGlobalPropertyi("tu154ce/rotary/GNS430/RS_angle", 0) -- поворот правой малой ручки GN430


createGlobalPropertyf("tu154ce/controll/stab_man_cap_anim", 0) -- крышка управления стабилизатором
createGlobalPropertyf("tu154ce/controll/contr_force_cap_anim", 0) -- крышка переключателя загружателя РВ РН
createGlobalPropertyf("tu154ce/switchers/nosewheel_turn_cap_anim", 0) -- крышка переключателя угла поворота
createGlobalPropertyf("tu154ce/switchers/slat_man_cap_anim", 0) -- крышка ручного урпавления предкрылками
createGlobalPropertyf("tu154ce/switchers/flaps_sel_cap_anim", 0) -- крышка выбора работы закрылков
createGlobalPropertyf("tu154ce/switchers/gears_retr_lock_cap_anim", 0) -- крышка блокировки уборки шасси
createGlobalPropertyf("tu154ce/switchers/gears_ext_3GS_cap_anim", 0) -- крышка выпуска шасси от 3ГС
createGlobalPropertyf("tu154ce/switchers/ovhd/bkk_contr_cap_anim", 0) -- крышка тумблера контроля БКК
createGlobalPropertyf("tu154ce/switchers/ovhd/bkk_on_cap_anim", 0) -- крышка выключателя БКК
createGlobalPropertyf("tu154ce/switchers/ovhd/sau_stu_cap_anim", 0) -- крышка выключателя САУ СТУ
createGlobalPropertyf("tu154ce/switchers/ovhd/pkp_left_cap_anim", 0) -- крылка ПКП лев
createGlobalPropertyf("tu154ce/switchers/ovhd/pkp_right_cap_anim", 0) -- крышка ПКП прав
createGlobalPropertyf("tu154ce/switchers/ovhd/mgv_contr_cap_anim", 0) -- контроль МГВ крышка
createGlobalPropertyf("tu154ce/switchers/ovhd/emerg_light_cap_anim", 0) -- крышка аварийного освещения
createGlobalPropertyf("tu154ce/switchers/ovhd/egpws_alarm_1_cap_anim", 0) -- сигнализация СРПБЗ общ
createGlobalPropertyf("tu154ce/switchers/ovhd/egpws_alarm_2_cap_anim", 0) -- сигнализация СРПБЗ 
createGlobalPropertyf("tu154ce/buttons/ovhd/transponder_emerg_cap_anim", 0) -- крышка кнопки аварии
createGlobalPropertyf("tu154ce/switchers/eng/hydro_trimm_rud_1_cap_anim", 0) -- триммирование РВ 1
createGlobalPropertyf("tu154ce/switchers/eng/hydro_trimm_rud_2_cap_anim", 0) -- триммирование РВ 2
createGlobalPropertyf("tu154ce/switchers/eng/emerg_gen_on_1_cap_anim", 0) -- аварийное включение генераторов
createGlobalPropertyf("tu154ce/switchers/eng/emerg_gen_on_2_cap_anim", 0) -- аварийное включение генераторов
createGlobalPropertyf("tu154ce/switchers/eng/emerg_gen_on_3_cap_anim", 0) -- аварийное включение генераторов
createGlobalPropertyf("tu154ce/switchers/eng/hydro_circuit_auto_man_cap_anim", 0) -- кольцевание автомат - ручное
createGlobalPropertyf("tu154ce/switchers/eng/hydro_long_control_cap_anim", 0) -- продольная управляемость
createGlobalPropertyf("tu154ce/switchers/eng/fire_buzzer_cap_anim", 0) -- пожарная сирена
createGlobalPropertyf("tu154ce/switchers/eng/srd_buzzer_cap_anim", 0) -- СРД сирена
createGlobalPropertyf("tu154ce/switchers/eng/fuel_buzzer_cap_anim", 0) -- сирена остатка топлива 2500кг
createGlobalPropertyf("tu154ce/switchers/eng/sard_disable_cap_anim", 0) -- перекрытие клапана сброса воздуха
createGlobalPropertyf("tu154ce/switchers/eng/emerg_inv115_cap_anim", 0) -- аварийн. преобраз 115в
createGlobalPropertyf("tu154ce/switchers/eng/pts250_on_cap_anim", 0) -- выключатель ПТС250
createGlobalPropertyf("tu154ce/switchers/eng/pts250_mode_cap_anim", 0) -- режим ПТС250. авто - ручное
createGlobalPropertyf("tu154ce/switchers/eng/bus27_connect_cap_anim", 0) -- соединение сетей 27в
createGlobalPropertyf("tu154ce/switchers/fuel/fuel_trans_cap_anim", 0) -- краны резервой перекачки
createGlobalPropertyf("tu154ce/switchers/fuel/fuel_porc_cap_anim", 0) -- принуд порц
createGlobalPropertyf("tu154ce/switchers/fuel/fuel_flow_on_cap_anim", 0) -- автомат расхода
createGlobalPropertyf("tu154ce/switchers/fuel/fire_valve_1_cap_anim", 0) -- пожарный кран
createGlobalPropertyf("tu154ce/switchers/fuel/fire_valve_2_cap_anim", 0) -- пожарный кран
createGlobalPropertyf("tu154ce/switchers/fuel/fire_valve_3_cap_anim", 0) -- пожарный кран
createGlobalPropertyf("tu154ce/switchers/hydro/connect2to1_cap_anim", 0) -- подключение 2 ГС на 1 ГС
createGlobalPropertyf("tu154ce/switchers/airbleed/heat_close_cap_anim", 0) -- прекращение обогрева
createGlobalPropertyf("tu154ce/switchers/airbleed/ground_cond_on_cap_anim", 0) -- наземное кондиционирование
createGlobalPropertyf("tu154ce/switchers/airbleed/skv_faster_work_cap_anim", 0) -- крышка
createGlobalPropertyf("tu154ce/switchers/airbleed/psvp_left_on_cap_anim", 0) -- ПСВП лев
createGlobalPropertyf("tu154ce/switchers/airbleed/psvp_right_on_cap_anim", 0) -- ПСВП прав
createGlobalPropertyf("tu154ce/switchers/airbleed/emerg_decompress_cap_anim", 0) -- сброс давления
createGlobalPropertyf("tu154ce/switchers/airbleed/dubler_on_cap_anim", 0) -- дублер
createGlobalPropertyf("tu154ce/switchers/eng/starter_cap_anim", 0) -- крышка панели запуска
createGlobalPropertyf("tu154ce/switchers/eng/gauges_on_1_cap_anim", 0) -- приборы контроля двигателей
createGlobalPropertyf("tu154ce/switchers/eng/gauges_on_2_cap_anim", 0) -- приборы контроля двигателей
createGlobalPropertyf("tu154ce/switchers/eng/gauges_on_3_cap_anim", 0) -- приборы контроля двигателей
createGlobalPropertyf("tu154ce/switchers/console/busters_cap_anim", 0) -- крышка выключателей бустеров
createGlobalPropertyf("tu154ce/switchers/console/absu_speed_off_cap_anim", 0) -- отключение 1 и 2
createGlobalPropertyf("tu154ce/switchers/console/absu_speed_prepare_cap_anim", 0) -- подготовка
createGlobalPropertyf("tu154ce/switchers/console/absu_smooth_on_cap_anim", 0) -- выключатель "в болтанку"
createGlobalPropertyf("tu154ce/buttons/console/absu_arrest_cap_anim", 0) -- крышка кнопок арретирования
createGlobalPropertyf("tu154ce/switchers/console/emerg_elev_trimm_cap_anim", 0) -- аварийное управление триммером
createGlobalPropertyf("tu154ce/lights/landing_light_off_cap_anim", 0) -- выключатель фар
