-- this is ABSU 2D panel

size = {917, 597}

defineProperty("hide_eng_objects", globalPropertyi("tu154ce/lang/hide_eng_objects")) -- спрятать английские объекты кабины. 1 = RUS

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("show_absu_panel",globalPropertyi("tu154ce/panels/show_absu_panel")) -- показать панель АБСУ
-- gauges
defineProperty("absu_roll_mode", globalPropertyi("tu154ce/gauges/console/absu_roll_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
defineProperty("absu_pitch_mode", globalPropertyi("tu154ce/gauges/console/absu_pitch_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб

-- controls
defineProperty("absu_zpu_sel", globalPropertyi("tu154ce/switchers/console/absu_zpu_sel")) -- переключатель ЗПУ. лев - прав
defineProperty("absu_nav_on", globalPropertyi("tu154ce/switchers/console/absu_nav_on")) -- стрелки навигация
defineProperty("absu_landing_on", globalPropertyi("tu154ce/switchers/console/absu_landing_on")) -- стрелки посадка
defineProperty("absu_needles_on", globalPropertyi("tu154ce/switchers/console/absu_needles_on")) -- стрелки
defineProperty("absu_speed_mode", globalPropertyi("tu154ce/switchers/console/absu_speed_mode")) -- режим СТУ. 0 - откл, 1 - нву, 2 - аз1, 3 - аз2, 4 - пос
defineProperty("absu_speed_change", globalPropertyi("tu154ce/switchers/console/absu_speed_change")) -- ручка изменения скорости. 
defineProperty("absu_speed_off", globalPropertyi("tu154ce/switchers/console/absu_speed_off")) -- отключение 1 и 2
defineProperty("absu_speed_prepare", globalPropertyi("tu154ce/switchers/console/absu_speed_prepare")) -- подготовка
defineProperty("absu_speed_us_right_left", globalPropertyi("tu154ce/switchers/console/absu_speed_us_right_left")) -- подготовка

defineProperty("absu_roll_ch_on", globalPropertyi("tu154ce/switchers/console/absu_roll_ch_on")) -- выключатель канал крена
defineProperty("absu_pitch_ch_on", globalPropertyi("tu154ce/switchers/console/absu_pitch_ch_on")) -- выключатель канала тангажа
defineProperty("absu_smooth_on", globalPropertyi("tu154ce/switchers/console/absu_smooth_on")) -- выключатель "в болтанку"

defineProperty("absu_turn_handle", globalPropertyi("tu154ce/switchers/console/absu_turn_handle")) -- ручка поворота
defineProperty("absu_pitch_wheel", globalPropertyf("tu154ce/switchers/console/absu_pitch_wheel")) -- колесико спуска, подъема
defineProperty("absu_pitch_wheel_dir", globalPropertyi("tu154ce/switchers/console/absu_pitch_wheel_dir")) -- колесико спуска, подъема

-- buttons
defineProperty("absu_zk", globalPropertyi("tu154ce/buttons/console/absu_zk")) -- кнопка ЗК на панели АБСУ
defineProperty("absu_reset", globalPropertyi("tu154ce/buttons/console/absu_reset")) -- кнопка сброс программы на панели АБСУ
defineProperty("absu_nvu", globalPropertyi("tu154ce/buttons/console/absu_nvu")) -- кнопка НВУ на панели АБСУ
defineProperty("absu_az1", globalPropertyi("tu154ce/buttons/console/absu_az1")) -- кнопка АЗ 1 на панели АБСУ
defineProperty("absu_az2", globalPropertyi("tu154ce/buttons/console/absu_az2")) -- кнопка АЗ 2 на панели АБСУ
defineProperty("absu_app", globalPropertyi("tu154ce/buttons/console/absu_app")) -- кнопка заход на панели АБСУ
defineProperty("absu_gs", globalPropertyi("tu154ce/buttons/console/absu_gs")) -- кнопка глиссада на панели АБСУ
defineProperty("absu_stab_m", globalPropertyi("tu154ce/buttons/console/absu_stab_m")) -- кнопка M на панели АБСУ
defineProperty("absu_stab_v", globalPropertyi("tu154ce/buttons/console/absu_stab_v")) -- кнопка V на панели АБСУ
defineProperty("absu_stab_h", globalPropertyi("tu154ce/buttons/console/absu_stab_h")) -- кнопка H на панели АБСУ
defineProperty("absu_stab", globalPropertyi("tu154ce/buttons/console/absu_stab")) -- кнопка СТАБ на панели АБСУ

defineProperty("absu_arrest", globalPropertyi("tu154ce/buttons/console/absu_arrest")) -- кнопки арретировки МГВ
defineProperty("absu_speed_test_1", globalPropertyi("tu154ce/buttons/console/absu_speed_test_1")) -- кнопка првоерки СТУ нижняя
defineProperty("absu_speed_test_2", globalPropertyi("tu154ce/buttons/console/absu_speed_test_2")) -- кнопка првоерки СТУ верхняя

defineProperty("absu_stab_speed", globalPropertyi("tu154ce/buttons/console/absu_stab_speed")) -- кнопка C на панели АБСУ
defineProperty("absu_throt_off_1", globalPropertyi("tu154ce/buttons/console/absu_throt_off_1")) -- кнопка откл Г1 на панели АБСУ
defineProperty("absu_throt_off_2", globalPropertyi("tu154ce/buttons/console/absu_throt_off_2")) -- кнопка откл Г2 на панели АБСУ
defineProperty("absu_throt_off_3", globalPropertyi("tu154ce/buttons/console/absu_throt_off_3")) -- кнопка откл Г3 на панели АБСУ

-- caps
defineProperty("absu_arrest_cap", globalPropertyi("tu154ce/buttons/console/absu_arrest_cap")) -- кнопка првоерки СТУ верхняя
defineProperty("absu_smooth_on_cap", globalPropertyi("tu154ce/switchers/console/absu_smooth_on_cap")) -- выключатель "в болтанку"
defineProperty("absu_speed_prepare_cap", globalPropertyi("tu154ce/switchers/console/absu_speed_prepare_cap")) -- подготовка
defineProperty("absu_speed_off_cap", globalPropertyi("tu154ce/switchers/console/absu_speed_off_cap")) -- отключение 1 и 2

-- lamps
defineProperty("absu_zk_lamp", globalPropertyf("tu154ce/lights/button/absu_zk")) -- АБСУ ЗК
defineProperty("absu_reset_lamp", globalPropertyf("tu154ce/lights/button/absu_reset")) -- АБСУ ЗК
defineProperty("absu_nvu_lamp", globalPropertyf("tu154ce/lights/button/absu_nvu")) -- АБСУ ЗК
defineProperty("absu_az1_lamp", globalPropertyf("tu154ce/lights/button/absu_az1")) -- АБСУ ЗК
defineProperty("absu_az2_lamp", globalPropertyf("tu154ce/lights/button/absu_az2")) -- АБСУ ЗК
defineProperty("absu_app_lamp", globalPropertyf("tu154ce/lights/button/absu_app")) -- АБСУ ЗК
defineProperty("absu_gz_lamp", globalPropertyf("tu154ce/lights/button/absu_gz")) -- АБСУ ЗК
defineProperty("absu_stab_m_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_m")) -- АБСУ ЗК
defineProperty("absu_stab_v_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_v")) -- АБСУ ЗК
defineProperty("absu_stab_h_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_h")) -- АБСУ ЗК
defineProperty("absu_stab_lamp", globalPropertyf("tu154ce/lights/button/absu_stab")) -- АБСУ ЗК
defineProperty("absu_stab_spd_lamp", globalPropertyf("tu154ce/lights/button/absu_stab_spd")) -- АБСУ ЗК
defineProperty("absu_thro1_lamp", globalPropertyf("tu154ce/lights/button/absu_thro1")) -- АБСУ ЗК
defineProperty("absu_thro2_lamp", globalPropertyf("tu154ce/lights/button/absu_thro2")) -- АБСУ ЗК
defineProperty("absu_thro3_lamp", globalPropertyf("tu154ce/lights/button/absu_thro3")) -- АБСУ ЗК

defineProperty("stu_roll_lamp", globalPropertyf("tu154ce/lights/small/stu_roll")) -- крен
defineProperty("stu_pitch_lamp", globalPropertyf("tu154ce/lights/small/stu_pitch")) -- тангаж
defineProperty("stu_toga_lamp", globalPropertyf("tu154ce/lights/small/stu_toga")) -- УХОД

defineProperty("at_1_lamp", globalPropertyf("tu154ce/lights/small/at_1")) -- АТ 1
defineProperty("at_2_lamp", globalPropertyf("tu154ce/lights/small/at_2")) -- АТ 2



-- load images ENG
defineProperty("bg_img", loadImage("absu_bk.png"))

defineProperty("contr_off_img", loadImage("absu_ess.png", 6, 342, 85, 69))
defineProperty("contr_stab_img", loadImage("absu_ess.png", 6, 412, 85, 69))

defineProperty("reset_lamp_img", loadImage("absu_ess.png", 359, 160, 54, 54))
defineProperty("zk_lamp_img", loadImage("absu_ess.png", 243, 160, 54, 54))
defineProperty("nvu_lamp_img", loadImage("absu_ess.png", 243, 217, 54, 54))
defineProperty("az1_lamp_img", loadImage("absu_ess.png", 301, 217, 54, 54))
defineProperty("az2_lamp_img", loadImage("absu_ess.png", 360, 217, 54, 54))
defineProperty("app_lamp_img", loadImage("absu_ess.png", 243, 273, 54, 54))
defineProperty("gs_lamp_img", loadImage("absu_ess.png", 360, 273, 54, 54))
defineProperty("m_lamp_img", loadImage("absu_ess.png", 243, 330, 54, 54))
defineProperty("v_lamp_img", loadImage("absu_ess.png", 302, 330, 54, 54))
defineProperty("h_lamp_img", loadImage("absu_ess.png", 361, 330, 54, 54))
defineProperty("stab_lamp_img", loadImage("absu_ess.png", 302, 273, 54, 54))
defineProperty("off_1_lamp_img", loadImage("absu_ess.png", 243, 388, 54, 54))
defineProperty("off_2_lamp_img", loadImage("absu_ess.png", 303, 388, 54, 54))
defineProperty("off_3_lamp_img", loadImage("absu_ess.png", 361, 388, 54, 54))

defineProperty("sw_dn_img", loadImage("absu_ess.png", 86, 7, 32, 110))
defineProperty("sw_up_img", loadImage("absu_ess.png", 125, 7, 32, 110))
defineProperty("sw_ctr_img", loadImage("absu_ess.png", 165, 88, 36, 36))

defineProperty("switcher_big", loadImage("absu_ess.png", 0, 0, 78, 124))
defineProperty("roll_knob", loadImage("absu_ess.png", 2, 132, 196, 196))

defineProperty("spd_hnd", loadImage("absu_ess.png", 445, 13, 52, 114))
defineProperty("wheel_img", loadImage("absu_ess.png", 212, 0, 21, 512))

defineProperty("arrest_cap_closed", loadImage("absu_ess.png", 244, 11, 55, 92))
defineProperty("arrest_cap_open", loadImage("absu_ess.png", 243, 115, 55, 37))

defineProperty("smooth_cap_closed", loadImage("absu_ess.png", 315, 14, 47, 89))
defineProperty("smooth_cap_open", loadImage("absu_ess.png", 314, 115, 48, 37))

defineProperty("black_cap_closed", loadImage("absu_ess.png", 374, 14, 56, 86))
defineProperty("black_cap_open", loadImage("absu_ess.png", 374, 114, 56, 37))

defineProperty("small_lamp", loadImage("absu_ess.png", 167, 9, 31, 31))



-- load images RUS
defineProperty("bg_img_RUS", loadImage("absu_bk_RUS.png"))

defineProperty("contr_off_img_RUS", loadImage("absu_ess_RUS.png", 6, 342, 85, 69))
defineProperty("contr_stab_img_RUS", loadImage("absu_ess_RUS.png", 6, 412, 85, 69))

defineProperty("reset_lamp_img_RUS", loadImage("absu_ess_RUS.png", 359, 160, 54, 54))
defineProperty("zk_lamp_img_RUS", loadImage("absu_ess_RUS.png", 243, 160, 54, 54))
defineProperty("nvu_lamp_img_RUS", loadImage("absu_ess_RUS.png", 243, 217, 54, 54))
defineProperty("az1_lamp_img_RUS", loadImage("absu_ess_RUS.png", 301, 217, 54, 54))
defineProperty("az2_lamp_img_RUS", loadImage("absu_ess_RUS.png", 360, 217, 54, 54))
defineProperty("app_lamp_img_RUS", loadImage("absu_ess_RUS.png", 243, 273, 54, 54))
defineProperty("gs_lamp_img_RUS", loadImage("absu_ess_RUS.png", 360, 273, 54, 54))
defineProperty("stab_lamp_img_RUS", loadImage("absu_ess_RUS.png", 302, 273, 54, 54))
defineProperty("off_1_lamp_img_RUS", loadImage("absu_ess_RUS.png", 243, 388, 54, 54))
defineProperty("off_2_lamp_img_RUS", loadImage("absu_ess_RUS.png", 303, 388, 54, 54))
defineProperty("off_3_lamp_img_RUS", loadImage("absu_ess_RUS.png", 361, 388, 54, 54))

defineProperty("arrest_cap_closed_RUS", loadImage("absu_ess_RUS.png", 244, 11, 55, 92))




local RUS = true

-- test

--[[
local lang_last = RUS

local bg_image = loadImage("absu_bk_RUS.png")

local function changeBG()
  if RUS then
   
    bg_image = loadImage("absu_bk_RUS.png") -- load a new one
	
	print(bg_image)
  else
    
    bg_image = loadImage("absu_bk.png") -- load a new one
	
	print(bg_image)
  end
  
end

--]]





function update()

	RUS = get(hide_eng_objects) == 1
 --[[
	-- test
	if lang_last ~= RUS then
		--changeBG() -- change background on changing the language
		lang_last = RUS
	end
 
--]]	
 
end



components = {

	
	
	
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




	----------------
	-- gauges --
	----------------
	
	
	-- roll off 
	textureLit {
		position = {327, 443, 83, 68},
		image = get(contr_off_img),
		visible = function()
			return get(absu_roll_mode) == 0 and not RUS
		end,
	},
	textureLit {
		position = {327, 443, 83, 68},
		image = get(contr_off_img_RUS),
		visible = function()
			return get(absu_roll_mode) == 0 and RUS
		end,
	},

	-- roll stab 
	textureLit {
		position = {327, 443, 83, 68},
		image = get(contr_stab_img),
		visible = function()
			return get(absu_roll_mode) == 2 and not RUS
		end,
	},
	textureLit {
		position = {327, 443, 83, 68},
		image = get(contr_stab_img_RUS),
		visible = function()
			return get(absu_roll_mode) == 2 and RUS
		end,
	},
	
	
	-- pitch off 
	textureLit {
		position = {512, 443, 83, 68},
		image = get(contr_off_img),
		visible = function()
			return get(absu_pitch_mode) == 0 and not RUS
		end,
	},
	textureLit {
		position = {512, 443, 83, 68},
		image = get(contr_off_img_RUS),
		visible = function()
			return get(absu_pitch_mode) == 0 and RUS
		end,
	},
	
	-- pitch stab 
	textureLit {
		position = {512, 443, 83, 68},
		image = get(contr_stab_img),
		visible = function()
			return get(absu_pitch_mode) == 2 and not RUS
		end,
	},
	textureLit {
		position = {512, 443, 83, 68},
		image = get(contr_stab_img_RUS),
		visible = function()
			return get(absu_pitch_mode) == 2 and RUS
		end,
	},
	
	----------------
	-- lamps --
	----------------
	
	-- reset
	textureLit {
		position = {218, 471, 54, 54},
		image = get(reset_lamp_img),
		visible = function()
			return get(absu_reset_lamp) > 0.5 and not RUS
		end,
	},	
	textureLit {
		position = {218, 471, 54, 54},
		image = get(reset_lamp_img_RUS),
		visible = function()
			return get(absu_reset_lamp) > 0.5 and RUS
		end,
	},		
	
	-- ZK
	textureLit {
		position = {43, 471, 54, 54},
		image = get(zk_lamp_img),
		visible = function()
			return get(absu_zk_lamp) > 0.5 and not RUS
		end,
	},	
	textureLit {
		position = {43, 471, 54, 54},
		image = get(zk_lamp_img_RUS),
		visible = function()
			return get(absu_zk_lamp) > 0.5 and RUS
		end,
	},		
	
	-- NVU
	textureLit {
		position = {43, 382, 54, 54},
		image = get(nvu_lamp_img),
		visible = function()
			return get(absu_nvu_lamp) > 0.5 and not RUS
		end,
	},	
	textureLit {
		position = {43, 382, 54, 54},
		image = get(nvu_lamp_img_RUS),
		visible = function()
			return get(absu_nvu_lamp) > 0.5 and RUS
		end,
	},
	
	
	-- AZ1
	textureLit {
		position = {130, 382, 54, 54},
		image = get(az1_lamp_img),
		visible = function()
			return get(absu_az1_lamp) > 0.5 and not RUS
		end,
	},	
	textureLit {
		position = {130, 382, 54, 54},
		image = get(az1_lamp_img_RUS),
		visible = function()
			return get(absu_az1_lamp) > 0.5 and RUS
		end,
	},
	
	
	-- AZ2
	textureLit {
		position = {219, 382, 54, 54},
		image = get(az2_lamp_img),
		visible = function()
			return get(absu_az2_lamp) > 0.5 and not RUS
		end,
	},	
	textureLit {
		position = {219, 382, 54, 54},
		image = get(az2_lamp_img_RUS),
		visible = function()
			return get(absu_az2_lamp) > 0.5 and RUS
		end,
	},	
	
	-- APP
	textureLit {
		position = {43, 102, 54, 54},
		image = get(app_lamp_img),
		visible = function()
			return get(absu_app_lamp) > 0.5 and not RUS
		end,
	},		
	textureLit {
		position = {43, 102, 54, 54},
		image = get(app_lamp_img_RUS),
		visible = function()
			return get(absu_app_lamp) > 0.5 and RUS
		end,
	},

	
	-- GS
	textureLit {
		position = {219, 102, 54, 54},
		image = get(gs_lamp_img),
		visible = function()
			return get(absu_gz_lamp) > 0.5 and not RUS
		end,
	},	
	textureLit {
		position = {219, 102, 54, 54},
		image = get(gs_lamp_img_RUS),
		visible = function()
			return get(absu_gz_lamp) > 0.5 and RUS
		end,
	},	

	
	
	-- M
	textureLit {
		position = {347, 326, 54, 54},
		image = get(m_lamp_img),
		visible = function()
			return get(absu_stab_m_lamp) > 0.5
		end,
	},		

	-- V
	textureLit {
		position = {435, 326, 54, 54},
		image = get(v_lamp_img),
		visible = function()
			return get(absu_stab_v_lamp) > 0.5
		end,
	},	

	-- H
	textureLit {
		position = {523, 326, 54, 54},
		image = get(h_lamp_img),
		visible = function()
			return get(absu_stab_h_lamp) > 0.5
		end,
	},

	-- STAB
	textureLit {
		position = {712, 321, 54, 54},
		image = get(stab_lamp_img),
		visible = function()
			return get(absu_stab_spd_lamp) > 0.5 and not RUS
		end,
	},
	textureLit {
		position = {712, 321, 54, 54},
		image = get(stab_lamp_img_RUS),
		visible = function()
			return get(absu_stab_spd_lamp) > 0.5 and RUS
		end,
	},

	-- 1 off
	textureLit {
		position = {659, 57, 54, 54},
		image = get(off_1_lamp_img),
		visible = function()
			return get(absu_thro1_lamp) > 0.5 and not RUS
		end,
	},
	textureLit {
		position = {659, 57, 54, 54},
		image = get(off_1_lamp_img_RUS),
		visible = function()
			return get(absu_thro1_lamp) > 0.5 and RUS
		end,
	},

	-- 2 off
	textureLit {
		position = {735, 57, 54, 54},
		image = get(off_2_lamp_img),
		visible = function()
			return get(absu_thro2_lamp) > 0.5 and not RUS
		end,
	},
	textureLit {
		position = {735, 57, 54, 54},
		image = get(off_2_lamp_img_RUS),
		visible = function()
			return get(absu_thro2_lamp) > 0.5 and RUS
		end,
	},

	-- 3 off
	textureLit {
		position = {809, 57, 54, 54},
		image = get(off_3_lamp_img),
		visible = function()
			return get(absu_thro3_lamp) > 0.5 and not RUS
		end,
	},
	textureLit {
		position = {809, 57, 54, 54},
		image = get(off_3_lamp_img_RUS),
		visible = function()
			return get(absu_thro3_lamp) > 0.5 and RUS
		end,
	},
	
	-- AT 1
	textureLit {
		position = {651, 188, 23, 23},
		image = get(small_lamp),
		visible = function()
			return get(at_1_lamp) > 0.5
		end,
	},	
	
	
	-- AT 2
	textureLit {
		position = {651, 248, 23, 23},
		image = get(small_lamp),
		visible = function()
			return get(at_2_lamp) > 0.5
		end,
	},		
	
	
	-- TOGA
	textureLit {
		position = {651, 374, 23, 23},
		image = get(small_lamp),
		visible = function()
			return get(stu_toga_lamp) > 0.5
		end,
	},		
	
	
	-- PITCH
	textureLit {
		position = {651, 436, 23, 23},
		image = get(small_lamp),
		visible = function()
			return get(stu_pitch_lamp) > 0.5
		end,
	},		
	
	-- ROLL
	textureLit {
		position = {651, 494, 23, 23},
		image = get(small_lamp),
		visible = function()
			return get(stu_roll_lamp) > 0.5
		end,
	},	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	---------------------------
	-- handles and switchers --
	---------------------------
	
	-- NAV on
	switch_lit {
		position = {54, 188, 32, 110},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_nav_on) == 1
		end,
		onMouseClick = function()
			set(absu_nav_on, 1 - get(absu_nav_on))
			return true
		end,
	},
	
	-- LAND on
	switch_lit {
		position = {230, 188, 32, 110},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_landing_on) == 1
		end,
		onMouseClick = function()
			set(absu_landing_on, 1 - get(absu_landing_on))
			return true
		end,
	},	

	-- needles on
	switch_lit {
		position = {142, 81, 32, 110},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_needles_on) == 1
		end,
		onMouseClick = function()
			set(absu_needles_on, 1 - get(absu_needles_on))
			return true
		end,
	},	

	-- roll on
	switch_lit {
		position = {353, 11, 32, 110},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_roll_ch_on) == 1
		end,
		onMouseClick = function()
			set(absu_roll_ch_on, 1 - get(absu_roll_ch_on))
			return true
		end,
	},	

	-- pitch on
	switch_lit {
		position = {534, 11, 32, 110},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_pitch_ch_on) == 1
		end,
		onMouseClick = function()
			set(absu_pitch_ch_on, 1 - get(absu_pitch_ch_on))
			return true
		end,
	},

	
	-- smooth on
	switch_lit {
		position = {445, 13, 28, 100},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_smooth_on) == 1
		end,
		onMouseClick = function()
			set(absu_smooth_on, 1 - get(absu_smooth_on))
			return true
		end,
		visible = function()
			return get(absu_smooth_on_cap) == 1
		end,
	},


	-- prepare
	switch_lit {
		position = {782, 148, 28, 100},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_speed_prepare) == 1
		end,
		onMouseClick = function()
			set(absu_speed_prepare, 1 - get(absu_speed_prepare))
			return true
		end,
		visible = function()
			return get(absu_speed_prepare_cap) == 1
		end,
	},
	
	-- US
	switch_lit {
		position = {842, 148, 28, 100},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(absu_speed_us_right_left) == 1
		end,
		onMouseClick = function()
			set(absu_speed_us_right_left, 1 - get(absu_speed_us_right_left))
			return true
		end,
	},	

	-- off 1-2
	textureLit {
		position = {714, 148, 28, 100},
		image = get(sw_up_img),
		visible = function()
			return get(absu_speed_off) == 1 and get(absu_speed_off_cap) == 1
		end,
	},
	textureLit {
		position = {714, 148, 28, 100},
		image = get(sw_dn_img),
		visible = function()
			return get(absu_speed_off) == -1 and get(absu_speed_off_cap) == 1
		end,

	},
	textureLit {
		position = {714, 182, 28, 28},
		image = get(sw_ctr_img),
		visible = function()
			return get(absu_speed_off) == 0 and get(absu_speed_off_cap) == 1
		end,
	},

	clickable {
		position = {714, 148, 28, 50},
      
		onMouseClick = function() 
			
			local a = get(absu_speed_off) - 1
			if a < -1 then a = 0 end
			set(absu_speed_off, a)
			
			return true
		end,
		visible = function()
			return get(absu_speed_off_cap) == 1
		end,
	}, 	
	clickable {
		position = {714, 198, 28, 50},
      
		onMouseClick = function() 
			
			local a = get(absu_speed_off) + 1
			if a > 1 then a = 0 end
			set(absu_speed_off, a)
			
			return true
		end,
		visible = function()
			return get(absu_speed_off_cap) == 1
		end,
	}, 
	
	-- ZK select
	needleLit {
		position = {115, 458, 85, 85},
		image = get(switcher_big),
		angle = function()
			return -15 + get(absu_zpu_sel) * 30
		
		end,
	},
	clickable {
		position = {115, 458, 85, 85},
      
		onMouseClick = function() 
			set(absu_zpu_sel, 1 - get(absu_zpu_sel))
			
			return true
		end,
	},
	
	-- ROLL knob
	needleLit {
		position = {341, 157, 112, 112},
		image = get(roll_knob),
		angle = function()
			return get(absu_turn_handle) * 3
		
		end,
	},
	clickable {
		position = {341, 157, 50, 50},
      
		onMouseClick = function() 
			local a = get(absu_turn_handle) - 5
			if a < -50 then a = -50 end
			set(absu_turn_handle, a)
			
			return true
		end,
	},	
	clickable {
		position = {403, 157, 50, 50},
      
		onMouseClick = function() 
			local a = get(absu_turn_handle) + 5
			if a > 50 then a = 50 end
			set(absu_turn_handle, a)
			
			return true
		end,
	},	
	clickable {
		position = {372, 217, 50, 50},
      
		onMouseClick = function() 
			set(absu_turn_handle, 0)
			
			return true
		end,
	},
	
	----------------------------
	-- buttons -- 
	---------------------------
	
	-- reset
	clickable {
		position = {211, 464, 68, 68},
      
		onMouseDown = function() 
			set(absu_reset, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_reset, 0)
			return true
		end,
	},	
	
	-- ZK
	clickable {
		position = {35, 464, 68, 68},
      
		onMouseDown = function() 
			set(absu_zk, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_zk, 0)
			return true
		end,
	},	
	
	
	-- NVU
	clickable {
		position = {35, 376, 68, 68},
      
		onMouseDown = function() 
			set(absu_nvu, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_nvu, 0)
			return true
		end,
	},	
	
	-- AZ1
	clickable {
		position = {123, 376, 68, 68},
      
		onMouseDown = function() 
			set(absu_az1, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_az1, 0)
			return true
		end,
	},		
	
	-- AZ2
	clickable {
		position = {211, 376, 68, 68},
      
		onMouseDown = function() 
			set(absu_az2, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_az2, 0)
			return true
		end,
	},	
	
	-- APP
	clickable {
		position = {35, 96, 68, 68},
      
		onMouseDown = function() 
			set(absu_app, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_app, 0)
			return true
		end,
	},		
	
	-- GS
	clickable {
		position = {211, 96, 68, 68},
      
		onMouseDown = function() 
			set(absu_gs, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_gs, 0)
			return true
		end,
	},	
	
	-- M
	clickable {
		position = {340, 319, 68, 68},
      
		onMouseDown = function() 
			set(absu_stab_m, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_stab_m, 0)
			return true
		end,
	},		
	
	-- V
	clickable {
		position = {428, 319, 68, 68},
      
		onMouseDown = function() 
			set(absu_stab_v, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_stab_v, 0)
			return true
		end,
	},		
	
	-- H
	clickable {
		position = {516, 319, 68, 68},
      
		onMouseDown = function() 
			set(absu_stab_h, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_stab_h, 0)
			return true
		end,
	},		
	
	-- STAB
	clickable {
		position = {460, 266, 50, 50},
      
		onMouseDown = function() 
			set(absu_stab, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_stab, 0)
			return true
		end,
	},		
	
	
	-- SPEED STAB
	clickable {
		position = {704, 315, 68, 68},
      
		onMouseDown = function() 
			set(absu_stab_speed, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_stab_speed, 0)
			return true
		end,
	},		
	
	-- thr1
	clickable {
		position = {653, 53, 68, 68},
      
		onMouseDown = function() 
			set(absu_throt_off_1, 1 - get(absu_throt_off_1))
			return true
		end,
	},		
	
	-- thr2
	clickable {
		position = {728, 53, 68, 68},
      
		onMouseDown = function() 
			set(absu_throt_off_2, 1 - get(absu_throt_off_2))
			return true
		end,
	},		
		
	-- thr3
	clickable {
		position = {803, 53, 68, 68},
      
		onMouseDown = function() 
			set(absu_throt_off_3, 1 - get(absu_throt_off_3))
			return true
		end,
	},	
	
	free_texture_lit {
		image = get(spd_hnd),
		position_x = 817,
		width = 30,
		height = 65,
		position_y = function()
			return 315 + get(absu_speed_change) * 7
		
		end,
	
	
	},
	
	-- SPEED UP
	clickable {
		position = {805, 355, 50, 50},
      
		onMouseDown = function() 
			set(absu_speed_change, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_speed_change, 0)
			return true
		end,
	},
	-- SPEED DN
	clickable {
		position = {805, 297, 50, 50},
      
		onMouseDown = function() 
			set(absu_speed_change, -1)
			return true
		end,
		onMouseUp = function() 
			set(absu_speed_change, 0)
			return true
		end,
	},	
	
	
	
	-- absu_speed_test_1
	clickable {
		position = {639, 120, 50, 50},
      
		onMouseDown = function() 
			set(absu_speed_test_1, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_speed_test_1, 0)
			return true
		end,
	},
	
	-- absu_speed_test_2
	clickable {
		position = {639, 299, 50, 50},
      
		onMouseDown = function() 
			set(absu_speed_test_2, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_speed_test_2, 0)
			return true
		end,
	},	
	
	
	-- PNP mode
	needleLit {
		position = {783, 443, 80, 80},
		image = get(switcher_big),
		angle = function()
			return -70 + get(absu_speed_mode) * 27
		
		end,
	},
	
	clickable {
		position = {783, 443, 40, 80},
      
		onMouseClick = function() 
			local a = get(absu_speed_mode) - 1
			if a < 0 then a = 0 end
			set(absu_speed_mode, a)
			return true
		end,
	},		
	
	
	clickable {
		position = {823, 443, 40, 80},
      
		onMouseClick = function() 
			local a = get(absu_speed_mode) + 1
			if a > 4 then a = 4 end
			set(absu_speed_mode, a)
			return true
		end,
	},	
	
	
	-- pitch wheel
	tape_lit {
		image = get(wheel_img),
		position = {546, 165, 15, 100},
		window = {1.0, 0.3},
		scrollY = function()
			return 0.3 - get(absu_pitch_wheel) * 0.0165
		
		end,
	},
	

	clickable {
		position = {528, 150, 50, 60},
      
		onMouseDown = function() 
			set(absu_pitch_wheel_dir, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_pitch_wheel_dir, 0)
			return true
		end,
	},		
	
	clickable {
		position = {528, 220, 50, 60},
      
		onMouseDown = function() 
			set(absu_pitch_wheel_dir, -1)
			return true
		end,
		onMouseUp = function() 
			set(absu_pitch_wheel_dir, 0)
			return true
		end,
	},	
	
	
	
	
	-- ARREST
	clickable {
		position = {437, 467, 40, 80},
      
		onMouseDown = function() 
			set(absu_arrest, 1)
			return true
		end,
		onMouseUp = function() 
			set(absu_arrest, 0)
			return true
		end,
		visible = function()
			return get(absu_arrest_cap) == 1
		end,
	},	
	
	
	
	
	
	------------------------------
	-- caps ---------
	---------------------
	
	-- ARREST BUTTONS CAP
	textureLit {
		position = {433, 463, 55, 92},
		image = get(arrest_cap_closed),
		visible = function()
			return get(absu_arrest_cap) == 0 and not RUS
		end,
	},
	textureLit {
		position = {433, 463, 55, 92},
		image = get(arrest_cap_closed_RUS),
		visible = function()
			return get(absu_arrest_cap) == 0 and RUS
		end,
	},

	
	textureLit {
		position = {433, 545, 55, 37},
		image = get(arrest_cap_open),
		visible = function()
			return get(absu_arrest_cap) == 1
		end,
	},	
	
	clickable {
		position = {433, 545, 55, 37},
      
		onMouseDown = function() 
			set(absu_arrest_cap, 1 - get(absu_arrest_cap))
			return true
		end,
	},
	
	--------------------------
	
	-- ARREST BUTTONS CAP
	textureLit {
		position = {431, 5, 58, 110},
		image = get(smooth_cap_closed),
		visible = function()
			return get(absu_smooth_on_cap) == 0
		end,
	},
	
	textureLit {
		position = {431, 102, 58, 40},
		image = get(smooth_cap_open),
		visible = function()
			return get(absu_smooth_on_cap) == 1
		end,
	},	
	
	clickable {
		position = {429, 113, 62, 40},
      
		onMouseDown = function() 
			set(absu_smooth_on_cap, 1 - get(absu_smooth_on_cap))
			return true
		end,
	},	
	
	--------------------------
	
	-- AT OFF CAP
	textureLit {
		position = {700, 150, 56, 100},
		image = get(black_cap_closed),
		visible = function()
			return get(absu_speed_off_cap) == 0
		end,
	},
	
	textureLit {
		position = {700, 230, 58, 40},
		image = get(black_cap_open),
		visible = function()
			return get(absu_speed_off_cap) == 1
		end,
	},	
	
	clickable {
		position = {700, 240, 58, 40},
      
		onMouseDown = function() 
			set(absu_speed_off_cap, 1 - get(absu_speed_off_cap))
			return true
		end,
	},		
	
	--------------------------
	
	-- PREPARE CAP
	textureLit {
		position = {770, 150, 56, 100},
		image = get(black_cap_closed),
		visible = function()
			return get(absu_speed_prepare_cap) == 0
		end,
	},
	
	textureLit {
		position = {770, 230, 58, 40},
		image = get(black_cap_open),
		visible = function()
			return get(absu_speed_prepare_cap) == 1
		end,
	},	
	
	clickable {
		position = {770, 240, 58, 40},
      
		onMouseDown = function() 
			set(absu_speed_prepare_cap, 1 - get(absu_speed_prepare_cap))
			return true
		end,
	},		
		
	
	
	
	
	
	
	
	
	
	
	
	
	--------------------------------

	-- close button
	clickable {
		position = {size[1] - 30, size[2] - 30, 30, 30 },
      
		onMouseClick = function() 
			set(show_absu_panel, 0)
			
			return true
		end,
	}, 	

}



