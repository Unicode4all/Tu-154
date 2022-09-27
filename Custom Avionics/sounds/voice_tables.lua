-- this is the voice tables


-- есть идея сделать одну таблицу для двух языков. под именем каждой ячейки будет два индекса. в зависимости от индекса языка играть соответствующий файл

phrases_max = 21


-- create phrases table
phrases_tbl = {}

for i = 1, phrases_max do
	phrases_tbl[i] = {0, 0}
end

cpt_tbl = {}
cop_tbl = {}
nav_tbl = {}
eng_tbl = {}
gnd_tbl = {}

v_var = {} -- voice variables

-- status variables

v_var["sim_start_counter"] = 0
v_var["eng_TO_mode"] = false
v_var["was_flight"] = false

v_var["on_ground"] = false
v_var["apu_start"] = false

v_var["moving_on_ground"] = false
v_var["taxi_count"] = 0
v_var["flaps_last"] = 0
v_var["stab_last"] = 0
v_var["eup_last"] = 0
v_var["course_last"] = 0
v_var["eup_diff"] = 0
v_var["course_diff"] = 0
v_var["flaps_diff"] = 0
v_var["flaps_last_L"] = 0
v_var["flaps_last_R"] = 0
v_var["stab_diff"] = 0
v_var["stab_last"] = 0
v_var["stab_count"] = 0
v_var["slats_diff"] = 0
v_var["slats_last"] = 0
v_var["flaps_count"] = 10
v_var["gear_deployed"] = false
v_var["gear_retracted"] = false
v_var["v1_spd"] = 0
v_var["vr_spd"] = 0
v_var["v2_spd"] = 0
v_var["ias_last"] = 0
v_var["ias_now"] = 0
v_var["ias_grow"] = false
v_var["vvi_now"] = 0
v_var["gear_lock_counter"] = 0
v_var["was_8000"] = false
v_var["descending"] = false
v_var["trim_diff"] = 0
v_var["trim_last"] = 0
v_var["trim_count"] = 5
v_var["stab_moved"] = false
v_var["gear_down_counter"] = 0
v_var["tks_set_counter"] = 0
v_var["ail_chk"] = false
v_var["elev_chk"] = false

-- said

v_var["apu_start_said"] = false
v_var["apu_started"] = false

v_var["eng_start_check_said"] = false
v_var["gnd_eng_start_check_ok_said"] = false
v_var["gnd_doors_open_said"] = false
v_var["gnd_covers_said"] = false
v_var["gnd_blocks_said"] = false

v_var["away_from_eng_said"] = false
v_var["starting_eng1_said"] = false
v_var["starting_eng2_said"] = false
v_var["starting_eng3_said"] = false
v_var["engines_go_said"] = false

v_var["generators_on_said"] = false
v_var["turn63on_said"] = false
v_var["valves_closed_said"] = false
v_var["engine_TO_said"] = false
v_var["ready_to_taxi_said"] = false
v_var["check_brk_said"] = false
v_var["brk_chk_ok_said"] = false
v_var["eup_chk_said"] = false

v_var["v_rise_said"] = false
v_var["v_160_said"] = false
v_var["v_200_said"] = false
v_var["v_220_said"] = false
v_var["v_240_said"] = false

v_var["v1_said"] = false
v_var["vr_said"] = false
v_var["v2_said"] = false

v_var["set_gear_up_said"] = false
v_var["set_gear_down_said"] = false
v_var["gear_up_said"] = false
v_var["gear_down_said"] = false
v_var["set_gear_ntr_said"] = false
v_var["gear_ntr_said"] = false

v_var["alt50_said"] = false
v_var["lights_off_said"] = false

v_var["v_330_said"] = false
v_var["v_360_said"] = false

v_var["press1013_said"] = false

v_var["ap_on_said"] = false
v_var["prepare_tks_said"] = false

v_var["flaps_ext_said"] = false
v_var["flaps_retr_said"] = false
v_var["slats_ext_said"] = false
v_var["slats_retr_said"] = false
v_var["slats_out_said"] = false
v_var["flaps_0_said"] = true
v_var["flaps_15_said"] = false
v_var["flaps_28_said"] = false
v_var["flaps_36_said"] = false
v_var["flaps_45_said"] = false
v_var["stab_move_said"] = false
v_var["stab_0_said"] = false
v_var["stab_15_said"] = false
v_var["stab_30_said"] = false
v_var["stab_55_said"] = false

v_var["gear_down_cpt_said"] = false
v_var["gear_down_cop_said"] = false
v_var["gear_down_fact_cop_said"] = false
v_var["set_gear_ntr_2_said"] = false
v_var["gear_ntr_2_said"] = false
v_var["extend_lites_said"] = false
v_var["lites_full_said"] = false

v_var["call_10_said"] = false
v_var["call_5_said"] = false
v_var["call_3_said"] = false
v_var["call_2_said"] = false
v_var["call_1_said"] = false

v_var["rating_said"] = false
v_var["decision_said"] = false
v_var["at_on_said"] = false
v_var["reverse_on_said"] = false

v_var["spoilers_said"] = false
v_var["set_reverse_said"] = false
v_var["reverse_off_said"] = false
v_var["remove_flaps_said"] = false
v_var["on_brakes_said"] = false

--v_var["setting_tks_said"] = false





cpt_tbl["ap_enable"] = {loadSample('Custom Sounds/crew/rus/cpt/ap_enable.wav'), loadSample('Custom Sounds/crew/eng/cpt/ap_enable.wav')}
cpt_tbl["approcah"] = {loadSample('Custom Sounds/crew/rus/cpt/approcah.wav'), loadSample('Custom Sounds/crew/eng/cpt/approcah.wav')}
cpt_tbl["attention_start_taxi"] = {loadSample('Custom Sounds/crew/rus/cpt/attention_start_taxi.wav'), loadSample('Custom Sounds/crew/eng/cpt/attention_start_taxi.wav')}
cpt_tbl["check_brakes"] = {loadSample('Custom Sounds/crew/rus/cpt/check_brakes.wav'), loadSample('Custom Sounds/crew/eng/cpt/check_brakes.wav')}
cpt_tbl["checklist"] = {loadSample('Custom Sounds/crew/rus/cpt/checklist.wav'), loadSample('Custom Sounds/crew/eng/cpt/checklist.wav')}
cpt_tbl["engies_go_goodbye"] = {loadSample('Custom Sounds/crew/rus/cpt/engies_go_goodbye.wav'), loadSample('Custom Sounds/crew/eng/cpt/engies_go_goodbye.wav')}
cpt_tbl["flaps_15"] = {loadSample('Custom Sounds/crew/rus/cpt/flaps_15.wav'), loadSample('Custom Sounds/crew/eng/cpt/flaps_15.wav')}
cpt_tbl["flaps_0"] = {loadSample('Custom Sounds/crew/rus/cpt/flaps_0.wav'), loadSample('Custom Sounds/crew/eng/cpt/flaps_0.wav')}
cpt_tbl["gear_down"] = {loadSample('Custom Sounds/crew/rus/cpt/gear_down.wav'), loadSample('Custom Sounds/crew/eng/cpt/gear_down.wav')}
cpt_tbl["gear_up"] = {loadSample('Custom Sounds/crew/rus/cpt/gear_up.wav'), loadSample('Custom Sounds/crew/eng/cpt/gear_up.wav')}
cpt_tbl["lights_landing"] = {loadSample('Custom Sounds/crew/rus/cpt/lights_landing.wav'), loadSample('Custom Sounds/crew/eng/cpt/lights_landing.wav')}
cpt_tbl["lights_off"] = {loadSample('Custom Sounds/crew/rus/cpt/lights_off.wav'), loadSample('Custom Sounds/crew/eng/cpt/lights_off.wav')}
cpt_tbl["lights_out"] = {loadSample('Custom Sounds/crew/rus/cpt/lights_out.wav'), loadSample('Custom Sounds/crew/eng/cpt/lights_out.wav')}
cpt_tbl["oppa"] = {loadSample('Custom Sounds/crew/rus/cpt/oppa.wav'), loadSample('Custom Sounds/crew/eng/cpt/oppa.wav')}
cpt_tbl["parking_brakes"] = {loadSample('Custom Sounds/crew/rus/cpt/parking_brakes.wav'), loadSample('Custom Sounds/crew/eng/cpt/parking_brakes.wav')}
cpt_tbl["remove_flaps_lights"] = {loadSample('Custom Sounds/crew/rus/cpt/remove_flaps_lights.wav'), loadSample('Custom Sounds/crew/eng/cpt/remove_flaps_lights.wav')}
cpt_tbl["reverse"] = {loadSample('Custom Sounds/crew/rus/cpt/reverse.wav'), loadSample('Custom Sounds/crew/eng/cpt/reverse.wav')}
cpt_tbl["reverse_off"] = {loadSample('Custom Sounds/crew/rus/cpt/reverse_off.wav'), loadSample('Custom Sounds/crew/eng/cpt/reverse_off.wav')}
cpt_tbl["takeoff_mode"] = {loadSample('Custom Sounds/crew/rus/cpt/takeoff_mode.wav'), loadSample('Custom Sounds/crew/eng/cpt/takeoff_mode.wav')}
cpt_tbl["turn_on_users"] = {loadSample('Custom Sounds/crew/rus/cpt/turn_on_users.wav'), loadSample('Custom Sounds/crew/eng/cpt/turn_on_users.wav')}



cop_tbl["brakes_check"] = {loadSample('Custom Sounds/crew/rus/copilot/brakes_check.wav'), loadSample('Custom Sounds/crew/eng/copilot/brakes_check.wav')}
cop_tbl["down_gear"] = {loadSample('Custom Sounds/crew/rus/copilot/down_gear.wav'), loadSample('Custom Sounds/crew/eng/copilot/down_gear.wav')}
--cop_tbl["flaps_15"] = {loadSample('Custom Sounds/crew/rus/copilot/flaps_15.wav'), loadSample('Custom Sounds/crew/eng/copilot/flaps_15.wav')}
--cop_tbl["flaps_28"] = {loadSample('Custom Sounds/crew/rus/copilot/flaps_28.wav'), loadSample('Custom Sounds/crew/eng/copilot/flaps_28.wav')}
--cop_tbl["flaps_36"] = {loadSample('Custom Sounds/crew/rus/copilot/flaps_36.wav'), loadSample('Custom Sounds/crew/eng/copilot/flaps_36.wav')}
--cop_tbl["flaps_45"] = {loadSample('Custom Sounds/crew/rus/copilot/flaps_45.wav'), loadSample('Custom Sounds/crew/eng/copilot/flaps_45.wav')}
--cop_tbl["flaps_up"] = {loadSample('Custom Sounds/crew/rus/copilot/flaps_up.wav'), loadSample('Custom Sounds/crew/eng/copilot/flaps_up.wav')}
cop_tbl["gear_down"] = {loadSample('Custom Sounds/crew/rus/copilot/gear_down.wav'), loadSample('Custom Sounds/crew/eng/copilot/gear_down.wav')}
cop_tbl["gear_lever_neutr"] = {loadSample('Custom Sounds/crew/rus/copilot/gear_lever_neutr.wav'), loadSample('Custom Sounds/crew/eng/copilot/gear_lever_neutr.wav')}
cop_tbl["gear_up"] = {loadSample('Custom Sounds/crew/rus/copilot/gear_up.wav'), loadSample('Custom Sounds/crew/eng/copilot/gear_up.wav')}
cop_tbl["pressure_1013"] = {loadSample('Custom Sounds/crew/rus/copilot/pressure_1013.wav'), loadSample('Custom Sounds/crew/eng/copilot/pressure_1013.wav')}
cop_tbl["ready_to_taxi"] = {loadSample('Custom Sounds/crew/rus/copilot/ready_to_taxi.wav'), loadSample('Custom Sounds/crew/eng/copilot/ready_to_taxi.wav')}



nav_tbl["1m"] = {loadSample('Custom Sounds/crew/rus/navigator/1.wav'), loadSample('Custom Sounds/crew/eng/navigator/1.wav')}
nav_tbl["10m"] = {loadSample('Custom Sounds/crew/rus/navigator/10.wav'), loadSample('Custom Sounds/crew/eng/navigator/10.wav')}
nav_tbl["2m"] = {loadSample('Custom Sounds/crew/rus/navigator/2.wav'), loadSample('Custom Sounds/crew/eng/navigator/2.wav')}
nav_tbl["3m"] = {loadSample('Custom Sounds/crew/rus/navigator/3.wav'), loadSample('Custom Sounds/crew/eng/navigator/3.wav')}
nav_tbl["5m"] = {loadSample('Custom Sounds/crew/rus/navigator/5.wav'), loadSample('Custom Sounds/crew/eng/navigator/5.wav')}
nav_tbl["alt_50"] = {loadSample('Custom Sounds/crew/rus/navigator/alt_50.wav'), loadSample('Custom Sounds/crew/eng/navigator/alt_50.wav')}
--nav_tbl["tablo"] = {loadSample('Custom Sounds/crew/rus/navigator/tablo.wav'), loadSample('Custom Sounds/crew/eng/navigator/tablo.wav')}
nav_tbl["lights_on"] = {loadSample('Custom Sounds/crew/rus/navigator/lights_on.wav'), loadSample('Custom Sounds/crew/eng/navigator/lights_on.wav')}
nav_tbl["lights_off"] = {loadSample('Custom Sounds/crew/rus/navigator/lights_off.wav'), loadSample('Custom Sounds/crew/eng/navigator/lights_off.wav')}
nav_tbl["minimums"] = {loadSample('Custom Sounds/crew/rus/navigator/minimums.wav'), loadSample('Custom Sounds/crew/eng/navigator/minimums.wav')}
nav_tbl["pos_rate"] = {loadSample('Custom Sounds/crew/rus/navigator/pos_rate.wav'), loadSample('Custom Sounds/crew/eng/navigator/pos_rate.wav')}
nav_tbl["rotate"] = {loadSample('Custom Sounds/crew/rus/navigator/rotate.wav'), loadSample('Custom Sounds/crew/eng/navigator/rotate.wav')}
nav_tbl["score"] = {loadSample('Custom Sounds/crew/rus/navigator/score.wav'), loadSample('Custom Sounds/crew/eng/navigator/score.wav')}
nav_tbl["set_ort_course"] = {loadSample('Custom Sounds/crew/rus/navigator/set_ort_course.wav'), loadSample('Custom Sounds/crew/eng/navigator/set_ort_course.wav')}
nav_tbl["spd_160"] = {loadSample('Custom Sounds/crew/rus/navigator/spd_160.wav'), loadSample('Custom Sounds/crew/eng/navigator/spd_160.wav')}
nav_tbl["spd_200"] = {loadSample('Custom Sounds/crew/rus/navigator/spd_200.wav'), loadSample('Custom Sounds/crew/eng/navigator/spd_200.wav')}
nav_tbl["spd_220"] = {loadSample('Custom Sounds/crew/rus/navigator/spd_220.wav'), loadSample('Custom Sounds/crew/eng/navigator/spd_220.wav')}
nav_tbl["spd_240"] = {loadSample('Custom Sounds/crew/rus/navigator/spd_240.wav'), loadSample('Custom Sounds/crew/eng/navigator/spd_240.wav')}
nav_tbl["spd_330"] = {loadSample('Custom Sounds/crew/rus/navigator/spd_330.wav'), loadSample('Custom Sounds/crew/eng/navigator/spd_330.wav')}
nav_tbl["spd_360"] = {loadSample('Custom Sounds/crew/rus/navigator/spd_360.wav'), loadSample('Custom Sounds/crew/eng/navigator/spd_360.wav')}
nav_tbl["spd_alive"] = {loadSample('Custom Sounds/crew/rus/navigator/spd_alive.wav'), loadSample('Custom Sounds/crew/eng/navigator/spd_alive.wav')}
nav_tbl["spoilers_out"] = {loadSample('Custom Sounds/crew/rus/navigator/spoilers_out.wav'), loadSample('Custom Sounds/crew/eng/navigator/spoilers_out.wav')}
nav_tbl["tks_eup"] = {loadSample('Custom Sounds/crew/rus/navigator/tks_eup.wav'), loadSample('Custom Sounds/crew/eng/navigator/tks_eup.wav')}
nav_tbl["v1"] = {loadSample('Custom Sounds/crew/rus/navigator/v1.wav'), loadSample('Custom Sounds/crew/eng/navigator/v1.wav')}
nav_tbl["flaps_extending"] = {loadSample('Custom Sounds/crew/rus/navigator/flaps_rel_sin.wav'), loadSample('Custom Sounds/crew/eng/navigator/flaps_rel_sin.wav')}
nav_tbl["flaps_retracting"] = {loadSample('Custom Sounds/crew/rus/navigator/flaps_ret_sin.wav'), loadSample('Custom Sounds/crew/eng/navigator/flaps_ret_sin.wav')}
nav_tbl["stab_move"] = {loadSample('Custom Sounds/crew/rus/navigator/stab_move.wav'), loadSample('Custom Sounds/crew/eng/navigator/stab_move.wav')}
nav_tbl["slats_extending"] = {loadSample('Custom Sounds/crew/rus/navigator/slats_rel.wav'), loadSample('Custom Sounds/crew/eng/navigator/slats_rel.wav')}
nav_tbl["slats_retracting"] = {loadSample('Custom Sounds/crew/rus/navigator/slats_ret.wav'), loadSample('Custom Sounds/crew/eng/navigator/slats_ret.wav')}
nav_tbl["slats_retracted"] = {loadSample('Custom Sounds/crew/rus/navigator/slats_released.wav'), loadSample('Custom Sounds/crew/eng/navigator/slats_released.wav')}
nav_tbl["flaps_0"] = {loadSample('Custom Sounds/crew/rus/navigator/flaps_retracted.wav'), loadSample('Custom Sounds/crew/eng/navigator/flaps_retracted.wav')}
nav_tbl["flaps_15"] = {loadSample('Custom Sounds/crew/rus/navigator/flaps_15.wav'), loadSample('Custom Sounds/crew/eng/navigator/flaps_15.wav')}
nav_tbl["flaps_28"] = {loadSample('Custom Sounds/crew/rus/navigator/flaps_28.wav'), loadSample('Custom Sounds/crew/eng/navigator/flaps_28.wav')}
nav_tbl["flaps_36"] = {loadSample('Custom Sounds/crew/rus/navigator/flaps_36.wav'), loadSample('Custom Sounds/crew/eng/navigator/flaps_36.wav')}
nav_tbl["flaps_45"] = {loadSample('Custom Sounds/crew/rus/navigator/flaps_45.wav'), loadSample('Custom Sounds/crew/eng/navigator/flaps_45.wav')}
nav_tbl["stab_0"] = {loadSample('Custom Sounds/crew/rus/navigator/stab_0.wav'), loadSample('Custom Sounds/crew/eng/navigator/stab_0.wav')}
nav_tbl["stab_15"] = {loadSample('Custom Sounds/crew/rus/navigator/stab_1_5.wav'), loadSample('Custom Sounds/crew/eng/navigator/stab_1_5.wav')}
nav_tbl["stab_30"] = {loadSample('Custom Sounds/crew/rus/navigator/stab_3.wav'), loadSample('Custom Sounds/crew/eng/navigator/stab_3.wav')}
nav_tbl["stab_55"] = {loadSample('Custom Sounds/crew/rus/navigator/stab_5_5.wav'), loadSample('Custom Sounds/crew/eng/navigator/stab_5_5.wav')}



eng_tbl["at_on"] = {loadSample('Custom Sounds/crew/rus/engineer/at_on.wav'), loadSample('Custom Sounds/crew/eng/engineer/at_on.wav')}
eng_tbl["check_before_start"] = {loadSample('Custom Sounds/crew/rus/engineer/check_before_start.wav'), loadSample('Custom Sounds/crew/eng/engineer/check_before_start.wav')}
eng_tbl["clear_engines"] = {loadSample('Custom Sounds/crew/rus/engineer/clear_engines.wav'), loadSample('Custom Sounds/crew/eng/engineer/clear_engines.wav')}
eng_tbl["gear_down"] = {loadSample('Custom Sounds/crew/rus/engineer/gear_down.wav'), loadSample('Custom Sounds/crew/eng/engineer/gear_down.wav')}
eng_tbl["gear_neutr"] = {loadSample('Custom Sounds/crew/rus/engineer/gear_neutr.wav'), loadSample('Custom Sounds/crew/eng/engineer/gear_neutr.wav')}
eng_tbl["gears_up"] = {loadSample('Custom Sounds/crew/rus/engineer/gears_up.wav'), loadSample('Custom Sounds/crew/eng/engineer/gears_up.wav')}
eng_tbl["generators_on"] = {loadSample('Custom Sounds/crew/rus/engineer/generators_on.wav'), loadSample('Custom Sounds/crew/eng/engineer/generators_on.wav')}
eng_tbl["reverse_on"] = {loadSample('Custom Sounds/crew/rus/engineer/reverse_on.wav'), loadSample('Custom Sounds/crew/eng/engineer/reverse_on.wav')}
eng_tbl["start_1"] = {loadSample('Custom Sounds/crew/rus/engineer/start_1.wav'), loadSample('Custom Sounds/crew/eng/engineer/start_1.wav')}
eng_tbl["start_2"] = {loadSample('Custom Sounds/crew/rus/engineer/start_2.wav'), loadSample('Custom Sounds/crew/eng/engineer/start_2.wav')}
eng_tbl["start_3"] = {loadSample('Custom Sounds/crew/rus/engineer/start_3.wav'), loadSample('Custom Sounds/crew/eng/engineer/start_3.wav')}
eng_tbl["start_apu"] = {loadSample('Custom Sounds/crew/rus/engineer/start_apu.wav'), loadSample('Custom Sounds/crew/eng/engineer/start_apu.wav')}
eng_tbl["takeoff_mode"] = {loadSample('Custom Sounds/crew/rus/engineer/takeoff_mode.wav'), loadSample('Custom Sounds/crew/eng/engineer/takeoff_mode.wav')}
eng_tbl["turn_63_on"] = {loadSample('Custom Sounds/crew/rus/engineer/turn_63_on.wav'), loadSample('Custom Sounds/crew/eng/engineer/turn_63_on.wav')}
eng_tbl["valves_closed"] = {loadSample('Custom Sounds/crew/rus/engineer/valves_closed.wav'), loadSample('Custom Sounds/crew/eng/engineer/valves_closed.wav')}
eng_tbl["engines_run"] = {loadSample('Custom Sounds/crew/rus/engineer/engines_run.wav'), loadSample('Custom Sounds/crew/eng/engineer/engines_run.wav')}



gnd_tbl["apu_start_ready"] = {loadSample('Custom Sounds/crew/rus/ground/apu_start_ready.wav'), loadSample('Custom Sounds/crew/eng/ground/apu_start_ready.wav')}
gnd_tbl["blocks_not_removed"] = {loadSample('Custom Sounds/crew/rus/ground/blocks_not_removed.wav'), loadSample('Custom Sounds/crew/eng/ground/blocks_not_removed.wav')}
gnd_tbl["covers_not_removed"] = {loadSample('Custom Sounds/crew/rus/ground/covers_not_removed.wav'), loadSample('Custom Sounds/crew/eng/ground/covers_not_removed.wav')}
gnd_tbl["doors_open"] = {loadSample('Custom Sounds/crew/rus/ground/doors_open.wav'), loadSample('Custom Sounds/crew/eng/ground/doors_open.wav')}
gnd_tbl["eng_start_ready"] = {loadSample('Custom Sounds/crew/rus/ground/eng_start_ready.wav'), loadSample('Custom Sounds/crew/eng/ground/eng_start_ready.wav')}
gnd_tbl["engines_run"] = {loadSample('Custom Sounds/crew/rus/ground/engines_run.wav'), loadSample('Custom Sounds/crew/eng/ground/engines_run.wav')}
gnd_tbl["good_bye"] = {loadSample('Custom Sounds/crew/rus/ground/good_bye.wav'), loadSample('Custom Sounds/crew/eng/ground/good_bye.wav')}
gnd_tbl["start_1"] = {loadSample('Custom Sounds/crew/rus/ground/start_1.wav'), loadSample('Custom Sounds/crew/eng/ground/start_1.wav')}
gnd_tbl["start_2"] = {loadSample('Custom Sounds/crew/rus/ground/start_2.wav'), loadSample('Custom Sounds/crew/eng/ground/start_2.wav')}
gnd_tbl["start_3"] = {loadSample('Custom Sounds/crew/rus/ground/start_3.wav'), loadSample('Custom Sounds/crew/eng/ground/start_3.wav')}

--------------------------------------
-- checklist --
--------------------------------------

cpt_tbl["0"] = {loadSample('Custom Sounds/chklist/rus/cpt/0.wav'), loadSample('Custom Sounds/chklist/eng/cpt/0.wav')}
cpt_tbl["1"] = {loadSample('Custom Sounds/chklist/rus/cpt/1.wav'), loadSample('Custom Sounds/chklist/eng/cpt/1.wav')}
cpt_tbl["2"] = {loadSample('Custom Sounds/chklist/rus/cpt/2.wav'), loadSample('Custom Sounds/chklist/eng/cpt/2.wav')}
cpt_tbl["3"] = {loadSample('Custom Sounds/chklist/rus/cpt/3.wav'), loadSample('Custom Sounds/chklist/eng/cpt/3.wav')}
cpt_tbl["4"] = {loadSample('Custom Sounds/chklist/rus/cpt/4.wav'), loadSample('Custom Sounds/chklist/eng/cpt/4.wav')}
cpt_tbl["5"] = {loadSample('Custom Sounds/chklist/rus/cpt/5.wav'), loadSample('Custom Sounds/chklist/eng/cpt/5.wav')}
cpt_tbl["6"] = {loadSample('Custom Sounds/chklist/rus/cpt/6.wav'), loadSample('Custom Sounds/chklist/eng/cpt/6.wav')}
cpt_tbl["7"] = {loadSample('Custom Sounds/chklist/rus/cpt/7.wav'), loadSample('Custom Sounds/chklist/eng/cpt/7.wav')}
cpt_tbl["8"] = {loadSample('Custom Sounds/chklist/rus/cpt/8.wav'), loadSample('Custom Sounds/chklist/eng/cpt/8.wav')}
cpt_tbl["9"] = {loadSample('Custom Sounds/chklist/rus/cpt/9.wav'), loadSample('Custom Sounds/chklist/eng/cpt/9.wav')}

cpt_tbl["check_free"] = {loadSample('Custom Sounds/chklist/rus/cpt/check_free.wav'), loadSample('Custom Sounds/chklist/eng/cpt/check_free.wav')}
cpt_tbl["check_lines_fit"] = {loadSample('Custom Sounds/chklist/rus/cpt/check_lines_fit.wav'), loadSample('Custom Sounds/chklist/eng/cpt/check_lines_fit.wav')}
cpt_tbl["closed"] = {loadSample('Custom Sounds/chklist/rus/cpt/closed.wav'), loadSample('Custom Sounds/chklist/eng/cpt/closed.wav')}
cpt_tbl["extended"] = {loadSample('Custom Sounds/chklist/rus/cpt/extended.wav'), loadSample('Custom Sounds/chklist/eng/cpt/extended.wav')}
cpt_tbl["neutral"] = {loadSample('Custom Sounds/chklist/rus/cpt/neutral.wav'), loadSample('Custom Sounds/chklist/eng/cpt/neutral.wav')}
cpt_tbl["pressure_set_to"] = {loadSample('Custom Sounds/chklist/rus/cpt/pressure_set_to.wav'), loadSample('Custom Sounds/chklist/eng/cpt/pressure_set_to.wav')}
cpt_tbl["read"] = {loadSample('Custom Sounds/chklist/rus/cpt/read.wav'), loadSample('Custom Sounds/chklist/eng/cpt/read.wav')}
cpt_tbl["ready_to_takeoff"] = {loadSample('Custom Sounds/chklist/rus/cpt/ready_to_takeoff.wav'), loadSample('Custom Sounds/chklist/eng/cpt/ready_to_takeoff.wav')}
cpt_tbl["removed_lights_off"] = {loadSample('Custom Sounds/chklist/rus/cpt/removed_lights_off.wav'), loadSample('Custom Sounds/chklist/eng/cpt/removed_lights_off.wav')}
cpt_tbl["retracted"] = {loadSample('Custom Sounds/chklist/rus/cpt/retracted.wav'), loadSample('Custom Sounds/chklist/eng/cpt/retracted.wav')}
cpt_tbl["set_up"] = {loadSample('Custom Sounds/chklist/rus/cpt/set_up.wav'), loadSample('Custom Sounds/chklist/eng/cpt/set_up.wav')}
cpt_tbl["stab_set_b"] = {loadSample('Custom Sounds/chklist/rus/cpt/stab_set_b.wav'), loadSample('Custom Sounds/chklist/eng/cpt/stab_set_b.wav')}
cpt_tbl["stab_set_f"] = {loadSample('Custom Sounds/chklist/rus/cpt/stab_set_f.wav'), loadSample('Custom Sounds/chklist/eng/cpt/stab_set_f.wav')}
cpt_tbl["stab_set_m"] = {loadSample('Custom Sounds/chklist/rus/cpt/stab_set_m.wav'), loadSample('Custom Sounds/chklist/eng/cpt/stab_set_m.wav')}
cpt_tbl["turned_off"] = {loadSample('Custom Sounds/chklist/rus/cpt/turned_off.wav'), loadSample('Custom Sounds/chklist/eng/cpt/turned_off.wav')}
cpt_tbl["turned_on"] = {loadSample('Custom Sounds/chklist/rus/cpt/turned_on.wav'), loadSample('Custom Sounds/chklist/eng/cpt/turned_on.wav')}
cpt_tbl["turned_on_cap_closed_auto"] = {loadSample('Custom Sounds/chklist/rus/cpt/turned_on_cap_closed_auto.wav'), loadSample('Custom Sounds/chklist/eng/cpt/turned_on_cap_closed_auto.wav')}
cpt_tbl["turned_on2"] = {loadSample('Custom Sounds/chklist/rus/cpt/turned_on2.wav'), loadSample('Custom Sounds/chklist/eng/cpt/turned_on2.wav')}
cpt_tbl["meters"] = {loadSample('Custom Sounds/chklist/rus/cpt/meters.wav'), loadSample('Custom Sounds/chklist/eng/cpt/meters.wav')}

cpt_tbl["fail_1"] = {loadSample('Custom Sounds/chklist/rus/cpt/fail_1.wav'), loadSample('Custom Sounds/chklist/eng/cpt/fail_1.wav')}
cpt_tbl["fail_2"] = {loadSample('Custom Sounds/chklist/rus/cpt/fail_2.wav'), loadSample('Custom Sounds/chklist/eng/cpt/fail_2.wav')}
cpt_tbl["fail_3"] = {loadSample('Custom Sounds/chklist/rus/cpt/fail_3.wav'), loadSample('Custom Sounds/chklist/eng/cpt/fail_3.wav')}
cpt_tbl["fail_4"] = {loadSample('Custom Sounds/chklist/rus/cpt/fail_4.wav'), loadSample('Custom Sounds/chklist/eng/cpt/fail_4.wav')}
cpt_tbl["fail_5"] = {loadSample('Custom Sounds/chklist/rus/cpt/fail_5.wav'), loadSample('Custom Sounds/chklist/eng/cpt/fail_5.wav')}



cop_tbl["0"] = {loadSample('Custom Sounds/chklist/rus/cop/0.wav'), loadSample('Custom Sounds/chklist/eng/cop/0.wav')}
cop_tbl["1"] = {loadSample('Custom Sounds/chklist/rus/cop/1.wav'), loadSample('Custom Sounds/chklist/eng/cop/1.wav')}
cop_tbl["2"] = {loadSample('Custom Sounds/chklist/rus/cop/2.wav'), loadSample('Custom Sounds/chklist/eng/cop/2.wav')}
cop_tbl["3"] = {loadSample('Custom Sounds/chklist/rus/cop/3.wav'), loadSample('Custom Sounds/chklist/eng/cop/3.wav')}
cop_tbl["4"] = {loadSample('Custom Sounds/chklist/rus/cop/4.wav'), loadSample('Custom Sounds/chklist/eng/cop/4.wav')}
cop_tbl["5"] = {loadSample('Custom Sounds/chklist/rus/cop/5.wav'), loadSample('Custom Sounds/chklist/eng/cop/5.wav')}
cop_tbl["6"] = {loadSample('Custom Sounds/chklist/rus/cop/6.wav'), loadSample('Custom Sounds/chklist/eng/cop/6.wav')}
cop_tbl["7"] = {loadSample('Custom Sounds/chklist/rus/cop/7.wav'), loadSample('Custom Sounds/chklist/eng/cop/7.wav')}
cop_tbl["8"] = {loadSample('Custom Sounds/chklist/rus/cop/8.wav'), loadSample('Custom Sounds/chklist/eng/cop/8.wav')}
cop_tbl["9"] = {loadSample('Custom Sounds/chklist/rus/cop/9.wav'), loadSample('Custom Sounds/chklist/eng/cop/9.wav')}

cop_tbl["120"] = {loadSample('Custom Sounds/chklist/rus/cop/120.wav'), loadSample('Custom Sounds/chklist/eng/cop/120.wav')}
cop_tbl["cg_pos"] = {loadSample('Custom Sounds/chklist/rus/cop/cg_pos.wav'), loadSample('Custom Sounds/chklist/eng/cop/cg_pos.wav')}
cop_tbl["checked"] = {loadSample('Custom Sounds/chklist/rus/cop/checked.wav'), loadSample('Custom Sounds/chklist/eng/cop/checked.wav')}
cop_tbl["chk_lines_up"] = {loadSample('Custom Sounds/chklist/rus/cop/chk_lines_up.wav'), loadSample('Custom Sounds/chklist/eng/cop/chk_lines_up.wav')}
cop_tbl["closed"] = {loadSample('Custom Sounds/chklist/rus/cop/closed.wav'), loadSample('Custom Sounds/chklist/eng/cop/closed.wav')}
cop_tbl["ext_flaps_"] = {loadSample('Custom Sounds/chklist/rus/cop/ext_flaps_.wav'), loadSample('Custom Sounds/chklist/eng/cop/ext_flaps_.wav')}
cop_tbl["ext_green_neutr"] = {loadSample('Custom Sounds/chklist/rus/cop/ext_green_neutr.wav'), loadSample('Custom Sounds/chklist/eng/cop/ext_green_neutr.wav')}
cop_tbl["ext_tablo_lit"] = {loadSample('Custom Sounds/chklist/rus/cop/ext_tablo_lit.wav'), loadSample('Custom Sounds/chklist/eng/cop/ext_tablo_lit.wav')}
cop_tbl["off_tablo_lit"] = {loadSample('Custom Sounds/chklist/rus/cop/off_tablo_lit.wav'), loadSample('Custom Sounds/chklist/eng/cop/off_tablo_lit.wav')}
cop_tbl["pressure"] = {loadSample('Custom Sounds/chklist/rus/cop/pressure.wav'), loadSample('Custom Sounds/chklist/eng/cop/pressure.wav')}
cop_tbl["ready"] = {loadSample('Custom Sounds/chklist/rus/cop/ready.wav'), loadSample('Custom Sounds/chklist/eng/cop/ready.wav')}
cop_tbl["removed_tablo_off"] = {loadSample('Custom Sounds/chklist/rus/cop/removed_tablo_off.wav'), loadSample('Custom Sounds/chklist/eng/cop/removed_tablo_off.wav')}
cop_tbl["rv_on"] = {loadSample('Custom Sounds/chklist/rus/cop/rv_on.wav'), loadSample('Custom Sounds/chklist/eng/cop/rv_on.wav')}
cop_tbl["rv_setting"] = {loadSample('Custom Sounds/chklist/rus/cop/rv_setting.wav'), loadSample('Custom Sounds/chklist/eng/cop/rv_setting.wav')}
cop_tbl["stab_0"] = {loadSample('Custom Sounds/chklist/rus/cop/stab_0.wav'), loadSample('Custom Sounds/chklist/eng/cop/stab_0.wav')}
cop_tbl["stab_15"] = {loadSample('Custom Sounds/chklist/rus/cop/-15.wav'), loadSample('Custom Sounds/chklist/eng/cop/-15.wav')}
cop_tbl["stab_3"] = {loadSample('Custom Sounds/chklist/rus/cop/-3.wav'), loadSample('Custom Sounds/chklist/eng/cop/-3.wav')}

cop_tbl["synced"] = {loadSample('Custom Sounds/chklist/rus/cop/synced.wav'), loadSample('Custom Sounds/chklist/eng/cop/synced.wav')}
cop_tbl["turned_on"] = {loadSample('Custom Sounds/chklist/rus/cop/turned_on.wav'), loadSample('Custom Sounds/chklist/eng/cop/turned_on.wav')}
cop_tbl["turned_on_2"] = {loadSample('Custom Sounds/chklist/rus/cop/turned_on_2.wav'), loadSample('Custom Sounds/chklist/eng/cop/turned_on_2.wav')}
cop_tbl["turned_on_chk"] = {loadSample('Custom Sounds/chklist/rus/cop/turned_on_chk.wav'), loadSample('Custom Sounds/chklist/eng/cop/turned_on_chk.wav')}
cop_tbl["weight"] = {loadSample('Custom Sounds/chklist/rus/cop/weight.wav'), loadSample('Custom Sounds/chklist/eng/cop/weight.wav')}

cop_tbl["fail_1"] = {loadSample('Custom Sounds/chklist/rus/cop/fail_1.wav'), loadSample('Custom Sounds/chklist/eng/cop/fail_1.wav')}
cop_tbl["fail_2"] = {loadSample('Custom Sounds/chklist/rus/cop/fail_2.wav'), loadSample('Custom Sounds/chklist/eng/cop/fail_2.wav')}
cop_tbl["fail_3"] = {loadSample('Custom Sounds/chklist/rus/cop/fail_3.wav'), loadSample('Custom Sounds/chklist/eng/cop/fail_3.wav')}
cop_tbl["fail_4"] = {loadSample('Custom Sounds/chklist/rus/cop/fail_4.wav'), loadSample('Custom Sounds/chklist/eng/cop/fail_4.wav')}
cop_tbl["fail_5"] = {loadSample('Custom Sounds/chklist/rus/cop/fail_5.wav'), loadSample('Custom Sounds/chklist/eng/cop/fail_5.wav')}




nav_tbl["0"] = {loadSample('Custom Sounds/chklist/rus/nav/0.wav'), loadSample('Custom Sounds/chklist/eng/nav/0.wav')}
nav_tbl["1"] = {loadSample('Custom Sounds/chklist/rus/nav/1.wav'), loadSample('Custom Sounds/chklist/eng/nav/1.wav')}
nav_tbl["2"] = {loadSample('Custom Sounds/chklist/rus/nav/2.wav'), loadSample('Custom Sounds/chklist/eng/nav/2.wav')}
nav_tbl["3"] = {loadSample('Custom Sounds/chklist/rus/nav/3.wav'), loadSample('Custom Sounds/chklist/eng/nav/3.wav')}
nav_tbl["4"] = {loadSample('Custom Sounds/chklist/rus/nav/4.wav'), loadSample('Custom Sounds/chklist/eng/nav/4.wav')}
nav_tbl["5"] = {loadSample('Custom Sounds/chklist/rus/nav/5.wav'), loadSample('Custom Sounds/chklist/eng/nav/5.wav')}
nav_tbl["6"] = {loadSample('Custom Sounds/chklist/rus/nav/6.wav'), loadSample('Custom Sounds/chklist/eng/nav/6.wav')}
nav_tbl["7"] = {loadSample('Custom Sounds/chklist/rus/nav/7.wav'), loadSample('Custom Sounds/chklist/eng/nav/7.wav')}
nav_tbl["8"] = {loadSample('Custom Sounds/chklist/rus/nav/8.wav'), loadSample('Custom Sounds/chklist/eng/nav/8.wav')}
nav_tbl["9"] = {loadSample('Custom Sounds/chklist/rus/nav/9.wav'), loadSample('Custom Sounds/chklist/eng/nav/9.wav')}

nav_tbl["ABSU"] = {loadSample('Custom Sounds/chklist/rus/nav/ABSU.wav'), loadSample('Custom Sounds/chklist/eng/nav/ABSU.wav')}
nav_tbl["adjuster_stabilizer"] = {loadSample('Custom Sounds/chklist/rus/nav/adjuster_stabilizer.wav'), loadSample('Custom Sounds/chklist/eng/nav/adjuster_stabilizer.wav')}
nav_tbl["air_horizons"] = {loadSample('Custom Sounds/chklist/rus/nav/air_horizons.wav'), loadSample('Custom Sounds/chklist/eng/nav/air_horizons.wav')}
nav_tbl["altimeters"] = {loadSample('Custom Sounds/chklist/rus/nav/altimeters.wav'), loadSample('Custom Sounds/chklist/eng/nav/altimeters.wav')}
nav_tbl["ARK"] = {loadSample('Custom Sounds/chklist/rus/nav/ARK.wav'), loadSample('Custom Sounds/chklist/eng/nav/ARK.wav')}
nav_tbl["befor_DPRM"] = {loadSample('Custom Sounds/chklist/rus/nav/befor_DPRM.wav'), loadSample('Custom Sounds/chklist/eng/nav/befor_DPRM.wav')}
nav_tbl["befor_eng_run"] = {loadSample('Custom Sounds/chklist/rus/nav/befor_eng_run.wav'), loadSample('Custom Sounds/chklist/eng/nav/befor_eng_run.wav')}
nav_tbl["before_3_turn"] = {loadSample('Custom Sounds/chklist/rus/nav/before_3_turn.wav'), loadSample('Custom Sounds/chklist/eng/nav/before_3_turn.wav')}
nav_tbl["before_taxiing"] = {loadSample('Custom Sounds/chklist/rus/nav/before_taxiing.wav'), loadSample('Custom Sounds/chklist/eng/nav/before_taxiing.wav')}
nav_tbl["booster"] = {loadSample('Custom Sounds/chklist/rus/nav/booster.wav'), loadSample('Custom Sounds/chklist/eng/nav/booster.wav')}
nav_tbl["brake"] = {loadSample('Custom Sounds/chklist/rus/nav/brake.wav'), loadSample('Custom Sounds/chklist/eng/nav/brake.wav')}
nav_tbl["checklist_completed"] = {loadSample('Custom Sounds/chklist/rus/nav/checklist_completed.wav'), loadSample('Custom Sounds/chklist/eng/nav/checklist_completed.wav')}
nav_tbl["course_mp"] = {loadSample('Custom Sounds/chklist/rus/nav/course_mp.wav'), loadSample('Custom Sounds/chklist/eng/nav/course_mp.wav')}
nav_tbl["course_mp_ark"] = {loadSample('Custom Sounds/chklist/rus/nav/course_mp_ark.wav'), loadSample('Custom Sounds/chklist/eng/nav/course_mp_ark.wav')}
nav_tbl["course_PNP"] = {loadSample('Custom Sounds/chklist/rus/nav/course_PNP.wav'), loadSample('Custom Sounds/chklist/eng/nav/course_PNP.wav')}
nav_tbl["deicing"] = {loadSample('Custom Sounds/chklist/rus/nav/deicing.wav'), loadSample('Custom Sounds/chklist/eng/nav/deicing.wav')}
nav_tbl["doors"] = {loadSample('Custom Sounds/chklist/rus/nav/doors.wav'), loadSample('Custom Sounds/chklist/eng/nav/doors.wav')}
nav_tbl["elektro_system"] = {loadSample('Custom Sounds/chklist/rus/nav/elektro_system.wav'), loadSample('Custom Sounds/chklist/eng/nav/elektro_system.wav')}
nav_tbl["EUP"] = {loadSample('Custom Sounds/chklist/rus/nav/EUP.wav'), loadSample('Custom Sounds/chklist/eng/nav/EUP.wav')}
nav_tbl["flaps"] = {loadSample('Custom Sounds/chklist/rus/nav/flaps.wav'), loadSample('Custom Sounds/chklist/eng/nav/flaps.wav')}
nav_tbl["fuel_pumps"] = {loadSample('Custom Sounds/chklist/rus/nav/fuel_pumps.wav'), loadSample('Custom Sounds/chklist/eng/nav/fuel_pumps.wav')}
nav_tbl["fuel_quantity"] = {loadSample('Custom Sounds/chklist/rus/nav/fuel_quantity.wav'), loadSample('Custom Sounds/chklist/eng/nav/fuel_quantity.wav')}
nav_tbl["gear"] = {loadSample('Custom Sounds/chklist/rus/nav/gear.wav'), loadSample('Custom Sounds/chklist/eng/nav/gear.wav')}
nav_tbl["landing_date"] = {loadSample('Custom Sounds/chklist/rus/nav/landing_date.wav'), loadSample('Custom Sounds/chklist/eng/nav/landing_date.wav')}
nav_tbl["landing_lights"] = {loadSample('Custom Sounds/chklist/rus/nav/landing_lights.wav'), loadSample('Custom Sounds/chklist/eng/nav/landing_lights.wav')}
nav_tbl["msrp_ssos_rv1"] = {loadSample('Custom Sounds/chklist/rus/nav/msrp_ssos_rv1.wav'), loadSample('Custom Sounds/chklist/eng/nav/msrp_ssos_rv1.wav')}
nav_tbl["navigation_complex"] = {loadSample('Custom Sounds/chklist/rus/nav/navigation_complex.wav'), loadSample('Custom Sounds/chklist/eng/nav/navigation_complex.wav')}
nav_tbl["on_taxiing"] = {loadSample('Custom Sounds/chklist/rus/nav/on_taxiing.wav'), loadSample('Custom Sounds/chklist/eng/nav/on_taxiing.wav')}
nav_tbl["plan"] = {loadSample('Custom Sounds/chklist/rus/nav/plan.wav'), loadSample('Custom Sounds/chklist/eng/nav/plan.wav')}
nav_tbl["plugs_keys_rod"] = {loadSample('Custom Sounds/chklist/rus/nav/plugs_keys_rod.wav'), loadSample('Custom Sounds/chklist/eng/nav/plugs_keys_rod.wav')}
nav_tbl["PN-5_PN-6"] = {loadSample('Custom Sounds/chklist/rus/nav/PN-5_PN-6.wav'), loadSample('Custom Sounds/chklist/eng/nav/PN-5_PN-6.wav')}
nav_tbl["pre_start"] = {loadSample('Custom Sounds/chklist/rus/nav/pre_start.wav'), loadSample('Custom Sounds/chklist/eng/nav/pre_start.wav')}
nav_tbl["prepared"] = {loadSample('Custom Sounds/chklist/rus/nav/prepared.wav'), loadSample('Custom Sounds/chklist/eng/nav/prepared.wav')}
nav_tbl["pressure_hydraulic_systems"] = {loadSample('Custom Sounds/chklist/rus/nav/pressure_hydraulic_systems.wav'), loadSample('Custom Sounds/chklist/eng/nav/pressure_hydraulic_systems.wav')}
nav_tbl["pressure_of_the_airfield"] = {loadSample('Custom Sounds/chklist/rus/nav/pressure_of_the_airfield.wav'), loadSample('Custom Sounds/chklist/eng/nav/pressure_of_the_airfield.wav')}
nav_tbl["ready_takeoff"] = {loadSample('Custom Sounds/chklist/rus/nav/ready_takeoff.wav'), loadSample('Custom Sounds/chklist/eng/nav/ready_takeoff.wav')}
nav_tbl["recorder"] = {loadSample('Custom Sounds/chklist/rus/nav/recorder.wav'), loadSample('Custom Sounds/chklist/eng/nav/recorder.wav')}
nav_tbl["rudders_ailerons"] = {loadSample('Custom Sounds/chklist/rus/nav/rudders_ailerons.wav'), loadSample('Custom Sounds/chklist/eng/nav/rudders_ailerons.wav')}
nav_tbl["RV"] = {loadSample('Custom Sounds/chklist/rus/nav/RV.wav'), loadSample('Custom Sounds/chklist/eng/nav/RV.wav')}
nav_tbl["RV_RN"] = {loadSample('Custom Sounds/chklist/rus/nav/RV_RN.wav'), loadSample('Custom Sounds/chklist/eng/nav/RV_RN.wav')}
nav_tbl["speed_br"] = {loadSample('Custom Sounds/chklist/rus/nav/speed_br.wav'), loadSample('Custom Sounds/chklist/eng/nav/speed_br.wav')}
nav_tbl["SRD"] = {loadSample('Custom Sounds/chklist/rus/nav/SRD.wav'), loadSample('Custom Sounds/chklist/eng/nav/SRD.wav')}
nav_tbl["stabilizer"] = {loadSample('Custom Sounds/chklist/rus/nav/stabilizer.wav'), loadSample('Custom Sounds/chklist/eng/nav/stabilizer.wav')}
nav_tbl["stabilizer_RV"] = {loadSample('Custom Sounds/chklist/rus/nav/stabilizer_RV.wav'), loadSample('Custom Sounds/chklist/eng/nav/stabilizer_RV.wav')}
nav_tbl["switch_on"] = {loadSample('Custom Sounds/chklist/rus/nav/switch_on.wav'), loadSample('Custom Sounds/chklist/eng/nav/switch_on.wav')}
nav_tbl["switch_on_1"] = {loadSample('Custom Sounds/chklist/rus/nav/switch_on_1.wav'), loadSample('Custom Sounds/chklist/eng/nav/switch_on_1.wav')}
nav_tbl["switch_on_agreed"] = {loadSample('Custom Sounds/chklist/rus/nav/switch_on_agreed.wav'), loadSample('Custom Sounds/chklist/eng/nav/switch_on_agreed.wav')}
nav_tbl["switch_on_date"] = {loadSample('Custom Sounds/chklist/rus/nav/switch_on_date.wav'), loadSample('Custom Sounds/chklist/eng/nav/switch_on_date.wav')}
nav_tbl["takeoff_data"] = {loadSample('Custom Sounds/chklist/rus/nav/takeoff_data.wav'), loadSample('Custom Sounds/chklist/eng/nav/takeoff_data.wav')}
nav_tbl["takeoff_start"] = {loadSample('Custom Sounds/chklist/rus/nav/takeoff_start.wav'), loadSample('Custom Sounds/chklist/eng/nav/takeoff_start.wav')}
nav_tbl["TKS"] = {loadSample('Custom Sounds/chklist/rus/nav/TKS.wav'), loadSample('Custom Sounds/chklist/eng/nav/TKS.wav')}
nav_tbl["TOD"] = {loadSample('Custom Sounds/chklist/rus/nav/TOD.wav'), loadSample('Custom Sounds/chklist/eng/nav/TOD.wav')}
nav_tbl["trim"] = {loadSample('Custom Sounds/chklist/rus/nav/trim.wav'), loadSample('Custom Sounds/chklist/eng/nav/trim.wav')}
nav_tbl["UVD"] = {loadSample('Custom Sounds/chklist/rus/nav/UVD.wav'), loadSample('Custom Sounds/chklist/eng/nav/UVD.wav')}
nav_tbl["vents"] = {loadSample('Custom Sounds/chklist/rus/nav/vents.wav'), loadSample('Custom Sounds/chklist/eng/nav/vents.wav')}
nav_tbl["VSU_fuel_sis"] = {loadSample('Custom Sounds/chklist/rus/nav/VSU_fuel_sis.wav'), loadSample('Custom Sounds/chklist/eng/nav/VSU_fuel_sis.wav')}
nav_tbl["V1"] = {loadSample('Custom Sounds/chklist/rus/nav/V1.wav'), loadSample('Custom Sounds/chklist/eng/nav/V1.wav')}
nav_tbl["V2"] = {loadSample('Custom Sounds/chklist/rus/nav/V2.wav'), loadSample('Custom Sounds/chklist/eng/nav/V2.wav')}
nav_tbl["Vr"] = {loadSample('Custom Sounds/chklist/rus/nav/Vr.wav'), loadSample('Custom Sounds/chklist/eng/nav/Vr.wav')}
nav_tbl["before_lineup"] = {loadSample('Custom Sounds/chklist/rus/nav/Hold_short.wav'), loadSample('Custom Sounds/chklist/eng/nav/Hold_short.wav')}
nav_tbl["ready"] = {loadSample('Custom Sounds/chklist/rus/nav/ready.wav'), loadSample('Custom Sounds/chklist/eng/nav/ready.wav')}
nav_tbl["TKS_ready"] = {loadSample('Custom Sounds/chklist/rus/nav/TKS_ready.wav'), loadSample('Custom Sounds/chklist/eng/nav/TKS_ready.wav')}
nav_tbl["TKS_aligned"] = {loadSample('Custom Sounds/chklist/rus/nav/TKS_aligned.wav'), loadSample('Custom Sounds/chklist/eng/nav/TKS_aligned.wav')}

nav_tbl["fail_1"] = {loadSample('Custom Sounds/chklist/rus/nav/fail_1.wav'), loadSample('Custom Sounds/chklist/eng/nav/fail_1.wav')}
nav_tbl["fail_2"] = {loadSample('Custom Sounds/chklist/rus/nav/fail_2.wav'), loadSample('Custom Sounds/chklist/eng/nav/fail_2.wav')}
nav_tbl["fail_3"] = {loadSample('Custom Sounds/chklist/rus/nav/fail_3.wav'), loadSample('Custom Sounds/chklist/eng/nav/fail_3.wav')}
nav_tbl["fail_4"] = {loadSample('Custom Sounds/chklist/rus/nav/fail_4.wav'), loadSample('Custom Sounds/chklist/eng/nav/fail_4.wav')}
nav_tbl["fail_5"] = {loadSample('Custom Sounds/chklist/rus/nav/fail_5.wav'), loadSample('Custom Sounds/chklist/eng/nav/fail_5.wav')}





eng_tbl["0"] = {loadSample('Custom Sounds/chklist/rus/eng/0.wav'), loadSample('Custom Sounds/chklist/eng/eng/0.wav')}
eng_tbl["1"] = {loadSample('Custom Sounds/chklist/rus/eng/1.wav'), loadSample('Custom Sounds/chklist/eng/eng/1.wav')}
eng_tbl["2"] = {loadSample('Custom Sounds/chklist/rus/eng/2.wav'), loadSample('Custom Sounds/chklist/eng/eng/2.wav')}
eng_tbl["3"] = {loadSample('Custom Sounds/chklist/rus/eng/3.wav'), loadSample('Custom Sounds/chklist/eng/eng/3.wav')}
eng_tbl["4"] = {loadSample('Custom Sounds/chklist/rus/eng/4.wav'), loadSample('Custom Sounds/chklist/eng/eng/4.wav')}
eng_tbl["5"] = {loadSample('Custom Sounds/chklist/rus/eng/5.wav'), loadSample('Custom Sounds/chklist/eng/eng/5.wav')}
eng_tbl["6"] = {loadSample('Custom Sounds/chklist/rus/eng/6.wav'), loadSample('Custom Sounds/chklist/eng/eng/6.wav')}
eng_tbl["7"] = {loadSample('Custom Sounds/chklist/rus/eng/7.wav'), loadSample('Custom Sounds/chklist/eng/eng/7.wav')}
eng_tbl["8"] = {loadSample('Custom Sounds/chklist/rus/eng/8.wav'), loadSample('Custom Sounds/chklist/eng/eng/8.wav')}
eng_tbl["9"] = {loadSample('Custom Sounds/chklist/rus/eng/9.wav'), loadSample('Custom Sounds/chklist/eng/eng/9.wav')}

eng_tbl["180"] = {loadSample('Custom Sounds/chklist/rus/eng/180.wav'), loadSample('Custom Sounds/chklist/eng/eng/180.wav')}
eng_tbl["210"] = {loadSample('Custom Sounds/chklist/rus/eng/210.wav'), loadSample('Custom Sounds/chklist/eng/eng/210.wav')}
eng_tbl["absu_ok"] = {loadSample('Custom Sounds/chklist/rus/eng/absu_ok.wav'), loadSample('Custom Sounds/chklist/eng/eng/absu_ok.wav')}
eng_tbl["auto"] = {loadSample('Custom Sounds/chklist/rus/eng/auto.wav'), loadSample('Custom Sounds/chklist/eng/eng/auto.wav')}
eng_tbl["chk_on"] = {loadSample('Custom Sounds/chklist/rus/eng/chk_on.wav'), loadSample('Custom Sounds/chklist/eng/eng/chk_on.wav')}
eng_tbl["closed_tablo_off"] = {loadSample('Custom Sounds/chklist/rus/eng/closed_tablo_off.wav'), loadSample('Custom Sounds/chklist/eng/eng/closed_tablo_off.wav')}
eng_tbl["off"] = {loadSample('Custom Sounds/chklist/rus/eng/off.wav'), loadSample('Custom Sounds/chklist/eng/eng/off.wav')}
eng_tbl["on"] = {loadSample('Custom Sounds/chklist/rus/eng/on.wav'), loadSample('Custom Sounds/chklist/eng/eng/on.wav')}
eng_tbl["on_board"] = {loadSample('Custom Sounds/chklist/rus/eng/on_board.wav'), loadSample('Custom Sounds/chklist/eng/eng/on_board.wav')}
eng_tbl["on_data_set"] = {loadSample('Custom Sounds/chklist/rus/eng/on_data_set.wav'), loadSample('Custom Sounds/chklist/eng/eng/on_data_set.wav')}
eng_tbl["press_650_set"] = {loadSample('Custom Sounds/chklist/rus/eng/press_650_set.wav'), loadSample('Custom Sounds/chklist/eng/eng/press_650_set.wav')}
eng_tbl["pumps_on"] = {loadSample('Custom Sounds/chklist/rus/eng/pumps_on.wav'), loadSample('Custom Sounds/chklist/eng/eng/pumps_on.wav')}
eng_tbl["ready"] = {loadSample('Custom Sounds/chklist/rus/eng/ready.wav'), loadSample('Custom Sounds/chklist/eng/eng/ready.wav')}
eng_tbl["tonns"] = {loadSample('Custom Sounds/chklist/rus/eng/tonns.wav'), loadSample('Custom Sounds/chklist/eng/eng/tonns.wav')}
eng_tbl["turned_on_2"] = {loadSample('Custom Sounds/chklist/rus/eng/turned_on_2.wav'), loadSample('Custom Sounds/chklist/eng/eng/turned_on_2.wav')}
eng_tbl["turned_off_2"] = {loadSample('Custom Sounds/chklist/rus/eng/turned_off_2.wav'), loadSample('Custom Sounds/chklist/eng/eng/turned_off_2.wav')}


eng_tbl["fail_1"] = {loadSample('Custom Sounds/chklist/rus/eng/fail_1.wav'), loadSample('Custom Sounds/chklist/eng/eng/fail_1.wav')}
eng_tbl["fail_2"] = {loadSample('Custom Sounds/chklist/rus/eng/fail_2.wav'), loadSample('Custom Sounds/chklist/eng/eng/fail_2.wav')}
eng_tbl["fail_3"] = {loadSample('Custom Sounds/chklist/rus/eng/fail_3.wav'), loadSample('Custom Sounds/chklist/eng/eng/fail_3.wav')}
eng_tbl["fail_4"] = {loadSample('Custom Sounds/chklist/rus/eng/fail_4.wav'), loadSample('Custom Sounds/chklist/eng/eng/fail_4.wav')}
eng_tbl["fail_5"] = {loadSample('Custom Sounds/chklist/rus/eng/fail_5.wav'), loadSample('Custom Sounds/chklist/eng/eng/fail_5.wav')}














