createGlobalPropertyf("tu154ce/KLN90/power_draw", 0.0)           -- Потребление тока КЛНкой | KLN90B power draw
createGlobalPropertyf("tu154ce/rotary/console/rls_tilt", 0.0)    -- Наклон РЛС | WXR Tilt
createGlobalPropertyf("tu154ce/switchers/console/rls_stab", 0.0) -- Стабилизация РЛС | WXR Stabilization
createGlobalPropertyi("tu154ce/switchers/cb/ap_3", 1)

--THERMAL_source tu154ce/antiice/window_windshield_temp
--tu154ce/antiice/window_windshield_act
--THERMAL_source tu154ce/antiice/window_left_temp
--tu154ce/antiice/window_left_act
--THERMAL_source tu154ce/antiice/window_right_temp
--tu154ce/antiice/window_right_act

createGlobalPropertyf("tu154ce/antiice/window_windshield_temp", 0)
createGlobalPropertyf("tu154ce/antiice/window_left_temp", 0)
createGlobalPropertyf("tu154ce/antiice/window_right_temp", 0)

createGlobalPropertyi("tu154ce/antiice/window_windshield_act", 0)
createGlobalPropertyi("tu154ce/antiice/window_left_act", 0)
createGlobalPropertyi("tu154ce/antiice/window_right_act", 0)

createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_ack_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_flt_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_lookup_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_poweroff_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_snp_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_t1_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_t2_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/buttons/absu/ppn13_t3_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/switches/absu/ppn13_test_absu_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/switches/absu/ppn13_test_svk_anim", 0)
createGlobalPropertyf("tu154ce/manipulators/caps/ppn13_lid", 0)

createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_ack", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_flt", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_lookup", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_poweroff", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_snp", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_t1", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_t2", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_t3", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_test_absu", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_test_svk", 0)
createGlobalPropertyi("tu154ce/manipulators/buttons/absu/ppn13_lid", 0)

createGlobalPropertyf("tu154ce/systems/absu/ppn13/servo_pitch_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/servo_roll_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/servo_yaw_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bdg_pitch_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bdg_roll_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bdg_yaw_lt", 0)

createGlobalPropertyf("tu154ce/systems/absu/ppn13/cws1_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/cws2_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bns_p_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bap_p_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bap_r_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/vkv_lt", 0)

createGlobalPropertyf("tu154ce/systems/absu/ppn13/vu_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/ute_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/stu_p_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/stu_r_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/at_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bsn_lt", 0)

createGlobalPropertyf("tu154ce/systems/absu/ppn13/mgv_p_stu_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/mgv_r_stu_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/mgv_p_sau_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/mgv_r_sau_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/ks_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/bns_r_lt", 0)


createGlobalPropertyia("tu154ce/systems/absu/ppn13/servo_pitch_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/servo_roll_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/servo_yaw_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bdg_pitch_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bdg_roll_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bdg_yaw_test_signal", { 0, 0, 0, 0, 0, 0 })

createGlobalPropertyia("tu154ce/systems/absu/ppn13/cws1_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/cws2_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bns_p_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bap_p_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bap_r_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/vkv_test_signal", { 0, 0, 0, 0, 0, 0 })

createGlobalPropertyia("tu154ce/systems/absu/ppn13/vu_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/ute_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/stu_p_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/stu_r_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/at_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bsn_test_signal", { 0, 0, 0, 0, 0, 0 })

createGlobalPropertyia("tu154ce/systems/absu/ppn13/mgv_p_stu_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/mgv_r_stu_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/mgv_p_sau_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/mgv_r_sau_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/ks_test_signal", { 0, 0, 0, 0, 0, 0 })
createGlobalPropertyia("tu154ce/systems/absu/ppn13/bns_r_test_signal", { 0, 0, 0, 0, 0, 0 })

createGlobalPropertyf("tu154ce/systems/absu/ppn13/ch1_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/ch2_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/ch3_lt", 0)
createGlobalPropertyf("tu154ce/systems/absu/ppn13/ch4_lt", 0)

createGlobalPropertyf("tu154ce/systems/absu/ppn13/absu_ready_lt", 0)

createGlobalPropertyf("tu154ce/asu/rpm", 0.0)
createGlobalPropertyf("tu154ce/asu/press", 0.0)
createGlobalPropertyi("tu154ce/asu/work", 0)
createGlobalPropertyf("tu154ce/anim/asu_show", 0.0)
createGlobalPropertyi("tu154ce/anim/gpu_sound", 0)

alarm_absu = createGlobalPropertyi("tu154ce/sound/absu_alarm", 0)
alarm_flaps = createGlobalPropertyi("tu154ce/sound/flaps",0)
alarm_srd = createGlobalPropertyi("tu154ce/sound/srd",0)
alarm_auasp = createGlobalPropertyi("tu154ce/sound/auasp",0)
alarm_marker = createGlobalPropertyi("tu154ce/sound/marker_beacon", 0)
alarm_ospeed = createGlobalPropertyi("tu154ce/sound/overspeed", 0)
alarm_rad_alt = createGlobalPropertyi("tu154ce/sound/rad_alt", 0)
alarm_vbe = createGlobalPropertyi("tu154ce/sound/vbe", 0)
alarm_fire = createGlobalPropertyi("tu154ce/sound/fire", 0)
