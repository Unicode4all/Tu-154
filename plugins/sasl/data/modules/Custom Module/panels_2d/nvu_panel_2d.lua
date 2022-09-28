-- this is NVU panel
size = {636, 786}

defineProperty("hide_eng_objects", globalPropertyi("tu154ce/lang/hide_eng_objects")) -- спрятать английские объекты кабины. 1 = RUS
defineProperty("show_nvu_panel",globalPropertyi("tu154ce/panels/show_nvu_panel")) -- показать панель НВУ


-- controls
defineProperty("nvu_param_sel", globalPropertyi("tu154ce/switchers/console/nvu_param_sel")) -- ручка выбора вводимого параметра НВУ. -4 - Z, -3 - S, -2 - Zm, -1 - Sm, 0 - off, 1 - Sn, 2 - Zn, 3 - S, 4 - Z
defineProperty("nvu_turn_sel", globalPropertyi("tu154ce/switchers/console/nvu_turn_sel")) -- ручка выбора радиуса разворота, -1 - принуд, 0 - выкл, 1 - 5, 2 - 10, 3 - 15, 4 - 20, 5 - 25
defineProperty("nvu_power_on", globalPropertyi("tu154ce/switchers/console/nvu_power_on")) -- питание НВУ
defineProperty("nvu_calc_on", globalPropertyi("tu154ce/switchers/console/nvu_calc_on")) -- счисление НВУ
defineProperty("nvu_corr_on", globalPropertyi("tu154ce/switchers/console/nvu_corr_on")) -- коррекция НВУ

defineProperty("nvu_left_btn", globalPropertyi("tu154ce/buttons/nvu/nvu_left_btn")) -- левая кнопка НВУ
defineProperty("nvu_ctr_btn", globalPropertyi("tu154ce/buttons/nvu/nvu_ctr_btn")) -- центр кнопка НВУ
defineProperty("nvu_right_btn", globalPropertyi("tu154ce/buttons/nvu/nvu_right_btn")) -- правая кнопка НВУ

defineProperty("zpu_1_left_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_1_left_btn")) -- левая кнопка ЗПУ
defineProperty("zpu_1_ctr_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_1_ctr_btn")) -- центр кнопка ЗПУ
defineProperty("zpu_1_right_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_1_right_btn")) -- правая кнопка ЗПУ

defineProperty("zpu_2_left_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_2_left_btn")) -- левая кнопка ЗПУ
defineProperty("zpu_2_ctr_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_2_ctr_btn")) -- центр кнопка ЗПУ
defineProperty("zpu_2_right_btn", globalPropertyi("tu154ce/buttons/nvu/zpu_2_right_btn")) -- правая кнопка ЗПУ

-- internal datarefs
defineProperty("current_Z1", globalPropertyf("tu154ce/nvu/current_Z1")) -- Z1
defineProperty("current_S1", globalPropertyf("tu154ce/nvu/current_S1")) -- S1
defineProperty("next_Z1", globalPropertyf("tu154ce/nvu/next_Z1")) -- Z1
defineProperty("next_S1", globalPropertyf("tu154ce/nvu/next_S1")) -- S1

defineProperty("current_Z2", globalPropertyf("tu154ce/nvu/current_Z2")) -- Z2
defineProperty("current_S2", globalPropertyf("tu154ce/nvu/current_S2")) -- S2
defineProperty("next_Z2", globalPropertyf("tu154ce/nvu/next_Z2")) -- Z2
defineProperty("next_S2", globalPropertyf("tu154ce/nvu/next_S2")) -- S2

defineProperty("zpu1", globalPropertyf("tu154ce/nvu/zpu1")) -- ZPU1
defineProperty("zpu2", globalPropertyf("tu154ce/nvu/zpu2")) -- ZPU2

-- gauges
defineProperty("map_angle", globalPropertyf("tu154ce/gauges/console/map_angle")) -- угол карты

defineProperty("obs_1", globalPropertyf("sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot")) -- OBS course
defineProperty("obs_2", globalPropertyf("sim/cockpit2/radios/actuators/nav2_obs_deg_mag_pilot")) -- OBS course
defineProperty("nav_course_1", globalPropertyf("tu154ce/rotary/console/nav_1_course")) -- ручка установки курса
defineProperty("nav_course_2", globalPropertyf("tu154ce/rotary/console/nav_2_course")) -- ручка установки курса

-- lamps
defineProperty("nvu_on_lit", globalPropertyf("tu154ce/lights/small/nvu_on")) -- НВУ испр
defineProperty("nvu_corr_lit", globalPropertyf("tu154ce/lights/small/nvu_corr")) -- НВУ КОРР

defineProperty("nvu_1_active", globalPropertyf("tu154ce/lights/nvu_1_active")) -- светимость активной панели НВУ
defineProperty("nvu_2_active", globalPropertyf("tu154ce/lights/nvu_2_active")) -- светимость активной панели НВУ

defineProperty("nav_1_to_lit", globalPropertyf("tu154ce/lights/small/nav_1_to"))
defineProperty("nav_1_from_lit", globalPropertyf("tu154ce/lights/small/nav_1_from"))

defineProperty("nav_2_to_lit", globalPropertyf("tu154ce/lights/small/nav_2_to"))
defineProperty("nav_2_from_lit", globalPropertyf("tu154ce/lights/small/nav_2_from"))


-- DISS
defineProperty("wind_set", globalPropertyf("tu154ce/rotary/console/wind_set")) -- установка ветра

defineProperty("wind_course_left", globalPropertyi("tu154ce/button/console/wind_course_left")) -- кнопка установки курса ветра 
defineProperty("wind_course_ctr", globalPropertyi("tu154ce/button/console/wind_course_ctr")) -- кнопка установки курса ветра 
defineProperty("wind_course_right", globalPropertyi("tu154ce/button/console/wind_course_right")) -- кнопка установки курса ветра 

defineProperty("wind_spd_left", globalPropertyi("tu154ce/button/console/wind_spd_left")) -- кнопка установки скорости ветра 
defineProperty("wind_spd_ctr", globalPropertyi("tu154ce/button/console/wind_spd_ctr")) -- кнопка установки скорости ветра 
defineProperty("wind_spd_right", globalPropertyi("tu154ce/button/console/wind_spd_right")) -- кнопка установки скорости ветра 

defineProperty("diss_wind_course", globalPropertyf("tu154ce/nvu/diss_wind_course")) -- курс ветра по ДИСС
defineProperty("diss_wind_spd", globalPropertyf("tu154ce/nvu/diss_wind_spd")) -- скорость ветра по ДИСС

defineProperty("diss_abs_angle_1", globalPropertyf("tu154ce/gauges/misc/diss_abs_angle_1")) -- барабанчик единиц угла
defineProperty("diss_abs_angle_10", globalPropertyf("tu154ce/gauges/misc/diss_abs_angle_10")) -- барабанчик единиц угла
defineProperty("diss_abs_angle_100", globalPropertyf("tu154ce/gauges/misc/diss_abs_angle_100")) -- барабанчик единиц угла
defineProperty("diss_plus_angle_1", globalPropertyf("tu154ce/gauges/misc/diss_plus_angle_1")) -- барабанчик единиц угла
defineProperty("diss_plus_angle_10", globalPropertyf("tu154ce/gauges/misc/diss_plus_angle_10")) -- барабанчик единиц угла
defineProperty("diss_minus_angle_1", globalPropertyf("tu154ce/gauges/misc/diss_minus_angle_1")) -- барабанчик единиц угла
defineProperty("diss_minus_angle_10", globalPropertyf("tu154ce/gauges/misc/diss_minus_angle_10")) -- барабанчик единиц угла
defineProperty("diss_wind_spd_1", globalPropertyf("tu154ce/gauges/misc/diss_wind_spd_1")) -- барабанчик единиц угла
defineProperty("diss_wind_spd_10", globalPropertyf("tu154ce/gauges/misc/diss_wind_spd_10")) -- барабанчик единиц угла
defineProperty("diss_wind_spd_100", globalPropertyf("tu154ce/gauges/misc/diss_wind_spd_100")) -- барабанчик единиц угла















-- images
defineProperty("bg_img", loadImage("nvu_tex.png", 0, 0, 636, 786))
defineProperty("bg_img_RUS", loadImage("nvu_tex_RUS.png", 0, 0, 636, 786))

defineProperty("small_lamp", loadImage("overhead_tex.png", 1825, 299, 19, 19))
defineProperty("sw_dn_img", loadImage("overhead_tex.png", 1831, 15, 39, 100))
defineProperty("sw_up_img", loadImage("overhead_tex.png", 1871, 12, 39, 100))
defineProperty("sw_ctr_img", loadImage("overhead_tex.png", 1916, 42, 36, 36))

defineProperty("big_scale", loadImage("nvu_tex.png", 644, 5, 176, 176))
defineProperty("small_scale", loadImage("nvu_tex.png", 836, 42, 102, 102))
defineProperty("handle_img", loadImage("nvu_tex.png", 955, 68, 45, 45))
defineProperty("switch_img", loadImage("nvu_tex.png", 648, 209, 42, 70))

defineProperty("white_digits", loadImage("white_digits.png", 12, 0, 40, 784))
defineProperty("white_digits_scale", loadImage("white_digits_scale.png", 12, 0, 40, 784))
defineProperty("yellow_digits", loadImage("yellow_digits.png", 12, 0, 40, 784))


defineProperty("sign_plane", loadImage("nvu_tex.png", 741, 216, 88, 18))
defineProperty("sign_point", loadImage("nvu_tex.png", 741, 243, 88, 18))
defineProperty("sign_beacon", loadImage("nvu_tex.png", 741, 271, 88, 18))

defineProperty("sign_plane_RUS", loadImage("nvu_tex_RUS.png", 741, 216, 88, 18))
defineProperty("sign_point_RUS", loadImage("nvu_tex_RUS.png", 741, 243, 88, 18))
defineProperty("sign_beacon_RUS", loadImage("nvu_tex_RUS.png", 741, 271, 88, 18))

defineProperty("sign_I", loadImage("nvu_tex.png", 741, 297, 26, 31))
defineProperty("sign_II", loadImage("nvu_tex.png", 777, 297, 26, 31))

defineProperty("black_plank", loadImage("nvu_tex.png", 850, 216, 60, 30))


local RUS = true


function update()
	RUS = get(hide_eng_objects) == 1
end



components = {

	
	-- map angle big
	needleLit {
		position = {456, 606, 176, 176},
		image = get(big_scale),
		angle = function()
			return -get(map_angle)
		end,
	},	
	
	-- map angle small
	needleLit {
		position = {493, 643, 102, 102},
		image = get(small_scale),
		angle = function()
			return -get(map_angle) * 36
		end,
	},	
	

	---------------------------------------
	-- DISS --
	--------------------------------------
	-- wind angle
	digitstapeLit {
        position = { 54, 702, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_abs_angle_100)
        end,
    };		
	digitstapeLit {
        position = { 54+20, 702, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_abs_angle_10)
        end,
    };		
	digitstapeLit {
        position = { 54+20+20, 702, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_abs_angle_1)
        end,
    };	
	
	-- angle correction
	digitstapeLit {
        position = { 203, 702, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_plus_angle_10)
        end,
    };	
	digitstapeLit {
        position = { 203+15, 702, 15, 20},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_plus_angle_1)
        end,
    };	
	
	digitstapeLit {
        position = { 203+32, 702, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_minus_angle_10)
        end,
    };	
	digitstapeLit {
        position = { 203+32+15, 702, 15, 20},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_minus_angle_1)
        end,
    };	
	
	-- speed
	digitstapeLit {
        position = { 353, 702, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_wind_spd_100)
        end,
    };	
	digitstapeLit {
        position = { 353+17, 702, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_wind_spd_10)
        end,
    };
	digitstapeLit {
        position = { 353+34, 702, 15, 20},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_wind_spd_1)
        end,
    };

	---------------------------
	-- ZPU --
	---------------------------
	
	digitstapeLit {
        position = { 456, 499, 55, 27},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(get(zpu1) + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 514, 499, 18, 27},
        image = yellow_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return (get(zpu1) * 10 % 10)
        end,
    };	
	
	
	digitstapeLit {
        position = { 456, 409, 55, 27},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(get(zpu2) + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 514, 409, 18, 27},
        image = yellow_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return (get(zpu2) * 10 % 10)
        end,
    };		
	
	
	-------------------------------
	-- NVU 1 --------
	-------------------------------
	
	digitstapeLit {
        position = { 73, 536, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 73+36, 536, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_Z1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 127, 536, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 127+36, 536, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_Z1)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 193, 536, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 193+36, 536, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_S1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 246, 536, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 246+36, 536, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_S1)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
	digitstapeLit {
        position = { 73, 455, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 73+36, 455, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_Z1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 127, 455, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 127+36, 455, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_Z1)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 193, 455, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 193+36, 455, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_S1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 246, 455, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 246+36, 455, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_S1)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
	
	
	-------------------------------
	-- NVU 2 --------
	-------------------------------
	
	digitstapeLit {
        position = { 73, 306, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 73+36, 306, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_Z2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 127, 306, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 127+36, 306, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_Z2)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 193, 306, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 193+36, 306, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_S2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 246, 306, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 246+36, 306, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_S2)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
	digitstapeLit {
        position = { 73, 224, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 73+36, 224, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_Z2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 127, 224, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 127+36, 224, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_Z2)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 193, 224, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 193+36, 224, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_S2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 246, 224, 35, 18},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 246+36, 224, 13, 18},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_S2)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
	-- planks
		

	textureLit {
		position = {74, 533, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z1) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 533, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z1) < -0.2
		end,
	},	
	
	textureLit {
		position = {193, 533, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_S1) > 0.2
		end,
	},
	textureLit {
		position = {193+53, 533, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_S1) < -0.2
		end,
	},		
	
---------------------------------------------

	textureLit {
		position = {74, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z1) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z1) < -0.2
		end,
	},	
	
	textureLit {
		position = {193, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S1) > 0.2
		end,
	},
	textureLit {
		position = {193+53, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S1) < -0.2
		end,
	},	
	
-------------------------------------------
-------------------------------------------

	textureLit {
		position = {74, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z2) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z2) < -0.2
		end,
	},	
	
	textureLit {
		position = {193, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_S2) > 0.2
		end,
	},
	textureLit {
		position = {193+53, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_S2) < -0.2
		end,
	},		
	
---------------------------------------------

	textureLit {
		position = {74, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z2) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z2) < -0.2
		end,
	},	
	
	textureLit {
		position = {193, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S2) > 0.2
		end,
	},
	textureLit {
		position = {193+53, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S2) < -0.2
		end,
	},	
	
	
	
	
	
	
	
	
	
	---------------------------
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
	-----------------------------------
	
	
	-------------------------
	-- map angle --
	------------------------
	
	-- map angle handle
	needleLit {
		position = {527, 607, 33, 33},
		image = get(handle_img),
		angle = function()
			return get(map_angle) * 20
		end,
	},	
	
	
	clickable {
		position = {512, 598+80, 30, 50},
		onMouseClick = function()
			local a = math.ceil(get(map_angle) * 2)/2 - 0.5
			if a < 0 then a = a + 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	clickable {
		position = {512+30, 598+80, 30, 50},
		onMouseClick = function()
			local a = math.floor(get(map_angle) * 2)/2 + 0.5
			if a > 360 then a = a - 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	clickable {
		position = {512, 598, 30, 50},
		onMouseClick = function()
			local a = math.ceil(get(map_angle)) - 5
			if a < 0 then a = a + 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	clickable {
		position = {512+30, 598, 30, 50},
		onMouseClick = function()
			local a = math.floor(get(map_angle)) + 5
			if a > 360 then a = a - 360 end
			set(map_angle, a)
			return true
		end,
	},		
	
	------------------------------------
	-- OBS --
	------------------------------------
	--------------
	-- left
	-------------- 
	digitstapeLit {
        position = { 140, 63, 64, 30},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return get(obs_1)
        end,
		
    };
	-- handle
	needleLit {
		position = {237, 34, 40, 40},
		image = get(handle_img),
		angle = function()
			return get(obs_1) * 10
		end,
	},	
	
	clickable {
		position = {228, 24, 30, 50},
		onMouseClick = function()
			local a = get(obs_1) - 1
			if a < 1 then a = a + 360 end
			set(obs_1, a)
			return true
		end,
	},
	
	clickable {
		position = {228+30, 24, 30, 50},
		onMouseClick = function()
			local a = get(obs_1) + 1
			if a > 360 then a = a - 360 end
			set(obs_1, a)
			return true
		end,
	},	
	
	-- lamps
	textureLit {
		position = {7, 100, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_1_from_lit) == 1
		end,
	},

	textureLit {
		position = {7, 48, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_1_to_lit) == 1
		end,
	},
	
	-----------------
	-- right
	-------------------
	digitstapeLit {
        position = { 426, 63, 64, 30},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return get(obs_2)
        end,
		
    };	
	
	-- handle
	needleLit {
		position = {237+286, 34, 40, 40},
		image = get(handle_img),
		angle = function()
			return get(obs_2) * 10
		end,
	},	
	
	clickable {
		position = {228+286, 24, 30, 50},
		onMouseClick = function()
			local a = get(obs_2) - 1
			if a < 1 then a = a + 360 end
			set(obs_2, a)
			return true
		end,
	},
	
	clickable {
		position = {228+30+286, 24, 30, 50},
		onMouseClick = function()
			local a = get(obs_2) + 1
			if a > 360 then a = a - 360 end
			set(obs_2, a)
			return true
		end,
	},	
	
	
	-- lamps
	textureLit {
		position = {611, 100, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_2_from_lit) == 1
		end,
	},

	textureLit {
		position = {611, 48, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_2_to_lit) == 1
		end,
	},	
	

	----------------------------
	-- DISS --
	----------------------------
	
	-- handle
	needleLit {
		position = {145, 657, 40, 40},
		image = get(handle_img),
		angle = function()
			return get(wind_set) * 10
		end,
	},	
	
	clickable {
		position = {135, 650, 30, 50},
		onMouseClick = function()
			local a = get(wind_set) - 0.5
			if a < -99 then a = -99 end
			set(wind_set, a)
			return true
		end,
	},	
	clickable {
		position = {135+30, 650, 30, 50},
		onMouseClick = function()
			local a = get(wind_set) + 0.5
			if a > 99 then a = 99 end
			set(wind_set, a)
			return true
		end,
	},	
	
	-- buttons
	clickable {
		position = {7, 657, 38, 24},
		onMouseDown = function()
			set(wind_course_left, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_course_left, 0)
			return true
		end,
	},	
	clickable {
		position = {7+43, 657, 38, 24},
		onMouseClick = function()
			set(wind_course_ctr, 1 - get(wind_course_ctr))
			return true
		end,
	},	
	clickable {
		position = {7+86, 657, 38, 24},
		onMouseDown = function()
			set(wind_course_right, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_course_right, 0)
			return true
		end,
	},	
	
	clickable {
		position = {323, 657, 38, 24},
		onMouseDown = function()
			set(wind_spd_left, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_spd_left, 0)
			return true
		end,
	},	
	clickable {
		position = {323+43, 657, 38, 24},
		onMouseClick = function()
			set(wind_spd_ctr, 1 - get(wind_spd_ctr))
			return true
		end,
	},	
	clickable {
		position = {323+86, 657, 38, 24},
		onMouseDown = function()
			set(wind_spd_right, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_spd_right, 0)
			return true
		end,
	},		
	
	
	-------------------
	-- switches --
	-------------------
	
	-- nvu_power_on
	switch_lit {
		position = {486, 193, 16, 52},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(nvu_power_on) == 1
		end,
		onMouseClick = function()
			set(nvu_power_on, 1 - get(nvu_power_on))
			return true
		end,
	},
	
	-- nvu_calc_on
	switch_lit {
		position = {531, 193, 16, 52},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(nvu_calc_on) == 1
		end,
		onMouseClick = function()
			set(nvu_calc_on, 1 - get(nvu_calc_on))
			return true
		end,
	},	
	
	-- nvu_corr_on
	switch_lit {
		position = {578, 193, 16, 52},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(nvu_corr_on) == 1
		end,
		onMouseClick = function()
			set(nvu_corr_on, 1 - get(nvu_corr_on))
			return true
		end,
	},	
	
	--------------------
	-- buttons --
	--------------------
	
	-- ZPU 1
	clickable {
		position = {427, 467, 38, 24},
		onMouseDown = function()
			set(zpu_1_left_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_1_left_btn, 0)
			return true
		end,
	},	
	clickable {
		position = {427+49, 467, 38, 24},
		onMouseClick = function()
			set(zpu_1_ctr_btn, 1 - get(zpu_1_ctr_btn))
			return true
		end,
	},	
	clickable {
		position = {427+97, 467, 38, 24},
		onMouseDown = function()
			set(zpu_1_right_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_1_right_btn, 0)
			return true
		end,
	},
	-- ZPU 2
	clickable {
		position = {427, 373, 38, 24},
		onMouseDown = function()
			set(zpu_2_left_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_2_left_btn, 0)
			return true
		end,
	},	
	clickable {
		position = {427+49, 373, 38, 24},
		onMouseClick = function()
			set(zpu_2_ctr_btn, 1 - get(zpu_2_ctr_btn))
			return true
		end,
	},	
	clickable {
		position = {427+97, 373, 38, 24},
		onMouseDown = function()
			set(zpu_2_right_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_2_right_btn, 0)
			return true
		end,
	},	
	
	-- NVU
	clickable {
		position = {428, 165, 38, 24},
		onMouseDown = function()
			set(nvu_left_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(nvu_left_btn, 0)
			return true
		end,
	},	
	clickable {
		position = {428+49, 165, 38, 24},
		onMouseClick = function()
			set(nvu_ctr_btn, 1 - get(nvu_ctr_btn))
			return true
		end,
	},	
	clickable {
		position = {428+97, 165, 38, 24},
		onMouseDown = function()
			set(nvu_right_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(nvu_right_btn, 0)
			return true
		end,
	},		
	
	-- mode select
	needleLit {
		position = {391, 240, 72, 72},
		image = get(switch_img),
		angle = function()
			return get(nvu_param_sel) * 30
		
		end,
	},
	
	-- turn select
	needleLit {
		position = {528, 253, 72, 72},
		image = get(switch_img),
		angle = function()
			return get(nvu_turn_sel) * 30 - 60
		
		end,
	},	
	
	-- nvu_param_sel
	clickable {
		position = {386, 248, 40, 75},
		onMouseClick = function()
			local a = get(nvu_param_sel) - 1
			if a < -4 then a = -4 end
			set(nvu_param_sel, a)
			return true
		end,
	},	
	clickable {
		position = {386+40, 248, 40, 75},
		onMouseClick = function()
			local a = get(nvu_param_sel) + 1
			if a > 4 then a = 4 end
			set(nvu_param_sel, a)
			return true
		end,
	},	
	
	-- nvu_turn_sel
	clickable {
		position = {525, 250, 40, 75},
		onMouseClick = function()
			local a = get(nvu_turn_sel) - 1
			if a < -1 then a = -1 end
			set(nvu_turn_sel, a)
			return true
		end,
	},	
	clickable {
		position = {525+40, 250, 40, 75},
		onMouseClick = function()
			local a = get(nvu_turn_sel) + 1
			if a > 5 then a = 5 end
			set(nvu_turn_sel, a)
			return true
		end,
	},		
	
	---------------------------------
	-- lamps --
	------------------------------
	
	textureLit {
		position = {401, 207, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nvu_on_lit) == 1
		end,
	},	
	
	textureLit {
		position = {439, 207, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nvu_corr_lit) == 1
		end,
	},	
	
	
	textureLit {
		position = {137, 512, 88, 18},
		image = get(sign_plane),
		visible = function()
			return get(nvu_1_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 512, 88, 18},
		image = get(sign_plane_RUS),
		visible = function()
			return get(nvu_1_active) == 1 and RUS
		end,
	},	
	
	textureLit {
		position = {137, 282, 88, 18},
		image = get(sign_plane),
		visible = function()
			return get(nvu_2_active) == 1 and not RUS
		end,
	},		
	textureLit {
		position = {137, 282, 88, 18},
		image = get(sign_plane_RUS),
		visible = function()
			return get(nvu_2_active) == 1 and RUS
		end,
	},	
	
	textureLit {
		position = {137, 431, 88, 18},
		image = get(sign_point),
		visible = function()
			return get(nvu_2_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 431, 88, 18},
		image = get(sign_point_RUS),
		visible = function()
			return get(nvu_2_active) == 1 and RUS
		end,
	},	
	
	textureLit {
		position = {137, 200, 88, 18},
		image = get(sign_point),
		visible = function()
			return get(nvu_1_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 200, 88, 18},
		image = get(sign_point_RUS),
		visible = function()
			return get(nvu_1_active) == 1 and RUS
		end,
	},

	
	textureLit {
		position = {137, 408, 88, 18},
		image = get(sign_beacon),
		visible = function()
			return get(nvu_1_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 408, 88, 18},
		image = get(sign_beacon_RUS),
		visible = function()
			return get(nvu_1_active) == 1 and RUS
		end,
	},		
	
	textureLit {
		position = {137, 176, 88, 18},
		image = get(sign_beacon),
		visible = function()
			return get(nvu_2_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 176, 88, 18},
		image = get(sign_beacon_RUS),
		visible = function()
			return get(nvu_2_active) == 1 and RUS
		end,
	},	
	
	
	
	
	textureLit {
		position = {402, 496, 26, 31},
		image = get(sign_I),
		visible = function()
			return get(nvu_1_active) == 1
		end,
	},

	textureLit {
		position = {402, 406, 26, 31},
		image = get(sign_II),
		visible = function()
			return get(nvu_2_active) == 1
		end,
	},
	
	
	
	-- close panel
	clickable {
		position = {size[1]-20, size[2]-20, 20, 20},
		onMouseClick = function()
			set(show_nvu_panel, 0)
			return true
		end,
	},
	
}
