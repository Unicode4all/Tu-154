-- this is safe state script


defineProperty("reset_state",globalPropertyi("tu154ce/reset_state")) -- сброс состояния самолета
defineProperty("save_state", globalPropertyi("tu154ce/save_state")) -- принудительное сохранение состояния самолета

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("starter_torq", globalPropertyf("sim/aircraft/engine/acf_starter_torque_ratio")) -- мощность стартера. 0.18 для нормального запуска

defineProperty("hardware_cockpit", globalPropertyi("tu154ce/hardware_cockpit")) -- Самолет подготовлен для железного кокпита
--defineProperty("payload", globalPropertyf("sim/flightmodel/weight/m_fixed"))  -- payload weight, kg
--defineProperty("CG_load", globalPropertyf("sim/flightmodel/misc/cgz_ref_to_default")) -- Center of Gravity reference to default, m
defineProperty("fuel_q_1", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel quantity for tank 1
defineProperty("fuel_q_4", globalProperty("sim/flightmodel/weight/m_fuel[1]")) -- fuel quantity for tank 4
defineProperty("fuel_q_2R", globalProperty("sim/flightmodel/weight/m_fuel[2]")) -- fuel quantity for tank 2R
defineProperty("fuel_q_2L", globalProperty("sim/flightmodel/weight/m_fuel[3]")) -- fuel quantity for tank 2L
defineProperty("fuel_q_3R", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel quantity for tank 3R
defineProperty("fuel_q_3L", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel quantity for tank 3L

defineProperty("hide_rus_objects", globalPropertyi("tu154ce/lang/hide_rus_objects")) -- спрятать русские объекты кабины
defineProperty("hide_eng_objects", globalPropertyi("tu154ce/lang/hide_eng_objects")) -- спрятать английские объекты кабины

defineProperty("sounds_voulme", globalPropertyi("tu154ce/sounds_voulme")) -- общая громкость звуков
defineProperty("enable_crew_vo", globalPropertyi("tu154ce/sounds/enable_crew_vo")) -- включены фразы екипажа

defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled")) -- отказы включены
defineProperty("have_pedals", globalPropertyi("tu154ce/have_pedals"))
defineProperty("show_gns", globalPropertyi("tu154ce/anim/show_gns"))
defineProperty("show_RXP",globalPropertyi("tu154ce/anim/RXP"))

defineProperty("pnp_1_crs", globalPropertyi("tu154ce/gauges/compas/pkp_obs_set_L"))
defineProperty("pnp_2_crs", globalPropertyi("tu154ce/gauges/compas/pkp_obs_set_R"))

defineProperty("pnp_1_obs", globalPropertyi("tu154ce/gauges/compas/pkp_helper_course_L"))
defineProperty("pnp_2_obs", globalPropertyi("tu154ce/gauges/compas/pkp_helper_course_R"))

defineProperty("ark_1_channel", globalPropertyi("tu154ce/switchers/ovhd/ark_1_channel"))
defineProperty("ark_1_hundr_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_left"))
defineProperty("ark_1_tens_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_left"))
defineProperty("ark_1_ones_left", globalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_left"))
defineProperty("ark_1_hundr_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_hundr_right"))
defineProperty("ark_1_tens_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_tens_right"))
defineProperty("ark_1_ones_right", globalPropertyi("tu154ce/switchers/ovhd/ark_1_ones_right"))

defineProperty("ark_2_channel", globalPropertyi("tu154ce/switchers/ovhd/ark_2_channel"))
defineProperty("ark_2_hundr_left", globalPropertyi("tu154ce/switchers/ovhd/ark_2_hundr_left"))
defineProperty("ark_2_tens_left", globalPropertyi("tu154ce/switchers/ovhd/ark_2_tens_left"))
defineProperty("ark_2_ones_left", globalPropertyi("tu154ce/switchers/ovhd/ark_2_ones_left"))
defineProperty("ark_2_hundr_right", globalPropertyi("tu154ce/switchers/ovhd/ark_2_hundr_right"))
defineProperty("ark_2_tens_right", globalPropertyi("tu154ce/switchers/ovhd/ark_2_tens_right"))
defineProperty("ark_2_ones_right", globalPropertyi("tu154ce/switchers/ovhd/ark_2_ones_right"))

defineProperty("vd15_pressure_left", globalPropertyf("tu154ce/gauges/alt/vd15_pressure_left")) -- давление на ВД15 КВС
defineProperty("vd15_pressure_right", globalPropertyf("tu154ce/gauges/alt/vd15_pressure_right")) -- давление на ВД15 2П
defineProperty("vd15_pressure_eng", globalPropertyf("tu154ce/gauges/alt/vd15_pressure_eng")) -- давление на ВД15 БИ
defineProperty("uvid_pressure_knob", globalPropertyf("tu154ce/gauges/alt/uvid_pressure_knob"))  -- ручка установки давления

defineProperty("tks_lat_set", globalPropertyf("tu154ce/rotary/ovhd/tks_lat_set"))

-- failures
defineProperty("ppd_3_heat_fail", globalPropertyi("tu154ce/antiice/ppd_3_heat_fail"))

defineProperty("rel_ice_inlet_heat1", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat"))
defineProperty("rel_ice_inlet_heat2", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat2"))
defineProperty("rel_ice_inlet_heat3", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat3"))

defineProperty("rel_ice_pitot_heat1", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat1"))
defineProperty("rel_ice_pitot_heat2", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat2"))

defineProperty("rel_ice_surf_heat", globalPropertyi("sim/operation/failures/rel_ice_surf_heat"))
defineProperty("rel_ice_surf_heat2", globalPropertyi("sim/operation/failures/rel_ice_surf_heat2"))

defineProperty("rio_fail", globalPropertyi("tu154ce/failures/rio_fail"))

defineProperty("window_heat_fail_1", globalPropertyi("tu154ce/failures/window_heat_fail_1"))
defineProperty("window_heat_fail_2", globalPropertyi("tu154ce/failures/window_heat_fail_2"))
defineProperty("window_heat_fail_3", globalPropertyi("tu154ce/failures/window_heat_fail_3"))

defineProperty("apu_start_fail",globalPropertyi("tu154ce/failures/apu_start_fail")) -- отказ стартера
defineProperty("apu_runtime",globalPropertyf("tu154ce/failures/apu_runtime")) -- время наработки
defineProperty("apu_fail",globalPropertyi("tu154ce/failures/apu_fail")) -- отказ по наработке
defineProperty("apu_press_fail", globalPropertyi("tu154ce/failures/apu_press_fail")) -- отказ отбора воздуха от двигателя


defineProperty("brake_runtime_left", globalPropertyf("tu154ce/failures/brake_runtime_left")) -- Наработка тормозных колодок
defineProperty("brake_runtime_right", globalPropertyf("tu154ce/failures/brake_runtime_right")) -- Наработка тормозных колодок

defineProperty("rel_lbrakes", globalPropertyi("sim/operation/failures/rel_lbrakes")) -- Отказ тормозов
defineProperty("rel_rbrakes", globalPropertyi("sim/operation/failures/rel_rbrakes")) -- Отказ тормозов

defineProperty("ail_fail_left", globalPropertyi("tu154ce/failures/ail_fail_left")) -- 
defineProperty("ail_fail_right", globalPropertyi("tu154ce/failures/ail_fail_right")) -- 

defineProperty("fail_spoil_inn_left", globalPropertyi("tu154ce/failures/fail_spoil_inn_left")) -- 
defineProperty("fail_spoil_inn_right", globalPropertyi("tu154ce/failures/fail_spoil_inn_right")) -- 
defineProperty("fail_spoil_mid_left", globalPropertyi("tu154ce/failures/fail_spoil_mid_left")) -- 
defineProperty("fail_spoil_mid_right", globalPropertyi("tu154ce/failures/fail_spoil_mid_right")) -- 
defineProperty("fail_spoil_out_left", globalPropertyi("tu154ce/failures/fail_spoil_out_left")) -- 
defineProperty("fail_spoil_out_right", globalPropertyi("tu154ce/failures/fail_spoil_out_right")) -- 

defineProperty("rudder_fail", globalPropertyi("tu154ce/failures/rudder_fail")) -- 
defineProperty("elev_fail_left", globalPropertyi("tu154ce/failures/elev_fail_left")) -- 
defineProperty("elev_fail_right", globalPropertyi("tu154ce/failures/elev_fail_right")) -- 

defineProperty("rel_trim_rud", globalPropertyi("sim/operation/failures/rel_trim_rud")) -- 
defineProperty("rel_trim_ail", globalPropertyi("sim/operation/failures/rel_trim_ail")) -- 
defineProperty("rel_trim_elv", globalPropertyi("sim/operation/failures/rel_trim_elv")) -- 
defineProperty("trim_emerg_elv_fail", globalPropertyi("tu154ce/failures/trim_emerg_elv_fail")) --

defineProperty("flap_fail_left", globalPropertyi("tu154ce/failures/flap_fail_left")) -- 
defineProperty("flap_fail_right", globalPropertyi("tu154ce/failures/flap_fail_right")) -- 

defineProperty("stab_eng_fail", globalPropertyi("tu154ce/failures/stab_eng_fail")) -- 
defineProperty("stab_automatic_fail", globalPropertyi("tu154ce/failures/stab_automatic_fail")) -- 
defineProperty("slats_fail", globalPropertyi("tu154ce/failures/slats_fail")) -- 

defineProperty("retract1_fail", globalPropertyi("sim/operation/failures/rel_lagear1")) -- fail of retract gear
defineProperty("retract2_fail", globalPropertyi("sim/operation/failures/rel_lagear2")) -- fail of retract gear
defineProperty("retract3_fail", globalPropertyi("sim/operation/failures/rel_lagear3")) -- fail of retract gear
defineProperty("actuator_fail", globalPropertyi("sim/operation/failures/rel_gear_act")) -- actuator fail. bugs workaround

defineProperty("rel_genera0", globalPropertyi("sim/operation/failures/rel_genera0"))
defineProperty("rel_genera1", globalPropertyi("sim/operation/failures/rel_genera1"))
defineProperty("rel_genera2", globalPropertyi("sim/operation/failures/rel_genera2"))
defineProperty("apu_gen_fail", globalPropertyi("tu154ce/failures/apu_gen_fail"))

defineProperty("vu1_fail", globalPropertyi("tu154ce/failures/vu1_fail"))
defineProperty("vu2_fail", globalPropertyi("tu154ce/failures/vu2_fail"))
defineProperty("vu3_fail", globalPropertyi("tu154ce/failures/vu3_fail"))

defineProperty("tr1_fail", globalPropertyi("tu154ce/failures/tr1_fail"))
defineProperty("tr2_fail", globalPropertyi("tu154ce/failures/tr2_fail"))

defineProperty("pts250_1_fail", globalPropertyi("tu154ce/failures/pts250_1_fail"))
defineProperty("pts250_2_fail", globalPropertyi("tu154ce/failures/pts250_2_fail"))
defineProperty("inv115_fail", globalPropertyi("tu154ce/failures/inv115_fail"))

defineProperty("bat_1_fail", globalPropertyi("tu154ce/failures/bat_1_fail"))
defineProperty("bat_2_fail", globalPropertyi("tu154ce/failures/bat_2_fail"))
defineProperty("bat_3_fail", globalPropertyi("tu154ce/failures/bat_3_fail"))
defineProperty("bat_4_fail", globalPropertyi("tu154ce/failures/bat_4_fail"))

defineProperty("bat_1_kz", globalPropertyi("tu154ce/failures/bat_1_kz"))
defineProperty("bat_2_kz", globalPropertyi("tu154ce/failures/bat_2_kz"))
defineProperty("bat_3_kz", globalPropertyi("tu154ce/failures/bat_3_kz"))
defineProperty("bat_4_kz", globalPropertyi("tu154ce/failures/bat_4_kz"))

defineProperty("rel_engfai0", globalPropertyi("sim/operation/failures/rel_engfai0"))
defineProperty("rel_engfai1", globalPropertyi("sim/operation/failures/rel_engfai1"))
defineProperty("rel_engfai2", globalPropertyi("sim/operation/failures/rel_engfai2"))

defineProperty("engine_runtime_1", globalPropertyf("tu154ce/failures/engine_runtime_1"))
defineProperty("engine_runtime_2", globalPropertyf("tu154ce/failures/engine_runtime_2"))
defineProperty("engine_runtime_3", globalPropertyf("tu154ce/failures/engine_runtime_3"))

defineProperty("eng_fuel_pmp_fail_1", globalPropertyi("tu154ce/failures/eng_fuel_pmp_fail_1"))
defineProperty("eng_fuel_pmp_fail_2", globalPropertyi("tu154ce/failures/eng_fuel_pmp_fail_2"))
defineProperty("eng_fuel_pmp_fail_3", globalPropertyi("tu154ce/failures/eng_fuel_pmp_fail_3"))

defineProperty("engn_oil_qty_1", globalPropertyf("tu154ce/failures/engn_oil_qty_1")) 
defineProperty("engn_oil_qty_2", globalPropertyf("tu154ce/failures/engn_oil_qty_2")) 
defineProperty("engn_oil_qty_3", globalPropertyf("tu154ce/failures/engn_oil_qty_3"))

defineProperty("engn_oil_leak_1", globalPropertyi("tu154ce/failures/engn_oil_leak_1"))
defineProperty("engn_oil_leak_2", globalPropertyi("tu154ce/failures/engn_oil_leak_2"))
defineProperty("engn_oil_leak_3", globalPropertyi("tu154ce/failures/engn_oil_leak_3"))

defineProperty("rel_oilpmp0", globalPropertyi("sim/operation/failures/rel_oilpmp0"))
defineProperty("rel_oilpmp1", globalPropertyi("sim/operation/failures/rel_oilpmp1"))
defineProperty("rel_oilpmp2", globalPropertyi("sim/operation/failures/rel_oilpmp2"))

defineProperty("rel_eng_lo0", globalPropertyi("sim/operation/failures/rel_eng_lo0"))
defineProperty("rel_eng_lo1", globalPropertyi("sim/operation/failures/rel_eng_lo1"))
defineProperty("rel_eng_lo2", globalPropertyi("sim/operation/failures/rel_eng_lo2"))

defineProperty("rel_startr0", globalPropertyi("sim/operation/failures/rel_startr0"))
defineProperty("rel_startr1", globalPropertyi("sim/operation/failures/rel_startr1"))
defineProperty("rel_startr2", globalPropertyi("sim/operation/failures/rel_startr2"))

defineProperty("rel_ignitr0", globalPropertyi("sim/operation/failures/rel_ignitr0"))
defineProperty("rel_ignitr1", globalPropertyi("sim/operation/failures/rel_ignitr1"))
defineProperty("rel_ignitr2", globalPropertyi("sim/operation/failures/rel_ignitr2"))

defineProperty("rel_revers0", globalPropertyi("sim/operation/failures/rel_revers0"))
defineProperty("rel_revers2", globalPropertyi("sim/operation/failures/rel_revers2"))

defineProperty("fuel_pump_2l_fail", globalPropertyi("tu154ce/failures/fuel_pump_2l_fail"))
defineProperty("fuel_pump_2r_fail", globalPropertyi("tu154ce/failures/fuel_pump_2r_fail"))
defineProperty("fuel_pump_3l_fail", globalPropertyi("tu154ce/failures/fuel_pump_3l_fail"))
defineProperty("fuel_pump_3r_fail", globalPropertyi("tu154ce/failures/fuel_pump_3r_fail"))
defineProperty("fuel_pump_1_fail", globalPropertyi("tu154ce/failures/fuel_pump_1_fail"))
defineProperty("fuel_pump_4_fail", globalPropertyi("tu154ce/failures/fuel_pump_4_fail"))

defineProperty("fuel_auto_fail", globalPropertyi("tu154ce/failures/fuel_auto_fail"))
defineProperty("fuel_level_fail", globalPropertyi("tu154ce/failures/fuel_level_fail"))
defineProperty("fuel_porc_fail", globalPropertyi("tu154ce/failures/fuel_porc_fail"))

defineProperty("fuel_meter_2l_fail", globalPropertyi("tu154ce/failures/fuel_meter_2l_fail"))
defineProperty("fuel_meter_2r_fail", globalPropertyi("tu154ce/failures/fuel_meter_2r_fail"))
defineProperty("fuel_meter_3l_fail", globalPropertyi("tu154ce/failures/fuel_meter_3l_fail"))
defineProperty("fuel_meter_3r_fail", globalPropertyi("tu154ce/failures/fuel_meter_3r_fail"))
defineProperty("fuel_meter_1_fail", globalPropertyi("tu154ce/failures/fuel_meter_1_fail"))
defineProperty("fuel_meter_4_fail", globalPropertyi("tu154ce/failures/fuel_meter_4_fail"))
defineProperty("fuel_meter_summ", globalPropertyi("tu154ce/failures/fuel_meter_summ"))

defineProperty("fuel_flowmeter_1_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_1_fail"))
defineProperty("fuel_flowmeter_2_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_2_fail"))
defineProperty("fuel_flowmeter_3_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_3_fail"))

defineProperty("hydro_leak_1", globalPropertyi("tu154ce/failures/hydro_leak_1"))
defineProperty("hydro_leak_2", globalPropertyi("tu154ce/failures/hydro_leak_2"))
defineProperty("hydro_leak_3", globalPropertyi("tu154ce/failures/hydro_leak_3"))
defineProperty("hydro_leak_4", globalPropertyi("tu154ce/failures/hydro_leak_4"))

defineProperty("hydro_pump_fail_11", globalPropertyi("tu154ce/failures/hydro_pump_fail_11"))
defineProperty("hydro_pump_fail_12", globalPropertyi("tu154ce/failures/hydro_pump_fail_12"))
defineProperty("hydro_pump_fail_2", globalPropertyi("tu154ce/failures/hydro_pump_fail_2"))
defineProperty("hydro_pump_fail_3", globalPropertyi("tu154ce/failures/hydro_pump_fail_3"))

defineProperty("hydro_elec_fail_2", globalPropertyi("tu154ce/failures/hydro_elec_fail_2"))
defineProperty("hydro_elec_fail_3", globalPropertyi("tu154ce/failures/hydro_elec_fail_3"))

defineProperty("gs_qty_1", globalPropertyf("tu154ce/hydro/gs_qty_1")) -- остаток масла в системе
defineProperty("gs_qty_2", globalPropertyf("tu154ce/hydro/gs_qty_2")) -- остаток масла в системе
defineProperty("gs_qty_3", globalPropertyf("tu154ce/hydro/gs_qty_3")) -- остаток масла в системе


defineProperty("tth_left_fail", globalPropertyi("tu154ce/failures/tth_left_fail")) -- отказ турбохолодильника
defineProperty("tth_right_fail", globalPropertyi("tu154ce/failures/tth_right_fail")) -- отказ турбохолодильника

defineProperty("airbleed_1", globalPropertyi("tu154ce/failures/airbleed_1")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_2", globalPropertyi("tu154ce/failures/airbleed_2")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_3", globalPropertyi("tu154ce/failures/airbleed_3")) -- отказ отбора воздуха от двигателя

defineProperty("psvp_fail_left", globalPropertyi("tu154ce/failures/psvp_fail_left")) -- отказ ПСВП
defineProperty("psvp_fail_right", globalPropertyi("tu154ce/failures/psvp_fail_right")) -- отказ ПСВП
defineProperty("sard_valve_fail", globalPropertyi("tu154ce/failures/sard_valve_fail")) -- отказ выпускного клапана

defineProperty("lan_lamp_fail_FL", globalPropertyi("tu154ce/failures/lan_lamp_fail_FL")) -- отказ передней левой фары
defineProperty("lan_lamp_fail_FR", globalPropertyi("tu154ce/failures/lan_lamp_fail_FR")) -- отказ передней правой фары
defineProperty("lan_lamp_fail_WL", globalPropertyi("tu154ce/failures/lan_lamp_fail_WL")) -- отказ крыльевой левой фары
defineProperty("lan_lamp_fail_WR", globalPropertyi("tu154ce/failures/lan_lamp_fail_WR")) -- отказ крыльевой правой фары
defineProperty("rel_lites_nav", globalPropertyi("sim/operation/failures/rel_lites_nav")) -- отказ на огней
defineProperty("rel_lites_beac", globalPropertyi("sim/operation/failures/rel_lites_beac")) -- отказ на огней

defineProperty("main_alarm_fail", globalPropertyi("tu154ce/failures/main_alarm_fail")) -- отказ сирены
defineProperty("speaker_alarm_fail", globalPropertyi("tu154ce/failures/speaker_alarm_fail")) -- отказ сирены

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


defineProperty("diss_fail", globalPropertyi("tu154ce/failures/diss_fail")) --
defineProperty("nvu_fail", globalPropertyi("tu154ce/failures/nvu_fail")) --
defineProperty("radar_fail", globalPropertyi("tu154ce/failures/radar_fail")) --

defineProperty("ark1_fail", globalPropertyi("sim/operation/failures/rel_adf1"))
defineProperty("ark2_fail", globalPropertyi("sim/operation/failures/rel_adf2"))
defineProperty("nav1fail", globalPropertyi("tu154ce/failures/nav1_fail")) -- fail
defineProperty("nav2fail", globalPropertyi("tu154ce/failures/nav2_fail")) -- fail
defineProperty("dme1_fail", globalPropertyi("tu154ce/failures/dme1_fail")) -- fail
defineProperty("dme2_fail", globalPropertyi("tu154ce/failures/dme2_fail")) -- fail
defineProperty("mrp_fail", globalPropertyi("tu154ce/failures/mrp_fail"))

defineProperty("rsbn_fail", globalPropertyi("tu154ce/failures/rsbn_fail"))
defineProperty("taws_fail", globalPropertyi("tu154ce/failures/taws_fail"))

defineProperty("tks_ga1_fail", globalPropertyi("sim/operation/failures/rel_ss_dgy"))
defineProperty("tks_ga2_fail", globalPropertyi("sim/operation/failures/rel_cop_dgy"))
defineProperty("tks_km1_fail", globalPropertyi("tu154ce/failures/tks_km1_fail"))
defineProperty("tks_km2_fail", globalPropertyi("tu154ce/failures/tks_km2_fail"))
defineProperty("tks_bgmk1_fail", globalPropertyi("tu154ce/failures/tks_bgmk1_fail"))
defineProperty("tks_bgmk2_fail", globalPropertyi("tu154ce/failures/tks_bgmk2_fail"))

defineProperty("alt_1_fail", globalPropertyi("sim/operation/failures/rel_ss_alt"))
defineProperty("alt_2_fail", globalPropertyi("sim/operation/failures/rel_cop_alt"))
defineProperty("eup_fail", globalPropertyi("sim/operation/failures/rel_ss_tsi"))

defineProperty("acs1_fail", globalPropertyi("tu154ce/failures/acs1_fail"))
defineProperty("acs2_fail", globalPropertyi("tu154ce/failures/acs2_fail"))
defineProperty("acs3_fail", globalPropertyi("tu154ce/failures/acs3_fail"))
defineProperty("agr_fail", globalPropertyi("tu154ce/failures/agr_fail"))
defineProperty("bkk_fail", globalPropertyi("tu154ce/failures/bkk_fail"))

defineProperty("rel_pitot", globalPropertyi("tu154ce/failures/pitot1")) -- Pitot 1 - Blockage
defineProperty("rel_pitot2", globalPropertyi("tu154ce/failures/pitot2")) -- Pitot 2 - Blockage
defineProperty("static_fail_L", globalPropertyi("tu154ce/failures/static1"))  -- static fail
defineProperty("static_fail_R", globalPropertyi("tu154ce/failures/static2"))  -- static fail
defineProperty("svs_fail", globalPropertyi("sim/operation/failures/rel_adc_comp"))  -- static fail


defineProperty("mgv_fail", globalPropertyi("tu154ce/failures/mgv_fail")) -- отказ МГВ
defineProperty("pkp1fail", globalPropertyi("sim/operation/failures/rel_ss_ahz"))
defineProperty("pkp2fail", globalPropertyi("sim/operation/failures/rel_cop_ahz"))
defineProperty("rv1_fail", globalPropertyi("tu154ce/failures/rv1_fail"))  -- fail
defineProperty("rv2_fail", globalPropertyi("tu154ce/failures/rv2_fail"))  -- fail
defineProperty("uap_fail", globalPropertyi("tu154ce/failures/AOA")) -- fail
defineProperty("uap_warn_fail", globalPropertyi("sim/operation/failures/rel_stall_warn")) -- fail
defineProperty("uvid_fail", globalPropertyi("tu154ce/failures/uvid15_fail")) -- fail
defineProperty("vvi1_fail", globalPropertyi("sim/operation/failures/rel_ss_vvi")) -- fail
defineProperty("vvi2_fail", globalPropertyi("sim/operation/failures/rel_cop_vvi")) -- fail







local stateFileName = sasl.getAircraftPath () .. "/saved_state.ini"

local var_table = {}
	var_table["rusLang"] = get(hide_eng_objects)
	var_table["volume"] = get(sounds_voulme)
	var_table["starterTRQ"] = get(starter_torq) * 100
	var_table["hardwareCockpit"] = get(hardware_cockpit)
	var_table["tankone"] = get(fuel_q_1)
	var_table["tankfour"] = get(fuel_q_4)
	var_table["tanktwoL"] = get(fuel_q_2L)
	var_table["tanktwoR"] = get(fuel_q_2R)
	var_table["tankthreeL"] = get(fuel_q_3L)
	var_table["tankthreeR"] = get(fuel_q_3R)
	var_table["crewvo"] = get(enable_crew_vo)
	
	var_table["enableFailures"] = get(failures_enabled)
	var_table["useNWaxis"] = get(have_pedals)
	var_table["gnsInstaled"] = get(show_gns)
	var_table["RXPInstaled"] = get(show_RXP)
	
	var_table["pnpCrs1"] = get(pnp_1_crs)
	var_table["pnpCrs2"] = get(pnp_2_crs)
	 
	var_table["pnp1OBS"] = get(pnp_1_obs)
	var_table["pnp2OBS"] = get(pnp_2_obs)
	
	var_table["ark1ch"] = get(ark_1_channel)
	var_table["ark1hunL"] = get(ark_1_hundr_left)
	var_table["ark1tenL"] = get(ark_1_tens_left)
	var_table["ark1oneL"] = get(ark_1_ones_left)
	var_table["ark1hunR"] = get(ark_1_hundr_right)
	var_table["ark1tenR"] = get(ark_1_tens_right)
	var_table["ark1oneR"] = get(ark_1_ones_right)
	
	var_table["ark2ch"] = get(ark_2_channel)
	var_table["ark2hunL"] = get(ark_2_hundr_left)
	var_table["ark2tenL"] = get(ark_2_tens_left)
	var_table["ark2oneL"] = get(ark_2_ones_left)
	var_table["ark2hunR"] = get(ark_2_hundr_right)
	var_table["ark2tenR"] = get(ark_2_tens_right)
	var_table["ark2oneR"] = get(ark_2_ones_right)
	
	var_table["vdPressL"] = get(vd15_pressure_left)
	var_table["vdPressR"] = get(vd15_pressure_right)
	var_table["vdPressE"] = get(vd15_pressure_eng)
	var_table["uvidPress"] = get(uvid_pressure_knob)
	
	var_table["tksLatSet"] = get(tks_lat_set) * 1000
	
	
	
	var_table["ppd3HeatFail"] = get(ppd_3_heat_fail)
	
	var_table["engHeat1"] = get(rel_ice_inlet_heat1)
	var_table["engHeat2"] = get(rel_ice_inlet_heat2)
	var_table["engHeat3"] = get(rel_ice_inlet_heat3)
	
	var_table["pitotHeatFail1"] = get(rel_ice_pitot_heat1)
	var_table["pitotHeatFail2"] = get(rel_ice_pitot_heat2)
	
	var_table["wingHeatFail"] = get(rel_ice_surf_heat)
	var_table["slatHeatFail"] = get(rel_ice_surf_heat2)
	
	var_table["iceDetFail"] = get(rio_fail)
	
	var_table["windowHeatFail1"] = get(window_heat_fail_1)
	var_table["windowHeatFail2"] = get(window_heat_fail_2)
	var_table["windowHeatFail3"] = get(window_heat_fail_3)
	
	var_table["apuStartFail"] = get(apu_start_fail)
	var_table["apuRuntime"] = get(apu_runtime)
	var_table["apuFail"] = get(apu_fail)
	var_table["apuAirFail"] = get(apu_press_fail)
	
	var_table["brakeRunLeft"] = get(brake_runtime_left)
	var_table["brakeRunRight"] = get(brake_runtime_right)
	
	var_table["brakeFailLeft"] = get(rel_lbrakes)
	var_table["brakeFailRight"] = get(rel_rbrakes)
	
	var_table["ailFailLeft"] = get(ail_fail_left)
	var_table["ailFailRight"] = get(ail_fail_right)
	
	var_table["spoilInnLeft"] = get(fail_spoil_inn_left)
	var_table["spoilInnRight"] = get(fail_spoil_inn_right)
	var_table["spoilMidLeft"] = get(fail_spoil_mid_left)
	var_table["spoilMidRight"] = get(fail_spoil_mid_right)
	var_table["spoilOutLeft"] = get(fail_spoil_out_left)
	var_table["spoilOutRight"] = get(fail_spoil_out_right)
	
	var_table["rudderFail"] = get(rudder_fail)
	var_table["elevFailLeft"] = get(elev_fail_left)
	var_table["elevFailRight"] = get(elev_fail_right)
		
	var_table["rudtrimFail"] = get(rel_trim_rud)
	var_table["ailTrimFail"] = get(rel_trim_ail)
	var_table["elevTrimFail"] = get(rel_trim_elv)
	var_table["elevEmergTraimFail"] = get(trim_emerg_elv_fail)
	
	var_table["flapFailLeft"] = get(flap_fail_left)
	var_table["flapFailRight"] = get(flap_fail_right)
	
	var_table["stabEngFail"] = get(stab_eng_fail)
	var_table["stabAutoFail"] = get(stab_automatic_fail)
	var_table["slatFail"] = get(slats_fail)
			
	var_table["gearRetrFail1"] = get(retract1_fail)
	var_table["gearRetrFail2"] = get(retract2_fail)
	var_table["gearRetrFail3"] = get(retract3_fail)
	var_table["gearActFail"] = get(actuator_fail)
	
	var_table["gen1Fail"] = get(rel_genera0)
	var_table["gen2Fail"] = get(rel_genera1)
	var_table["gen3Fail"] = get(rel_genera2)
	var_table["genApuFail"] = get(apu_gen_fail)
	
	var_table["vu1Fail"] = get(vu1_fail)
	var_table["vu2Fail"] = get(vu2_fail)
	var_table["vu3Fail"] = get(vu3_fail)
	
	var_table["tr1Fail"] = get(tr1_fail)
	var_table["tr2Fail"] = get(tr2_fail)
	
	var_table["pts1Fail"] = get(pts250_1_fail)
	var_table["pts2Fail"] = get(pts250_2_fail)
	var_table["inv115Fail"] = get(inv115_fail)
	
	var_table["bat1Fail"] = get(bat_1_fail)
	var_table["bat2Fail"] = get(bat_2_fail)
	var_table["bat3Fail"] = get(bat_3_fail)
	var_table["bat4Fail"] = get(bat_4_fail)
	
	var_table["bat1KZ"] = get(bat_1_kz)
	var_table["bat2KZ"] = get(bat_2_kz)
	var_table["bat3KZ"] = get(bat_3_kz)
	var_table["bat4KZ"] = get(bat_4_kz)
	
	var_table["engFail1"] = get(rel_engfai0)
	var_table["engFail2"] = get(rel_engfai1)
	var_table["engFail3"] = get(rel_engfai2)
	
	var_table["engRunTime1"] = get(engine_runtime_1)
	var_table["engRunTime2"] = get(engine_runtime_2)
	var_table["engRunTime3"] = get(engine_runtime_3)
	
	var_table["engFuelPumpFail1"] = get(eng_fuel_pmp_fail_1)
	var_table["engFuelPumpFail2"] = get(eng_fuel_pmp_fail_2)
	var_table["engFuelPumpFail3"] = get(eng_fuel_pmp_fail_3)
	
	var_table["engOilQty1"] = get(engn_oil_qty_1)
	var_table["engOilQty2"] = get(engn_oil_qty_2)
	var_table["engOilQty3"] = get(engn_oil_qty_3)
	
	var_table["engOilLeak1"] = get(engn_oil_leak_1)
	var_table["engOilLeak2"] = get(engn_oil_leak_2)
	var_table["engOilLeak3"] = get(engn_oil_leak_3)
	
	var_table["engOilPumpFail1"] = get(rel_oilpmp0)
	var_table["engOilPumpFail2"] = get(rel_oilpmp1)
	var_table["engOilPumpFail3"] = get(rel_oilpmp2)
	
	var_table["engFuelFilterFail1"] = get(rel_eng_lo0)
	var_table["engFuelFilterFail2"] = get(rel_eng_lo1)
	var_table["engFuelFilterFail3"] = get(rel_eng_lo2)
	
	var_table["engStarterFail1"] = get(rel_startr0)
	var_table["engStarterFail2"] = get(rel_startr1)
	var_table["engStarterFail3"] = get(rel_startr2)
	
	var_table["engIgnitFail1"] = get(rel_ignitr0)
	var_table["engIgnitFail2"] = get(rel_ignitr1)
	var_table["engIgnitFail3"] = get(rel_ignitr2)
	
	var_table["engReversFail1"] = get(rel_revers0)
	var_table["engReversFail3"] = get(rel_revers2)

	var_table["fuelPumpFail2L"] = get(fuel_pump_2l_fail)
	var_table["fuelPumpFail2R"] = get(fuel_pump_2r_fail)
	var_table["fuelPumpFail3L"] = get(fuel_pump_3l_fail)
	var_table["fuelPumpFail3R"] = get(fuel_pump_3r_fail)
	var_table["fuelPumpFail1"] = get(fuel_pump_1_fail)
	var_table["fuelPumpFail4"] = get(fuel_pump_4_fail)
	
	var_table["fuelAutoFail"] = get(fuel_auto_fail)
	var_table["fuelLvlFail"] = get(fuel_level_fail)
	var_table["fuelPorcFail"] = get(fuel_porc_fail)
	
	var_table["fuelMeterFail2L"] = get(fuel_meter_2l_fail)
	var_table["fuelMeterFail2R"] = get(fuel_meter_2r_fail)
	var_table["fuelMeterFail3L"] = get(fuel_meter_3l_fail)
	var_table["fuelMeterFail3R"] = get(fuel_meter_3r_fail)
	var_table["fuelMeterFail1"] = get(fuel_meter_1_fail)
	var_table["fuelMeterFail4"] = get(fuel_meter_4_fail)
	var_table["fuelMeterFailSumm"] = get(fuel_meter_summ)
	
	var_table["FF1fail"] = get(fuel_flowmeter_1_fail)
	var_table["FF2fail"] = get(fuel_flowmeter_2_fail)
	var_table["FF3fail"] = get(fuel_flowmeter_3_fail)
	
	var_table["hydroLeak1"] = get(hydro_leak_1)
	var_table["hydroLeak2"] = get(hydro_leak_2)
	var_table["hydroLeak3"] = get(hydro_leak_3)
	var_table["hydroLeak4"] = get(hydro_leak_4)
	
	var_table["hydroPmpFail11"] = get(hydro_pump_fail_11)
	var_table["hydroPmpFail12"] = get(hydro_pump_fail_12)
	var_table["hydroPmpFail2"] = get(hydro_pump_fail_2)
	var_table["hydroPmpFail3"] = get(hydro_pump_fail_3)
	
	var_table["HydroElecFail2"] = get(hydro_elec_fail_2)
	var_table["HydroElecFail3"] = get(hydro_elec_fail_3)
	
	var_table["hydroQty1"] = get(gs_qty_1)
	var_table["hydroQty2"] = get(gs_qty_2)
	var_table["hydroQty3"] = get(gs_qty_3)

	var_table["tthLeftFail"] = get(tth_left_fail)
	var_table["tthRightFail"] = get(tth_right_fail)
	
	var_table["airbleedFail1"] = get(airbleed_1)
	var_table["airbleedFail2"] = get(airbleed_2)
	var_table["airbleedFail3"] = get(airbleed_3)
	
	var_table["psvpFailL"] = get(psvp_fail_left)
	var_table["psvpFailR"] = get(psvp_fail_right)
	var_table["sardValveFail"] = get(sard_valve_fail)
	
	var_table["lanLampFLFail"] = get(lan_lamp_fail_FL)
	var_table["lanLampFRFail"] = get(lan_lamp_fail_FR)
	var_table["lanLampWLFail"] = get(lan_lamp_fail_WL)
	var_table["lanLampWRFail"] = get(lan_lamp_fail_WR)
	var_table["navLampFail"] = get(rel_lites_nav)
	var_table["beacLampFail"] = get(rel_lites_beac)
		
	var_table["mainAlarmFail"] = get(main_alarm_fail)
	var_table["spekAlarmFail"] = get(speaker_alarm_fail)
		
	var_table["absuRArollFail"] = get(absu_ra56_roll_fail)
	var_table["absuRApitchFail"] = get(absu_ra56_pitch_fail)
	var_table["absuRAyawFail"] = get(absu_ra56_yaw_fail)
	
	var_table["absuAT1Fail"] = get(absu_at1_fail)
	var_table["absuAT2Fail"] = get(absu_at2_fail)
	
	
	var_table["absuDampRollFail"] = get(absu_damp_roll_fail)
	var_table["absuDampPitchFail"] = get(absu_damp_pitch_fail)
	var_table["absuDampYawFail"] = get(absu_damp_yaw_fail)
	var_table["absuContrRollFail"] = get(absu_contr_roll_fail)
	var_table["absuContrPitchFail"] = get(absu_contr_pitch_fail)
	var_table["absuCalcTogaFail"] = get(absu_calc_toga_fail)
	var_table["absuCalcRollFail"] = get(absu_calc_roll_fail)
	var_table["absuCalcPitchFail"] = get(absu_calc_pitch_fail)
	
	
	var_table["dissFail"] = get(diss_fail)
	var_table["nvuFail"] = get(nvu_fail)
	var_table["radarFail"] = get(radar_fail)

	var_table["ark1fail"] = get(ark1_fail)
	var_table["ark2fail"] = get(ark2_fail)
	var_table["nav1fail"] = get(nav1fail)
	var_table["nav2fail"] = get(nav2fail)
	var_table["dme1Fail"] = get(dme1_fail)
	var_table["dme2Fail"] = get(dme2_fail)
	var_table["mrpFail"] = get(mrp_fail)

	var_table["tksGaFail1"] = get(tks_ga1_fail)
	var_table["tksGaFail2"] = get(tks_ga2_fail)
	var_table["tksKMFail1"] = get(tks_km1_fail)
	var_table["tksKMFail2"] = get(tks_km2_fail)
	var_table["tksBgmkFail1"] = get(tks_bgmk1_fail)
	var_table["tksBgmkFail2"] = get(tks_bgmk2_fail)
	
	var_table["rsbnFail"] = get(rsbn_fail)
	var_table["tawsFail"] = get(taws_fail)
		
	var_table["alt1fail"] = get(alt_1_fail)
	var_table["alt2fail"] = get(alt_2_fail)
	var_table["eupFail"] = get(eup_fail)
	
	var_table["acs1fail"] = get(acs1_fail)
	var_table["acs2fail"] = get(acs2_fail)
	var_table["acs3fail"] = get(acs3_fail)
	var_table["agrFail"] = get(agr_fail)
	var_table["bkkFail"] = get(bkk_fail)
	
	
	var_table["pitot1Fail"] = get(rel_pitot)
	var_table["pitot2Fail"] = get(rel_pitot2)
	var_table["static1Fail"] = get(static_fail_L)
	var_table["static2Fail"] = get(static_fail_R)
	var_table["svsFail"] = get(svs_fail)
	
	
	
	var_table["mgvFail"] = get(mgv_fail)
	var_table["pkp1fail"] = get(pkp1fail)
	var_table["pkp2fail"] = get(pkp2fail)
	var_table["rv1fail"] = get(rv1_fail)
	var_table["rv2fail"] = get(rv2_fail)
	var_table["uapFail"] = get(uap_fail)
	var_table["uapWarnFail"] = get(uap_warn_fail)
	var_table["uvid15fail"] = get(uvid_fail)
	var_table["vvi1fail"] = get(vvi1_fail)
	var_table["vvi2fail"] = get(vvi2_fail)
	
	

local function write_file()

	local savefile = io.open(stateFileName, "w") -- open file for rewriting
	
	if savefile then
		savefile:write("rusLang="..get(hide_eng_objects).."\n")
		savefile:write("volume="..get(sounds_voulme).."\n")
		savefile:write("starterTRQ="..math.floor(get(starter_torq)*100) .."\n")
		savefile:write("crewvo="..get(enable_crew_vo).."\n")
		savefile:write("hardwareCockpit="..get(hardware_cockpit).."\n")
		savefile:write("tankone="..get(fuel_q_1).."\n")
		savefile:write("tankfour="..get(fuel_q_4).."\n")
		savefile:write("tanktwoL="..get(fuel_q_2L).."\n")
		savefile:write("tanktwoR="..get(fuel_q_2R).."\n")
		savefile:write("tankthreeL="..get(fuel_q_3L).."\n")
		savefile:write("tankthreeR="..get(fuel_q_3R).."\n")
		
		savefile:write("enableFailures="..get(failures_enabled).."\n")
		savefile:write("useNWaxis="..get(have_pedals).."\n")
		savefile:write("gnsInstaled="..get(show_gns).."\n")
		savefile:write("RXPInstaled="..get(show_RXP).."\n")
		
		savefile:write("pnpCrs1="..get(pnp_1_crs) .."\n")
		savefile:write("pnpCrs2="..get(pnp_2_crs) .."\n")
		
		savefile:write("pnp1OBS="..get(pnp_1_obs) .."\n")
		savefile:write("pnp2OBS="..get(pnp_2_obs) .."\n")
		
		savefile:write("ark1ch="..get(ark_1_channel).."\n")
		savefile:write("ark1hunL="..get(ark_1_hundr_left).."\n")
		savefile:write("ark1tenL="..get(ark_1_tens_left).."\n")
		savefile:write("ark1oneL="..get(ark_1_ones_left).."\n")
		savefile:write("ark1hunR="..get(ark_1_hundr_right).."\n")
		savefile:write("ark1tenR="..get(ark_1_tens_right).."\n")
		savefile:write("ark1oneR="..get(ark_1_ones_right).."\n")
		
		savefile:write("ark2ch="..get(ark_2_channel).."\n")
		savefile:write("ark2hunL="..get(ark_2_hundr_left).."\n")
		savefile:write("ark2tenL="..get(ark_2_tens_left).."\n")
		savefile:write("ark2oneL="..get(ark_2_ones_left).."\n")
		savefile:write("ark2hunR="..get(ark_2_hundr_right).."\n")
		savefile:write("ark2tenR="..get(ark_2_tens_right).."\n")
		savefile:write("ark2oneR="..get(ark_2_ones_right).."\n")
		
		savefile:write("vdPressL="..get(vd15_pressure_left).."\n")
		savefile:write("vdPressR="..get(vd15_pressure_right).."\n")
		savefile:write("vdPressE="..get(vd15_pressure_eng).."\n")
		savefile:write("uvidPress="..get(uvid_pressure_knob).."\n")
		
		savefile:write("tksLatSet="..get(tks_lat_set)*1000 .."\n")
		
		
		savefile:write("ppd3HeatFail="..get(ppd_3_heat_fail).."\n")
		
		savefile:write("engHeat1="..get(rel_ice_inlet_heat1).."\n")
		savefile:write("engHeat2="..get(rel_ice_inlet_heat2).."\n")
		savefile:write("engHeat3="..get(rel_ice_inlet_heat3).."\n")
		
		savefile:write("pitotHeatFail1="..get(rel_ice_pitot_heat1).."\n")
		savefile:write("pitotHeatFail2="..get(rel_ice_pitot_heat2).."\n")
		
		savefile:write("wingHeatFail="..get(rel_ice_surf_heat).."\n")
		savefile:write("slatHeatFail="..get(rel_ice_surf_heat2).."\n")
		
		savefile:write("iceDetFail="..get(rio_fail).."\n")
		
		savefile:write("windowHeatFail1="..get(window_heat_fail_1).."\n")
		savefile:write("windowHeatFail2="..get(window_heat_fail_2).."\n")
		savefile:write("windowHeatFail3="..get(window_heat_fail_3).."\n")
		
		savefile:write("apuStartFail="..get(apu_start_fail).."\n")
		savefile:write("apuRuntime="..get(apu_runtime).."\n")
		savefile:write("apuFail="..get(apu_fail).."\n")
		savefile:write("apuAirFail="..get(apu_press_fail).."\n")
		
		savefile:write("brakeRunLeft="..get(brake_runtime_left)*1000 .."\n")
		savefile:write("brakeRunRight="..get(brake_runtime_right)*1000 .."\n")
		
		savefile:write("brakeFailLeft="..get(rel_lbrakes).."\n")
		savefile:write("brakeFailRight="..get(rel_rbrakes).."\n")
		
		savefile:write("ailFailLeft="..get(ail_fail_left).."\n")
		savefile:write("ailFailRight="..get(ail_fail_right).."\n")
		
		savefile:write("spoilInnLeft="..get(fail_spoil_inn_left).."\n")
		savefile:write("spoilInnRight="..get(fail_spoil_inn_right).."\n")
		savefile:write("spoilMidLeft="..get(fail_spoil_mid_left).."\n")
		savefile:write("spoilMidRight="..get(fail_spoil_mid_right).."\n")
		savefile:write("spoilOutLeft="..get(fail_spoil_out_left).."\n")
		savefile:write("spoilOutRight="..get(fail_spoil_out_right).."\n")
		
		savefile:write("rudderFail="..get(rudder_fail).."\n")
		savefile:write("elevFailLeft="..get(elev_fail_left).."\n")
		savefile:write("elevFailRight="..get(elev_fail_right).."\n")
		
		savefile:write("rudtrimFail="..get(rel_trim_rud).."\n")
		savefile:write("ailTrimFail="..get(rel_trim_ail).."\n")
		savefile:write("elevTrimFail="..get(rel_trim_elv).."\n")
		savefile:write("elevEmergTraimFail="..get(trim_emerg_elv_fail).."\n")
		
		savefile:write("flapFailLeft="..get(flap_fail_left).."\n")
		savefile:write("flapFailRight="..get(flap_fail_right).."\n")
		
		savefile:write("stabEngFail="..get(stab_eng_fail).."\n")
		savefile:write("stabAutoFail="..get(stab_automatic_fail).."\n")
		savefile:write("slatFail="..get(slats_fail).."\n")
		
		savefile:write("gearRetrFail1="..get(retract1_fail).."\n")
		savefile:write("gearRetrFail2="..get(retract2_fail).."\n")
		savefile:write("gearRetrFail3="..get(retract3_fail).."\n")
		savefile:write("gearActFail="..get(actuator_fail).."\n")
		
		savefile:write("gen1Fail="..get(rel_genera0).."\n")
		savefile:write("gen2Fail="..get(rel_genera1).."\n")
		savefile:write("gen3Fail="..get(rel_genera2).."\n")
		savefile:write("genApuFail="..get(apu_gen_fail).."\n")
		
		savefile:write("vu1Fail="..get(vu1_fail).."\n")
		savefile:write("vu2Fail="..get(vu2_fail).."\n")
		savefile:write("vu3Fail="..get(vu3_fail).."\n")
		
		savefile:write("tr1Fail="..get(tr1_fail).."\n")
		savefile:write("tr2Fail="..get(tr2_fail).."\n")
		
		savefile:write("pts1Fail="..get(pts250_1_fail).."\n")
		savefile:write("pts2Fail="..get(pts250_2_fail).."\n")
		savefile:write("inv115Fail="..get(inv115_fail).."\n")
		
		savefile:write("bat1Fail="..get(bat_1_fail).."\n")
		savefile:write("bat2Fail="..get(bat_2_fail).."\n")
		savefile:write("bat3Fail="..get(bat_3_fail).."\n")
		savefile:write("bat4Fail="..get(bat_4_fail).."\n")
		
		savefile:write("bat1KZ="..get(bat_1_kz).."\n")
		savefile:write("bat2KZ="..get(bat_2_kz).."\n")
		savefile:write("bat3KZ="..get(bat_3_kz).."\n")
		savefile:write("bat4KZ="..get(bat_4_kz).."\n")
		
		savefile:write("engFail1="..get(rel_engfai0).."\n")
		savefile:write("engFail2="..get(rel_engfai1).."\n")
		savefile:write("engFail3="..get(rel_engfai2).."\n")
		
		savefile:write("engRunTime1="..get(engine_runtime_1).."\n")
		savefile:write("engRunTime2="..get(engine_runtime_2).."\n")
		savefile:write("engRunTime3="..get(engine_runtime_3).."\n")
		
		savefile:write("engFuelPumpFail1="..get(eng_fuel_pmp_fail_1).."\n")
		savefile:write("engFuelPumpFail2="..get(eng_fuel_pmp_fail_2).."\n")
		savefile:write("engFuelPumpFail3="..get(eng_fuel_pmp_fail_3).."\n")
		
		savefile:write("engOilQty1="..get(engn_oil_qty_1).."\n")
		savefile:write("engOilQty2="..get(engn_oil_qty_2).."\n")
		savefile:write("engOilQty3="..get(engn_oil_qty_3).."\n")
		
		savefile:write("engOilLeak1="..get(engn_oil_leak_1).."\n")
		savefile:write("engOilLeak2="..get(engn_oil_leak_2).."\n")
		savefile:write("engOilLeak3="..get(engn_oil_leak_3).."\n")
		
		savefile:write("engOilPumpFail1="..get(rel_oilpmp0).."\n")
		savefile:write("engOilPumpFail2="..get(rel_oilpmp1).."\n")
		savefile:write("engOilPumpFail3="..get(rel_oilpmp2).."\n")
		
		savefile:write("engFuelFilterFail1="..get(rel_eng_lo0).."\n")
		savefile:write("engFuelFilterFail2="..get(rel_eng_lo1).."\n")
		savefile:write("engFuelFilterFail3="..get(rel_eng_lo2).."\n")
		
		savefile:write("engStarterFail1="..get(rel_startr0).."\n")
		savefile:write("engStarterFail2="..get(rel_startr1).."\n")
		savefile:write("engStarterFail3="..get(rel_startr2).."\n")
		
		savefile:write("engIgnitFail1="..get(rel_ignitr0).."\n")
		savefile:write("engIgnitFail2="..get(rel_ignitr1).."\n")
		savefile:write("engIgnitFail3="..get(rel_ignitr2).."\n")
		
		savefile:write("engReversFail1="..get(rel_revers0).."\n")
		savefile:write("engReversFail3="..get(rel_revers2).."\n")
	
		savefile:write("fuelPumpFail2L="..get(fuel_pump_2l_fail).."\n")
		savefile:write("fuelPumpFail2R="..get(fuel_pump_2r_fail).."\n")
		savefile:write("fuelPumpFail3L="..get(fuel_pump_3l_fail).."\n")
		savefile:write("fuelPumpFail3R="..get(fuel_pump_3r_fail).."\n")
		savefile:write("fuelPumpFail1="..get(fuel_pump_1_fail).."\n")
		savefile:write("fuelPumpFail4="..get(fuel_pump_4_fail).."\n")
			
		savefile:write("fuelAutoFail="..get(fuel_auto_fail).."\n")
		savefile:write("fuelLvlFail="..get(fuel_level_fail).."\n")
		savefile:write("fuelPorcFail="..get(fuel_porc_fail).."\n")
		
		savefile:write("fuelMeterFail2L="..get(fuel_meter_2l_fail).."\n")
		savefile:write("fuelMeterFail2R="..get(fuel_meter_2r_fail).."\n")
		savefile:write("fuelMeterFail3L="..get(fuel_meter_3l_fail).."\n")
		savefile:write("fuelMeterFail3R="..get(fuel_meter_3r_fail).."\n")
		savefile:write("fuelMeterFail1="..get(fuel_meter_1_fail).."\n")
		savefile:write("fuelMeterFail4="..get(fuel_meter_4_fail).."\n")
		savefile:write("fuelMeterFailSumm="..get(fuel_meter_summ).."\n")
		
		savefile:write("FF1fail="..get(fuel_flowmeter_1_fail).."\n")
		savefile:write("FF2fail="..get(fuel_flowmeter_2_fail).."\n")
		savefile:write("FF3fail="..get(fuel_flowmeter_3_fail).."\n")
	
		savefile:write("hydroLeak1="..get(hydro_leak_1).."\n")
		savefile:write("hydroLeak2="..get(hydro_leak_2).."\n")
		savefile:write("hydroLeak3="..get(hydro_leak_3).."\n")
		savefile:write("hydroLeak4="..get(hydro_leak_4).."\n")
		
		savefile:write("hydroPmpFail11="..get(hydro_pump_fail_11).."\n")
		savefile:write("hydroPmpFail12="..get(hydro_pump_fail_12).."\n")
		savefile:write("hydroPmpFail2="..get(hydro_pump_fail_2).."\n")
		savefile:write("hydroPmpFail3="..get(hydro_pump_fail_3).."\n")
		
		savefile:write("HydroElecFail2="..get(hydro_elec_fail_2).."\n")
		savefile:write("HydroElecFail3="..get(hydro_elec_fail_3).."\n")

		savefile:write("hydroQty1="..get(gs_qty_1)*100000 .."\n")
		savefile:write("hydroQty2="..get(gs_qty_2)*100000 .."\n")
		savefile:write("hydroQty3="..get(gs_qty_3)*100000 .."\n")

		savefile:write("tthLeftFail="..get(tth_left_fail).."\n")
		savefile:write("tthRightFail="..get(tth_right_fail).."\n")

		savefile:write("airbleedFail1="..get(airbleed_1).."\n")
		savefile:write("airbleedFail2="..get(airbleed_2).."\n")
		savefile:write("airbleedFail3="..get(airbleed_3).."\n")
		
		savefile:write("psvpFailL="..get(psvp_fail_left).."\n")
		savefile:write("psvpFailR="..get(psvp_fail_right).."\n")
		savefile:write("sardValveFail="..get(sard_valve_fail).."\n")
		
		savefile:write("lanLampFLFail="..get(lan_lamp_fail_FL).."\n")
		savefile:write("lanLampFRFail="..get(lan_lamp_fail_FR).."\n")
		savefile:write("lanLampWLFail="..get(lan_lamp_fail_WL).."\n")
		savefile:write("lanLampWRFail="..get(lan_lamp_fail_WR).."\n")
		savefile:write("navLampFail="..get(rel_lites_nav).."\n")
		savefile:write("beacLampFail="..get(rel_lites_beac).."\n")
		
		savefile:write("mainAlarmFail="..get(main_alarm_fail).."\n")
		savefile:write("spekAlarmFail="..get(speaker_alarm_fail).."\n")
		
		savefile:write("absuRArollFail="..get(absu_ra56_roll_fail).."\n")
		savefile:write("absuRApitchFail="..get(absu_ra56_pitch_fail).."\n")
		savefile:write("absuRAyawFail="..get(absu_ra56_yaw_fail).."\n")
		
		savefile:write("absuAT1Fail="..get(absu_at1_fail).."\n")
		savefile:write("absuAT2Fail="..get(absu_at2_fail).."\n")
		
		savefile:write("absuDampRollFail="..get(absu_damp_roll_fail).."\n")
		savefile:write("absuDampPitchFail="..get(absu_damp_pitch_fail).."\n")
		savefile:write("absuDampYawFail="..get(absu_damp_yaw_fail).."\n")
		savefile:write("absuContrRollFail="..get(absu_contr_roll_fail).."\n")
		savefile:write("absuContrPitchFail="..get(absu_contr_pitch_fail).."\n")
		savefile:write("absuCalcTogaFail="..get(absu_calc_toga_fail).."\n")
		savefile:write("absuCalcRollFail="..get(absu_calc_roll_fail).."\n")
		savefile:write("absuCalcPitchFail="..get(absu_calc_pitch_fail).."\n")

	
		savefile:write("dissFail="..get(diss_fail).."\n")
		savefile:write("nvuFail="..get(nvu_fail).."\n")
		savefile:write("radarFail="..get(radar_fail).."\n")
		
		savefile:write("ark1fail="..get(ark1_fail).."\n")
		savefile:write("ark2fail="..get(ark2_fail).."\n")
		savefile:write("nav1fail="..get(nav1fail).."\n")
		savefile:write("nav2fail="..get(nav2fail).."\n")
		savefile:write("dme1Fail="..get(dme1_fail).."\n")
		savefile:write("dme2Fail="..get(dme2_fail).."\n")
		savefile:write("mrpFail="..get(mrp_fail).."\n")
		
		savefile:write("tksGaFail1="..get(tks_ga1_fail).."\n")
		savefile:write("tksGaFail2="..get(tks_ga2_fail).."\n")
		savefile:write("tksKMFail1="..get(tks_km1_fail).."\n")
		savefile:write("tksKMFail2="..get(tks_km2_fail).."\n")
		savefile:write("tksBgmkFail1="..get(tks_bgmk1_fail).."\n")
		savefile:write("tksBgmkFail2="..get(tks_bgmk2_fail).."\n")
		
		savefile:write("rsbnFail="..get(rsbn_fail).."\n")
		savefile:write("tawsFail="..get(taws_fail).."\n")

		savefile:write("alt1fail="..get(alt_1_fail).."\n")
		savefile:write("alt2fail="..get(alt_2_fail).."\n")
		savefile:write("eupFail="..get(eup_fail).."\n")
		
		savefile:write("acs1fail="..get(acs1_fail).."\n")
		savefile:write("acs2fail="..get(acs2_fail).."\n")
		savefile:write("acs3fail="..get(acs3_fail).."\n")
		savefile:write("agrFail="..get(agr_fail).."\n")
		savefile:write("bkkFail="..get(bkk_fail).."\n")
		
		
		savefile:write("pitot1Fail="..get(rel_pitot).."\n")
		savefile:write("pitot2Fail="..get(rel_pitot2).."\n")
		savefile:write("static1Fail="..get(static_fail_L).."\n")
		savefile:write("static2Fail="..get(static_fail_R).."\n")
		savefile:write("svsFail="..get(svs_fail).."\n")
		
		
		
		savefile:write("mgvFail="..get(mgv_fail).."\n")
		savefile:write("pkp1fail="..get(pkp1fail).."\n")
		savefile:write("pkp2fail="..get(pkp2fail).."\n")
		savefile:write("rv1fail="..get(rv1_fail).."\n")
		savefile:write("rv2fail="..get(rv2_fail).."\n")
		savefile:write("uapFail="..get(uap_fail).."\n")
		savefile:write("uapWarnFail="..get(uap_warn_fail).."\n")
		savefile:write("uvid15fail="..get(uvid_fail).."\n")
		savefile:write("vvi1fail="..get(vvi1_fail).."\n")
		savefile:write("vvi2fail="..get(vvi2_fail).."\n")
		
		
		savefile:close()
		--print("write OK")
	else
		print("write state fail")
	end
	
	

	return true

end


local function read_file()
	
	local savefile = io.open(stateFileName, "r") -- open file for reading
	
	if savefile then
		local lines = savefile:read("*a")
		for k, v in string.gmatch(lines, "(%w+)=(%d+)") do
			var_table[k] = tonumber(v)
			--print(k, "  ", v)
		end
		if var_table["rusLang"] then 
			set(hide_eng_objects, var_table["rusLang"]) 
			set(hide_rus_objects, 1-var_table["rusLang"])
		end
		
		if var_table["volume"] then set(sounds_voulme, var_table["volume"]) end
		if var_table["starterTRQ"] then set(starter_torq, var_table["starterTRQ"]/100) end
		
		if var_table["crewvo"] then set(enable_crew_vo, var_table["crewvo"]) end
		if var_table["hardwareCockpit"] then set(hardware_cockpit, var_table["hardwareCockpit"]) end
		
		if var_table["tankone"] then set(fuel_q_1, var_table["tankone"]) end
		if var_table["tankfour"] then set(fuel_q_4, var_table["tankfour"]) end
		if var_table["tanktwoL"] then set(fuel_q_2L, var_table["tanktwoL"]) end
		if var_table["tanktwoR"] then set(fuel_q_2R, var_table["tanktwoR"]) end
		if var_table["tankthreeL"] then set(fuel_q_3L, var_table["tankthreeL"]) end
		if var_table["tankthreeR"] then set(fuel_q_3R, var_table["tankthreeR"]) end
		
		if var_table["enableFailures"] then set(failures_enabled, var_table["enableFailures"]) end
		if var_table["useNWaxis"] then set(have_pedals, var_table["useNWaxis"]) end
		if var_table["gnsInstaled"] then set(show_gns, var_table["gnsInstaled"]) end
		if var_table["RXPInstaled"] then set(show_RXP, var_table["RXPInstaled"]) end
		
		if var_table["pnpCrs1"] then set(pnp_1_crs, var_table["pnpCrs1"]) end
		if var_table["pnpCrs2"] then set(pnp_2_crs, var_table["pnpCrs2"]) end
		
		if var_table["pnp1OBS"] then set(pnp_1_obs, var_table["pnp1OBS"]) end
		if var_table["pnp2OBS"] then set(pnp_2_obs, var_table["pnp2OBS"]) end
		
		if var_table["ark1ch"] then set(ark_1_channel, var_table["ark1ch"]) end
		if var_table["ark1hunL"] then set(ark_1_hundr_left, var_table["ark1hunL"]) end
		if var_table["ark1tenL"] then set(ark_1_tens_left, var_table["ark1tenL"]) end
		if var_table["ark1oneL"] then set(ark_1_ones_left, var_table["ark1oneL"]) end
		if var_table["ark1hunR"] then set(ark_1_hundr_right, var_table["ark1hunR"]) end
		if var_table["ark1tenR"] then set(ark_1_tens_right, var_table["ark1tenR"]) end
		if var_table["ark1oneR"] then set(ark_1_ones_right, var_table["ark1oneR"]) end
		
		if var_table["ark2ch"] then set(ark_2_channel, var_table["ark2ch"]) end
		if var_table["ark2hunL"] then set(ark_2_hundr_left, var_table["ark2hunL"]) end
		if var_table["ark2tenL"] then set(ark_2_tens_left, var_table["ark2tenL"]) end
		if var_table["ark2oneL"] then set(ark_2_ones_left, var_table["ark2oneL"]) end
		if var_table["ark2hunR"] then set(ark_2_hundr_right, var_table["ark2hunR"]) end
		if var_table["ark2tenR"] then set(ark_2_tens_right, var_table["ark2tenR"]) end
		if var_table["ark2oneR"] then set(ark_2_ones_right, var_table["ark2oneR"]) end
		
		if var_table["vdPressL"] then set(vd15_pressure_left, var_table["vdPressL"]) end
		if var_table["vdPressR"] then set(vd15_pressure_right, var_table["vdPressR"]) end
		if var_table["vdPressE"] then set(vd15_pressure_eng, var_table["vdPressE"]) end
		if var_table["uvidPress"] then set(uvid_pressure_knob, var_table["uvidPress"]) end
		if var_table["tksLatSet"] then set(tks_lat_set, var_table["tksLatSet"]/1000) end
		
		
		
		if var_table["ppd3HeatFail"] then set(ppd_3_heat_fail, var_table["ppd3HeatFail"]) end
		
		if var_table["engHeat1"] then set(rel_ice_inlet_heat1, var_table["engHeat1"]) end
		if var_table["engHeat2"] then set(rel_ice_inlet_heat2, var_table["engHeat2"]) end
		if var_table["engHeat3"] then set(rel_ice_inlet_heat3, var_table["engHeat3"]) end
		
		if var_table["pitotHeatFail1"] then set(rel_ice_pitot_heat1, var_table["pitotHeatFail1"]) end
		if var_table["pitotHeatFail2"] then set(rel_ice_pitot_heat2, var_table["pitotHeatFail2"]) end
		
		if var_table["wingHeatFail"] then set(rel_ice_surf_heat, var_table["wingHeatFail"]) end
		if var_table["slatHeatFail"] then set(rel_ice_surf_heat2, var_table["slatHeatFail"]) end
		
		if var_table["iceDetFail"] then set(rio_fail, var_table["iceDetFail"]) end
		
		if var_table["windowHeatFail1"] then set(window_heat_fail_1, var_table["windowHeatFail1"]) end
		if var_table["windowHeatFail2"] then set(window_heat_fail_1, var_table["windowHeatFail2"]) end
		if var_table["windowHeatFail3"] then set(window_heat_fail_1, var_table["windowHeatFail3"]) end
		
		if var_table["apuStartFail"] then set(apu_start_fail, var_table["apuStartFail"]) end
		if var_table["apuRuntime"] then set(apu_runtime, var_table["apuRuntime"]) end
		if var_table["apuFail"] then set(window_heat_fail_1, var_table["apuFail"]) end
		if var_table["apuAirFail"] then set(apu_press_fail, var_table["apuAirFail"]) end
		
		if var_table["brakeRunLeft"] then set(brake_runtime_left, var_table["brakeRunLeft"]/1000) end
		if var_table["brakeRunRight"] then set(brake_runtime_right, var_table["brakeRunRight"]/1000) end
		
		if var_table["brakeFailLeft"] then set(rel_lbrakes, var_table["brakeFailLeft"]) end
		if var_table["brakeFailRight"] then set(rel_rbrakes, var_table["brakeFailRight"]) end
		
		if var_table["ailFailLeft"] then set(ail_fail_left, var_table["ailFailLeft"]) end
		if var_table["ailFailRight"] then set(ail_fail_right, var_table["ailFailRight"]) end
		
		if var_table["spoilInnLeft"] then set(fail_spoil_inn_left, var_table["spoilInnLeft"]) end
		if var_table["spoilInnRight"] then set(fail_spoil_inn_right, var_table["spoilInnRight"]) end
		if var_table["spoilMidLeft"] then set(fail_spoil_mid_left, var_table["spoilMidLeft"]) end
		if var_table["spoilMidRight"] then set(fail_spoil_mid_right, var_table["spoilMidRight"]) end
		if var_table["spoilOutLeft"] then set(fail_spoil_out_left, var_table["spoilOutLeft"]) end
		if var_table["spoilOutRight"] then set(fail_spoil_out_right, var_table["spoilOutRight"]) end
		
		if var_table["rudderFail"] then set(rudder_fail, var_table["rudderFail"]) end
		if var_table["elevFailLeft"] then set(elev_fail_left, var_table["elevFailLeft"]) end
		if var_table["elevFailRight"] then set(elev_fail_right, var_table["elevFailRight"]) end
				
		if var_table["rudtrimFail"] then set(rel_trim_rud, var_table["rudtrimFail"]) end
		if var_table["ailTrimFail"] then set(rel_trim_ail, var_table["ailTrimFail"]) end
		if var_table["elevTrimFail"] then set(rel_trim_elv, var_table["elevTrimFail"]) end
		if var_table["elevEmergTraimFail"] then set(trim_emerg_elv_fail, var_table["elevEmergTraimFail"]) end
		
		if var_table["flapFailLeft"] then set(flap_fail_left, var_table["flapFailLeft"]) end
		if var_table["flapFailRight"] then set(flap_fail_right, var_table["flapFailRight"]) end

		if var_table["stabEngFail"] then set(stab_eng_fail, var_table["stabEngFail"]) end
		if var_table["stabAutoFail"] then set(stab_automatic_fail, var_table["stabAutoFail"]) end
		if var_table["slatFail"] then set(slats_fail, var_table["slatFail"]) end
		
		if var_table["gearRetrFail1"] then set(retract1_fail, var_table["gearRetrFail1"]) end
		if var_table["gearRetrFail2"] then set(retract2_fail, var_table["gearRetrFail2"]) end
		if var_table["gearRetrFail3"] then set(retract3_fail, var_table["gearRetrFail3"]) end
		if var_table["gearActFail"] then set(actuator_fail, var_table["gearActFail"]) end
		
		if var_table["gen1Fail"] then set(rel_genera0, var_table["gen1Fail"]) end
		if var_table["gen2Fail"] then set(rel_genera1, var_table["gen2Fail"]) end
		if var_table["gen3Fail"] then set(rel_genera2, var_table["gen3Fail"]) end
		if var_table["genApuFail"] then set(apu_gen_fail, var_table["genApuFail"]) end
		
		if var_table["vu1Fail"] then set(vu1_fail, var_table["vu1Fail"]) end
		if var_table["vu2Fail"] then set(vu2_fail, var_table["vu2Fail"]) end
		if var_table["vu3Fail"] then set(vu3_fail, var_table["vu3Fail"]) end
		
		if var_table["tr1Fail"] then set(tr1_fail, var_table["tr1Fail"]) end
		if var_table["tr2Fail"] then set(tr2_fail, var_table["tr2Fail"]) end
		
		if var_table["pts1Fail"] then set(pts250_1_fail, var_table["pts1Fail"]) end
		if var_table["pts2Fail"] then set(pts250_2_fail, var_table["pts2Fail"]) end
		if var_table["inv115Fail"] then set(inv115_fail, var_table["inv115Fail"]) end
		
		if var_table["bat1Fail"] then set(bat_1_fail, var_table["bat1Fail"]) end
		if var_table["bat2Fail"] then set(bat_2_fail, var_table["bat2Fail"]) end
		if var_table["bat3Fail"] then set(bat_3_fail, var_table["bat3Fail"]) end
		if var_table["bat4Fail"] then set(bat_4_fail, var_table["bat4Fail"]) end
		
		if var_table["bat1KZ"] then set(bat_1_kz, var_table["bat1KZ"]) end
		if var_table["bat2KZ"] then set(bat_2_kz, var_table["bat2KZ"]) end
		if var_table["bat3KZ"] then set(bat_3_kz, var_table["bat3KZ"]) end
		if var_table["bat4KZ"] then set(bat_4_kz, var_table["bat4KZ"]) end

		if var_table["engFail1"] then set(rel_engfai0, var_table["engFail1"]) end
		if var_table["engFail2"] then set(rel_engfai1, var_table["engFail2"]) end
		if var_table["engFail3"] then set(rel_engfai2, var_table["engFail3"]) end
		
		if var_table["engRunTime1"] then set(engine_runtime_1, var_table["engRunTime1"]) end
		if var_table["engRunTime2"] then set(engine_runtime_2, var_table["engRunTime2"]) end
		if var_table["engRunTime3"] then set(engine_runtime_3, var_table["engRunTime3"]) end
		
		if var_table["engFuelPumpFail1"] then set(eng_fuel_pmp_fail_1, var_table["engFuelPumpFail1"]) end
		if var_table["engFuelPumpFail2"] then set(eng_fuel_pmp_fail_2, var_table["engFuelPumpFail2"]) end
		if var_table["engFuelPumpFail3"] then set(eng_fuel_pmp_fail_3, var_table["engFuelPumpFail3"]) end
		
		if var_table["engOilQty1"] then set(engn_oil_qty_1, var_table["engOilQty1"]) end
		if var_table["engOilQty2"] then set(engn_oil_qty_2, var_table["engOilQty2"]) end
		if var_table["engOilQty3"] then set(engn_oil_qty_3, var_table["engOilQty3"]) end
		
		if var_table["engOilLeak1"] then set(engn_oil_leak_1, var_table["engOilLeak1"]) end
		if var_table["engOilLeak2"] then set(engn_oil_leak_2, var_table["engOilLeak2"]) end
		if var_table["engOilLeak3"] then set(engn_oil_leak_3, var_table["engOilLeak3"]) end
		
		if var_table["engOilPumpFail1"] then set(rel_oilpmp0, var_table["engOilPumpFail1"]) end
		if var_table["engOilPumpFail2"] then set(rel_oilpmp1, var_table["engOilPumpFail2"]) end
		if var_table["engOilPumpFail3"] then set(rel_oilpmp2, var_table["engOilPumpFail3"]) end
		
		if var_table["engFuelFilterFail1"] then set(rel_eng_lo0, var_table["engFuelFilterFail1"]) end
		if var_table["engFuelFilterFail2"] then set(rel_eng_lo1, var_table["engFuelFilterFail2"]) end
		if var_table["engFuelFilterFail3"] then set(rel_eng_lo2, var_table["engFuelFilterFail3"]) end
		
		if var_table["engStarterFail1"] then set(rel_startr0, var_table["engStarterFail1"]) end
		if var_table["engStarterFail2"] then set(rel_startr1, var_table["engStarterFail2"]) end
		if var_table["engStarterFail3"] then set(rel_startr2, var_table["engStarterFail3"]) end
		
		if var_table["engIgnitFail1"] then set(rel_ignitr0, var_table["engIgnitFail1"]) end
		if var_table["engIgnitFail2"] then set(rel_ignitr1, var_table["engIgnitFail2"]) end
		if var_table["engIgnitFail3"] then set(rel_ignitr2, var_table["engIgnitFail3"]) end
		
		if var_table["engReversFail1"] then set(rel_revers0, var_table["engReversFail1"]) end
		if var_table["engReversFail3"] then set(rel_revers2, var_table["engReversFail3"]) end
		
		if var_table["fuelPumpFail2L"] then set(fuel_pump_2l_fail, var_table["fuelPumpFail2L"]) end
		if var_table["fuelPumpFail2R"] then set(fuel_pump_2r_fail, var_table["fuelPumpFail2R"]) end
		if var_table["fuelPumpFail3L"] then set(fuel_pump_3l_fail, var_table["fuelPumpFail3L"]) end
		if var_table["fuelPumpFail3R"] then set(fuel_pump_3r_fail, var_table["fuelPumpFail3R"]) end
		if var_table["fuelPumpFail1"] then set(fuel_pump_1_fail, var_table["fuelPumpFail1"]) end
		if var_table["fuelPumpFail4"] then set(fuel_pump_4_fail, var_table["fuelPumpFail4"]) end
		
		if var_table["fuelAutoFail"] then set(fuel_auto_fail, var_table["fuelAutoFail"]) end
		if var_table["fuelLvlFail"] then set(fuel_level_fail, var_table["fuelLvlFail"]) end
		if var_table["fuelPorcFail"] then set(fuel_porc_fail, var_table["fuelPorcFail"]) end
		
		if var_table["fuelMeterFail2L"] then set(fuel_meter_2l_fail, var_table["fuelMeterFail2L"]) end
		if var_table["fuelMeterFail2R"] then set(fuel_meter_2r_fail, var_table["fuelMeterFail2R"]) end
		if var_table["fuelMeterFail3L"] then set(fuel_meter_3l_fail, var_table["fuelMeterFail3L"]) end
		if var_table["fuelMeterFail3R"] then set(fuel_meter_3r_fail, var_table["fuelMeterFail3R"]) end
		if var_table["fuelMeterFail1"] then set(fuel_meter_1_fail, var_table["fuelMeterFail1"]) end
		if var_table["fuelMeterFail4"] then set(fuel_meter_4_fail, var_table["fuelMeterFail4"]) end
		if var_table["fuelMeterFailSumm"] then set(fuel_meter_summ, var_table["fuelMeterFailSumm"]) end
		
		if var_table["FF1fail"] then set(fuel_flowmeter_1_fail, var_table["FF1fail"]) end
		if var_table["FF2fail"] then set(fuel_flowmeter_2_fail, var_table["FF2fail"]) end
		if var_table["FF3fail"] then set(fuel_flowmeter_3_fail, var_table["FF3fail"]) end
	
		if var_table["hydroLeak1"] then set(hydro_leak_1, var_table["hydroLeak1"]) end
		if var_table["hydroLeak2"] then set(hydro_leak_2, var_table["hydroLeak2"]) end
		if var_table["hydroLeak3"] then set(hydro_leak_3, var_table["hydroLeak3"]) end
		if var_table["hydroLeak4"] then set(hydro_leak_4, var_table["hydroLeak4"]) end
		
		if var_table["hydroPmpFail11"] then set(hydro_pump_fail_11, var_table["hydroPmpFail11"]) end
		if var_table["hydroPmpFail12"] then set(hydro_pump_fail_12, var_table["hydroPmpFail12"]) end
		if var_table["hydroPmpFail2"] then set(hydro_pump_fail_2, var_table["hydroPmpFail2"]) end
		if var_table["hydroPmpFail3"] then set(hydro_pump_fail_3, var_table["hydroPmpFail3"]) end
		
		if var_table["HydroElecFail2"] then set(hydro_elec_fail_2, var_table["HydroElecFail2"]) end
		if var_table["HydroElecFail3"] then set(hydro_elec_fail_3, var_table["HydroElecFail3"]) end

		
		if var_table["hydroQty1"] then set(gs_qty_1, var_table["hydroQty1"]*0.00001) end
		if var_table["hydroQty2"] then set(gs_qty_2, var_table["hydroQty2"]*0.00001) end
		if var_table["hydroQty3"] then set(gs_qty_3, var_table["hydroQty3"]*0.00001) end
	
		if var_table["tthLeftFail"] then set(tth_left_fail, var_table["tthLeftFail"]) end
		if var_table["tthRightFail"] then set(tth_right_fail, var_table["tthRightFail"]) end

		if var_table["airbleedFail1"] then set(airbleed_1, var_table["airbleedFail1"]) end
		if var_table["airbleedFail2"] then set(airbleed_2, var_table["airbleedFail2"]) end
		if var_table["airbleedFail3"] then set(airbleed_3, var_table["airbleedFail3"]) end
		
		if var_table["psvpFailL"] then set(psvp_fail_left, var_table["psvpFailL"]) end
		if var_table["psvpFailR"] then set(psvp_fail_right, var_table["psvpFailR"]) end
		if var_table["sardValveFail"] then set(sard_valve_fail, var_table["sardValveFail"]) end
		
		if var_table["lanLampFLFail"] then set(lan_lamp_fail_FL, var_table["lanLampFLFail"]) end
		if var_table["lanLampFRFail"] then set(lan_lamp_fail_FR, var_table["lanLampFRFail"]) end
		if var_table["lanLampWLFail"] then set(lan_lamp_fail_WL, var_table["lanLampWLFail"]) end
		if var_table["lanLampWRFail"] then set(lan_lamp_fail_WR, var_table["lanLampWRFail"]) end
		if var_table["navLampFail"] then set(rel_lites_nav, var_table["navLampFail"]) end
		if var_table["beacLampFail"] then set(rel_lites_beac, var_table["beacLampFail"]) end
		
		if var_table["mainAlarmFail"] then set(main_alarm_fail, var_table["mainAlarmFail"]) end
		if var_table["spekAlarmFail"] then set(speaker_alarm_fail, var_table["spekAlarmFail"]) end
				
		if var_table["absuRArollFail"] then set(absu_ra56_roll_fail, var_table["absuRArollFail"]) end
		if var_table["absuRApitchFail"] then set(absu_ra56_pitch_fail, var_table["absuRApitchFail"]) end
		if var_table["absuRAyawFail"] then set(absu_ra56_yaw_fail, var_table["absuRAyawFail"]) end
		
		if var_table["absuAT1Fail"] then set(absu_at1_fail, var_table["absuAT1Fail"]) end
		if var_table["absuAT2Fail"] then set(absu_at2_fail, var_table["absuAT2Fail"]) end
		
		
		if var_table["absuDampRollFail"] then set(absu_damp_roll_fail, var_table["absuDampRollFail"]) end
		if var_table["absuDampPitchFail"] then set(absu_damp_pitch_fail, var_table["absuDampPitchFail"]) end
		if var_table["absuDampYawFail"] then set(absu_damp_yaw_fail, var_table["absuDampYawFail"]) end
		if var_table["absuContrRollFail"] then set(absu_contr_roll_fail, var_table["absuContrRollFail"]) end
		if var_table["absuContrPitchFail"] then set(absu_contr_pitch_fail, var_table["absuContrPitchFail"]) end
		if var_table["absuCalcTogaFail"] then set(absu_calc_toga_fail, var_table["absuCalcTogaFail"]) end
		
		if var_table["absuCalcRollFail"] then set(absu_calc_roll_fail, var_table["absuCalcRollFail"]) end
		if var_table["absuCalcPitchFail"] then set(absu_calc_pitch_fail, var_table["absuCalcPitchFail"]) end
		
		
				
		if var_table["dissFail"] then set(diss_fail, var_table["dissFail"]) end
		if var_table["nvuFail"] then set(nvu_fail, var_table["nvuFail"]) end
		if var_table["radarFail"] then set(radar_fail, var_table["radarFail"]) end
				
		if var_table["ark1fail"] then set(ark1_fail, var_table["ark1fail"]) end
		if var_table["ark2fail"] then set(ark2_fail, var_table["ark2fail"]) end
		if var_table["nav1fail"] then set(nav1fail, var_table["nav1fail"]) end
		if var_table["nav2fail"] then set(nav2fail, var_table["nav2fail"]) end
		if var_table["dme1Fail"] then set(dme1_fail, var_table["dme1Fail"]) end
		if var_table["dme2Fail"] then set(dme2_fail, var_table["dme2Fail"]) end
		if var_table["mrpFail"] then set(mrp_fail, var_table["mrpFail"]) end

		if var_table["tksGaFail1"] then set(tks_ga1_fail, var_table["tksGaFail1"]) end
		if var_table["tksGaFail2"] then set(tks_ga2_fail, var_table["tksGaFail2"]) end
		if var_table["tksKMFail1"] then set(tks_km1_fail, var_table["tksKMFail1"]) end
		if var_table["tksKMFail2"] then set(tks_km2_fail, var_table["tksKMFail2"]) end
		if var_table["tksBgmkFail1"] then set(tks_bgmk1_fail, var_table["tksBgmkFail1"]) end
		if var_table["tksBgmkFail2"] then set(tks_bgmk2_fail, var_table["tksBgmkFail2"]) end
	
		if var_table["rsbnFail"] then set(rsbn_fail, var_table["rsbnFail"]) end
		if var_table["tawsFail"] then set(taws_fail, var_table["tawsFail"]) end
		
		if var_table["alt1fail"] then set(alt_1_fail, var_table["alt1fail"]) end
		if var_table["alt2fail"] then set(alt_2_fail, var_table["alt2fail"]) end
		if var_table["eupFail"] then set(eup_fail, var_table["eupFail"]) end
		
		if var_table["acs1fail"] then set(acs1_fail, var_table["acs1fail"]) end
		if var_table["acs2fail"] then set(acs2_fail, var_table["acs2fail"]) end
		if var_table["acs3fail"] then set(acs3_fail, var_table["acs3fail"]) end
		if var_table["agrFail"] then set(agr_fail, var_table["agrFail"]) end
		if var_table["bkkFail"] then set(bkk_fail, var_table["bkkFail"]) end
		
		if var_table["pitot1Fail"] then set(rel_pitot, var_table["pitot1Fail"]) end
		if var_table["pitot2Fail"] then set(rel_pitot2, var_table["pitot2Fail"]) end
		if var_table["static1Fail"] then set(static_fail_L, var_table["static1Fail"]) end
		if var_table["static2Fail"] then set(static_fail_R, var_table["static2Fail"]) end
		if var_table["svsFail"] then set(svs_fail, var_table["svsFail"]) end
		
		
		if var_table["mgvFail"] then set(mgv_fail, var_table["mgvFail"]) end
		if var_table["pkp1fail"] then set(pkp1fail, var_table["pkp1fail"]) end
		if var_table["pkp2fail"] then set(pkp2fail, var_table["pkp2fail"]) end
		if var_table["rv1fail"] then set(rv1_fail, var_table["rv1fail"]) end
		if var_table["rv2fail"] then set(rv2_fail, var_table["rv2fail"]) end
		if var_table["uapFail"] then set(uap_fail, var_table["uapFail"]) end
		if var_table["uapWarnFail"] then set(uap_warn_fail, var_table["uapWarnFail"]) end
		if var_table["uvid15fail"] then set(uvid_fail, var_table["uvid15fail"]) end
		if var_table["vvi1fail"] then set(vvi1_fail, var_table["vvi1fail"]) end
		if var_table["vvi2fail"] then set(vvi2_fail, var_table["vvi2fail"]) end
		
		
		savefile:close()
		print("reading last state: OK")
	else
		print("error reading state file")
	end
	
	
	
	return true
	
	
end





local start_counter = 0
local save_counter = 0
local fileReaded = false


function update()

	local passed = get(frame_time)
	start_counter = start_counter + passed
	save_counter = save_counter + passed
	

	-- read the file once after open ACF
	if start_counter > 2 and not fileReaded then
		read_file() 
		fileReaded = true
		
	end
	
	-- save the file
	if save_counter > 30 or get(save_state) == 1 then
		write_file()
		save_counter = 0
		set(save_state, 0) -- reset saving state dataref
	end
	

	
end

--[[
function onAvionicsDone()
	write_file()
	print("state file saved")
end
--]]























