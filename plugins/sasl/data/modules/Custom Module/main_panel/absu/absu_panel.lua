-- this is ABSU panel script



include("smooth_light.lua")



local passed = get(frame_time)
local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(absu_needles_on, 0)
		set(absu_nav_on, 0)
		set(absu_speed_prepare, 0)
		
		set(absu_roll_ch_on, 0)
		set(absu_pitch_ch_on, 0)
		
		--[[
		set(hydro_ra56_rud_1, 0)
		set(hydro_ra56_rud_2, 0)
		set(hydro_ra56_rud_3, 0)
		
		set(hydro_ra56_ail_1, 0)
		set(hydro_ra56_ail_2, 0)
		set(hydro_ra56_ail_3, 0)
		
		set(hydro_ra56_elev_1, 0)
		set(hydro_ra56_elev_2, 0)
		set(hydro_ra56_elev_3, 0)
		--]]
		
	end
	
	notLoaded = false

end




-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')


local button_summ_last = 0

local function buttons()

	local summ = get(absu_zk) + get(absu_reset) + get(absu_nvu) + get(absu_az1) + get(absu_az2) + get(absu_app)
	summ = summ + get(absu_gs) + get(absu_stab_m) + get(absu_stab_v) + get(absu_stab_h) + get(absu_stab)
	summ = summ + get(absu_arrest) + get(absu_speed_test_1) + get(absu_speed_test_2)
	summ = summ + get(absu_stab_speed) + get(absu_throt_off_1) + get(absu_throt_off_2) + get(absu_throt_off_3) + get(lamp_test_eng)
	
	if button_summ_last ~= summ then  end
	
	button_summ_last = summ

end


local switchers_summ = 0

local function switchers()

	local summ = get(absu_zpu_sel) + get(absu_nav_on) + get(absu_landing_on) + get(absu_needles_on) + get(absu_speed_mode)
	summ = summ + get(absu_speed_change) + get(absu_speed_off) + get(absu_speed_prepare) + get(absu_speed_us_right_left)
	summ = summ + get(absu_roll_ch_on) + get(absu_pitch_ch_on) + get(absu_smooth_on)
	summ = summ + get(hydro_ra56_rud_1) + get(hydro_ra56_rud_2) + get(hydro_ra56_rud_3)
	summ = summ + get(hydro_ra56_ail_1) + get(hydro_ra56_ail_2) + get(hydro_ra56_ail_3)
	summ = summ + get(hydro_ra56_elev_1) + get(hydro_ra56_elev_2) + get(hydro_ra56_elev_3)
	summ = summ + get(hydro_circuit_auto_man) + get(hydro_long_control)
	summ = summ + get(ZK_select) + get(nav_select) + get(vbe_select)
	
	if switchers_summ ~= summ then  end
	
	switchers_summ = summ
	
	-- pitch wheel

	local wheel = get(absu_pitch_wheel) 
	wheel = wheel + get(absu_pitch_wheel_dir) * get(frame_time) * 10
	
	while wheel > 20 do wheel = wheel - 20 end
	while wheel < -20 do wheel = wheel + 20 end 
	

	set(absu_pitch_wheel, wheel)
	
	-- turn handle
	
	if math.abs(get(absu_turn_handle)) <= 1 then set(absu_turn_handle, 0) end
	
	
	
end


local caps_summ = 0

local function caps()
	
	local summ = get(absu_arrest_cap) + get(absu_smooth_on_cap) + get(absu_speed_prepare_cap) + get(absu_speed_off_cap)
	summ = summ + get(hydro_circuit_auto_man_cap) + get(hydro_long_control_cap)
	
	if caps_summ ~= summ then  end
	
	caps_summ = summ
	
	if get(hydro_circuit_auto_man_cap) == 0 then set(hydro_circuit_auto_man, 0) end
	if get(hydro_long_control_cap) == 0 then set(hydro_long_control, 1) end
	


end


local function gauges()

	set(absu_roll_mode, get(roll_main_mode))
	set(absu_pitch_mode, get(pitch_main_mode))



end

local elev_tr_last = get(int_pitch_trim)

local stu_test_1_cntr = 0
local stu_test_2_cntr = 0
local triangle_timer = 0
local triangle_lit = 0

local function lamps()
	local test_btn = get(lamp_test) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	local small_lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) -- small lamps and buttons

	local roll_mode = get(roll_main_mode)
	local pitch_mode = get(pitch_main_mode)
	
	local roll_submode = get(roll_sub_mode)
	local pitch_submode = get(pitch_sub_mode)
	
	
	-- 	button lamps
	local absu_zk_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 2) * lamps_brt * day_night, test_btn)
	set(absu_zk_lamp, smooth_light(absu_zk_lamp_brt, get(absu_zk_lamp)))
	
	local absu_reset_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 1 and pitch_submode ~= 6) * lamps_brt * day_night, test_btn) 
	set(absu_reset_lamp, smooth_light(absu_reset_lamp_brt, get(absu_reset_lamp)))
	
	local absu_nvu_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 3) * lamps_brt * day_night, test_btn)
	set(absu_nvu_lamp, smooth_light(absu_nvu_lamp_brt, get(absu_nvu_lamp)))
	
	local absu_az1_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 4) * lamps_brt * day_night, test_btn)
	set(absu_az1_lamp, smooth_light(absu_az1_lamp_brt, get(absu_az1_lamp)))
	
	local absu_az2_lamp_brt = math.max(bool2int(roll_mode > 0 and roll_submode == 5) * lamps_brt * day_night, test_btn)
	set(absu_az2_lamp, smooth_light(absu_az2_lamp_brt, get(absu_az2_lamp)))
	
	local absu_app_lamp_brt = math.max(bool2int(roll_mode > 0 and (roll_submode == 6 or roll_submode == 10)) * lamps_brt * day_night, test_btn) 
	set(absu_app_lamp, smooth_light(absu_app_lamp_brt, get(absu_app_lamp)))
	
	local absu_gz_lamp_brt = math.max(bool2int(roll_mode > 0 and (pitch_submode == 5 or pitch_submode == 10)) * lamps_brt * day_night, test_btn) 
	set(absu_gz_lamp, smooth_light(absu_gz_lamp_brt, get(absu_gz_lamp)))
	
	local absu_stab_m_lamp_brt = math.max(bool2int(pitch_mode > 0 and pitch_submode == 3) * lamps_brt * day_night, test_btn) 
	set(absu_stab_m_lamp, smooth_light(absu_stab_m_lamp_brt, get(absu_stab_m_lamp)))
	
	local absu_stab_v_lamp_brt = math.max(bool2int(pitch_mode > 0 and pitch_submode == 2) * lamps_brt * day_night, test_btn)
	set(absu_stab_v_lamp, smooth_light(absu_stab_v_lamp_brt, get(absu_stab_v_lamp)))
	
	local absu_stab_h_lamp_brt = math.max(bool2int(pitch_mode > 0 and pitch_submode == 4) * lamps_brt * day_night, test_btn) 
	set(absu_stab_h_lamp, smooth_light(absu_stab_h_lamp_brt, get(absu_stab_h_lamp)))
	
	--local absu_stab_lamp_brt = math.max(bool2int(pitch_mode == 2 or roll_mode == 2) * lamps_brt * day_night, test_btn)
	set(absu_stab_lamp, 0)
	
	local AT_mode = get(stu_mode)
	
	local absu_stab_spd_lamp_brt = math.max(bool2int(AT_mode > 2) * lamps_brt * day_night, test_btn)
	set(absu_stab_spd_lamp, smooth_light(absu_stab_spd_lamp_brt, get(absu_stab_spd_lamp)))
	
	local absu_thro1_lamp_brt = math.max(bool2int(AT_mode > 2 and get(absu_throt_off_1) == 1) * lamps_brt * day_night, test_btn)
	set(absu_thro1_lamp, smooth_light(absu_thro1_lamp_brt, get(absu_thro1_lamp)))
	
	local absu_thro2_lamp_brt = math.max(bool2int(AT_mode > 2 and get(absu_throt_off_2) == 1) * lamps_brt * day_night, test_btn) 
	set(absu_thro2_lamp, smooth_light(absu_thro2_lamp_brt, get(absu_thro2_lamp)))
	
	local absu_thro3_lamp_brt = math.max(bool2int(AT_mode > 2 and get(absu_throt_off_3) == 1) * lamps_brt * day_night, test_btn) 
	set(absu_thro3_lamp, smooth_light(absu_thro3_lamp_brt, get(absu_thro3_lamp)))

	
	local nav_prep = get(absu_nav_on) == 1
	local land_prep = get(absu_landing_on) == 1
	
	local absu_roll_mod = get(roll_main_mode)
	local absu_pitch_mod = get(pitch_main_mode)
	
	if get(absu_speed_test_2) == 1 and (nav_prep or land_prep) then
		stu_test_1_cntr = stu_test_1_cntr + passed
	else
		stu_test_1_cntr = 0
	end
	
	
	local stu_roll_lamp_brt = math.max(bool2int(absu_roll_mod >= 1 and absu_pitch_mod >= 1 and (land_prep) and stu_test_1_cntr < 1 and get(absu_calc_roll_fail) == 0) * lamps_brt * day_night, test_btn) 
	set(stu_roll_lamp, smooth_light(stu_roll_lamp_brt, get(stu_roll_lamp)))
	
	local stu_pitch_lamp_brt = math.max(bool2int(absu_roll_mod >= 1 and absu_pitch_mod >= 1 and land_prep and stu_test_1_cntr < 0.5 and get(absu_calc_pitch_fail) == 0) * lamps_brt * day_night, test_btn) 
	set(stu_pitch_lamp, smooth_light(stu_pitch_lamp_brt, get(stu_pitch_lamp)))
	
	local stu_toga_lamp_brt = math.max(bool2int(absu_roll_mod >= 1 and absu_pitch_mod >= 1 and land_prep and stu_test_1_cntr < 0.5 and get(absu_calc_toga_fail) == 0) * lamps_brt * day_night, test_btn)
	set(stu_toga_lamp, smooth_light(stu_toga_lamp_brt, get(stu_toga_lamp)))
	
	
	local at_off = get(absu_speed_off)
	
	if get(absu_speed_test_1) == 1 and AT_mode > 1 then
		stu_test_2_cntr = stu_test_2_cntr + passed
	else
		stu_test_2_cntr = 0
	end
	
	
	local at_1_lamp_brt = math.max(bool2int(AT_mode > 1 and at_off ~= 1 and stu_test_2_cntr < 10 and get(absu_at1_fail) == 0) * lamps_brt * day_night, test_btn)
	set(at_1_lamp, smooth_light(at_1_lamp_brt, get(at_1_lamp)))
	
	local at_2_lamp_brt = math.max(bool2int(AT_mode > 1 and at_off ~= -1 and stu_test_2_cntr < 10 and get(absu_at2_fail) == 0) * lamps_brt * day_night, test_btn)
	set(at_2_lamp, smooth_light(at_2_lamp_brt, get(at_2_lamp)))
	
	
	
	
	-- panel lamps
	
	local elev_tr_now = get(int_pitch_trim)
	local trim_fail = bool2int(get(pitch_main_mode) == 2 and (get(elev_trimm_switcher) ~= 0 or get(emerg_elev_trimm) ~= 0) or (get(absu_pitch_trimm) ~= 0 and elev_tr_now - elev_tr_last == 0))
	elev_tr_last = elev_tr_now
	
	local wrong_trimm_brt = math.max(trim_fail * lamps_brt * day_night, test_btn)
	
	if get(ismaster) ~= 1 then
	set(wrong_trimm, smooth_light(wrong_trimm_brt, get(wrong_trimm)))
	end
	
	
	local controll_roll_brt = math.max(get(man_roll_lamp) * lamps_brt * day_night, test_btn) 
	set(controll_roll, smooth_light(controll_roll_brt, get(controll_roll)))
	
	local controll_pitch_brt = math.max(get(man_pitch_lamp) * lamps_brt * day_night, test_btn)
	set(controll_pitch, smooth_light(controll_pitch_brt, get(controll_pitch)))
	
	local yoke_sign_brt = math.max(get(man_toga_lamp) * lamps_brt * day_night, test_btn)
	set(yoke_sign, smooth_light(yoke_sign_brt, get(yoke_sign)))
	
	if get(triangle_lamp_signal) == 1 then
		triangle_timer = triangle_timer + passed
		if triangle_timer > 0.3 then 
			triangle_lit = 1 - triangle_lit 
			triangle_timer = 0
		end
		
	else
		triangle_lit = 0
		triangle_timer = 0
	end
	
	
	
	
	
	local triangle_brt = math.max(triangle_lit * lamps_brt * day_night, test_btn)
	set(triangle, smooth_light(triangle_brt, get(triangle)))
	
	local controll_thrust_brt = math.max(bool2int(AT_mode == -1) * lamps_brt * day_night, test_btn)
	set(controll_thrust, smooth_light(controll_thrust_brt, get(controll_thrust)))
	
	local toga_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 6) * lamps_brt * day_night, test_btn)
	set(toga, smooth_light(toga_brt, get(toga)))
	
	
	local course_lim_brt = math.max(get(absu_course_out) * lamps_brt * day_night, test_btn) 
	set(course_lim, smooth_light(course_lim_brt, get(course_lim)))
	
	local gs_lim_brt = math.max(get(absu_gs_out) * lamps_brt * day_night, test_btn)
	set(gs_lim, smooth_light(gs_lim_brt, get(gs_lim)))
	
	
	
	local course_brt = math.max(bool2int(roll_mode == 2 and roll_submode == 6) * lamps_brt * day_night, test_btn)
	set(course, smooth_light(course_brt, get(course)))
	
	local glideslope_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 5) * lamps_brt * day_night, test_btn)
	set(glideslope, smooth_light(glideslope_brt, get(glideslope)))
	
	local zk_lamp_brt = math.max(bool2int(roll_mode == 2 and roll_submode == 2) * lamps_brt * day_night, test_btn)
	set(zk_lamp, smooth_light(zk_lamp_brt, get(zk_lamp)))
	
	local thrust_automat_brt = math.max(bool2int(AT_mode > 2) * lamps_brt * day_night, test_btn)
	set(thrust_automat, smooth_light(thrust_automat_brt, get(thrust_automat)))
	
	local stab_roll_brt = math.max(bool2int(roll_mode == 2 and (roll_submode == 1 or roll_submode == 10)) * lamps_brt * day_night, test_btn) 
	set(stab_roll, smooth_light(stab_roll_brt, get(stab_roll)))
	
	local stab_pitch_brt = math.max(bool2int(pitch_mode == 2 and (pitch_submode == 1 or pitch_submode == 10)) * lamps_brt * day_night, test_btn)
	set(stab_pitch, smooth_light(stab_pitch_brt, get(stab_pitch)))
	
	local nvu_lamp_brt = math.max(bool2int(roll_mode == 2 and roll_submode == 3) * lamps_brt * day_night, test_btn)
	set(nvu_lamp, smooth_light(nvu_lamp_brt, get(nvu_lamp)))
	
	local vor_lamp_brt = math.max(bool2int(roll_mode == 2 and (roll_submode == 4 or roll_submode == 5)) * lamps_brt * day_night, test_btn)
	set(vor_lamp, smooth_light(vor_lamp_brt, get(vor_lamp)))
	
	local sns_lamp_brt = math.max(bool2int(roll_mode >= 1 and roll_submode == 3 and get(nav_select) == 1) * lamps_brt * day_night, test_btn)
	set(sns_lamp, smooth_light(sns_lamp_brt, get(sns_lamp)))
	
	
	local stab_h_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 4) * lamps_brt * day_night, test_btn)
	set(stab_h, smooth_light(stab_h_brt, get(stab_h)))
	
	local stab_v_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 2) * lamps_brt * day_night, test_btn)
	set(stab_v, smooth_light(stab_v_brt, get(stab_v)))
	
	local stab_m_brt = math.max(bool2int(pitch_mode == 2 and pitch_submode == 3) * lamps_brt * day_night, test_btn)
	set(stab_m, smooth_light(stab_m_brt, get(stab_m)))
	
	local pitch_control_fail_brt = math.max(get(pitch_contr_lamp) * lamps_brt * day_night, test_btn)
	set(pitch_control_fail, smooth_light(pitch_control_fail_brt, get(pitch_control_fail)))
	
	local roll_control_fail_brt = math.max(get(roll_contr_lamp) * lamps_brt * day_night, test_btn) 
	set(roll_control_fail, smooth_light(roll_control_fail_brt, get(roll_control_fail)))
	
	
	
	local absu_work_logic = get(pkp_fail_left) + get(pkp_fail_right) + get(mgv_contr_fail) < 2
	absu_work_logic = absu_work_logic and bool2int(get(pressure_ind_1) < 100) + bool2int(get(pressure_ind_2) < 100) + bool2int(get(pressure_ind_3) < 100) < 2
	
	local ra56_rud_on = get(hydro_ra56_rud_1) * bool2int(get(absu_ra56_yaw_fail) ~= 3) + get(hydro_ra56_rud_2) * bool2int(get(absu_ra56_yaw_fail) == 0) + get(hydro_ra56_rud_3)  * bool2int(get(absu_ra56_yaw_fail) < 2) > 1

	local ra56_ail_on = get(hydro_ra56_ail_1) * bool2int(get(absu_ra56_roll_fail) == 0) + get(hydro_ra56_ail_2) * bool2int(get(absu_ra56_roll_fail) ~= 3) + get(hydro_ra56_ail_3) * bool2int(get(absu_ra56_roll_fail) < 2) > 1
	
	local ra56_elev_on = get(hydro_ra56_elev_1) * bool2int(get(absu_ra56_pitch_fail) ~= 3) + get(hydro_ra56_elev_2) * bool2int(get(absu_ra56_pitch_fail) < 2) + get(hydro_ra56_elev_3) * bool2int(get(absu_ra56_pitch_fail) == 0) > 1
	
	local chan_1_work = get(hydro_ra56_rud_1) * bool2int(get(absu_ra56_yaw_fail) ~= 3) + get(hydro_ra56_ail_1) * bool2int(get(absu_ra56_roll_fail) == 0) + get(hydro_ra56_elev_1) * bool2int(get(absu_ra56_pitch_fail) ~= 3) > 0
	local chan_2_work = get(hydro_ra56_rud_2) * bool2int(get(absu_ra56_yaw_fail) == 0) + get(hydro_ra56_ail_2) * bool2int(get(absu_ra56_roll_fail) ~= 3) + get(hydro_ra56_elev_2) * bool2int(get(absu_ra56_pitch_fail) < 2) > 0
	local chan_3_work = get(hydro_ra56_rud_3)  * bool2int(get(absu_ra56_yaw_fail) < 2) + get(hydro_ra56_ail_3) * bool2int(get(absu_ra56_roll_fail) < 2) + get(hydro_ra56_elev_3) * bool2int(get(absu_ra56_pitch_fail) == 0) > 0
		
	absu_work_logic = absu_work_logic and (ra56_rud_on and ra56_ail_on and ra56_elev_on)
	absu_work_logic = absu_work_logic and chan_1_work and chan_2_work and chan_3_work
	absu_work_logic = absu_work_logic and get(sau_stu_on) == 1 and get(tks_fail_left) + get(tks_fail_right) == 0
	absu_work_logic = absu_work_logic and stu_test_1_cntr < 0.5
	absu_work_logic = absu_work_logic and get(absu_damp_roll_fail) == 0 and get(absu_damp_pitch_fail) == 0 and get(absu_damp_yaw_fail) == 0
	absu_work_logic = absu_work_logic and get(absu_contr_roll_fail) == 0 and get(absu_contr_pitch_fail) == 0
	
	local absu_work_brt = bool2int(absu_work_logic)
	
	
	
	absu_work_brt = math.max(absu_work_brt * lamps_brt * day_night, 0) 
	set(absu_work, smooth_light(absu_work_brt, get(absu_work)))
	
	
	-- eng panel lamps
	local test_btn_eng = get(lamp_test_eng) * math.max(get(bus27_volt_right) - 10 / 18.5, 0)
	
	local ra56_roll_fail_1_brt = math.max(bool2int(get(hydro_ra56_ail_1) == 0 or get(absu_ra56_roll_fail) > 0) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_roll_fail_1, smooth_light(ra56_roll_fail_1_brt, get(ra56_roll_fail_1)))
	
	local ra56_roll_fail_2_brt = math.max(bool2int(get(hydro_ra56_ail_2) == 0 or get(absu_ra56_roll_fail) > 2) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_roll_fail_2, smooth_light(ra56_roll_fail_2_brt, get(ra56_roll_fail_2)))
	
	local ra56_roll_fail_3_brt = math.max(bool2int(get(hydro_ra56_ail_3) == 0 or get(absu_ra56_roll_fail) > 1) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_roll_fail_3, smooth_light(ra56_roll_fail_3_brt, get(ra56_roll_fail_3)))
	
	
	local ra56_pitch_fail_1_brt = math.max(bool2int(get(hydro_ra56_elev_1) == 0 or get(absu_ra56_pitch_fail) > 2) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_pitch_fail_1, smooth_light(ra56_pitch_fail_1_brt, get(ra56_pitch_fail_1)))
	
	local ra56_pitch_fail_2_brt = math.max(bool2int(get(hydro_ra56_elev_2) == 0 or get(absu_ra56_pitch_fail) > 1) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_pitch_fail_2, smooth_light(ra56_pitch_fail_2_brt, get(ra56_pitch_fail_2)))
	
	local ra56_pitch_fail_3_brt = math.max(bool2int(get(hydro_ra56_elev_3) == 0 or get(absu_ra56_pitch_fail) > 0) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_pitch_fail_3, smooth_light(ra56_pitch_fail_3_brt, get(ra56_pitch_fail_3)))
	
	
	local ra56_course_fail_1_brt = math.max(bool2int(get(hydro_ra56_rud_1) == 0 or get(absu_ra56_yaw_fail) > 2) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_course_fail_1, smooth_light(ra56_course_fail_1_brt, get(ra56_course_fail_1)))
	
	local ra56_course_fail_2_brt = math.max(bool2int(get(hydro_ra56_rud_2) == 0 or get(absu_ra56_yaw_fail) > 0) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_course_fail_2, smooth_light(ra56_course_fail_2_brt, get(ra56_course_fail_2)))
	
	local ra56_course_fail_3_brt = math.max(bool2int(get(hydro_ra56_rud_3) == 0 or get(absu_ra56_yaw_fail) > 1) * lamps_brt * day_night, test_btn_eng) 
	set(ra56_course_fail_3, smooth_light(ra56_course_fail_3_brt, get(ra56_course_fail_3)))
	
	
	

end




function update()

	buttons()
	switchers()
	caps()
	lamps()
	gauges()
	
	
	passed = get(frame_time)
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end

end








