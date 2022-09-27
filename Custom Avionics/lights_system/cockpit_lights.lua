-- this is light controls

-- electric system
defineProperty("bus27_volt_left", globalPropertyf("sim/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("sim/custom/elec/bus27_volt_right"))

defineProperty("bus115_1_volt", globalPropertyf("sim/custom/elec/bus115_1_volt"))
defineProperty("bus115_3_volt", globalPropertyf("sim/custom/elec/bus115_3_volt"))


defineProperty("cockpit_light_cc_left", globalPropertyf("sim/custom/elec/cockpit_light_cc_left"))-- нагрузка на левую сеть от освещения в кабине
defineProperty("cockpit_light_cc_right", globalPropertyf("sim/custom/elec/cockpit_light_cc_right"))-- нагрузка на правую сеть от освещения в кабине
defineProperty("cockpit_light_cc_115", globalPropertyf("sim/custom/elec/cockpit_light_cc_115"))-- нагрузка на сеть 115 от освещения в кабине


-- generators
defineProperty("gen1_work_bus", globalPropertyi("sim/custom/elec/gen1_work"))  -- generators connected to the busses and working
defineProperty("gen2_work_bus", globalPropertyi("sim/custom/elec/gen2_work"))
defineProperty("gen3_work_bus", globalPropertyi("sim/custom/elec/gen3_work"))
defineProperty("gen4_work_bus", globalPropertyi("sim/custom/elec/gen4_work"))
defineProperty("gpu_work_bus", globalPropertyi("sim/custom/elec/gpu_work"))

-- light outside
defineProperty("percent_lights_on", globalPropertyf("sim/graphics/scenery/percent_lights_on")) -- процент света в городах рядом

-- nonHDR lights
defineProperty("default_cockpit_flood", globalPropertyf("sim/cockpit2/switches/panel_brightness_ratio[0]")) -- main cockpit flood
defineProperty("default_eng_panel_flood", globalPropertyf("sim/cockpit2/switches/panel_brightness_ratio[1]")) -- eng panel flood
defineProperty("default_pedestal_flood", globalPropertyf("sim/cockpit2/switches/panel_brightness_ratio[2]")) -- center panel flood

defineProperty("cabin_2d_light", globalPropertyf("sim/custom/lights/cabin_2d_light")) -- 

defineProperty("exit_lamp", globalPropertyf("sim/custom/lights/exit_lamp")) -- 
defineProperty("fasten_seatbelts_lamp", globalPropertyf("sim/custom/lights/fasten_seatbelts_lamp")) -- 
defineProperty("nosmoking_lamp", globalPropertyf("sim/custom/lights/nosmoking_lamp")) -- 
defineProperty("toilet_busy_lamp", globalPropertyf("sim/custom/lights/toilet_busy_lamp")) -- 
defineProperty("seats_leters_lamp", globalPropertyf("sim/custom/lights/seats_leters_lamp")) -- 

defineProperty("HDR_on", globalPropertyf("sim/graphics/settings/HDR_on")) -- settings for HDR
-- 1 заливающее освещение левой боковой панели
-- 2 заливающее освещение правой боковой панели
-- 3 заливающее освещение передней панели
-- 4 заливающее освещение средний пульт
-- 5 заливающее освещение верхней панели передн
-- 6 заливающее освещение верхней панели задн
-- 7 заливающее освещение панели БИ
-- 8 левый фонарик
-- 9 освещение салона


-- свет для левой боковой панели
defineProperty("l1_0", globalPropertyf("sim/weapons/vx[0]")) set(l1_0, 1)  --r
defineProperty("l1_1", globalPropertyf("sim/weapons/vx[1]")) set(l1_1, 0.7)  --g
defineProperty("l1_2", globalPropertyf("sim/weapons/vx[2]")) set(l1_2, 0.2)  --b
defineProperty("l1_3", globalPropertyf("sim/weapons/vx[3]")) set(l1_3, 0)  --alfa
defineProperty("l1_4", globalPropertyf("sim/weapons/vx[4]")) set(l1_4, 0.6) --size
defineProperty("l1_5", globalPropertyf("sim/weapons/vx[5]")) set(l1_5, 0)  --dx
defineProperty("l1_6", globalPropertyf("sim/weapons/vx[6]")) set(l1_6, 0)  --dy
defineProperty("l1_7", globalPropertyf("sim/weapons/vx[7]")) set(l1_7, -90)  --dz
defineProperty("l1_8", globalPropertyf("sim/weapons/vx[8]")) set(l1_8, 20)  --width


-- свет для правой боковой панели
defineProperty("l2_0", globalPropertyf("sim/weapons/vy[0]")) set(l2_0, 1)  --r
defineProperty("l2_1", globalPropertyf("sim/weapons/vy[1]")) set(l2_1, 0.7)  --g
defineProperty("l2_2", globalPropertyf("sim/weapons/vy[2]")) set(l2_2, 0.2)  --b
defineProperty("l2_3", globalPropertyf("sim/weapons/vy[3]")) set(l2_3, 0)  --alfa
defineProperty("l2_4", globalPropertyf("sim/weapons/vy[4]")) set(l2_4, 0.6) --size
defineProperty("l2_5", globalPropertyf("sim/weapons/vy[5]")) set(l2_5, 0)  --dx
defineProperty("l2_6", globalPropertyf("sim/weapons/vy[6]")) set(l2_6, 0)  --dy
defineProperty("l2_7", globalPropertyf("sim/weapons/vy[7]")) set(l2_7, -90)  --dz
defineProperty("l2_8", globalPropertyf("sim/weapons/vy[8]")) set(l2_8, 20)  --width

-- свет для передней панели
defineProperty("l3_0", globalPropertyf("sim/weapons/vz[0]")) set(l3_0, 1)  --r
defineProperty("l3_1", globalPropertyf("sim/weapons/vz[1]")) set(l3_1, 0.7)  --g
defineProperty("l3_2", globalPropertyf("sim/weapons/vz[2]")) set(l3_2, 0.2)  --b
defineProperty("l3_3", globalPropertyf("sim/weapons/vz[3]")) set(l3_3, 0)  --alfa
defineProperty("l3_4", globalPropertyf("sim/weapons/vz[4]")) set(l3_4, 0.6) --size
defineProperty("l3_5", globalPropertyf("sim/weapons/vz[5]")) set(l3_5, 0)  --dx
defineProperty("l3_6", globalPropertyf("sim/weapons/vz[6]")) set(l3_6, 0)  --dy
defineProperty("l3_7", globalPropertyf("sim/weapons/vz[7]")) set(l3_7, -50)  --dz
defineProperty("l3_8", globalPropertyf("sim/weapons/vz[8]")) set(l3_8, 0.5)  --width

-- свет для среднего пульта
defineProperty("l4_0", globalPropertyf("sim/weapons/x[0]")) set(l4_0, 1)  --r
defineProperty("l4_1", globalPropertyf("sim/weapons/x[1]")) set(l4_1, 0.7)  --g
defineProperty("l4_2", globalPropertyf("sim/weapons/x[2]")) set(l4_2, 0.2)  --b
defineProperty("l4_3", globalPropertyf("sim/weapons/x[3]")) set(l4_3, 1)  --alfa
defineProperty("l4_4", globalPropertyf("sim/weapons/x[4]")) set(l4_4, 0.9) --size
defineProperty("l4_5", globalPropertyf("sim/weapons/x[5]")) set(l4_5, 0)  --dx
defineProperty("l4_6", globalPropertyf("sim/weapons/x[6]")) set(l4_6, 0)  --dy
defineProperty("l4_7", globalPropertyf("sim/weapons/x[7]")) set(l4_7, -50)  --dz
defineProperty("l4_8", globalPropertyf("sim/weapons/x[8]")) set(l4_8, 1)  --width

-- свет для передней части верхнего щитка
defineProperty("l5_0", globalPropertyf("sim/weapons/y[0]")) set(l5_0, 1)  --r
defineProperty("l5_1", globalPropertyf("sim/weapons/y[1]")) set(l5_1, 0.7)  --g
defineProperty("l5_2", globalPropertyf("sim/weapons/y[2]")) set(l5_2, 0.2)  --b
defineProperty("l5_3", globalPropertyf("sim/weapons/y[3]")) set(l5_3, 0)  --alfa
defineProperty("l5_4", globalPropertyf("sim/weapons/y[4]")) set(l5_4, 0.5) --size
defineProperty("l5_5", globalPropertyf("sim/weapons/y[5]")) set(l5_5, 0)  --dx
defineProperty("l5_6", globalPropertyf("sim/weapons/y[6]")) set(l5_6, 0)  --dy
defineProperty("l5_7", globalPropertyf("sim/weapons/y[7]")) set(l5_7, -160)  --dz
defineProperty("l5_8", globalPropertyf("sim/weapons/y[8]")) set(l5_8, 20)  --width

-- свет для задней части верхнего щитка
defineProperty("l6_0", globalPropertyf("sim/weapons/z[0]")) set(l6_0, 1)  --r
defineProperty("l6_1", globalPropertyf("sim/weapons/z[1]")) set(l6_1, 0.7)  --g
defineProperty("l6_2", globalPropertyf("sim/weapons/z[2]")) set(l6_2, 0.2)  --b
defineProperty("l6_3", globalPropertyf("sim/weapons/z[3]")) set(l6_3, 0)  --alfa
defineProperty("l6_4", globalPropertyf("sim/weapons/z[4]")) set(l6_4, 0.4) --size
defineProperty("l6_5", globalPropertyf("sim/weapons/z[5]")) set(l6_5, 0)  --dx
defineProperty("l6_6", globalPropertyf("sim/weapons/z[6]")) set(l6_6, 0)  --dy
defineProperty("l6_7", globalPropertyf("sim/weapons/z[7]")) set(l6_7, 0)  --dz
defineProperty("l6_8", globalPropertyf("sim/weapons/z[8]")) set(l6_8, -1)  --width

-- свет для панели борт-инжинера
defineProperty("l7_0", globalPropertyf("sim/weapons/L[0]")) set(l7_0, 1)  --r
defineProperty("l7_1", globalPropertyf("sim/weapons/L[1]")) set(l7_1, 0.7)  --g
defineProperty("l7_2", globalPropertyf("sim/weapons/L[2]")) set(l7_2, 0.2)  --b
defineProperty("l7_3", globalPropertyf("sim/weapons/L[3]")) set(l7_3, 0)  --alfa
defineProperty("l7_4", globalPropertyf("sim/weapons/L[4]")) set(l7_4, 1.0) --size
defineProperty("l7_5", globalPropertyf("sim/weapons/L[5]")) set(l7_5, 0)  --dx
defineProperty("l7_6", globalPropertyf("sim/weapons/L[6]")) set(l7_6, 30)  --dy
defineProperty("l7_7", globalPropertyf("sim/weapons/L[7]")) set(l7_7, -90)  --dz
defineProperty("l7_8", globalPropertyf("sim/weapons/L[8]")) set(l7_8, 10)  --width

-- свет для панели борт-инжинера
defineProperty("l7_1_0", globalPropertyf("sim/weapons/N[0]")) set(l7_1_0, 1)  --r
defineProperty("l7_1_1", globalPropertyf("sim/weapons/N[1]")) set(l7_1_1, 0.7)  --g
defineProperty("l7_1_2", globalPropertyf("sim/weapons/N[2]")) set(l7_1_2, 0.2)  --b
defineProperty("l7_1_3", globalPropertyf("sim/weapons/N[3]")) set(l7_1_3, 0)  --alfa
defineProperty("l7_1_4", globalPropertyf("sim/weapons/N[4]")) set(l7_1_4, 0.7) --size
defineProperty("l7_1_5", globalPropertyf("sim/weapons/N[5]")) set(l7_1_5, 0)  --dx
defineProperty("l7_1_6", globalPropertyf("sim/weapons/N[6]")) set(l7_1_6, 30)  --dy
defineProperty("l7_1_7", globalPropertyf("sim/weapons/N[7]")) set(l7_1_7, -30)  --dz
defineProperty("l7_1_8", globalPropertyf("sim/weapons/N[8]")) set(l7_1_8, 20)  --width

-- свет для левого фонарика
defineProperty("l8_0", globalPropertyf("sim/weapons/M[0]")) set(l8_0, 1)  --r
defineProperty("l8_1", globalPropertyf("sim/weapons/M[1]")) set(l8_1, 0.7)  --g
defineProperty("l8_2", globalPropertyf("sim/weapons/M[2]")) set(l8_2, 0.2)  --b
defineProperty("l8_3", globalPropertyf("sim/weapons/M[3]")) set(l8_3, 0)  --alfa
defineProperty("l8_4", globalPropertyf("sim/weapons/M[4]")) set(l8_4, 1.0) --size
defineProperty("l8_5", globalPropertyf("sim/weapons/M[5]")) set(l8_5, 0)  --dx
defineProperty("l8_6", globalPropertyf("sim/weapons/M[6]")) set(l8_6, 0)  --dy
defineProperty("l8_7", globalPropertyf("sim/weapons/M[7]")) set(l8_7, -90)  --dz
defineProperty("l8_8", globalPropertyf("sim/weapons/M[8]")) set(l8_8, 10)  --width

-- свет в салоне
defineProperty("l9_0", globalPropertyf("sim/weapons/Prad[0]")) set(l9_0, 1)  --r
defineProperty("l9_1", globalPropertyf("sim/weapons/Prad[1]")) set(l9_1, 0.7)  --g
defineProperty("l9_2", globalPropertyf("sim/weapons/Prad[2]")) set(l9_2, 0.5)  --b
defineProperty("l9_3", globalPropertyf("sim/weapons/Prad[3]")) set(l9_3, 1)  --alfa
defineProperty("l9_4", globalPropertyf("sim/weapons/Prad[4]")) set(l9_4, 5) --size
defineProperty("l9_5", globalPropertyf("sim/weapons/Prad[5]")) set(l9_5, 1)  --dx
defineProperty("l9_6", globalPropertyf("sim/weapons/Prad[6]")) set(l9_6, 1)  --dy
defineProperty("l9_7", globalPropertyf("sim/weapons/Prad[7]")) set(l9_7, 0)  --dz
defineProperty("l9_8", globalPropertyf("sim/weapons/Prad[8]")) set(l9_8, 1)  --width


-- panel lights
defineProperty("mid_left_panel_int", globalPropertyf("sim/custom/lights/mid_left_panel_int"))  -- яркость свечения пъедестала
defineProperty("left_panel_int", globalPropertyf("sim/custom/lights/left_panel_int"))  -- яркость свечения встроенного освещения панели КВС
defineProperty("right_panel_int", globalPropertyf("sim/custom/lights/right_panel_int"))   -- яркость свечения встроенного освещения панели 2П
defineProperty("mid_right_panel_int", globalPropertyf("sim/custom/lights/mid_right_panel_int"))  -- яркость свечения встроенного освещения средней передней панели
defineProperty("ovhd_panel_int", globalPropertyf("sim/custom/lights/ovhd_panel_int"))   -- яркость свечения встроенного освещения верхней панели
defineProperty("left_panel_flood", globalPropertyf("sim/custom/lights/left_panel_flood"))   -- яркость заливающего света левой панели
defineProperty("right_panel_flood", globalPropertyf("sim/custom/lights/right_panel_flood"))   -- яркость заливающего света правой панели
defineProperty("mid_panel_flood", globalPropertyf("sim/custom/lights/mid_panel_flood"))   -- яркость заливающего света центральной панели
defineProperty("front_panel_flood", globalPropertyf("sim/custom/lights/front_panel_flood"))   -- яркость заливающего света передней панели
defineProperty("ovhd_front_panel_flood", globalPropertyf("sim/custom/lights/ovhd_front_panel_flood"))   -- яркость заливающего света передней части оверхеда
defineProperty("ovhd_back_panel_flood", globalPropertyf("sim/custom/lights/ovhd_back_panel_flood"))   -- яркость заливающего света задней части оверхеда
defineProperty("eng_panel_flood", globalPropertyf("sim/custom/lights/eng_panel_flood"))   -- яркость освещения панели БИ
defineProperty("azs_panel_flood", globalPropertyf("sim/custom/lights/azs_panel_flood"))   -- освещение панели АЗС
defineProperty("left_spotlight_flood", globalPropertyf("sim/custom/lights/left_spotlight_flood"))   -- яркость левого фонарика


-- controls
defineProperty("cabinl_flood_set", globalPropertyi("sim/custom/lights/cabinl_flood_set"))   -- выключатель освещения кабины

defineProperty("mid_left_panel_int_set", globalPropertyf("sim/custom/lights/mid_left_panel_int_set"))   -- регулятор встроенного освещения передней панели КВС
defineProperty("left_panel_int_set", globalPropertyf("sim/custom/lights/left_panel_int_set"))   -- регулятор встроенного освещения левой панели
defineProperty("right_panel_int_set", globalPropertyf("sim/custom/lights/right_panel_int_set"))   -- регулятор встроенного освещения правой панели
defineProperty("mid_right_panel_int_set", globalPropertyf("sim/custom/lights/mid_right_panel_int_set"))   -- регулятор встроенного освещения передней панели 2П
defineProperty("ovhd_panel_int_set", globalPropertyf("sim/custom/lights/ovhd_panel_int_set"))   -- регулятор встроенного освещения верхней панели
defineProperty("left_panel_flood_set", globalPropertyf("sim/custom/lights/left_panel_flood_set"))   -- регулятор яркости заливающего света левой панели
defineProperty("right_panel_flood_set", globalPropertyf("sim/custom/lights/right_panel_flood_set"))   -- регулятор яркости заливающего света правой панели
defineProperty("mid_panel_flood_set", globalPropertyf("sim/custom/lights/mid_panel_flood_set"))   -- регулятор яркости заливающего света центральной панели

defineProperty("front_panel_flood_set", globalPropertyf("sim/custom/lights/front_panel_flood_set"))   -- регулятор яркости заливающего света передней панели
defineProperty("ovhd_front_panel_flood_set", globalPropertyf("sim/custom/lights/ovhd_front_panel_flood_set"))   -- регулятор яркости заливающего света передней части оверхеда
defineProperty("ovhd_back_panel_flood_set", globalPropertyf("sim/custom/lights/ovhd_back_panel_flood_set"))   -- регулятор яркости заливающего света заднией части оверхеда

defineProperty("eng_panel_flood_set", globalPropertyf("sim/custom/lights/eng_panel_flood_set"))   -- регулятор яркости освещения панели БИ
defineProperty("azs_panel_flood_set", globalPropertyi("sim/custom/lights/azs_panel_flood_set"))   -- выключатель освещения панели АЗС

defineProperty("sign_belts", globalPropertyi("sim/custom/switchers/ovhd/sign_belts")) -- транспарант пристегните ремни
defineProperty("sign_nosmoke", globalPropertyi("sim/custom/switchers/ovhd/sign_nosmoke")) -- транспарант пристегните ремни
defineProperty("sign_exit", globalPropertyi("sim/custom/switchers/ovhd/sign_exit")) -- транспарант пристегните ремни


defineProperty("frame_time", globalPropertyf("sim/custom/time/frame_time")) -- time of frame



local bright_tbl = {{ -5000, 0},    -- bugs workaround
				  { 0, 0 },   -- 
				  { 0.1, 0.6 },   -- 
            	  { 0.5, 0.85 },   -- 
           		  { 1, 1 },    -- 
          		  { 10000, 1000 }}   -- bugs workaround


				  
				  
				  
				  
local toilet_timer_before = 90
local toilet_use_timer = 60



function update()

local passed = get(frame_time)

-- calculate light coefficients depending on bus voltages
local light_coef_27 = (get(bus27_volt_left) + get(bus27_volt_right)) / (29 * 2) -- настроить светимость так, чтобы при половине питания свет все-же был.

local light_coef_115 = (get(bus115_1_volt) + get(bus115_3_volt)) / (117 * 2)


local current_115 = 0

-- internal panel lights
local pedestal_int = get(mid_left_panel_int_set) * light_coef_115
set(mid_left_panel_int, pedestal_int * 0.1)

local left_pan_int = get(left_panel_int_set) * light_coef_115
set(left_panel_int, left_pan_int * 0.1)

local right_pan_int = get(right_panel_int_set) * light_coef_115
set(right_panel_int, right_pan_int * 0.1)

local mid_pan_int = get(mid_right_panel_int_set) * light_coef_115
set(mid_right_panel_int, mid_pan_int * 0.1)

local ovhd_pan_int = get(ovhd_panel_int_set) * light_coef_115
set(ovhd_panel_int, ovhd_pan_int * 0.1)


-- panel flood lights
local left_flood = get(left_panel_flood_set) * light_coef_27
set(l1_3, left_flood * 1.5)
set(left_panel_flood, left_flood)

local right_flood = get(right_panel_flood_set) * light_coef_27
set(l2_3, right_flood * 1.5)
set(right_panel_flood, right_flood)

local front_flood = get(front_panel_flood_set) * light_coef_27
set(l3_3, front_flood * 1.5)
set(front_panel_flood, front_flood)

local pedestal_flood = get(mid_panel_flood_set) * light_coef_27
set(l4_3, pedestal_flood * 1.5)
set(mid_panel_flood, pedestal_flood ^ 0.5)

local ovhd_fr_flood = get(ovhd_front_panel_flood_set) * light_coef_27
set(l5_3, ovhd_fr_flood * 1.5)
set(ovhd_front_panel_flood, ovhd_fr_flood ^ 0.5)

local ovhd_bk_flood = get(ovhd_back_panel_flood_set) * light_coef_27
set(l6_3, ovhd_bk_flood * 1.5)
set(ovhd_back_panel_flood, ovhd_bk_flood)

local eng_flood = get(eng_panel_flood_set) * light_coef_27
set(l7_3, eng_flood * 1.5)
set(l7_1_3, eng_flood * 1.5)
set(eng_panel_flood, eng_flood ^ 0.5)

local azs_flood = get(azs_panel_flood_set) * light_coef_27
set(azs_panel_flood, azs_flood)


-- cockpit lights
local non_HDR = 1 - get(HDR_on) -- enable default lights if HDR is disabled

local cockpit_flood = get(cabinl_flood_set) * light_coef_27
set(default_cockpit_flood, interpolate(bright_tbl, cockpit_flood) * 0.8) 

set(default_eng_panel_flood, interpolate(bright_tbl, eng_flood) * non_HDR)
set(default_pedestal_flood, interpolate(bright_tbl, pedestal_flood) * non_HDR)

-- cabin lights
if (get(gen1_work_bus) + get(gen2_work_bus) + get(gen3_work_bus) > 1 or get(gpu_work_bus) == 1) and get(percent_lights_on) > 0.15 then
	set(l9_3, light_coef_115)
	set(cockpit_light_cc_115, 25)
	set(cabin_2d_light, non_HDR * light_coef_115)
else
	set(l9_3, 0)
	set(cockpit_light_cc_115, 0)
	set(cabin_2d_light, 0)
end

-- cabin signs
set(exit_lamp, get(sign_exit) * light_coef_27)
set(fasten_seatbelts_lamp, get(sign_belts) * light_coef_27)
set(nosmoking_lamp, get(sign_nosmoke) * light_coef_27)

-- toilet lamp
toilet_timer_before = toilet_timer_before - passed

if toilet_timer_before < 0 then
	
	set(toilet_busy_lamp, light_coef_27) -- turn on the light
	toilet_use_timer = toilet_use_timer - passed
	
	if toilet_use_timer < 0 then
		toilet_use_timer = math.random(60, 300) -- set new time for toilet use
		toilet_timer_before = math.random(120, 600) -- set new time before next toilet use
		set(toilet_busy_lamp, 0) -- turn off the light
	end

end

set(seats_leters_lamp, light_coef_27)



-- calculate currents
local current_27 = left_flood + right_flood + front_flood + pedestal_flood * 0.7 
current_27 = current_27 + ovhd_fr_flood * 0.7 + ovhd_bk_flood * 0.7 + eng_flood + azs_flood * 1.5 + cockpit_flood * 0.5

set(cockpit_light_cc_left, current_27 * get(bus27_volt_left) / 58)
set(cockpit_light_cc_right, current_27 * get(bus27_volt_right) / 58)



end