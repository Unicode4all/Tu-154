-- failures and runtime palette

size = {512, 700}

defineProperty("save_state", globalPropertyi("sim/custom/save_state")) -- принудительное сохранение состояния самолета

-- images
defineProperty("bg_img", loadImage("repair_tex.png"))


defineProperty("show_fail_panel", globalPropertyi("sim/custom/panels/show_fail_panel")) -- показать панель отказов

defineProperty("reset_state", globalPropertyi("sim/custom/reset_state")) -- сброс состояния самолета

defineProperty("frame_time", globalPropertyf("sim/custom/time/frame_time")) -- flight time

defineProperty("failures_enabled", globalPropertyi("sim/custom/failures/failures_enabled")) -- отказы включены



local runtime_tbl = {}


-- runtime
runtime_tbl[1] = {"APU", globalPropertyd("sim/custom/failures/apu_runtime")} -- время наработки

runtime_tbl[2] = {"Eng #1", globalPropertyf("sim/custom/failures/engine_runtime_1")}
runtime_tbl[3] = {"Eng #2", globalPropertyf("sim/custom/failures/engine_runtime_2")}
runtime_tbl[4] = {"Eng #3", globalPropertyf("sim/custom/failures/engine_runtime_3")}

local brakes_tbl = {}

brakes_tbl[1] = {"Brake L", globalPropertyf("sim/custom/failures/brake_runtime_left")} -- Наработка тормозных колодок
brakes_tbl[2] = {"Brake R", globalPropertyf("sim/custom/failures/brake_runtime_right")} -- Наработка тормозных колодок


-- liquids

local liqd_tbl = {}


liqd_tbl[1] = {"Engine #1 Oil", globalPropertyf("sim/custom/failures/engn_oil_qty_1")} -- остаток масла в системе
liqd_tbl[2] = {"Engine #2 Oil", globalPropertyf("sim/custom/failures/engn_oil_qty_2")} -- остаток масла в системе
liqd_tbl[3] = {"Engine #3 Oil", globalPropertyf("sim/custom/failures/engn_oil_qty_3")} -- остаток масла в системе


local hydro_tbl = {}
hydro_tbl[1] = {"Hydro Sys #1", globalPropertyf("sim/custom/hydro/gs_qty_1")} -- остаток масла в системе
hydro_tbl[2] = {"Hydro Sys #2", globalPropertyf("sim/custom/hydro/gs_qty_2")} -- остаток масла в системе
hydro_tbl[3] = {"Hydro Sys #3", globalPropertyf("sim/custom/hydro/gs_qty_3")} -- остаток масла в системе



local customFails = {}
local simFails = {}

-- failures
customFails["ABSU Pitot heat"] = globalPropertyi("sim/custom/antiice/ppd_3_heat_fail")

simFails["Engine #1 inlet heat"] = globalPropertyi("sim/operation/failures/rel_ice_inlet_heat")
simFails["Engine #2 inlet heat"] = globalPropertyi("sim/operation/failures/rel_ice_inlet_heat2")
simFails["Engine #3 inlet heat"] = globalPropertyi("sim/operation/failures/rel_ice_inlet_heat3")

simFails["Left Pitot heat"] = globalPropertyi("sim/operation/failures/rel_ice_pitot_heat1")
simFails["Right Pitot heat"] = globalPropertyi("sim/operation/failures/rel_ice_pitot_heat2")

simFails["Wings heat"] = globalPropertyi("sim/operation/failures/rel_ice_surf_heat")
simFails["Stab heat"] = globalPropertyi("sim/operation/failures/rel_ice_surf_heat2")

customFails["Ice detect"] = globalPropertyi("sim/custom/failures/rio_fail")

customFails["Left window heat"] = globalPropertyi("sim/custom/failures/window_heat_fail_1")
customFails["Center window heat"] = globalPropertyi("sim/custom/failures/window_heat_fail_2")
customFails["Right window heat"] = globalPropertyi("sim/custom/failures/window_heat_fail_3")

customFails["APU burnt"] = globalPropertyi("sim/custom/failures/apu_fail_fuel_left") -- отказ стартера
customFails["APU starter"] = globalPropertyi("sim/custom/failures/apu_start_fail") -- отказ стартера
customFails["APU"] = globalPropertyi("sim/custom/failures/apu_fail") -- отказ по наработке
customFails["APU air pressure"] = globalPropertyi("sim/custom/failures/apu_press_fail") -- отказ отбора воздуха от двигателя

simFails["!!!Left brakes"] = globalPropertyi("sim/operation/failures/rel_lbrakes") -- Отказ тормозов
simFails["!!!Right brakes"] = globalPropertyi("sim/operation/failures/rel_rbrakes") -- Отказ тормозов

customFails["!!!Aileron left"] = globalPropertyi("sim/custom/failures/ail_fail_left") -- 
customFails["!!!Aileron right"] = globalPropertyi("sim/custom/failures/ail_fail_right") -- 

customFails["Left inner spoiler "] = globalPropertyi("sim/custom/failures/fail_spoil_inn_left") -- 
customFails["Right inner spoiler"] = globalPropertyi("sim/custom/failures/fail_spoil_inn_right") -- 
customFails["!!!Left middle spoiler"] = globalPropertyi("sim/custom/failures/fail_spoil_mid_left") -- 
customFails["!!!Right middle spoiler"] = globalPropertyi("sim/custom/failures/fail_spoil_mid_right") -- 
customFails["Left outter spoiler"] = globalPropertyi("sim/custom/failures/fail_spoil_out_left") -- 
customFails["Right outter spoiler"] = globalPropertyi("sim/custom/failures/fail_spoil_out_right") -- 

customFails["!!!Rudder"] = globalPropertyi("sim/custom/failures/rudder_fail") -- 
customFails["!!!Left elevator"] = globalPropertyi("sim/custom/failures/elev_fail_left") -- 
customFails["!!!Right elevator"] = globalPropertyi("sim/custom/failures/elev_fail_right") -- 

simFails["!!!Rudder trimm"] = globalPropertyi("sim/operation/failures/rel_trim_rud") -- 
simFails["!!!Aileron trimm"] = globalPropertyi("sim/operation/failures/rel_trim_ail") -- 
simFails["!!!Elevator trimm"] = globalPropertyi("sim/operation/failures/rel_trim_elv") -- 
customFails["!!!Emerg elev trimm"] = globalPropertyi("sim/custom/failures/trim_emerg_elv_fail") --

customFails["!!!Left flaps"] = globalPropertyi("sim/custom/failures/flap_fail_left") -- 
customFails["!!!Right flpas"] = globalPropertyi("sim/custom/failures/flap_fail_right") -- 

customFails["!!!Stab mechanics"] = globalPropertyi("sim/custom/failures/stab_eng_fail") -- 
customFails["!!!Stab automatic"] = globalPropertyi("sim/custom/failures/stab_automatic_fail") -- 
customFails["!!!Slats"] = globalPropertyi("sim/custom/failures/slats_fail") -- 

simFails["Front gear retract"] = globalPropertyi("sim/operation/failures/rel_lagear1") -- fail of retract gear
simFails["Left gear retract"] = globalPropertyi("sim/operation/failures/rel_lagear2") -- fail of retract gear
simFails["Right gear retract"] = globalPropertyi("sim/operation/failures/rel_lagear3") -- fail of retract gear
simFails["Gear actuator"] = globalPropertyi("sim/operation/failures/rel_gear_act") -- actuator fail. bugs workaround

simFails["!!!Generator #1"] = globalPropertyi("sim/operation/failures/rel_genera0")
simFails["!!!Generator #2"] = globalPropertyi("sim/operation/failures/rel_genera1")
simFails["!!!Generator #3"] = globalPropertyi("sim/operation/failures/rel_genera2")
customFails["APU Generator"] = globalPropertyi("sim/custom/failures/apu_gen_fail")

customFails["!!!VU 1"] = globalPropertyi("sim/custom/failures/vu1_fail")
customFails["!!!VU 2"] = globalPropertyi("sim/custom/failures/vu2_fail")
customFails["!!!Aux VU"] = globalPropertyi("sim/custom/failures/vu3_fail")

customFails["!!!TR 1"] = globalPropertyi("sim/custom/failures/tr1_fail")
customFails["!!!TR 2"] = globalPropertyi("sim/custom/failures/tr2_fail")

customFails["!!!PTS250 #1"] = globalPropertyi("sim/custom/failures/pts250_1_fail")
customFails["!!!PTS250 #2"] = globalPropertyi("sim/custom/failures/pts250_2_fail")
customFails["!!!Inv 115v"] = globalPropertyi("sim/custom/failures/inv115_fail")

customFails["!!!Battery #1"] = globalPropertyi("sim/custom/failures/bat_1_fail")
customFails["!!!Battery #2"] = globalPropertyi("sim/custom/failures/bat_2_fail")
customFails["!!!Battery #3"] = globalPropertyi("sim/custom/failures/bat_3_fail")
customFails["!!!Battery #4"] = globalPropertyi("sim/custom/failures/bat_4_fail")

customFails["!!!Battery #1 heat"] = globalPropertyi("sim/custom/failures/bat_1_kz")
customFails["!!!Battery #2 heat"] = globalPropertyi("sim/custom/failures/bat_2_kz")
customFails["!!!Battery #3 heat"] = globalPropertyi("sim/custom/failures/bat_3_kz")
customFails["!!!Battery #4 heat"] = globalPropertyi("sim/custom/failures/bat_4_kz")

simFails["!!!Engine #1"] = globalPropertyi("sim/operation/failures/rel_engfai0")
simFails["!!!Engine #2"] = globalPropertyi("sim/operation/failures/rel_engfai1")
simFails["!!!Engine #3"] = globalPropertyi("sim/operation/failures/rel_engfai2")


customFails["Engine #1 fuel pump"] = globalPropertyi("sim/custom/failures/eng_fuel_pmp_fail_1")
customFails["Engine #2 fuel pump"] = globalPropertyi("sim/custom/failures/eng_fuel_pmp_fail_2")
customFails["Engine #3 fuel pump"] = globalPropertyi("sim/custom/failures/eng_fuel_pmp_fail_3")

customFails["!!!Engine #1 oil leak"] = globalPropertyi("sim/custom/failures/engn_oil_leak_1")
customFails["!!!Engine #2 oil leak"] = globalPropertyi("sim/custom/failures/engn_oil_leak_2")
customFails["!!!Engine #3 oil leak"] = globalPropertyi("sim/custom/failures/engn_oil_leak_3")

simFails["Engine #1 oil pump"] = globalPropertyi("sim/operation/failures/rel_oilpmp0")
simFails["Engine #2 oil pump"] = globalPropertyi("sim/operation/failures/rel_oilpmp1")
simFails["Engine #3 oil pump"] = globalPropertyi("sim/operation/failures/rel_oilpmp2")

simFails["Engine #1 fuel filter"] = globalPropertyi("sim/operation/failures/rel_eng_lo0")
simFails["Engine #2 fuel filter"] = globalPropertyi("sim/operation/failures/rel_eng_lo1")
simFails["Engine #3 fuel filter"] = globalPropertyi("sim/operation/failures/rel_eng_lo2")

simFails["Engine #1 starter"] = globalPropertyi("sim/operation/failures/rel_startr0")
simFails["Engine #2 starter"] = globalPropertyi("sim/operation/failures/rel_startr1")
simFails["Engine #3 starter"] = globalPropertyi("sim/operation/failures/rel_startr2")

simFails["Engine #1 igniter"] = globalPropertyi("sim/operation/failures/rel_ignitr0")
simFails["Engine #2 igniter"] = globalPropertyi("sim/operation/failures/rel_ignitr1")
simFails["Engine #3 igniter"] = globalPropertyi("sim/operation/failures/rel_ignitr2")

simFails["Engine #1 reverser"] = globalPropertyi("sim/operation/failures/rel_revers0")
simFails["Engine #3 reverser"] = globalPropertyi("sim/operation/failures/rel_revers2")

customFails["Fuel pump 2L"] = globalPropertyi("sim/custom/failures/fuel_pump_2l_fail")
customFails["Fuel pump 2R"] = globalPropertyi("sim/custom/failures/fuel_pump_2r_fail")
customFails["Fuel pump 3L"] = globalPropertyi("sim/custom/failures/fuel_pump_3l_fail")
customFails["Fuel pump 3R"] = globalPropertyi("sim/custom/failures/fuel_pump_3r_fail")
customFails["Fuel pump 1"] = globalPropertyi("sim/custom/failures/fuel_pump_1_fail")
customFails["Fuel pump 4"] = globalPropertyi("sim/custom/failures/fuel_pump_4_fail")

customFails["Fuel cue system"] = globalPropertyi("sim/custom/failures/fuel_auto_fail")
customFails["Fuel leveler"] = globalPropertyi("sim/custom/failures/fuel_level_fail")
customFails["Fuel portion system"] = globalPropertyi("sim/custom/failures/fuel_porc_fail")

customFails["Fuel meter 2L"] = globalPropertyi("sim/custom/failures/fuel_meter_2l_fail")
customFails["Fuel meter 2R"] = globalPropertyi("sim/custom/failures/fuel_meter_2r_fail")
customFails["Fuel meter 3L"] = globalPropertyi("sim/custom/failures/fuel_meter_3l_fail")
customFails["Fuel meter 3R"] = globalPropertyi("sim/custom/failures/fuel_meter_3r_fail")
customFails["Fuel meter 1"] = globalPropertyi("sim/custom/failures/fuel_meter_1_fail")
customFails["Fuel meter 4"] = globalPropertyi("sim/custom/failures/fuel_meter_4_fail")
customFails["Fuel meter summ"] = globalPropertyi("sim/custom/failures/fuel_meter_summ")

customFails["FF meter #1"] = globalPropertyi("sim/custom/failures/fuel_flowmeter_1_fail")
customFails["FF meter #2"] = globalPropertyi("sim/custom/failures/fuel_flowmeter_2_fail")
customFails["FF meter #3"] = globalPropertyi("sim/custom/failures/fuel_flowmeter_3_fail")

customFails["!!!Hydraulic #1 leak"] = globalPropertyi("sim/custom/failures/hydro_leak_1")
customFails["!!!Hydraulic #2 leak"] = globalPropertyi("sim/custom/failures/hydro_leak_2")
customFails["!!!Hydraulic #3 leak"] = globalPropertyi("sim/custom/failures/hydro_leak_3")
customFails["!!!Hydraulic #4 leak"] = globalPropertyi("sim/custom/failures/hydro_leak_4")

customFails["!!!Engine hydraulic pump 1-1"] = globalPropertyi("sim/custom/failures/hydro_pump_fail_11")
customFails["!!!Engine hydraulic pump 1-2"] = globalPropertyi("sim/custom/failures/hydro_pump_fail_12")
customFails["!!!Engine hydraulic pump 2"] = globalPropertyi("sim/custom/failures/hydro_pump_fail_2")
customFails["!!!Engine hydraulic pump 3"] = globalPropertyi("sim/custom/failures/hydro_pump_fail_3")

customFails["!!!Electric hydraulic pump #2"] = globalPropertyi("sim/custom/failures/hydro_elec_fail_2")
customFails["!!!Electric hydraulic pump #3"] = globalPropertyi("sim/custom/failures/hydro_elec_fail_3")



customFails["Left turbo cooler"] = globalPropertyi("sim/custom/failures/tth_left_fail") -- отказ турбохолодильника
customFails["Right turbo cooler"] = globalPropertyi("sim/custom/failures/tth_right_fail") -- отказ турбохолодильника

customFails["Engine #1 airbleed"] = globalPropertyi("sim/custom/failures/airbleed_1") -- отказ отбора воздуха от двигателя
customFails["Engine #2 airbleed"] = globalPropertyi("sim/custom/failures/airbleed_2") -- отказ отбора воздуха от двигателя
customFails["Engine #3 airbleed"] = globalPropertyi("sim/custom/failures/airbleed_3") -- отказ отбора воздуха от двигателя

customFails["Left PSVP"] = globalPropertyi("sim/custom/failures/psvp_fail_left") -- отказ ПСВП
customFails["Right PSVP"] = globalPropertyi("sim/custom/failures/psvp_fail_right") -- отказ ПСВП
customFails["Air pressure valve"] = globalPropertyi("sim/custom/failures/sard_valve_fail") -- отказ выпускного клапана

customFails["Front-Left landing light"] = globalPropertyi("sim/custom/failures/lan_lamp_fail_FL") -- отказ передней левой фары
customFails["Front-Right landing light"] = globalPropertyi("sim/custom/failures/lan_lamp_fail_FR") -- отказ передней правой фары
customFails["Wing-Left landing light"] = globalPropertyi("sim/custom/failures/lan_lamp_fail_WL") -- отказ крыльевой левой фары
customFails["Wing-Right landing light"] = globalPropertyi("sim/custom/failures/lan_lamp_fail_WR") -- отказ крыльевой правой фары
simFails["Nav lights"] = globalPropertyi("sim/operation/failures/rel_lites_nav") -- отказ на огней
simFails["Beacon lights"] = globalPropertyi("sim/operation/failures/rel_lites_beac") -- отказ на огней

customFails["Main alarm"] = globalPropertyi("sim/custom/failures/main_alarm_fail") -- отказ сирены
customFails["Speaker alarm"] = globalPropertyi("sim/custom/failures/speaker_alarm_fail") -- отказ сирены

customFails["ABSU RA56 roll"] = globalPropertyi("sim/custom/failures/absu_ra56_roll_fail") -- отказ ra56
customFails["ABSU RA56 pitch"] = globalPropertyi("sim/custom/failures/absu_ra56_pitch_fail") -- отказ ra56
customFails["ABSU RA56 yaw"] = globalPropertyi("sim/custom/failures/absu_ra56_yaw_fail") -- отказ ra56

customFails["ABSU AT1"] = globalPropertyi("sim/custom/failures/absu_at1_fail") -- отказ AT
customFails["ABSU AT2"] = globalPropertyi("sim/custom/failures/absu_at2_fail") -- отказ AT

customFails["ABSU Roll damper"] = globalPropertyi("sim/custom/failures/absu_damp_roll_fail") -- отказ демперов крена
customFails["ABSU Pitch damper"] = globalPropertyi("sim/custom/failures/absu_damp_pitch_fail") -- отказ демперов тангажа
customFails["ABSU Yaw damper"] = globalPropertyi("sim/custom/failures/absu_damp_yaw_fail") -- отказ демперов курса
customFails["ABSU Roll control"] = globalPropertyi("sim/custom/failures/absu_contr_roll_fail") -- отказ бокового управления
customFails["ABSU Pitch control"] = globalPropertyi("sim/custom/failures/absu_contr_pitch_fail") -- отказ продольного управления
customFails["ABSU TOGA Calc"] = globalPropertyi("sim/custom/failures/absu_calc_toga_fail") -- отказ вычислителя УХОД
customFails["ABSU Roll Calc"] = globalPropertyi("sim/custom/failures/absu_calc_roll_fail") -- отказ бокового канала
customFails["ABSU Pitch Calc"] = globalPropertyi("sim/custom/failures/absu_calc_pitch_fail") -- отказ продольного канала

customFails["Doppler system"] = globalPropertyi("sim/custom/failures/diss_fail") --
customFails["Navigational system"] = globalPropertyi("sim/custom/failures/nvu_fail") --
customFails["Weather radar"] = globalPropertyi("sim/custom/failures/radar_fail") --

simFails["ADF #1"] = globalPropertyi("sim/operation/failures/rel_adf1")
simFails["ADF #2"] = globalPropertyi("sim/operation/failures/rel_adf2")
customFails["Course MP #1"] = globalPropertyi("sim/custom/failures/nav1_fail") -- fail
customFails["Course MP #2"] = globalPropertyi("sim/custom/failures/nav2_fail") -- fail
customFails["DME #1"] = globalPropertyi("sim/custom/failures/dme1_fail") -- fail
customFails["DME #2"] = globalPropertyi("sim/custom/failures/dme2_fail") -- fail
customFails["Marker receiver"] = globalPropertyi("sim/custom/failures/mrp_fail")

customFails["RSBN"] = globalPropertyi("sim/custom/failures/rsbn_fail")
customFails["TAWS"] = globalPropertyi("sim/custom/failures/taws_fail")

simFails["TKS gyro #1"] = globalPropertyi("sim/operation/failures/rel_ss_dgy")
simFails["TKS gyro #2"] = globalPropertyi("sim/operation/failures/rel_cop_dgy")
customFails["TKS Magnetic sensor #1"] = globalPropertyi("sim/custom/failures/tks_km1_fail")
customFails["TKS Magnetic sensor #2"] = globalPropertyi("sim/custom/failures/tks_km2_fail")
customFails["TKS magnetic corrector #1"] = globalPropertyi("sim/custom/failures/tks_bgmk1_fail")
customFails["TKS magnetic corrector #2"] = globalPropertyi("sim/custom/failures/tks_bgmk2_fail")

simFails["Captain's altimeter"] = globalPropertyi("sim/operation/failures/rel_ss_alt")
simFails["CoPilot's altimeter"] = globalPropertyi("sim/operation/failures/rel_cop_alt")
simFails["Turn indicator"] = globalPropertyi("sim/operation/failures/rel_ss_tsi")

customFails["Clock left"] = globalPropertyi("sim/custom/failures/acs1_fail")
customFails["Clock right"] = globalPropertyi("sim/custom/failures/acs2_fail")
customFails["Clock engineer"] = globalPropertyi("sim/custom/failures/acs3_fail")
customFails["Aux art horizon"] = globalPropertyi("sim/custom/failures/agr_fail")
customFails["BKK system"] = globalPropertyi("sim/custom/failures/bkk_fail")

customFails["!!!Left pitot block"] = globalPropertyi("sim/custom/failures/pitot1") -- Pitot 1 - Blockage
customFails["!!!Right pitot block"] = globalPropertyi("sim/custom/failures/pitot2") -- Pitot 2 - Blockage
customFails["!!!Left static"] = globalPropertyi("sim/custom/failures/static1")  -- static fail
customFails["!!!Right static"] = globalPropertyi("sim/custom/failures/static2")  -- static fail
simFails["!!!SVS system"] = globalPropertyi("sim/operation/failures/rel_adc_comp")  -- static fail


customFails["Controll gyro"] = globalPropertyi("sim/custom/failures/mgv_fail") -- отказ МГВ
simFails["Captain's art horizon"] = globalPropertyi("sim/operation/failures/rel_ss_ahz")
simFails["CoPilot's art horizon"] = globalPropertyi("sim/operation/failures/rel_cop_ahz")
customFails["Radioaltimeter #1"] = globalPropertyi("sim/custom/failures/rv1_fail")  -- fail
customFails["Radioaltimeter #2"] = globalPropertyi("sim/custom/failures/rv2_fail")  -- fail
customFails["AOA"] = globalPropertyi("sim/custom/failures/AOA") -- fail
simFails["AOA alarm"] = globalPropertyi("sim/operation/failures/rel_stall_warn") -- fail
customFails["Feet altimeter"] = globalPropertyi("sim/custom/failures/uvid15_fail") -- fail
simFails["Left VVI"] = globalPropertyi("sim/operation/failures/rel_ss_vvi") -- fail
simFails["Right VVI"] = globalPropertyi("sim/operation/failures/rel_cop_vvi") -- fail




--[[
defineProperty("system_qty_1", globalPropertyf("sim/custom/hydro/gs_qty_1")) -- остаток масла в системе
defineProperty("system_qty_2", globalPropertyf("sim/custom/hydro/gs_qty_2")) -- остаток масла в системе
defineProperty("system_qty_3", globalPropertyf("sim/custom/hydro/gs_qty_3")) -- остаток масла в системе
--]]

local runTimeDrawTbl = {}
local brakesShowTbl = {}
local liqd_show_tbl = {}
local failDrawTbl = {}

local function readAll()
	
	-- fill the runtime table to show
	for k,v in ipairs(runtime_tbl) do
		runTimeDrawTbl[k] = {v[1], string.format("%.01f", tostring(get(v[2])/3600))}
	end

	
	-- fill the brakes table to show
	for k,v in ipairs(brakes_tbl) do
		brakesShowTbl[k] = {v[1], string.format("%.03f", tostring(get(v[2])))}
	end

	
	-- fill the liquids table to show
	for k,v in ipairs(liqd_tbl) do
		liqd_show_tbl[k] = {v[1], string.format("%.01f", tostring(get(v[2])))}
	end
		
		
	-- fill table of failures
	failDrawTbl = {} -- flush table first
		
		
	for k,v in pairs(customFails) do -- scan custom failures
		if get(v) > 0 then
			table.insert(failDrawTbl, k)
		end
	end
		
	for k,v in pairs(simFails) do -- scan sim failures
		if get(v) == 6 then
			table.insert(failDrawTbl, k)
		end
	end

	-- sort table
	table.sort(failDrawTbl)
end



local function fixAll()
	
	for k,v in pairs(customFails) do -- scan custom failures
		set(v, 0)
	end
		
	for k,v in pairs(simFails) do -- scan sim failures
		set(v, 0)
	end
	
	set(hydro_tbl[1][2], 58)
	set(hydro_tbl[2][2], 58)
	set(hydro_tbl[3][2], 45)
	
	set(save_state, 1)

	return true
	
end


local lag_time = 0


function update()
	
	local passed = get(frame_time)
	
	lag_time = lag_time - passed
	
	if lag_time < 0 then
		readAll()
		
		lag_time = 1
	end
	


end



components = {

	-- background
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(bg_img),
	},
	
	
	
	
	
	text_draw {
		position = {20, 600, 50, 50},
		text = "------------------- TIME BEFORE REPAIR ------------------",
	},
	
	
	fail_runtime {
		position = {20, 580, 50, 50},
		drawTable = function() return runTimeDrawTbl end,
		value = "h",
	},
	
		
	-- ENGINE REPAIR button
	rectangle {
		position = {290, 550, 170, 30},
		color = {0, 0, 0, 1},
	},

	rectangle {
		position = {290+1, 550+1, 170-2, 30-2},
		color = {0.9, 0.9, 0.9, 1},
	},
	
	text_draw {
		position = {300, 550+10, 50, 50},
		text = "ENGINE REPAIR",
	},
	

	clickable {
		position = {290, 550, 170, 30},
      
		onMouseClick = function()
			set(runtime_tbl[1][2], math.random(280,320) * 3600)
			
			set(runtime_tbl[2][2], math.random(280,320) * 3600)
			set(runtime_tbl[3][2], math.random(280,320) * 3600)
			set(runtime_tbl[4][2], math.random(280,320) * 3600)
			set(save_state, 1)
		end
	}, 
	
	
	
	text_draw {
		position = {20, 510, 50, 50},
		text = "--------------------- BRAKES STATUS ---------------------",
	},
	
	
	fail_runtime {
		position = {20, 480, 50, 50},
		drawTable = function() return brakesShowTbl end,
		value = "thick",
	},


	
	-- REPLACE BRAKES button
	rectangle {
		position = {290, 465, 170, 30},
		color = {0, 0, 0, 1},
	},

	rectangle {
		position = {290+1, 465+1, 170-2, 30-2},
		color = {0.9, 0.9, 0.9, 1},
	},
	
	text_draw {
		position = {300, 465+10, 50, 50},
		text = "REPLACE BRAKES",
	},
	
	
	clickable {
		position = {290, 465, 170, 30},
      
		onMouseClick = function()
			set(brakes_tbl[1][2], 1)
			set(brakes_tbl[2][2], 1)
			set(save_state, 1)
		end
	},	
	
	

	


	
	text_draw {
		position = {20, 440, 50, 50},
		text = "------------------ ENGINE OIL QUANTITY ------------------",
	},
	
	
	fail_runtime {
		position = {20, 410, 50, 50},
		drawTable = function() return liqd_show_tbl end,
		value = "L",
	},	
	
	
	-- REFIL ENGN OIL button
	rectangle {
		position = {290, 390, 170, 30},
		color = {0, 0, 0, 1},
	},

	rectangle {
		position = {290+1, 390+1, 170-2, 30-2},
		color = {0.9, 0.9, 0.9, 1},
	},
	
	text_draw {
		position = {300, 390+10, 50, 50},
		text = "REFILL ENGN OIL",
	},
	
	
	clickable {
		position = {290, 390, 170, 30},
      
		onMouseClick = function()
			set(liqd_tbl[1][2], math.random() + 26)
			set(liqd_tbl[2][2], math.random() + 26)
			set(liqd_tbl[3][2], math.random() + 26)
			set(save_state, 1)			
		end
	},




	
	text_draw {
		position = {20, 350, 50, 50},
		text = "------------------------- FAILURES ------------------------",
	},

	
	failures_draw {
		position = {20, 320, 50, 50},
		drawTable = function() return failDrawTbl end,
		maxDraw = 32,
	},
	
	
	-- fix all button
	rectangle {
		position = {210, 25, 85, 40},
		color = {0, 0, 0, 1},
	},

	rectangle {
		position = {210+1, 25+1, 85-2, 40-2},
		color = {0.9, 0.9, 0.9, 1},
	},
	
	text_draw {
		position = {220, 40, 50, 50},
		text = "FIX ALL",
	},
	
	
	clickable {
		position = {210, 25, 85, 40},
   		onMouseClick = fixAll,
	}, 
	



	

	
	--[[
	
	-- REFIL HYDRO button
	rectangle {
		position = {290, 420, 170, 30},
		color = {0, 0, 0, 1},
	},

	rectangle {
		position = {290+1, 420+1, 170-2, 30-2},
		color = {1, 1, 1, 1},
	},
	
	text_draw {
		position = {300, 430, 50, 50},
		text = "REFIL HYDRO",
	},
	
	
	clickable {
		position = {290, 420, 170, 30},
      
		onMouseClick = function()
			set(liqd_tbl[1][2], 58)
			set(liqd_tbl[2][2], 58)
			set(liqd_tbl[3][2], 45)
		end
	}, 
	
	
		

	--]]
	
	--------------------------------

	-- close button
	clickable {
		position = {size[1] - 30, size[2] - 30, 30, 30 },
      
		onMouseClick = function() 
			set(show_fail_panel, 0)
			
			return true
		end,
	}, 	

}

