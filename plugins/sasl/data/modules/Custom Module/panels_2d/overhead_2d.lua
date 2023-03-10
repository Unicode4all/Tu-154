-- this is overhead 2D panel
size = {1458, 1013}

defineProperty("hide_eng_objects", globalPropertyi("tu154ce/lang/hide_eng_objects")) -- спрятать английские объекты кабины. 1 = RUS

defineProperty("show_ohvd_panel",globalPropertyi("tu154ce/panels/show_ohvd_panel")) -- показать панель верхней панели

-- switchers
defineProperty("var_left", globalPropertyi("tu154ce/switchers/ovhd/var_left"))  -- оерхед. вар лев
defineProperty("var_right", globalPropertyi("tu154ce/switchers/ovhd/var_right"))  -- оерхед. вар прав
defineProperty("auasp_on", globalPropertyi("tu154ce/switchers/ovhd/auasp_on"))  -- оерхед. АУАСП
defineProperty("auasp_contr", globalPropertyi("tu154ce/switchers/ovhd/auasp_contr"))  -- оерхед. АУАСП контроль
defineProperty("eup_on", globalPropertyi("tu154ce/switchers/ovhd/eup_on"))  -- выключатель ЭУП
defineProperty("agr_on", globalPropertyi("tu154ce/switchers/ovhd/agr_on"))  -- выключатель АГР
defineProperty("bkk_contr", globalPropertyi("tu154ce/switchers/ovhd/bkk_contr"))  -- контроль БКК. -1 - 2, 0 - выкл, +1 - 1
defineProperty("bkk_on", globalPropertyi("tu154ce/switchers/ovhd/bkk_on"))  -- выключатель БКК
defineProperty("sau_stu_on", globalPropertyi("tu154ce/switchers/ovhd/sau_stu_on"))  -- САУ СТУ выключатель
defineProperty("pkp_left_on", globalPropertyi("tu154ce/switchers/ovhd/pkp_left_on"))  -- ПКП лев	
defineProperty("pkp_right_on", globalPropertyi("tu154ce/switchers/ovhd/pkp_right_on"))  -- 	ПКП прав
defineProperty("mgv_contr", globalPropertyi("tu154ce/switchers/ovhd/mgv_contr"))  -- контроль МГВ
defineProperty("tks_on_1", globalPropertyi("tu154ce/switchers/ovhd/tks_on_1"))  -- выключатель ТКС 1
defineProperty("tks_on_2", globalPropertyi("tu154ce/switchers/ovhd/tks_on_2"))  -- выключатель ТКС 2
defineProperty("tks_heat", globalPropertyi("tu154ce/switchers/ovhd/tks_heat"))  -- обогрев ГА
defineProperty("tks_corr_1", globalPropertyi("tu154ce/switchers/ovhd/tks_corr_1"))  -- коррекция БГМК 2 - 1
defineProperty("tks_corr_2", globalPropertyi("tu154ce/switchers/ovhd/tks_corr_2"))  -- коррекция БГМК 2 - 2
defineProperty("curs_pnp_mode_1", globalPropertyi("tu154ce/switchers/ovhd/curs_pnp_mode_1"))  -- режим курс ПНП. 0 - ГМК, 1 - ГПК
defineProperty("curs_pnp_mode_2", globalPropertyi("tu154ce/switchers/ovhd/curs_pnp_mode_2"))  -- режим курс ПНП. 0 - ГМК, 1 - ГПК
defineProperty("svs_on", globalPropertyi("tu154ce/switchers/ovhd/svs_on"))  -- выключатель СВС
defineProperty("svs_heat", globalPropertyi("tu154ce/switchers/ovhd/svs_heat"))  -- обогрев СВС
defineProperty("kln_on", globalPropertyi("tu154ce/switchers/ovhd/kln_on"))  -- выключатель КЛН

---
defineProperty("tcas_on", globalPropertyi("tu154ce/switchers/ovhd/tcas_on"))  -- выключатель TCAS
defineProperty("emerg_light_on", globalPropertyi("tu154ce/switchers/ovhd/emerg_light_on"))  -- аварийное освещение
defineProperty("curs_np_on_1", globalPropertyi("tu154ce/switchers/ovhd/curs_np_on_1"))  -- курс МП 1
defineProperty("curs_np_on_2", globalPropertyi("tu154ce/switchers/ovhd/curs_np_on_2"))  -- курс МП 2
defineProperty("tra_67_on", globalPropertyi("tu154ce/switchers/ovhd/tra_67_on"))  -- ТРА 67
defineProperty("rsbn_on", globalPropertyi("tu154ce/switchers/ovhd/rsbn_on"))  -- РСБН питание
defineProperty("rsbn_recon", globalPropertyi("tu154ce/switchers/ovhd/rsbn_recon"))  -- РСБН опознавание
defineProperty("rv5_1_on", globalPropertyi("tu154ce/switchers/ovhd/rv5_1_on"))  -- РВ5 1
defineProperty("rv5_2_on", globalPropertyi("tu154ce/switchers/ovhd/rv5_2_on"))  -- РВ5 2
defineProperty("vhf_1_on", globalPropertyi("tu154ce/switchers/ovhd/vhf_1_on"))  -- УКВ 1
defineProperty("vhf_2_on", globalPropertyi("tu154ce/switchers/ovhd/vhf_2_on"))  -- УКВ 2
defineProperty("stabil_ga_main", globalPropertyi("tu154ce/switchers/ovhd/stabil_ga_main"))  -- стабилизация ГА по крену осн
defineProperty("stabil_ga_reserv", globalPropertyi("tu154ce/switchers/ovhd/stabil_ga_reserv"))  -- стабилизация ГА резерв
defineProperty("micron_1_on", globalPropertyi("tu154ce/switchers/ovhd/micron_1_on"))  -- микрон 1
defineProperty("micron_2_on", globalPropertyi("tu154ce/switchers/ovhd/micron_2_on"))  -- микрон 2
defineProperty("spu_on", globalPropertyi("tu154ce/switchers/ovhd/spu_on"))  -- СПУ
defineProperty("sgs_on", globalPropertyi("tu154ce/switchers/ovhd/sgs_on"))  -- СГС
defineProperty("sd75_1_on", globalPropertyi("tu154ce/switchers/ovhd/sd75_1_on"))  -- СД75 1
defineProperty("sd75_2_on", globalPropertyi("tu154ce/switchers/ovhd/sd75_2_on"))  -- СД75 2
---
defineProperty("uvid_on", globalPropertyi("tu154ce/switchers/ovhd/uvid_on"))  -- выключатель УВИД
defineProperty("vbe_1_on", globalPropertyi("tu154ce/switchers/ovhd/vbe_1_on"))  -- ВБЭ 1
defineProperty("vbe_2_on", globalPropertyi("tu154ce/switchers/ovhd/vbe_2_on"))  -- ВБЭ 2
defineProperty("mars_on", globalPropertyi("tu154ce/switchers/ovhd/mars_on"))  -- МАРС

defineProperty("vent_1", globalPropertyi("tu154ce/switchers/ovhd/vent_1"))  -- вентилятор КВС
defineProperty("vent_2", globalPropertyi("tu154ce/switchers/ovhd/vent_2"))  -- вентилятор 2П
defineProperty("vent_3", globalPropertyi("tu154ce/switchers/ovhd/vent_3"))  -- вентилятор БИ

defineProperty("arm406", globalPropertyi("tu154ce/switchers/ovhd/arm406"))  -- АРМ 406
defineProperty("ushdb_mode_1", globalPropertyi("tu154ce/switchers/ovhd/ushdb_mode_1"))  -- УШДБ и СПУ 1. 0 - АРК, 1 - VOR
defineProperty("ushdb_mode_2", globalPropertyi("tu154ce/switchers/ovhd/ushdb_mode_2"))  -- УШДБ и СПУ 2. 0 - АРК, 1 - VOR

defineProperty("diss_on", globalPropertyi("tu154ce/switchers/ovhd/diss_on")) -- питание ДИСС
defineProperty("diss_mode", globalPropertyi("tu154ce/switchers/ovhd/diss_mode")) -- режим дисс. 0 - море, 1 - суша
defineProperty("nvu_calc_set", globalPropertyi("tu154ce/switchers/ovhd/nvu_calc_set")) -- счисление. -1 - контроль ДИСС в полете, 0 - НВУ по СВС, 1 - НВУ по ДИСС

defineProperty("sign_belts", globalPropertyi("tu154ce/switchers/ovhd/sign_belts")) -- транспарант пристегните ремни
defineProperty("sign_nosmoke", globalPropertyi("tu154ce/switchers/ovhd/sign_nosmoke")) -- транспарант пристегните ремни
defineProperty("sign_exit", globalPropertyi("tu154ce/switchers/ovhd/sign_exit")) -- транспарант пристегните ремни

defineProperty("egpws_alarm_1", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_1")) -- сигнализация СРПБЗ общ
defineProperty("egpws_alarm_2", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_2")) -- сигнализация СРПБЗ
defineProperty("egpws_relief", globalPropertyi("tu154ce/switchers/ovhd/egpws_relief")) -- рельеф
defineProperty("egpws_mode", globalPropertyi("tu154ce/switchers/ovhd/egpws_mode")) -- QNH - QFE

defineProperty("window_heat_1", globalPropertyi("tu154ce/switchers/ovhd/window_heat_1")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_2", globalPropertyi("tu154ce/switchers/ovhd/window_heat_2")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_3", globalPropertyi("tu154ce/switchers/ovhd/window_heat_3")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно

defineProperty("pitot_heat_1", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_1")) -- обогрев ППД лев
defineProperty("pitot_heat_2", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_2")) -- обогрев ППД прав
defineProperty("pitot_heat_3", globalPropertyi("tu154ce/switchers/ovhd/pitot_heat_3")) -- обогрев ППД АБСУ



-- buttons
defineProperty("tks_signal_off", globalPropertyi("tu154ce/buttons/ovhd/tks_signal_off"))  -- снятие блокировки сигнала ТКС
defineProperty("svs_contr", globalPropertyi("tu154ce/buttons/ovhd/svs_contr"))  -- кнопка контроля СВС

defineProperty("egpws_control", globalPropertyi("tu154ce/buttons/ovhd/egpws_control")) -- кнопка контроля СРПБЗ
defineProperty("egpws_contr_gs", globalPropertyi("tu154ce/buttons/ovhd/egpws_contr_gs")) -- контроль СРПБЗ глиссада

-- RSBN
defineProperty("rsbn_ch_ten", globalPropertyi("tu154ce/buttons/ovhd/rsbn_ch_ten")) -- установки десятков канала
defineProperty("rsbn_ch_one", globalPropertyi("tu154ce/buttons/ovhd/rsbn_ch_one")) -- установки единиц канала

defineProperty("rsbn_control_strobe", globalPropertyi("tu154ce/buttons/ovhd/rsbn_control_strobe")) -- контроль строба РСБН
defineProperty("rsbn_control_azimuth", globalPropertyi("tu154ce/buttons/ovhd/rsbn_control_azimuth")) -- контроль нуля азимут РСБН
defineProperty("rsbn_control_distance", globalPropertyi("tu154ce/buttons/ovhd/rsbn_control_distance")) -- контроль нуля дальность РСБН

-- course MP
defineProperty("nav_1", globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))  -- set the frequency
defineProperty("nav_1_left", globalPropertyi("tu154ce/rotary/ovhd/nav_1_left")) -- левая крутилка
defineProperty("nav_1_right", globalPropertyi("tu154ce/rotary/ovhd/nav_1_right")) -- правая крутилка

defineProperty("nav_1_mile_km", globalPropertyi("tu154ce/switchers/nav_1_mile_km")) -- режим мили - км

defineProperty("nav_1_but_1", globalPropertyi("tu154ce/buttons/ovhd/nav_1_but_1")) -- кнопка 1
defineProperty("nav_1_but_2", globalPropertyi("tu154ce/buttons/ovhd/nav_1_but_2")) -- кнопка 2
defineProperty("nav_1_but_3", globalPropertyi("tu154ce/buttons/ovhd/nav_1_but_3")) -- кнопка 3


defineProperty("nav_2", globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz"))  -- set the frequency
defineProperty("nav_2_left", globalPropertyi("tu154ce/rotary/ovhd/nav_2_left")) -- левая крутилка
defineProperty("nav_2_right", globalPropertyi("tu154ce/rotary/ovhd/nav_2_right")) -- правая крутилка

defineProperty("nav_2_mile_km", globalPropertyi("tu154ce/switchers/nav_2_mile_km")) -- режим мили - км

defineProperty("nav_2_but_1", globalPropertyi("tu154ce/buttons/ovhd/nav_2_but_1")) -- кнопка 1
defineProperty("nav_2_but_2", globalPropertyi("tu154ce/buttons/ovhd/nav_2_but_2")) -- кнопка 2
defineProperty("nav_2_but_3", globalPropertyi("tu154ce/buttons/ovhd/nav_2_but_3")) -- кнопка 3

-- VHF
defineProperty("vhf_1", globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz"))  -- set the frequency
defineProperty("vhf_1_left", globalPropertyi("tu154ce/rotary/ovhd/vhf_1_left"))  -- knob
defineProperty("vhf_1_right", globalPropertyi("tu154ce/rotary/ovhd/vhf_1_right"))  -- knob

defineProperty("vhf_2", globalPropertyf("sim/cockpit2/radios/actuators/com2_frequency_hz"))  -- set the frequency
defineProperty("vhf_2_left", globalPropertyi("tu154ce/rotary/ovhd/vhf_2_left"))  -- knob
defineProperty("vhf_2_right", globalPropertyi("tu154ce/rotary/ovhd/vhf_2_right"))  -- knob

-- ARK
defineProperty("ark_1_mode", globalPropertyi("tu154ce/switchers/ovhd/ark_1_mode")) -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
defineProperty("ark_1_channel", globalPropertyi("tu154ce/switchers/ovhd/ark_1_channel")) -- канал АРК 1
defineProperty("ark_1_hundr_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_left")) -- сотни частоты 1 - 17
defineProperty("ark_1_tens_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_left")) -- десятки частоты 1 - 10 (0)
defineProperty("ark_1_ones_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_left")) -- единицы частоты 0 - 9
defineProperty("ark_1_hundr_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_right")) -- сотни частоты 1 - 17
defineProperty("ark_1_tens_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_right")) -- десятки частоты 1 - 10 (0)
defineProperty("ark_1_ones_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_right")) -- единицы частоты 0 - 9

defineProperty("ark_1_ramka", globalPropertyi("tu154ce/buttons/ovhd/ark_1_ramka")) -- кнопка рамки


defineProperty("ark_2_mode", globalPropertyi("tu154ce/switchers/ovhd/ark_2_mode")) -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
defineProperty("ark_2_channel", globalPropertyi("tu154ce/switchers/ovhd/ark_2_channel")) -- канал АРК 1
defineProperty("ark_2_hundr_left", globalPropertyi("tu154ce/switchers/ovhd/ark_2_hundr_left")) -- сотни частоты 1 - 17
defineProperty("ark_2_tens_left", globalPropertyi("tu154ce/switchers/ovhd/ark_2_tens_left")) -- десятки частоты 1 - 10 (0)
defineProperty("ark_2_ones_left", globalPropertyi("tu154ce/switchers/ovhd/ark_2_ones_left")) -- единицы частоты 0 - 9
defineProperty("ark_2_hundr_right", globalPropertyi("tu154ce/switchers/ovhd/ark_2_hundr_right")) -- сотни частоты 1 - 17
defineProperty("ark_2_tens_right", globalPropertyi("tu154ce/switchers/ovhd/ark_2_tens_right")) -- десятки частоты 1 - 10 (0)
defineProperty("ark_2_ones_right", globalPropertyi("tu154ce/switchers/ovhd/ark_2_ones_right")) -- единицы частоты 0 - 9

defineProperty("ark_2_ramka", globalPropertyi("tu154ce/buttons/ovhd/ark_2_ramka")) -- кнопка рамки

-- TKS
defineProperty("tks_mode", globalPropertyi("tu154ce/switchers/ovhd/tks_mode")) -- режим ТКС 0 - МК, 1 - ГПК, 2 - АК
defineProperty("tks_user", globalPropertyi("tu154ce/switchers/ovhd/tks_mode_left")) -- потребители 0 - контр, 1 - осн
defineProperty("tks_source", globalPropertyi("tu154ce/switchers/ovhd/tks_mode_right")) --  коррекция 0 - контр, 1 - осн
defineProperty("tks_course_set", globalPropertyi("tu154ce/switchers/ovhd/tks_course_set")) -- задатчик курса
defineProperty("tks_corrr_button", globalPropertyi("tu154ce/buttons/ovhd/tks_corrr_button")) -- кнопка согласования
defineProperty("tks_lat_set", globalPropertyf("tu154ce/rotary/ovhd/tks_lat_set")) -- ручка установки широты

defineProperty("tks_main_fail", globalPropertyf("tu154ce/lights/small/tks_main_fail")) -- отказ осн ГА на ТКС
defineProperty("tks_contr_fail", globalPropertyf("tu154ce/lights/small/tks_contr_fail")) -- отказ контр ГА на ТКС

-- SO72
defineProperty("transponder_mode", globalPropertyi("tu154ce/switchers/ovhd/transponder_mode"))
defineProperty("transponder_control", globalPropertyi("tu154ce/buttons/ovhd/transponder_control"))
defineProperty("transponder_sign", globalPropertyi("tu154ce/buttons/ovhd/transponder_sign"))
defineProperty("transponder_but_1", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_1"))
defineProperty("transponder_but_2", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_2"))
defineProperty("transponder_but_3", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_3"))
defineProperty("transponder_but_4", globalPropertyi("tu154ce/buttons/ovhd/transponder_but_4"))
defineProperty("transponder_emerg", globalPropertyi("tu154ce/buttons/ovhd/transponder_emerg"))
defineProperty("transponder_emerg_cap", globalPropertyi("tu154ce/buttons/ovhd/transponder_emerg_cap"))
defineProperty("xpdr_code", globalPropertyf("sim/cockpit/radios/transponder_code"))



-- caps
defineProperty("bkk_contr_cap", globalPropertyi("tu154ce/switchers/ovhd/bkk_contr_cap"))  -- крышка тумблера контроля БКК
defineProperty("bkk_on_cap", globalPropertyi("tu154ce/switchers/ovhd/bkk_on_cap"))  -- крышка выключателя БКК
defineProperty("sau_stu_cap", globalPropertyi("tu154ce/switchers/ovhd/sau_stu_cap"))  -- крышка выключателя САУ СТУ
defineProperty("pkp_left_cap", globalPropertyi("tu154ce/switchers/ovhd/pkp_left_cap"))  -- крылка ПКП лев
defineProperty("pkp_right_cap", globalPropertyi("tu154ce/switchers/ovhd/pkp_right_cap"))  -- крышка ПКП прав
defineProperty("mgv_contr_cap", globalPropertyi("tu154ce/switchers/ovhd/mgv_contr_cap"))  -- 	контроль МГВ крышка
defineProperty("emerg_light_cap", globalPropertyi("tu154ce/switchers/ovhd/emerg_light_cap"))  -- крышка аварийного освещения

defineProperty("egpws_alarm_1_cap", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_1_cap")) -- сигнализация СРПБЗ общ
defineProperty("egpws_alarm_2_cap", globalPropertyi("tu154ce/switchers/ovhd/egpws_alarm_2_cap")) -- сигнализация СРПБЗ 

-- lamps
defineProperty("heat_ok_1", globalPropertyf("tu154ce/lights/small/heat_ok_1")) -- лампа исправности обогрева ППД
defineProperty("heat_ok_2", globalPropertyf("tu154ce/lights/small/heat_ok_2")) -- лампа исправности обогрева ППД
defineProperty("heat_ok_3", globalPropertyf("tu154ce/lights/small/heat_ok_3")) -- лампа исправности обогрева ППД

defineProperty("tks_main_fail", globalPropertyf("tu154ce/lights/small/tks_main_fail")) -- отказ осн ГА на ТКС
defineProperty("tks_contr_fail", globalPropertyf("tu154ce/lights/small/tks_contr_fail")) -- отказ контр ГА на ТКС

defineProperty("bkk_ok", globalPropertyf("tu154ce/lights/small/bkk_ok")) -- лампа исправности БКК

defineProperty("transponder_red", globalPropertyf("tu154ce/lights/small/transponder_red"))
defineProperty("transponder_green", globalPropertyf("tu154ce/lights/small/transponder_green"))



-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2"))
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right"))


defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))








-- load images
defineProperty("bg_img", loadImage("overhead_tex.png", 0, 0, 1458, 1013))

defineProperty("sw_dn_img", loadImage("overhead_tex.png", 1831, 15, 39, 100))
defineProperty("sw_up_img", loadImage("overhead_tex.png", 1871, 12, 39, 100))
defineProperty("sw_ctr_img", loadImage("overhead_tex.png", 1916, 42, 36, 36))

defineProperty("sw_left_img", loadImage("overhead_tex.png", 1624, 288, 100, 36))
defineProperty("sw_right_img", loadImage("overhead_tex.png", 1624, 328, 100, 36))

defineProperty("big_sw_dn_img", loadImage("overhead_tex.png", 1956, 13, 39, 102))
defineProperty("big_sw_up_img", loadImage("overhead_tex.png", 2000, 12, 39, 102))

defineProperty("red_cap_up", loadImage("overhead_tex.png", 1466, 134, 56, 42))
defineProperty("blue_cap_up", loadImage("overhead_tex.png", 1524, 236, 56, 42))
defineProperty("black_cap_up", loadImage("overhead_tex.png", 1466, 285, 56, 42))

defineProperty("em_light_cap_dn", loadImage("overhead_tex.png", 1467, 182, 56, 95))
defineProperty("mgv_ctr_cap_dn", loadImage("overhead_tex.png", 1523, 134, 56, 95))
defineProperty("pkp_right_cap_dn", loadImage("overhead_tex.png", 1578, 134, 56, 95))
defineProperty("pkp_left_cap_dn", loadImage("overhead_tex.png", 1634, 134, 56, 95))
defineProperty("sau_cap_dn", loadImage("overhead_tex.png", 1692, 134, 56, 95))
defineProperty("bkk_cap_dn", loadImage("overhead_tex.png", 1750, 134, 56, 95))
defineProperty("bkk_test_cap_dn", loadImage("overhead_tex.png", 1805, 134, 56, 95))
defineProperty("taws_main_cap_dn", loadImage("overhead_tex.png", 1467, 334, 56, 95))
defineProperty("taws_36_cap_dn", loadImage("overhead_tex.png", 1525, 334, 56, 95))

defineProperty("big_rotary_sw", loadImage("overhead_tex.png", 1788, 19, 27, 80))
defineProperty("small_rotary_sw", loadImage("overhead_tex.png", 1740, 19, 38, 80))


defineProperty("ark_big_num", loadImage("overhead_tex.png", 1473, 5, 108, 108))
defineProperty("ark_mid_num", loadImage("overhead_tex.png", 1594, 23, 72, 72))
defineProperty("ark_small_num", loadImage("overhead_tex.png", 1676, 34, 50, 50))

defineProperty("big_scale", loadImage("overhead_tex.png", 1889, 155, 159, 159))
defineProperty("tks_handle", loadImage("overhead_tex.png", 1866, 319, 47, 47))


defineProperty("small_lamp", loadImage("overhead_tex.png", 1825, 299, 19, 19))
defineProperty("tks_main_lamp", loadImage("overhead_tex.png", 1935, 329, 32, 32))
defineProperty("tks_aux_lamp", loadImage("overhead_tex.png", 1982, 329, 32, 32))

defineProperty("trans_cap_open", loadImage("overhead_tex.png", 1469, 449, 46, 32))
defineProperty("trans_cap_closed", loadImage("overhead_tex.png", 1469, 487, 46, 49))




-- rus tex
defineProperty("bg_img_RUS", loadImage("overhead_tex_RUS.png", 0, 0, 1458, 1013))

defineProperty("em_light_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1467, 182, 56, 95))
defineProperty("mgv_ctr_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1523, 134, 56, 95))
defineProperty("pkp_right_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1578, 134, 56, 95))
defineProperty("pkp_left_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1634, 134, 56, 95))
defineProperty("sau_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1692, 134, 56, 95))
defineProperty("bkk_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1750, 134, 56, 95))
defineProperty("taws_main_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1467, 334, 56, 95))
defineProperty("taws_36_cap_dn_RUS", loadImage("overhead_tex_RUS.png", 1525, 334, 56, 95))

defineProperty("big_scale_RUS", loadImage("overhead_tex_RUS.png", 1889, 155, 159, 159))

defineProperty("tks_main_lamp_RUS", loadImage("overhead_tex_RUS.png", 1935, 329, 32, 32))
defineProperty("tks_aux_lamp_RUS", loadImage("overhead_tex_RUS.png", 1982, 329, 32, 32))


local function getDigits(squawk)
    local d1 = math.floor(squawk / 1000)
    squawk = squawk - d1 * 1000
    local d2 = math.floor(squawk / 100)
    squawk = squawk - d2 * 100
    local d3 = math.floor(squawk / 10)
    local d4 = squawk - d3 * 10
    return d1, d2, d3, d4
end

local so72_font = loadFont("digital7.ttf")

local text_font = loadFont('digital7.ttf')

local nav_1_power = false
local nav_1_freq_show = ""

local nav_2_power = false
local nav_2_freq_show = ""

local vhf_1_power = false
local vhf_1_freq_show = ""

local vhf_2_power = false
local vhf_2_freq_show = ""

local code_show = get(xpdr_code)
local so72_power = false


local RUS = true

function update()
	
	RUS = get(hide_eng_objects) == 1
	
	
	-- cursMP 1
	nav_1_power = get(curs_np_on_1) == 1 and get(bus36_volt_pts250_2) > 30 and get(bus115_1_volt) > 110
		
	local nav_1_freq = get(nav_1)
	local nav_1_freq_100 = math.floor(nav_1_freq / 100)  -- cut off last two digits
	local nav_1_freq_10 = nav_1_freq - nav_1_freq_100 * 100  -- cut off first digits 
   
	local nav_1_freq_10_show = nav_1_freq_10 * 10
	if nav_1_freq_10_show == 0 then nav_1_freq_10_show = "000"
	elseif nav_1_freq_10_show < 100 then nav_1_freq_10_show = "0"..nav_1_freq_10_show end

	nav_1_freq_show = nav_1_freq_100.."."..nav_1_freq_10_show
	
	-- cursMP 2
	nav_2_power = get(curs_np_on_2) == 1 and get(bus36_volt_right) > 30 and get(bus115_3_volt) > 110
		
	local nav_2_freq = get(nav_2)
	local nav_2_freq_100 = math.floor(nav_2_freq / 100)  -- cut off last two digits
	local nav_2_freq_10 = nav_2_freq - nav_2_freq_100 * 100  -- cut off first digits 
   
	local nav_2_freq_10_show = nav_2_freq_10 * 10
	if nav_2_freq_10_show == 0 then nav_2_freq_10_show = "000"
	elseif nav_2_freq_10_show < 100 then nav_2_freq_10_show = "0"..nav_2_freq_10_show end

	nav_2_freq_show = nav_2_freq_100.."."..nav_2_freq_10_show	
	
	-- VHF 1
	local vhf_1_freq = get(vhf_1)
	vhf_1_power = get(vhf_1_on) == 1 and get(bus27_volt_left) > 13 
	
	local vhf_1_freq_100 = math.floor(vhf_1_freq / 100)  -- cut off last two digits
	local vhf_1_freq_10 = vhf_1_freq - vhf_1_freq_100 * 100  -- cut off first digits 
   
	local vhf_1_freq_last = vhf_1_freq_10 - math.floor(vhf_1_freq_10 / 10) * 10 
   
	if vhf_1_freq_last == 2 or vhf_1_freq_last == 7 then 
		vhf_1_freq_last = 5
	else vhf_1_freq_last = 0
	end

	local vhf_1_freq_10_show = vhf_1_freq_10 * 10 + vhf_1_freq_last
	if vhf_1_freq_10_show == 0 then vhf_1_freq_10_show = "000"
	elseif vhf_1_freq_10_show < 100 then vhf_1_freq_10_show = "0"..vhf_1_freq_10_show end

	vhf_1_freq_show = vhf_1_freq_100.."."..vhf_1_freq_10_show
	
	-- VHF 2
	local vhf_2_freq = get(vhf_2)
	vhf_2_power = get(vhf_2_on) == 1 and get(bus27_volt_right) > 13 
	
	local vhf_2_freq_100 = math.floor(vhf_2_freq / 100)  -- cut off last two digits
	local vhf_2_freq_10 = vhf_2_freq - vhf_2_freq_100 * 100  -- cut off first digits 
   
	local vhf_2_freq_last = vhf_2_freq_10 - math.floor(vhf_2_freq_10 / 10) * 10 
   
	if vhf_2_freq_last == 2 or vhf_2_freq_last == 7 then 
		vhf_2_freq_last = 5
	else vhf_2_freq_last = 0
	end

	local vhf_2_freq_10_show = vhf_2_freq_10 * 10 + vhf_2_freq_last
	if vhf_2_freq_10_show == 0 then vhf_2_freq_10_show = "000"
	elseif vhf_2_freq_10_show < 100 then vhf_2_freq_10_show = "0"..vhf_2_freq_10_show end

	vhf_2_freq_show = vhf_2_freq_100.."."..vhf_2_freq_10_show	
	
	-- ARK 1
	
	-- ARK 2
	
	-- SO-72
	local d1, d2, d3, d4 = getDigits(get(xpdr_code))
	
	code_show = d1..d2..d3..d4
	
	so72_power = get(transponder_mode) > 0 and get(bus27_volt_left) > 13
	
	
	
	
	
	
	
end




components = {

	--------------------
	-- ARK left discs --
	--------------------
	
	-- left hundreds
	needleLit {
		position = {282, 250, 108, 108},
		image = get(ark_big_num),
		angle = function()
			return -(get(ark_1_hundr_left) - 1) * 21.176470588235294117647058823529
		end,
	},	
	
	-- right hundreds
	needleLit {
		position = {412, 250, 108, 108},
		image = get(ark_big_num),
		angle = function()
			return -(get(ark_1_hundr_right) - 1) * 21.176470588235294117647058823529
		end,
	},	
	
	-- left tens
	needleLit {
		position = {300, 267, 72, 72},
		image = get(ark_mid_num),
		angle = function()
			return (get(ark_1_tens_left) - 1) * 20 - 90
		end,
	},	
	
	-- right tens
	needleLit {
		position = {431, 267, 72, 72},
		image = get(ark_mid_num),
		angle = function()
			return (get(ark_1_tens_right) - 1) * 20 - 90
		end,
	},	
	
	-- left ones
	needleLit {
		position = {311, 278, 50, 50},
		image = get(ark_small_num),
		angle = function()
			return get(ark_1_ones_left) * 36
		end,
	},	
	
	-- right ones
	needleLit {
		position = {441, 278, 50, 50},
		image = get(ark_small_num),
		angle = function()
			return get(ark_1_ones_right) * 36
		end,
	},		
	

	---------------------------
	-- ARK right discs --
	-------------------------
	
	
	-- left hundreds
	needleLit {
		position = {282+655, 250, 108, 108},
		image = get(ark_big_num),
		angle = function()
			return -(get(ark_2_hundr_left) - 1) * 21.176470588235294117647058823529
		end,
	},	
	
	-- right hundreds
	needleLit {
		position = {412+655, 250, 108, 108},
		image = get(ark_big_num),
		angle = function()
			return -(get(ark_2_hundr_right) - 1) * 21.176470588235294117647058823529
		end,
	},	
	
	-- left tens
	needleLit {
		position = {300+655, 267, 72, 72},
		image = get(ark_mid_num),
		angle = function()
			return (get(ark_2_tens_left) - 1) * 20 - 90
		end,
	},	
	
	-- right tens
	needleLit {
		position = {431+655, 267, 72, 72},
		image = get(ark_mid_num),
		angle = function()
			return (get(ark_2_tens_right) - 1) * 20 - 90
		end,
	},	
	
	-- left ones
	needleLit {
		position = {311+655, 278, 50, 50},
		image = get(ark_small_num),
		angle = function()
			return get(ark_2_ones_left) * 36
		end,
	},	
	
	-- right ones
	needleLit {
		position = {441+655, 278, 50, 50},
		image = get(ark_small_num),
		angle = function()
			return get(ark_2_ones_right) * 36
		end,
	},		

	
		
	-- TKS scale
	needleLit {
		position = {977, 572, 159, 159},
		image = get(big_scale),
		angle = function()
			return -get(tks_lat_set) * 1.78
		end,
		visible = function()
			return not RUS
		end,
	},		
	needleLit {
		position = {977, 572, 159, 159},
		image = get(big_scale_RUS),
		angle = function()
			return -get(tks_lat_set) * 1.78
		end,
		visible = function()
			return RUS
		end,
	},	
	
	
	
	
	-- background
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(bg_img),
		visible = function()
			return not RUS
		end,
	},
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(bg_img_RUS),
		visible = function()
			return RUS
		end,
	},
	
	
	-----------------
	-- switchers --
	-----------------
	
	-- BIG ones --
	
	-- auasp_on
	switch_lit {
		position = {75, 902, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(auasp_on) == 1
		end,
		onMouseClick = function()
			set(auasp_on, 1 - get(auasp_on))
			return true
		end,
	},

	-- agr_on
	switch_lit {
		position = {303, 902, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(agr_on) == 1
		end,
		onMouseClick = function()
			set(agr_on, 1 - get(agr_on))
			return true
		end,
	},
	
	-- kln_on
	switch_lit {
		position = {1350, 902, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(kln_on) == 1
		end,
		onMouseClick = function()
			set(kln_on, 1 - get(kln_on))
			return true
		end,
	},

	-- rv5_1_on
	switch_lit {
		position = {623, 808, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(rv5_1_on) == 1
		end,
		onMouseClick = function()
			set(rv5_1_on, 1 - get(rv5_1_on))
			return true
		end,
	},
	
	-- rv5_2_on
	switch_lit {
		position = {682, 808, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(rv5_2_on) == 1
		end,
		onMouseClick = function()
			set(rv5_2_on, 1 - get(rv5_2_on))
			return true
		end,
	},

	-- vhf_1_on
	switch_lit {
		position = {739, 808, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(vhf_1_on) == 1
		end,
		onMouseClick = function()
			set(vhf_1_on, 1 - get(vhf_1_on))
			return true
		end,
	},

	-- vhf_2_on
	switch_lit {
		position = {795, 808, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(vhf_2_on) == 1
		end,
		onMouseClick = function()
			set(vhf_2_on, 1 - get(vhf_2_on))
			return true
		end,
	},
	
	-- vbe_2_on
	switch_lit {
		position = {1399, 808, 40, 100},
		btnOn = get(big_sw_up_img),
		btnOff = get(big_sw_dn_img),
		state = function()
			return get(vbe_2_on) == 1
		end,
		onMouseClick = function()
			set(vbe_2_on, 1 - get(vbe_2_on))
			return true
		end,
	},	
	

	

	-- small ones --
	
	-- var_left
	switch_lit {
		position = {30, 917, 25, 65}, --25
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(var_left) == 1
		end,
		onMouseClick = function()
			set(var_left, 1 - get(var_left))
			return true
		end,
	},	
	
	-- uvid_on
	switch_lit {
		position = {189, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(uvid_on) == 1
		end,
		onMouseClick = function()
			set(uvid_on, 1 - get(uvid_on))
			return true
		end,
	},	

	-- eup_on
	switch_lit {
		position = {256, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(eup_on) == 1
		end,
		onMouseClick = function()
			set(eup_on, 1 - get(eup_on))
			return true
		end,
	},

	-- bkk_on
	switch_lit {
		position = {532, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(bkk_on) == 1
		end,
		onMouseClick = function()
			set(bkk_on, 1 - get(bkk_on))
			return true
		end,
		visible = function()
			return get(bkk_on_cap) == 1
		end
	},

	-- sau_stu_on
	switch_lit {
		position = {597, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(sau_stu_on) == 1
		end,
		onMouseClick = function()
			set(sau_stu_on, 1 - get(sau_stu_on))
			return true
		end,
		visible = function()
			return get(sau_stu_cap) == 1
		end
	},

	-- pkp_left_on
	switch_lit {
		position = {663, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(pkp_left_on) == 1
		end,
		onMouseClick = function()
			set(pkp_left_on, 1 - get(pkp_left_on))
			return true
		end,
		visible = function()
			return get(pkp_left_cap) == 1
		end
	},

	-- pkp_right_on
	switch_lit {
		position = {706, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(pkp_right_on) == 1
		end,
		onMouseClick = function()
			set(pkp_right_on, 1 - get(pkp_right_on))
			return true
		end,
		visible = function()
			return get(pkp_right_cap) == 1
		end
	},	
	
	-- mgv_contr
	switch_lit {
		position = {750, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(mgv_contr) == 1
		end,
		onMouseClick = function()
			set(mgv_contr, 1 - get(mgv_contr))
			return true
		end,
		visible = function()
			return get(mgv_contr_cap) == 1
		end
	},

	-- tks_on_1
	switch_lit {
		position = {797, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(tks_on_1) == 1
		end,
		onMouseClick = function()
			set(tks_on_1, 1 - get(tks_on_1))
			return true
		end,
	},
	
	-- tks_on_2
	switch_lit {
		position = {841, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(tks_on_2) == 1
		end,
		onMouseClick = function()
			set(tks_on_2, 1 - get(tks_on_2))
			return true
		end,
	},	
	
	-- tks_heat
	switch_lit {
		position = {901, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(tks_heat) == 1
		end,
		onMouseClick = function()
			set(tks_heat, 1 - get(tks_heat))
			return true
		end,
	},		

	-- tks_corr_1
	switch_lit {
		position = {1039, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(tks_corr_1) == 1
		end,
		onMouseClick = function()
			set(tks_corr_1, 1 - get(tks_corr_1))
			return true
		end,
	},

	-- tks_corr_2
	switch_lit {
		position = {1085, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(tks_corr_2) == 1
		end,
		onMouseClick = function()
			set(tks_corr_2, 1 - get(tks_corr_2))
			return true
		end,
	},

	-- curs_pnp_mode_1
	switch_lit {
		position = {1130, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(curs_pnp_mode_1) == 1
		end,
		onMouseClick = function()
			set(curs_pnp_mode_1, 1 - get(curs_pnp_mode_1))
			return true
		end,
	},

	-- curs_pnp_mode_2
	switch_lit {
		position = {1173, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(curs_pnp_mode_2) == 1
		end,
		onMouseClick = function()
			set(curs_pnp_mode_2, 1 - get(curs_pnp_mode_2))
			return true
		end,
	},

	-- svs_on
	switch_lit {
		position = {1266, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(svs_on) == 1
		end,
		onMouseClick = function()
			set(svs_on, 1 - get(svs_on))
			return true
		end,
	},

	-- svs_heat
	switch_lit {
		position = {1311, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(svs_heat) == 1
		end,
		onMouseClick = function()
			set(svs_heat, 1 - get(svs_heat))
			return true
		end,
	},

	-- var_right
	switch_lit {
		position = {1401, 917, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(var_right) == 1
		end,
		onMouseClick = function()
			set(var_right, 1 - get(var_right))
			return true
		end,
	},

	-- tcas_on
	switch_lit {
		position = {31, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(tcas_on) == 1
		end,
		onMouseClick = function()
			set(tcas_on, 1 - get(tcas_on))
			return true
		end,
	},


	-- emerg_light_on
	switch_lit {
		position = {113, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(emerg_light_on) == 1
		end,
		onMouseClick = function()
			set(emerg_light_on, 1 - get(emerg_light_on))
			return true
		end,
		visible = function()
			return get(emerg_light_cap) == 1
		end,
	},

	-- vbe_1_on
	switch_lit {
		position = {191, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(vbe_1_on) == 1
		end,
		onMouseClick = function()
			set(vbe_1_on, 1 - get(vbe_1_on))
			return true
		end,
	},

	-- curs_np_on_1
	switch_lit {
		position = {268, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(curs_np_on_1) == 1
		end,
		onMouseClick = function()
			set(curs_np_on_1, 1 - get(curs_np_on_1))
			return true
		end,
	},
	
	-- curs_np_on_2
	switch_lit {
		position = {342, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(curs_np_on_2) == 1
		end,
		onMouseClick = function()
			set(curs_np_on_2, 1 - get(curs_np_on_2))
			return true
		end,
	},

	-- tra_67_on
	switch_lit {
		position = {404, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(tra_67_on) == 1
		end,
		onMouseClick = function()
			set(tra_67_on, 1 - get(tra_67_on))
			return true
		end,
	},

	-- rsbn_on
	switch_lit {
		position = {522, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(rsbn_on) == 1
		end,
		onMouseClick = function()
			set(rsbn_on, 1 - get(rsbn_on))
			return true
		end,
	},

	-- rsbn_recon
	switch_lit {
		position = {567, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(rsbn_recon) == 1
		end,
		onMouseClick = function()
			set(rsbn_recon, 1 - get(rsbn_recon))
			return true
		end,
	},

	-- stabil_ga_main
	switch_lit {
		position = {941, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(stabil_ga_main) == 1
		end,
		onMouseClick = function()
			set(stabil_ga_main, 1 - get(stabil_ga_main))
			return true
		end,
	},

	-- stabil_ga_reserv
	switch_lit {
		position = {1040, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(stabil_ga_reserv) == 1
		end,
		onMouseClick = function()
			set(stabil_ga_reserv, 1 - get(stabil_ga_reserv))
			return true
		end,
	},

	-- micron_1_on
	switch_lit {
		position = {1084, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(micron_1_on) == 1
		end,
		onMouseClick = function()
			set(micron_1_on, 1 - get(micron_1_on))
			return true
		end,
	},

	-- micron_2_on
	switch_lit {
		position = {1130, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(micron_2_on) == 1
		end,
		onMouseClick = function()
			set(micron_2_on, 1 - get(micron_2_on))
			return true
		end,
	},

	-- spu_on
	switch_lit {
		position = {1177, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(spu_on) == 1
		end,
		onMouseClick = function()
			set(spu_on, 1 - get(spu_on))
			return true
		end,
	},

	-- sgs_on
	switch_lit {
		position = {1221, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(sgs_on) == 1
		end,
		onMouseClick = function()
			set(sgs_on, 1 - get(sgs_on))
			return true
		end,
	},

	-- sd75_1_on
	switch_lit {
		position = {1266, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(sd75_1_on) == 1
		end,
		onMouseClick = function()
			set(sd75_1_on, 1 - get(sd75_1_on))
			return true
		end,
	},

	-- sd75_2_on
	switch_lit {
		position = {1310, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(sd75_2_on) == 1
		end,
		onMouseClick = function()
			set(sd75_2_on, 1 - get(sd75_2_on))
			return true
		end,
	},	
	
	-- mars_on
	switch_lit {
		position = {1359, 823, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(mars_on) == 1
		end,
		onMouseClick = function()
			set(mars_on, 1 - get(mars_on))
			return true
		end,
	},	
	



	
	-- diss_on
	switch_lit {
		position = {27, 587, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(diss_on) == 1
		end,
		onMouseClick = function()
			set(diss_on, 1 - get(diss_on))
			return true
		end,
	},	
	
	-- diss_mode
	switch_lit {
		position = {70, 587, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(diss_mode) == 1
		end,
		onMouseClick = function()
			set(diss_mode, 1 - get(diss_mode))
			return true
		end,
	},		
	
	
	-- vent_1
	switch_lit {
		position = {25, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(vent_1) == 1
		end,
		onMouseClick = function()
			set(vent_1, 1 - get(vent_1))
			return true
		end,
	},	
	
	
	-- vent_2
	switch_lit {
		position = {1295, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(vent_2) == 1
		end,
		onMouseClick = function()
			set(vent_2, 1 - get(vent_2))
			return true
		end,
	},		
	
	
	-- sign_belts
	switch_lit {
		position = {71, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(sign_belts) == 1
		end,
		onMouseClick = function()
			set(sign_belts, 1 - get(sign_belts))
			return true
		end,
	},		
	
	-- sign_nosmoke
	switch_lit {
		position = {114, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(sign_nosmoke) == 1
		end,
		onMouseClick = function()
			set(sign_nosmoke, 1 - get(sign_nosmoke))
			return true
		end,
	},	
	
	-- sign_exit
	switch_lit {
		position = {171, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(sign_exit) == 1
		end,
		onMouseClick = function()
			set(sign_exit, 1 - get(sign_exit))
			return true
		end,
	},	


	-- arm406
	switch_lit {
		position = {1248, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(arm406) == 1
		end,
		onMouseClick = function()
			set(arm406, 1 - get(arm406))
			return true
		end,
	},	


	-- ushdb_mode_1
	switch_lit {
		position = {1340, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(ushdb_mode_1) == 1
		end,
		onMouseClick = function()
			set(ushdb_mode_1, 1 - get(ushdb_mode_1))
			return true
		end,
	},

	-- ushdb_mode_2
	switch_lit {
		position = {1399, 471, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(ushdb_mode_2) == 1
		end,
		onMouseClick = function()
			set(ushdb_mode_2, 1 - get(ushdb_mode_2))
			return true
		end,
	},


	-- egpws_alarm_1
	switch_lit {
		position = {1251, 407, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(egpws_alarm_1) == 1
		end,
		onMouseClick = function()
			if get(egpws_alarm_1_cap) == 1 then set(egpws_alarm_1, 1 - get(egpws_alarm_1)) end
			return true
		end,
	},

	-- egpws_alarm_2
	switch_lit {
		position = {1295, 407, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(egpws_alarm_2) == 1
		end,
		onMouseClick = function()
			if get(egpws_alarm_2_cap) == 1 then set(egpws_alarm_2, 1 - get(egpws_alarm_2)) end
			return true
		end,
	},


	-- egpws_relief
	switch_lit {
		position = {1339, 407, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(egpws_relief) == 1
		end,
		onMouseClick = function()
			set(egpws_relief, 1 - get(egpws_relief))
			return true
		end,
	},


	-- egpws_mode
	switch_lit {
		position = {1253, 340, 25, 65},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(egpws_mode) == 1
		end,
		onMouseClick = function()
			set(egpws_mode, 1 - get(egpws_mode))
			return true
		end,

	},

	
	
	
	
	-------------------------
	-- tri position --
	--------------------------
	
	-- auasp_contr
	-- up img
	textureLit {
		position = {138, 917, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(auasp_contr) == 1
		end,
	},
	-- down img
	textureLit {
		position = {138, 917, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(auasp_contr) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {138, 917 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(auasp_contr) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {138, 917 + 35, 25, 32},
		onMouseDown = function()
			set(auasp_contr, 1)
			return true
		end,
		onMouseUp = function()
			set(auasp_contr, 0)
			return true
		end,
	},

	-- click down
	clickable {
		position = {138, 917, 25, 32},
		onMouseDown = function()
			set(auasp_contr, -1)
			return true
		end,
		onMouseUp = function()
			set(auasp_contr, 0)
			return true
		end,
	},

	--------------------------------

	-- bkk_contr
	-- up img
	textureLit {
		position = {476, 917, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(bkk_contr) == 1 and get(bkk_contr_cap) == 1
		end,
	},
	-- down img
	textureLit {
		position = {476, 917, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(bkk_contr) == -1 and get(bkk_contr_cap) == 1
		end,
	},
	-- ctr img
	textureLit {
		position = {476, 917 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(bkk_contr) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {476, 917 + 35, 25, 32},
		onMouseDown = function()
			set(bkk_contr, 1)
			return true
		end,
		onMouseUp = function()
			set(bkk_contr, 0)
			return true
		end,
		visible = function()
			return get(bkk_contr_cap) == 1
		end,
	},

	-- click down
	clickable {
		position = {476, 917, 25, 32},
		onMouseDown = function()
			set(bkk_contr, -1)
			return true
		end,
		onMouseUp = function()
			set(bkk_contr, 0)
			return true
		end,
		visible = function()
			return get(bkk_contr_cap) == 1
		end,
	},

	--------------------------------


	-- nvu_calc_set
	-- up img
	textureLit {
		position = {126, 584, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(nvu_calc_set) == 1
		end,
	},
	-- down img
	textureLit {
		position = {126, 584, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(nvu_calc_set) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {126, 584 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(nvu_calc_set) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {126, 584 + 35, 25, 32},
		onMouseClick = function()
			local a = get(nvu_calc_set) + 1
			if a > 1 then a = 0 end
			set(nvu_calc_set, a)
			return true
		end,
	},

	-- click down
	clickable {
		position = {126, 584, 25, 32},
		onMouseClick = function()
			local a = get(nvu_calc_set) - 1
			if a < -1 then a = 0 end
			set(nvu_calc_set, a)
			return true
		end,
	},

	--------------------------------


	-- window_heat_1
	-- up img
	textureLit {
		position = {1281, 712, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(window_heat_1) == 1
		end,
	},
	-- down img
	textureLit {
		position = {1281, 712, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(window_heat_1) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {1281, 712 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(window_heat_1) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {1281, 712 + 35, 25, 32},
		onMouseClick = function()
			local a = get(window_heat_1) + 1
			if a > 1 then a = 0 end
			set(window_heat_1, a)
			return true
		end,
	},

	-- click down
	clickable {
		position = {1281, 712, 25, 32},
		onMouseClick = function()
			local a = get(window_heat_1) - 1
			if a < -1 then a = 0 end
			set(window_heat_1, a)
			return true
		end,
	},

	--------------------------------


	-- window_heat_2
	-- up img
	textureLit {
		position = {1335, 712, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(window_heat_2) == 1
		end,
	},
	-- down img
	textureLit {
		position = {1335, 712, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(window_heat_2) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {1335, 712 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(window_heat_2) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {1335, 712 + 35, 25, 32},
		onMouseClick = function()
			local a = get(window_heat_2) + 1
			if a > 1 then a = 0 end
			set(window_heat_2, a)
			return true
		end,
	},

	-- click down
	clickable {
		position = {1335, 712, 25, 32},
		onMouseClick = function()
			local a = get(window_heat_2) - 1
			if a < -1 then a = 0 end
			set(window_heat_2, a)
			return true
		end,
	},

	--------------------------------

	-- window_heat_3
	-- up img
	textureLit {
		position = {1387, 712, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(window_heat_3) == 1
		end,
	},
	-- down img
	textureLit {
		position = {1387, 712, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(window_heat_3) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {1387, 712 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(window_heat_3) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {1387, 712 + 35, 25, 32},
		onMouseClick = function()
			local a = get(window_heat_3) + 1
			if a > 1 then a = 0 end
			set(window_heat_3, a)
			return true
		end,
	},

	-- click down
	clickable {
		position = {1387, 712, 25, 32},
		onMouseClick = function()
			local a = get(window_heat_3) - 1
			if a < -1 then a = 0 end
			set(window_heat_3, a)
			return true
		end,
	},

	--------------------------------

	-- pitot_heat_1
	-- up img
	textureLit {
		position = {1308, 639, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(pitot_heat_1) == 1
		end,
	},
	-- down img
	textureLit {
		position = {1308, 639, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(pitot_heat_1) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {1308, 639 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(pitot_heat_1) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {1308, 639 + 35, 25, 32},
		onMouseClick = function()
			local a = get(pitot_heat_1) + 1
			if a > 1 then a = 0 end
			set(pitot_heat_1, a)
			return true
		end,
	},

	-- click down
	clickable {
		position = {1308, 639, 25, 32},
		onMouseDown = function()
			set(pitot_heat_1, -1)
			return true
		end,
		onMouseUp = function()
			set(pitot_heat_1, 0)
			return true
		end,
	},

	--------------------------------
	

	-- pitot_heat_2
	-- up img
	textureLit {
		position = {1352, 639, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(pitot_heat_2) == 1
		end,
	},
	-- down img
	textureLit {
		position = {1352, 639, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(pitot_heat_2) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {1352, 639 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(pitot_heat_2) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {1352, 639 + 35, 25, 32},
		onMouseClick = function()
			local a = get(pitot_heat_2) + 1
			if a > 1 then a = 0 end
			set(pitot_heat_2, a)
			return true
		end,
	},

	-- click down
	clickable {
		position = {1352, 639, 25, 32},
		onMouseDown = function()
			set(pitot_heat_2, -1)
			return true
		end,
		onMouseUp = function()
			set(pitot_heat_2, 0)
			return true
		end,
	},

	--------------------------------
	
	
	-- pitot_heat_3
	-- up img
	textureLit {
		position = {1397, 639, 25, 65},
		image = get(sw_up_img),
		visible = function()
			return get(pitot_heat_3) == 1
		end,
	},
	-- down img
	textureLit {
		position = {1397, 639, 25, 65},
		image = get(sw_dn_img),
		visible = function()
			return get(pitot_heat_3) == -1
		end,
	},
	-- ctr img
	textureLit {
		position = {1397, 639 + 20, 25, 25},
		image = get(sw_ctr_img),
		visible = function()
			return get(pitot_heat_3) == 0
		end,
	},	
	
	-- click up
	clickable {
		position = {1397, 639 + 35, 25, 32},
		onMouseClick = function()
			local a = get(pitot_heat_3) + 1
			if a > 1 then a = 0 end
			set(pitot_heat_3, a)
			return true
		end,
	},

	-- click down
	clickable {
		position = {1397, 639, 25, 32},
		onMouseDown = function()
			set(pitot_heat_3, -1)
			return true
		end,
		onMouseUp = function()
			set(pitot_heat_3, 0)
			return true
		end,
	},

	--------------------------------	
	-- buttons --
	------------------------------
	
	-- tks_signal_off 
	clickable {
		position = {475, 843, 27, 27},
		onMouseDown = function()
			set(tks_signal_off, 1)
			return true
		end,
		onMouseUp = function()
			set(tks_signal_off, 0)
			return true
		end,
	},	
	
	-- svs_contr 
	clickable {
		position = {1220, 935, 27, 27},
		onMouseDown = function()
			set(svs_contr, 1)
			return true
		end,
		onMouseUp = function()
			set(svs_contr, 0)
			return true
		end,
	},	
	
	-- egpws_control
	clickable {
		position = {1296, 360, 27, 27},
		onMouseDown = function()
			set(egpws_control, 1)
			return true
		end,
		onMouseUp = function()
			set(egpws_control, 0)
			return true
		end,
	},	
	
	-- egpws_contr_gs
	clickable {
		position = {1340, 360, 27, 27},
		onMouseDown = function()
			set(egpws_contr_gs, 1)
			return true
		end,
		onMouseUp = function()
			set(egpws_contr_gs, 0)
			return true
		end,
	},		
	
	------------------------------
	-- caps --
	----------------------------
	
	-- emerg light
	-- down img
	textureLit {
		position = {107, 828, 37, 64},
		image = get(em_light_cap_dn),
		visible = function()
			return get(emerg_light_cap) == 0 and not RUS
		end,
	},	
		textureLit {
		position = {107, 828, 37, 64},
		image = get(em_light_cap_dn_RUS),
		visible = function()
			return get(emerg_light_cap) == 0 and RUS
		end,
	},
	-- up img
	textureLit {
		position = {107, 828 + 50, 37, 25},
		image = get(red_cap_up),
		visible = function()
			return get(emerg_light_cap) == 1
		end,
	},	
	clickable {
		position = {107, 828 + 50, 37, 25},
		onMouseClick = function()
			set(emerg_light_cap, 1 - get(emerg_light_cap))
			return true
		end,
	},	
	
	-- egpws_alarm_1_cap 
	-- down img
	textureLit {
		position = {1244, 406, 37, 64},
		image = get(taws_main_cap_dn),
		visible = function()
			return get(egpws_alarm_1_cap) == 0 and not RUS
		end,
	},	
	textureLit {
		position = {1244, 406, 37, 64},
		image = get(taws_main_cap_dn_RUS),
		visible = function()
			return get(egpws_alarm_1_cap) == 0 and RUS
		end,
	},	
	-- up img
	textureLit {
		position = {1244, 406 + 50, 37, 25},
		image = get(black_cap_up),
		visible = function()
			return get(egpws_alarm_1_cap) == 1
		end,
	},	
	clickable {
		position = {1244, 406 + 50, 37, 25},
		onMouseClick = function()
			set(egpws_alarm_1_cap, 1 - get(egpws_alarm_1_cap))
			return true
		end,
	},		
	
	-- egpws_alarm_2_cap 
	-- down img
	textureLit {
		position = {1289, 406, 37, 64},
		image = get(taws_36_cap_dn),
		visible = function()
			return get(egpws_alarm_2_cap) == 0 and not RUS
		end,
	},	
	textureLit {
		position = {1289, 406, 37, 64},
		image = get(taws_36_cap_dn_RUS),
		visible = function()
			return get(egpws_alarm_2_cap) == 0 and RUS
		end,
	},
	-- up img
	textureLit {
		position = {1289, 406 + 50, 37, 25},
		image = get(black_cap_up),
		visible = function()
			return get(egpws_alarm_2_cap) == 1
		end,
	},	
	clickable {
		position = {1289, 406 + 50, 37, 25},
		onMouseClick = function()
			set(egpws_alarm_2_cap, 1 - get(egpws_alarm_2_cap))
			return true
		end,
	},		
	
	-- bkk_contr_cap 
	-- down img
	textureLit {
		position = {471, 918, 37, 64},
		image = get(bkk_test_cap_dn),
		visible = function()
			return get(bkk_contr_cap) == 0
		end,
	},	
	-- up img
	textureLit {
		position = {471, 918 - 15, 37, 25},
		image = get(blue_cap_up),
		visible = function()
			return get(bkk_contr_cap) == 1
		end,
	},	
	clickable {
		position = {471, 918 - 15, 37, 25},
		onMouseClick = function()
			set(bkk_contr_cap, 1 - get(bkk_contr_cap))
			return true
		end,
	},	

	-- bkk_on_cap 
	-- down img
	textureLit {
		position = {525, 918, 37, 64},
		image = get(bkk_cap_dn),
		visible = function()
			return get(bkk_on_cap) == 0 and not RUS
		end,
	},	
	
	textureLit {
		position = {525, 918, 37, 64},
		image = get(bkk_cap_dn_RUS),
		visible = function()
			return get(bkk_on_cap) == 0 and RUS
		end,
	},
	-- up img
	textureLit {
		position = {525, 918 - 15, 37, 25},
		image = get(blue_cap_up),
		visible = function()
			return get(bkk_on_cap) == 1
		end,
	},	
	clickable {
		position = {525, 918 - 15, 37, 25},
		onMouseClick = function()
			set(bkk_on_cap, 1 - get(bkk_on_cap))
			return true
		end,
	},	
	
	
	-- sau_stu_cap 
	-- down img
	textureLit {
		position = {590, 918, 37, 64},
		image = get(sau_cap_dn),
		visible = function()
			return get(sau_stu_cap) == 0 and not RUS
		end,
	},	
	textureLit {
		position = {590, 918, 37, 64},
		image = get(sau_cap_dn_RUS),
		visible = function()
			return get(sau_stu_cap) == 0 and RUS
		end,
	},	

	-- up img
	textureLit {
		position = {590, 918 - 15, 37, 25},
		image = get(blue_cap_up),
		visible = function()
			return get(sau_stu_cap) == 1
		end,
	},	
	clickable {
		position = {590, 918 - 15, 37, 25},
		onMouseClick = function()
			set(sau_stu_cap, 1 - get(sau_stu_cap))
			return true
		end,
	},	
	
	-- pkp_left_cap 
	-- down img
	textureLit {
		position = {656, 918, 37, 64},
		image = get(pkp_left_cap_dn),
		visible = function()
			return get(pkp_left_cap) == 0 and not RUS
		end,
	},	
	textureLit {
		position = {656, 918, 37, 64},
		image = get(pkp_left_cap_dn_RUS),
		visible = function()
			return get(pkp_left_cap) == 0 and RUS
		end,
	},
	-- up img
	textureLit {
		position = {656, 918 - 15, 37, 25},
		image = get(blue_cap_up),
		visible = function()
			return get(pkp_left_cap) == 1
		end,
	},	
	clickable {
		position = {656, 918 - 15, 37, 25},
		onMouseClick = function()
			set(pkp_left_cap, 1 - get(pkp_left_cap))
			return true
		end,
	},		
	
	-- pkp_right_cap 
	-- down img
	textureLit {
		position = {700, 918, 37, 64},
		image = get(pkp_right_cap_dn),
		visible = function()
			return get(pkp_right_cap) == 0 and not RUS
		end,
	},	
	textureLit {
		position = {700, 918, 37, 64},
		image = get(pkp_right_cap_dn_RUS),
		visible = function()
			return get(pkp_right_cap) == 0 and RUS
		end,
	},
	-- up img
	textureLit {
		position = {700, 918 - 15, 37, 25},
		image = get(blue_cap_up),
		visible = function()
			return get(pkp_right_cap) == 1
		end,
	},	
	clickable {
		position = {700, 918 - 15, 37, 25},
		onMouseClick = function()
			set(pkp_right_cap, 1 - get(pkp_right_cap))
			return true
		end,
	},		
		
	-- mgv_contr_cap 
	-- down img
	textureLit {
		position = {743, 918, 37, 64},
		image = get(mgv_ctr_cap_dn),
		visible = function()
			return get(mgv_contr_cap) == 0 and not RUS
		end,
	},	
	textureLit {
		position = {743, 918, 37, 64},
		image = get(mgv_ctr_cap_dn_RUS),
		visible = function()
			return get(mgv_contr_cap) == 0 and RUS
		end,
	},
	-- up img
	textureLit {
		position = {743, 918 - 15, 37, 25},
		image = get(blue_cap_up),
		visible = function()
			return get(mgv_contr_cap) == 1
		end,
	},	
	clickable {
		position = {743, 918 - 15, 37, 25},
		onMouseClick = function()
			set(mgv_contr_cap, 1 - get(mgv_contr_cap))
			return true
		end,
	},		
			

	------------------------
	-- RSBN --
	------------------------
	
	-- channel 10
	needleLit {
		position = {314, 574, 62, 62},
		image = get(big_rotary_sw),
		angle = function()
			return -60 + get(rsbn_ch_ten) * 30
		
		end,
	
	},
	clickable {
		position = {314, 574, 30, 62},
		onMouseClick = function()
			local a = get(rsbn_ch_ten) - 1
			if a < 0 then a = 0 end
			set(rsbn_ch_ten, a)
			return true
		end,
	},
	clickable {
		position = {314 + 32, 574, 30, 62},
		onMouseClick = function()
			local a = get(rsbn_ch_ten) + 1
			if a > 4 then a = 4 end
			set(rsbn_ch_ten, a)
			return true
		end,
	},

	
	-- channel 1
	needleLit {
		position = {415, 574, 62, 62},
		image = get(big_rotary_sw),
		angle = function()
			return -150 + get(rsbn_ch_one) * 30
		
		end,
	
	},	
	
	clickable {
		position = {415, 574, 30, 62},
		onMouseClick = function()
			local a = get(rsbn_ch_one) - 1
			if a < 0 then a = 0 end
			set(rsbn_ch_one, a)
			return true
		end,
	},
	clickable {
		position = {415 + 32, 574, 30, 62},
		onMouseClick = function()
			local a = get(rsbn_ch_one) + 1
			if a > 9 then a = 9 end
			set(rsbn_ch_one, a)
			return true
		end,
	},	
	
	-- buttons
	-- rsbn_control_strobe
	clickable {
		position = {302, 694, 30, 30},
		onMouseDown = function()
			set(rsbn_control_strobe, 1)
			return true
		end,
		onMouseUp = function()
			set(rsbn_control_strobe, 0)
			return true
		end,
	},	
	-- rsbn_control_azimuth
	clickable {
		position = {390, 694, 30, 30},
		onMouseDown = function()
			set(rsbn_control_azimuth, 1)
			return true
		end,
		onMouseUp = function()
			set(rsbn_control_azimuth, 0)
			return true
		end,
	},	
	-- rsbn_control_distance
	clickable {
		position = {470, 694, 30, 30},
		onMouseDown = function()
			set(rsbn_control_distance, 1)
			return true
		end,
		onMouseUp = function()
			set(rsbn_control_distance, 0)
			return true
		end,
	},

	
	-------------------------
	-- course MP --
	-------------------------
	
	
	-- left text
	text_draw {
		position = {282, 149, 52, 52},
		color = {1, 0.3, 0.2, 1},
		font = text_font,
		visible = function()
			return nav_1_power
		end,
		text = function()
			return nav_1_freq_show
		end,
	},
	
	-- right text
	text_draw {
		position = {1064, 149, 52, 52},
		color = {1, 0.3, 0.2, 1},
		font = text_font,
		visible = function()
			return nav_2_power
		end,
		text = function()
			return nav_2_freq_show
		end,
	},	
	
	-- left 1
	clickable {
		position = {229, 25, 30, 60},
		onMouseClick = function()
			set(nav_1_left, get(nav_1_left) - 1)
			return true
		end,
	},	
	clickable {
		position = {229 + 30, 25, 30, 60},
		onMouseClick = function()
			set(nav_1_left, get(nav_1_left) + 1)
			return true
		end,
	},

	-- right 1
	clickable {
		position = {386, 25, 30, 60},
		onMouseClick = function()
			set(nav_1_right, get(nav_1_right) - 1)
			return true
		end,
	},	
	clickable {
		position = {386 + 30, 25, 30, 60},
		onMouseClick = function()
			set(nav_1_right, get(nav_1_right) + 1)
			return true
		end,
	},	

	-- left 2
	clickable {
		position = {1013, 25, 30, 60},
		onMouseClick = function()
			set(nav_2_left, get(nav_2_left) - 1)
			return true
		end,
	},	
	clickable {
		position = {1013 + 30, 25, 30, 60},
		onMouseClick = function()
			set(nav_2_left, get(nav_2_left) + 1)
			return true
		end,
	},

	-- right 2
	clickable {
		position = {1170, 25, 30, 60},
		onMouseClick = function()
			set(nav_2_right, get(nav_2_right) - 1)
			return true
		end,
	},	
	clickable {
		position = {1170 + 30, 25, 30, 60},
		onMouseClick = function()
			set(nav_2_right, get(nav_2_right) + 1)
			return true
		end,
	},	

	-- nav_1_mile_km
	switch_lit {
		position = {306, 89, 62, 20},
		btnOn = get(sw_right_img),
		btnOff = get(sw_left_img),
		state = function()
			return get(nav_1_mile_km) == 1
		end,
		onMouseClick = function()
			set(nav_1_mile_km, 1 - get(nav_1_mile_km))
			return true
		end,
	},

	-- nav_2_mile_km
	switch_lit {
		position = {1090, 89, 62, 20},
		btnOn = get(sw_right_img),
		btnOff = get(sw_left_img),
		state = function()
			return get(nav_2_mile_km) == 1
		end,
		onMouseClick = function()
			set(nav_2_mile_km, 1 - get(nav_2_mile_km))
			return true
		end,
	},

	-- button 1
	clickable {
		position = {293, 39, 30, 30},
		onMouseDown = function()
			set(nav_1_but_1, 1)
			return true
		end,
		onMouseUp = function()
			set(nav_1_but_1, 0)
			return true
		end,
	},
	-- button 2
	clickable {
		position = {322, 39, 30, 30},
		onMouseDown = function()
			set(nav_1_but_2, 1)
			return true
		end,
		onMouseUp = function()
			set(nav_1_but_2, 0)
			return true
		end,
	},	
	-- button 3
	clickable {
		position = {353, 39, 30, 30},
		onMouseDown = function()
			set(nav_1_but_3, 1)
			return true
		end,
		onMouseUp = function()
			set(nav_1_but_3, 0)
			return true
		end,
	},	

	-- button 1
	clickable {
		position = {1077, 39, 30, 30},
		onMouseDown = function()
			set(nav_2_but_1, 1)
			return true
		end,
		onMouseUp = function()
			set(nav_2_but_1, 0)
			return true
		end,
	},
	-- button 2
	clickable {
		position = {1106, 39, 30, 30},
		onMouseDown = function()
			set(nav_2_but_2, 1)
			return true
		end,
		onMouseUp = function()
			set(nav_2_but_2, 0)
			return true
		end,
	},	
	-- button 3
	clickable {
		position = {1137, 39, 30, 30},
		onMouseDown = function()
			set(nav_2_but_3, 1)
			return true
		end,
		onMouseUp = function()
			set(nav_2_but_3, 0)
			return true
		end,
	},	
	
	------------------------
	-- VHF --
	---------------------
	
	-- text 1
	text_draw {
		position = {670, 283, 55, 52},
		color = {0.2, 1, 0.2, 1},
		font = text_font,
		visible = function()
			return vhf_1_power
		end,
		text = function()
			return vhf_1_freq_show
		end,
	
	},	
	
	-- text 2
	text_draw {
		position = {670, 125, 55, 52},
		color = {0.2, 1, 0.2, 1},
		font = text_font,
		visible = function()
			return vhf_2_power
		end,
		text = function()
			return vhf_2_freq_show
		end,
	
	},		
	
	-- left 1
	clickable {
		position = {630, 207, 30, 60},
		onMouseClick = function()
			set(vhf_1_left, get(vhf_1_left) - 1)
			return true
		end,
	},	
	clickable {
		position = {630 + 30, 207, 30, 60},
		onMouseClick = function()
			set(vhf_1_left, get(vhf_1_left) + 1)
			return true
		end,
	},

	-- right 1
	clickable {
		position = {771, 207, 30, 60},
		onMouseClick = function()
			set(vhf_1_right, get(vhf_1_right) - 1)
			return true
		end,
	},	
	clickable {
		position = {771 + 30, 207, 30, 60},
		onMouseClick = function()
			set(vhf_1_right, get(vhf_1_right) + 1)
			return true
		end,
	},		
	
	-- left 2
	clickable {
		position = {630, 51, 30, 60},
		onMouseClick = function()
			set(vhf_2_left, get(vhf_2_left) - 1)
			return true
		end,
	},	
	clickable {
		position = {630 + 30, 51, 30, 60},
		onMouseClick = function()
			set(vhf_2_left, get(vhf_2_left) + 1)
			return true
		end,
	},

	-- right 2
	clickable {
		position = {771, 51, 30, 60},
		onMouseClick = function()
			set(vhf_2_right, get(vhf_2_right) - 1)
			return true
		end,
	},	
	clickable {
		position = {771 + 30, 51, 30, 60},
		onMouseClick = function()
			set(vhf_2_right, get(vhf_2_right) + 1)
			return true
		end,
	},	
	
	
	----------------------
	-- ARK 15 left --
	----------------------

	-- switchers
	
	-- left hundreds
	clickable {
		position = {313, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_hundr_left) - 1
			if a < 1 then a = 17 end
			set(ark_1_hundr_left, a)
			return true
		end,
	},	
	clickable {
		position = {313 + 24, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_hundr_left) + 1
			if a > 17 then a = 1 end
			set(ark_1_hundr_left, a)
			return true
		end,
	},	
	-- left tens
	clickable {
		position = {313, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_tens_left) - 1
			if a < 1 then a = 1 end
			set(ark_1_tens_left, a)
			return true
		end,
	},	
	clickable {
		position = {313 + 24, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_tens_left) + 1
			if a > 10 then a = 10 end
			set(ark_1_tens_left, a)
			return true
		end,
	},	
	-- left ones
	clickable {
		position = {313, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_ones_left) - 1
			if a < 0 then a = 9 end
			set(ark_1_ones_left, a)
			return true
		end,
	},	
	clickable {
		position = {313 + 24, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_ones_left) + 1
			if a > 9 then a = 0 end
			set(ark_1_ones_left, a)
			return true
		end,
	},	
	
	
	-- right hundreds
	clickable {
		position = {313+131, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_hundr_right) - 1
			if a < 1 then a = 17 end
			set(ark_1_hundr_right, a)
			return true
		end,
	},	
	clickable {
		position = {313+131 + 24, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_hundr_right) + 1
			if a > 17 then a = 1 end
			set(ark_1_hundr_right, a)
			return true
		end,
	},	
	-- right tens
	clickable {
		position = {313+131, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_tens_right) - 1
			if a < 1 then a = 1 end
			set(ark_1_tens_right, a)
			return true
		end,
	},	
	clickable {
		position = {313+131 + 24, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_tens_right) + 1
			if a > 10 then a = 10 end
			set(ark_1_tens_right, a)
			return true
		end,
	},	
	-- right ones
	clickable {
		position = {313+131, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_ones_right) - 1
			if a < 0 then a = 9 end
			set(ark_1_ones_right, a)
			return true
		end,
	},	
	clickable {
		position = {313+131 + 24, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_1_ones_right) + 1
			if a > 9 then a = 0 end
			set(ark_1_ones_right, a)
			return true
		end,
	},		
	
	-- ark_1_channel
	switch_lit {
		position = {371, 392, 53, 20},
		btnOn = get(sw_right_img),
		btnOff = get(sw_left_img),
		state = function()
			return get(ark_1_channel) == 1
		end,
		onMouseClick = function()
			set(ark_1_channel, 1 - get(ark_1_channel))
			return true
		end,
	},
	
	clickable {
		position = {293, 402, 30, 30},
		onMouseDown = function()
			set(ark_1_ramka, 1)
			return true
		end,
		onMouseUp = function()
			set(ark_1_ramka, 0)
			return true
		end,
	},	
	
	-- mode selector
	needleLit {
		position = {419, 412.5, 70, 70},
		image = get(small_rotary_sw),
		angle = function()
			return get(ark_1_mode) * 30 - 45
		end,
	},	
	clickable {
		position = {419, 412.5, 35, 70},
		onMouseClick = function()
			local a = get(ark_1_mode) - 1
			if a < 0 then a = 0 end
			set(ark_1_mode, a)
			return true
		end,
	},
	clickable {
		position = {419+35, 412.5, 35, 70},
		onMouseClick = function()
			local a = get(ark_1_mode) + 1
			if a > 3 then a = 3 end
			set(ark_1_mode, a)
			return true
		end,
	},	
	
	
	----------------------
	-- ARK 15 right --
	----------------------
	
	-- switchers
	
	-- left hundreds
	clickable {
		position = {313+655, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_hundr_left) - 1
			if a < 1 then a = 17 end
			set(ark_2_hundr_left, a)
			return true
		end,
	},	
	clickable {
		position = {313+655 + 24, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_hundr_left) + 1
			if a > 17 then a = 1 end
			set(ark_2_hundr_left, a)
			return true
		end,
	},	
	-- left tens
	clickable {
		position = {313+655, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_tens_left) - 1
			if a < 1 then a = 1 end
			set(ark_2_tens_left, a)
			return true
		end,
	},	
	clickable {
		position = {313+655 + 24, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_tens_left) + 1
			if a > 10 then a = 10 end
			set(ark_2_tens_left, a)
			return true
		end,
	},	
	-- left ones
	clickable {
		position = {313+655, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_ones_left) - 1
			if a < 0 then a = 9 end
			set(ark_2_ones_left, a)
			return true
		end,
	},	
	clickable {
		position = {313+655 + 24, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_ones_left) + 1
			if a > 9 then a = 0 end
			set(ark_2_ones_left, a)
			return true
		end,
	},	
	
	
	-- right hundreds
	clickable {
		position = {313+655+131, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_hundr_right) - 1
			if a < 1 then a = 17 end
			set(ark_2_hundr_right, a)
			return true
		end,
	},	
	clickable {
		position = {313+655+131 + 24, 340, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_hundr_right) + 1
			if a > 17 then a = 1 end
			set(ark_2_hundr_right, a)
			return true
		end,
	},	
	-- right tens
	clickable {
		position = {313+655+131, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_tens_right) - 1
			if a < 1 then a = 1 end
			set(ark_2_tens_right, a)
			return true
		end,
	},	
	clickable {
		position = {313+655+131 + 24, 328, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_tens_right) + 1
			if a > 10 then a = 10 end
			set(ark_2_tens_right, a)
			return true
		end,
	},	
	-- right ones
	clickable {
		position = {313+655+131, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_ones_right) - 1
			if a < 0 then a = 9 end
			set(ark_2_ones_right, a)
			return true
		end,
	},	
	clickable {
		position = {313+655+131 + 24, 316, 24, 12},
		onMouseClick = function()
			local a = get(ark_2_ones_right) + 1
			if a > 9 then a = 0 end
			set(ark_2_ones_right, a)
			return true
		end,
	},		
		
	-- ark_2_channel
	switch_lit {
		position = {371+655, 392, 53, 20},
		btnOn = get(sw_right_img),
		btnOff = get(sw_left_img),
		state = function()
			return get(ark_2_channel) == 1
		end,
		onMouseClick = function()
			set(ark_2_channel, 1 - get(ark_2_channel))
			return true
		end,
	},	
	
	clickable {
		position = {293 + 655, 402, 30, 30},
		onMouseDown = function()
			set(ark_2_ramka, 1)
			return true
		end,
		onMouseUp = function()
			set(ark_2_ramka, 0)
			return true
		end,
	},	
	
	-- mode selector
	needleLit {
		position = {419+655, 412.5, 70, 70},
		image = get(small_rotary_sw),
		angle = function()
			return get(ark_2_mode) * 30 - 45
		end,
	},	
	clickable {
		position = {419+655, 412.5, 35, 70},
		onMouseClick = function()
			local a = get(ark_2_mode) - 1
			if a < 0 then a = 0 end
			set(ark_2_mode, a)
			return true
		end,
	},
	clickable {
		position = {419+35+655, 412.5, 35, 70},
		onMouseClick = function()
			local a = get(ark_2_mode) + 1
			if a > 3 then a = 3 end
			set(ark_2_mode, a)
			return true
		end,
	},	

	---------------------------
	-- TKS --
	----------------------------

	-- TKS mode
	-- left
	textureLit {
		position = {1036, 684, 40, 16},
		image = get(sw_left_img),
		visible = function()
			return get(tks_mode) == 0
		end,
	},
	-- right
	textureLit {
		position = {1036, 684, 40, 16},
		image = get(sw_right_img),
		visible = function()
			return get(tks_mode) == 2
		end,
	},
	-- ctr img
	textureLit {
		position = {1036 + 12, 684, 16, 16},
		image = get(sw_ctr_img),
		visible = function()
			return get(tks_mode) == 1
		end,
	},
	
	clickable {
		position = {1025, 677, 30, 30},
		onMouseClick = function()
			local a = get(tks_mode) - 1
			if a < 0 then a = 1 end
			set(tks_mode, a)
			return true
		end,
	},	
	clickable {
		position = {1025+30, 677, 30, 30},
		onMouseClick = function()
			local a = get(tks_mode) + 1
			if a > 2 then a = 1 end
			set(tks_mode, a)
			return true
		end,
	},	
	
	-- TKS mode
	-- left
	textureLit {
		position = {1036, 632, 40, 16},
		image = get(sw_left_img),
		visible = function()
			return get(tks_course_set) == -1
		end,
	},
	-- right
	textureLit {
		position = {1036, 632, 40, 16},
		image = get(sw_right_img),
		visible = function()
			return get(tks_course_set) == 1
		end,
	},
	-- ctr img
	textureLit {
		position = {1036 + 12, 632, 16, 16},
		image = get(sw_ctr_img),
		visible = function()
			return get(tks_course_set) == 0
		end,
	},	
	
	clickable {
		position = {1025, 624, 30, 30},
		onMouseDown = function()
			set(tks_course_set, -1)
			return true
		end,
		onMouseUp = function()
			set(tks_course_set, 0)
			return true
		end,
	},	
	clickable {
		position = {1025 + 30, 624, 30, 30},
		onMouseDown = function()
			set(tks_course_set, 1)
			return true
		end,
		onMouseUp = function()
			set(tks_course_set, 0)
			return true
		end,
	},		
	
	-- sync button
	clickable {
		position = {1042, 589, 30, 30},
		onMouseDown = function()
			set(tks_corrr_button, 1)
			return true
		end,
		onMouseUp = function()
			set(tks_corrr_button, 0)
			return true
		end,
	},
	
	-- main mode
	-- up img
	textureLit {
		position = {951, 639, 17, 17},
		image = get(sw_ctr_img),
		visible = function()
			return get(tks_user) == 1
		end,
	},
	-- down img
	textureLit {
		position = {951, 639-13, 17, 17},
		image = get(sw_ctr_img),
		visible = function()
			return get(tks_user) == 0
		end,
	},	

	clickable {
		position = {941, 622, 35, 35},
		onMouseClick = function()
			set(tks_user, 1 - get(tks_user))
			return true
		end,
	},	


	
	-- source mode
	-- up img
	textureLit {
		position = {1145, 639, 17, 17},
		image = get(sw_ctr_img),
		visible = function()
			return get(tks_source) == 1
		end,
	},
	-- down img
	textureLit {
		position = {1145, 639-13, 17, 17},
		image = get(sw_ctr_img),
		visible = function()
			return get(tks_source) == 0
		end,
	},	
	
	clickable {
		position = {1136, 622, 35, 35},
		onMouseClick = function()
			set(tks_source, 1 - get(tks_source))
			return true
		end,
	},		
	
	-- LAT handle
	needleLit {
		position = {1121, 670, 47, 47},
		image = get(tks_handle),
		angle = function()
			return get(tks_lat_set) * 5
		end,
	},	
	clickable {
		position = {1116, 670, 30, 47},
		onMouseClick = function()
			local a = math.floor(get(tks_lat_set) - 1)
			if a < -90 then a = -90 end
			set(tks_lat_set, a)
			return true
		end,
	},	
	clickable {
		position = {1116+30, 670, 30, 47},
		onMouseClick = function()
			local a = math.ceil(get(tks_lat_set) + 1)
			if a > 90 then a = 90 end
			set(tks_lat_set, a)
			return true
		end,
	},	
	
	
	----------------------
	-- LAMPS --
	----------------------
	
	-- BKK test
	textureLit {
		position = {362, 939, 19, 19},
		image = get(small_lamp),
		visible = function()
			return get(bkk_ok) == 1
		end,
	},
	
	-- heat_ok_1
	textureLit {
		position = {1313, 600, 19, 19},
		image = get(small_lamp),
		visible = function()
			return get(heat_ok_1) == 1
		end,
	},	
	-- heat_ok_2
	textureLit {
		position = {1357, 600, 19, 19},
		image = get(small_lamp),
		visible = function()
			return get(heat_ok_2) == 1
		end,
	},		
	-- heat_ok_3
	textureLit {
		position = {1401, 600, 19, 19},
		image = get(small_lamp),
		visible = function()
			return get(heat_ok_3) == 1
		end,
	},		
	
	-- tks_main_fail
	textureLit {
		position = {937, 575, 32, 32},
		image = get(tks_main_lamp),
		visible = function()
			return get(tks_main_fail) == 1 and not RUS
		end,
	},
	textureLit {
		position = {937, 575, 32, 32},
		image = get(tks_main_lamp_RUS),
		visible = function()
			return get(tks_main_fail) == 1 and RUS
		end,
	},
	-- tks_contr_fail
	textureLit {
		position = {1142, 575, 32, 32},
		image = get(tks_aux_lamp),
		visible = function()
			return get(tks_contr_fail) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {1142, 575, 32, 32},
		image = get(tks_aux_lamp_RUS),
		visible = function()
			return get(tks_contr_fail) == 1 and RUS
		end,
	},	


	-- SO-72
	
	text_draw {
		position = {685, 627, 57, 57},
		font = so72_font,
		color = {1, 0.3, 0.2, 1},
		visible = function()
			return so72_power
		end,
		text = function()
			return code_show
		end,
	
	},

	needleLit {
		position = {698, 673, 60, 60},
		image = get(big_rotary_sw),
		angle = function()
			return get(transponder_mode) * 30 - 90
		end,
	},

	clickable {
		position = {698, 673, 30, 60},
		onMouseClick = function()
			local a = get(transponder_mode) - 1
			if a < 0 then a = 0 end
			set(transponder_mode, a)
			return true
		end,
	},	

	clickable {
		position = {728, 673, 30, 60},
		onMouseClick = function()
			local a = get(transponder_mode) + 1
			if a > 6 then a = 6 end
			set(transponder_mode, a)
			return true
		end,
	},

	-- digit 1
	clickable {
		position = {663, 567, 33, 33},
		onMouseDown = function()
			set(transponder_but_1, 1)
			return true
		end,
		onMouseUp = function()
			set(transponder_but_1, 0)
			return true
		end
	},

	-- digit 2
	clickable {
		position = {696, 567, 33, 33},
		onMouseDown = function()
			set(transponder_but_2, 1)
			return true
		end,
		onMouseUp = function()
			set(transponder_but_2, 0)
			return true
		end
	},


	-- digit 3
	clickable {
		position = {729, 567, 33, 33},
		onMouseDown = function()
			set(transponder_but_3, 1)
			return true
		end,
		onMouseUp = function()
			set(transponder_but_3, 0)
			return true
		end
	},

	-- digit 4
	clickable {
		position = {762, 567, 33, 33},
		onMouseDown = function()
			set(transponder_but_4, 1)
			return true
		end,
		onMouseUp = function()
			set(transponder_but_4, 0)
			return true
		end
	},

	-- IDENT
	clickable {
		position = {796, 599, 33, 33},
		onMouseDown = function()
			set(transponder_sign, 1)
			return true
		end,
		onMouseUp = function()
			set(transponder_sign, 0)
			return true
		end
	},
	
	-- test
	clickable {
		position = {631, 656, 33, 33},
		onMouseDown = function()
			set(transponder_control, 1)
			return true
		end,
		onMouseUp = function()
			set(transponder_control, 0)
			return true
		end
	},	
	
	-- emerg
	clickable {
		position = {631, 601, 33, 33},
		onMouseDown = function()
			set(transponder_emerg, 1)
			return true
		end,
		onMouseUp = function()
			set(transponder_emerg, 0)
			return true
		end,
		visible = function()
			return get(transponder_emerg_cap) == 1
		end
	},	
	
	-- cap
	textureLit {
		position = {624, 627, 46, 32},
		image = get(trans_cap_open),
		visible = function()
			return get(transponder_emerg_cap) == 1
		end
	},
	textureLit {
		position = {624, 590, 46, 49},
		image = get(trans_cap_closed),
		visible = function()
			return get(transponder_emerg_cap) == 0
		end
	},	
	
	
	clickable {
		position = {623, 634, 45, 17},
		onMouseDown = function()
			set(transponder_emerg_cap, 1 - get(transponder_emerg_cap))
			return true
		end,
	},	
	
	


	
	-- close button
		clickable {
		position = {size[1] - 15, size[2] - 15, 15, 15 },
      
		onMouseClick = function() 
			set(show_ohvd_panel, 0)
			return true
		end,
	},	

}
