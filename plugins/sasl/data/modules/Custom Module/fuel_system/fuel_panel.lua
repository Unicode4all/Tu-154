-- fuel system panel

-- gauges
defineProperty("fuel_meter_summ", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_summ")) -- сумарная масса топлива
defineProperty("fuel_meter_tank1", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank1")) -- масса топлива в баке 1
defineProperty("fuel_meter_tank2_left", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank2_left")) -- масса топлива в баке 2
defineProperty("fuel_meter_tank2_right", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank2_right")) -- масса топлива в баке 2
defineProperty("fuel_meter_tank3_left", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank3_left")) -- масса топлива в баке 3
defineProperty("fuel_meter_tank3_right", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank3_right")) -- масса топлива в баке 3
defineProperty("fuel_meter_tank4", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_tank4")) -- масса топлива в баке 4
defineProperty("fuel_meter_mech", globalPropertyf("tu154ce/gauges/fuel/fuel_meter_mech")) -- расходомер
defineProperty("fuel_front_ind", globalPropertyf("tu154ce/gauges/misc/fuel_front_ind")) -- индикатор топлива на передней панели


-- controls on gauges
defineProperty("fuel_meter_summ_zero", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_summ_zero")) -- сумарная масса топлива. кнопка нуля
defineProperty("fuel_meter_summ_max", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_summ_max")) -- сумарная масса топлива. кнопка P
defineProperty("fuel_meter_tank2_zero", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_tank2_zero")) -- топливомер бака 2. кнопка нуля
defineProperty("fuel_meter_tank2_max", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_tank2_max")) -- стопливомер бака 2. кнопка P
defineProperty("fuel_meter_tank3_zero", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_tank3_zero")) -- топливомер бака 3. кнопка нуля
defineProperty("fuel_meter_tank3_max", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_tank3_max")) -- топливомер бака 3. кнопка P
defineProperty("fuel_meter_tank4_zero", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_tank4_zero")) -- топливомер бака 4. кнопка нуля
defineProperty("fuel_meter_tank4_max", globalPropertyf("tu154ce/buttons/fuel/fuel_meter_tank4_max")) -- топливомер бака 4. кнопка P
defineProperty("fuel_front_zero", globalPropertyf("tu154ce/buttons/misc/fuel_front_zero")) -- индикатор топлива на передней панели.кнопка нуля
defineProperty("fuel_front_max", globalPropertyf("tu154ce/buttons/misc/fuel_front_max")) -- индикатор топлива на передней панели.кнопка макс


-- controls
defineProperty("pump_tank2_left", globalPropertyi("tu154ce/switchers/fuel/pump_tank2_left")) -- насосы бака 2
defineProperty("pump_tank2_right", globalPropertyi("tu154ce/switchers/fuel/pump_tank2_right")) -- насосы бака 2
defineProperty("pump_tank3_left", globalPropertyi("tu154ce/switchers/fuel/pump_tank3_left")) -- насосы бака 3
defineProperty("pump_tank3_right", globalPropertyi("tu154ce/switchers/fuel/pump_tank3_right")) -- насосы бака 3
defineProperty("pump_tank4", globalPropertyi("tu154ce/switchers/fuel/pump_tank4")) -- насосы бака 4
defineProperty("pump_tank1_1", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_1")) -- насосы бака 1
defineProperty("pump_tank1_2", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_2")) -- насосы бака 1
defineProperty("pump_tank1_3", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_3")) -- насосы бака 1
defineProperty("pump_tank1_4", globalPropertyi("tu154ce/switchers/fuel/pump_tank1_4")) -- насосы бака 1

defineProperty("fuel_trans", globalPropertyi("tu154ce/switchers/fuel/fuel_trans")) -- краны резервой перекачки
defineProperty("fuel_trans_cap", globalPropertyi("tu154ce/switchers/fuel/fuel_trans_cap")) -- краны резервой перекачки
defineProperty("fuel_porc", globalPropertyi("tu154ce/switchers/fuel/fuel_porc")) -- принуд порц
defineProperty("fuel_porc_cap", globalPropertyi("tu154ce/switchers/fuel/fuel_porc_cap")) -- принуд порц
defineProperty("fuel_level", globalPropertyi("tu154ce/switchers/fuel/fuel_level")) -- автомат выравнивания
defineProperty("fuel_flow_mode", globalPropertyi("tu154ce/switchers/fuel/fuel_flow_mode")) -- режим топлвиной системы. ручное - автомат
defineProperty("fuel_flow_on", globalPropertyi("tu154ce/switchers/fuel/fuel_flow_on")) -- автомат расхода
defineProperty("fuel_flow_on_cap", globalPropertyi("tu154ce/switchers/fuel/fuel_flow_on_cap")) -- автомат расхода

defineProperty("fuel_meter_on", globalPropertyi("tu154ce/switchers/fuel/fuel_meter_on")) -- топливомер
defineProperty("fuel_meter_mech_on", globalPropertyi("tu154ce/switchers/fuel/fuel_meter_mech_on")) -- расходомер
defineProperty("fire_valve_1", globalPropertyi("tu154ce/switchers/fuel/fire_valve_1")) -- пожарный кран
defineProperty("fire_valve_2", globalPropertyi("tu154ce/switchers/fuel/fire_valve_2")) -- пожарный кран
defineProperty("fire_valve_3", globalPropertyi("tu154ce/switchers/fuel/fire_valve_3")) -- пожарный кран
defineProperty("fire_valve_1_cap", globalPropertyi("tu154ce/switchers/fuel/fire_valve_1_cap")) -- пожарный кран
defineProperty("fire_valve_2_cap", globalPropertyi("tu154ce/switchers/fuel/fire_valve_2_cap")) -- пожарный кран
defineProperty("fire_valve_3_cap", globalPropertyi("tu154ce/switchers/fuel/fire_valve_3_cap")) -- пожарный кран

defineProperty("reserv_pump_test", globalPropertyi("tu154ce/buttons/eng/reserv_pump_test")) -- кнопка проверки резерв насоса


-- lamps
defineProperty("fuel_2500", globalPropertyf("tu154ce/lights/small/fuel_2500")) -- остаток топлива 2500
defineProperty("fuel_tank1_used", globalPropertyf("tu154ce/lights/small/fuel_tank1_used")) -- расход из бака 1
defineProperty("fuel_tank3_left_fail", globalPropertyf("tu154ce/lights/small/fuel_tank3_left_fail")) -- красная лампа бака 3 лев
defineProperty("fuel_tank2_left_fail", globalPropertyf("tu154ce/lights/small/fuel_tank2_left_fail")) -- красная лампа бака 2 лев
defineProperty("fuel_tank2_right_fail", globalPropertyf("tu154ce/lights/small/fuel_tank2_right_fail")) -- красная лампа бака 2 прав
defineProperty("fuel_tank3_right_fail", globalPropertyf("tu154ce/lights/small/fuel_tank3_right_fail")) -- красная лампа бака 3 прав

defineProperty("fuel_pump_left_5", globalPropertyf("tu154ce/lights/small/fuel_pump_left_5")) -- насос бака 5 лев
defineProperty("fuel_pump_left_6", globalPropertyf("tu154ce/lights/small/fuel_pump_left_6")) -- насос бака 6 лев
defineProperty("fuel_pump_left_7", globalPropertyf("tu154ce/lights/small/fuel_pump_left_7")) -- насос бака 7 лев
defineProperty("fuel_pump_left_8", globalPropertyf("tu154ce/lights/small/fuel_pump_left_8")) -- насос бака 8 лев
defineProperty("fuel_pump_left_9", globalPropertyf("tu154ce/lights/small/fuel_pump_left_9")) -- насос бака 9 лев

defineProperty("fuel_pump_right_5", globalPropertyf("tu154ce/lights/small/fuel_pump_right_5")) -- насос бака 5 прав
defineProperty("fuel_pump_right_6", globalPropertyf("tu154ce/lights/small/fuel_pump_right_6")) -- насос бака 6 прав
defineProperty("fuel_pump_right_7", globalPropertyf("tu154ce/lights/small/fuel_pump_right_7")) -- насос бака 7 прав
defineProperty("fuel_pump_right_8", globalPropertyf("tu154ce/lights/small/fuel_pump_right_8")) -- насос бака 8 прав
defineProperty("fuel_pump_right_9", globalPropertyf("tu154ce/lights/small/fuel_pump_right_9")) -- насос бака 9 прав

defineProperty("fuel_pump_10", globalPropertyf("tu154ce/lights/small/fuel_pump_10")) -- насос бака 10 прав
defineProperty("fuel_pump_11", globalPropertyf("tu154ce/lights/small/fuel_pump_11")) -- насос бака 11 прав
defineProperty("fuel_pump_1", globalPropertyf("tu154ce/lights/small/fuel_pump_1")) -- насос бака 1 прав
defineProperty("fuel_pump_2", globalPropertyf("tu154ce/lights/small/fuel_pump_2")) -- насос бака 2 прав
defineProperty("fuel_pump_3", globalPropertyf("tu154ce/lights/small/fuel_pump_3")) -- насос бака 3 прав
defineProperty("fuel_pump_4", globalPropertyf("tu154ce/lights/small/fuel_pump_4")) -- насос бака 4 прав


defineProperty("fuel_cut_off_1", globalPropertyf("tu154ce/lights/small/fuel_cut_off_1")) -- перекрывные краны
defineProperty("fuel_cut_off_2", globalPropertyf("tu154ce/lights/small/fuel_cut_off_2")) -- перекрывные краны
defineProperty("fuel_cut_off_3", globalPropertyf("tu154ce/lights/small/fuel_cut_off_3")) -- перекрывные краны
defineProperty("fuel_flow_from_2", globalPropertyf("tu154ce/lights/small/fuel_flow_from_2")) -- порядок расхода
defineProperty("fuel_flow_from_3", globalPropertyf("tu154ce/lights/small/fuel_flow_from_3")) -- порядок расхода
defineProperty("fuel_flow_from_4", globalPropertyf("tu154ce/lights/small/fuel_flow_from_4")) -- порядок расхода

defineProperty("fuel_flow_auto_fail", globalPropertyf("tu154ce/lights/small/fuel_flow_auto_fail")) -- автомат расхода не работает
defineProperty("fuel_reserv_trans_left", globalPropertyf("tu154ce/lights/small/fuel_reserv_trans_left")) -- резервная перекачка в бак 1 
defineProperty("fuel_reserv_trans_right", globalPropertyf("tu154ce/lights/small/fuel_reserv_trans_right")) -- резервная перекачка в бак 1 
defineProperty("fuel_porc_reserv", globalPropertyf("tu154ce/lights/small/fuel_porc_reserv")) -- порцевание
defineProperty("fuel_level_automat", globalPropertyf("tu154ce/lights/small/fuel_level_automat")) -- автомат выравнивания


-- sources -- 

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("ENGN_FF_1", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]")) -- FF from sim kg/second
defineProperty("ENGN_FF_2", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]")) -- FF from sim kg/second
defineProperty("ENGN_FF_3", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[2]")) -- FF from sim kg/second

-- fuel tanks
defineProperty("total_w", globalPropertyf("sim/flightmodel/weight/m_fuel_total")) -- fuel weight

defineProperty("tank1_w", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight
defineProperty("tank4_w", globalProperty("sim/flightmodel/weight/m_fuel[1]")) -- fuel weight
defineProperty("tank2R_w", globalProperty("sim/flightmodel/weight/m_fuel[2]")) -- fuel weight
defineProperty("tank2L_w", globalProperty("sim/flightmodel/weight/m_fuel[3]")) -- fuel weight
defineProperty("tank3R_w", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel weight
defineProperty("tank3L_w", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel weight

defineProperty("reserv_trans", globalPropertyi("tu154ce/fuel/reserv_trans"))


-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27
-- bus parameters
defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154ce/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))

-- lamps sources
defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_hydro")) -- кнопка првоерки ламп панели ВСУ

defineProperty("pump_tank2_left_work", globalPropertyi("tu154ce/fuel/pump_tank2_left_work"))
defineProperty("pump_tank2_right_work", globalPropertyi("tu154ce/fuel/pump_tank2_right_work"))
defineProperty("pump_tank3_left_work", globalPropertyi("tu154ce/fuel/pump_tank3_left_work"))
defineProperty("pump_tank3_right_work", globalPropertyi("tu154ce/fuel/pump_tank3_right_work"))
defineProperty("pump_tank4_work", globalPropertyi("tu154ce/fuel/pump_tank4_work"))
defineProperty("pump_tank1_1_work", globalPropertyi("tu154ce/fuel/pump_tank1_1_work"))
defineProperty("pump_tank1_2_work", globalPropertyi("tu154ce/fuel/pump_tank1_2_work"))
defineProperty("pump_tank1_3_work", globalPropertyi("tu154ce/fuel/pump_tank1_3_work"))
defineProperty("pump_tank1_4_work", globalPropertyi("tu154ce/fuel/pump_tank1_4_work"))

defineProperty("auto_tanks_turn", globalPropertyi("tu154ce/fuel/auto_tanks_turn")) -- рабочие очередные баки. 0, 1 - не работает, 2, 3, 4	0
--defineProperty("auto_tank_level", globalPropertyi("tu154ce/fuel/auto_tank_level")) -- выравнивание в баках. -2 - 2L, -3 - 3L, +3 - 3R, +2 - 2R	0

defineProperty("auto_tank_level_2", globalPropertyi("tu154ce/fuel/auto_tank_level_2")) -- выравнивание в баках 2. -1 = L, 0 = none, +1 = R	0
defineProperty("auto_tank_level_3", globalPropertyi("tu154ce/fuel/auto_tank_level_3")) -- выравнивание в баках 3. -1 = L, 0 = none, +1 = R	0


defineProperty("tank1_w", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight

defineProperty("fire_vlv_open_1", globalPropertyf("tu154ce/fuel/fire_vlv_open_1")) -- пожарный кран открыт
defineProperty("fire_vlv_open_2", globalPropertyf("tu154ce/fuel/fire_vlv_open_2")) -- пожарный кран открыт
defineProperty("fire_vlv_open_3", globalPropertyf("tu154ce/fuel/fire_vlv_open_3")) -- пожарный кран открыт

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- failures
defineProperty("fuel_auto_fail", globalPropertyi("tu154ce/failures/fuel_auto_fail"))
defineProperty("fuel_level_fail", globalPropertyi("tu154ce/failures/fuel_level_fail"))
defineProperty("fuel_porc_fail", globalPropertyi("tu154ce/failures/fuel_porc_fail"))

defineProperty("fuel_pump_2l_fail", globalPropertyi("tu154ce/failures/fuel_pump_2l_fail")) -- number of failed pumps
defineProperty("fuel_pump_2r_fail", globalPropertyi("tu154ce/failures/fuel_pump_2r_fail"))
defineProperty("fuel_pump_3l_fail", globalPropertyi("tu154ce/failures/fuel_pump_3l_fail"))
defineProperty("fuel_pump_3r_fail", globalPropertyi("tu154ce/failures/fuel_pump_3r_fail"))
--defineProperty("fuel_pump_1_fail", globalPropertyi("tu154ce/failures/fuel_pump_1_fail"))
defineProperty("fuel_pump_4_fail", globalPropertyi("tu154ce/failures/fuel_pump_4_fail"))

defineProperty("fuel_meter_2l_fail", globalPropertyi("tu154ce/failures/fuel_meter_2l_fail"))
defineProperty("fuel_meter_2r_fail", globalPropertyi("tu154ce/failures/fuel_meter_2r_fail"))
defineProperty("fuel_meter_3l_fail", globalPropertyi("tu154ce/failures/fuel_meter_3l_fail"))
defineProperty("fuel_meter_3r_fail", globalPropertyi("tu154ce/failures/fuel_meter_3r_fail"))
defineProperty("fuel_meter_1_fail", globalPropertyi("tu154ce/failures/fuel_meter_1_fail"))
defineProperty("fuel_meter_4_fail", globalPropertyi("tu154ce/failures/fuel_meter_4_fail"))
defineProperty("fuel_meter_summ_fail", globalPropertyi("tu154ce/failures/fuel_meter_summ"))

defineProperty("fuel_flowmeter_1_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_1_fail"))
defineProperty("fuel_flowmeter_2_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_2_fail"))
defineProperty("fuel_flowmeter_3_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_3_fail"))

--[[lamp_drefs = {
	[0] =   globalPropertyf("tu154ce/lights/small/fuel_2500"), -- остаток топлива 2500
	[1] =   globalPropertyf("tu154ce/lights/small/fuel_tank1_used"), -- расход из бака 1
	[2] =   globalPropertyf("tu154ce/lights/small/fuel_tank3_left_fail"), -- красная лампа бака 3 лев
	[3] =   globalPropertyf("tu154ce/lights/small/fuel_tank2_left_fail"), -- красная лампа бака 2 лев
	[4] =   globalPropertyf("tu154ce/lights/small/fuel_tank2_right_fail"), -- красная лампа бака 2 прав
	[5] =   globalPropertyf("tu154ce/lights/small/fuel_tank3_right_fail"), -- красная лампа бака 3 прав
	[6] =   globalPropertyf("tu154ce/lights/small/fuel_pump_left_5"), -- насос бака 5 лев
	[7] =   globalPropertyf("tu154ce/lights/small/fuel_pump_left_6"), -- насос бака 6 лев
	[8] =   globalPropertyf("tu154ce/lights/small/fuel_pump_left_7"), -- насос бака 7 лев
	[9] =   globalPropertyf("tu154ce/lights/small/fuel_pump_left_8"), -- насос бака 8 лев
	[10] =  globalPropertyf("tu154ce/lights/small/fuel_pump_left_9"), -- насос бака 9 лев
	[11] =  globalPropertyf("tu154ce/lights/small/fuel_pump_right_5"), -- насос бака 5 прав
	[12] =  globalPropertyf("tu154ce/lights/small/fuel_pump_right_6"), -- насос бака 6 прав
	[13] =  globalPropertyf("tu154ce/lights/small/fuel_pump_right_7"), -- насос бака 7 прав
	[14] =  globalPropertyf("tu154ce/lights/small/fuel_pump_right_8"), -- насос бака 8 прав
	[15] =  globalPropertyf("tu154ce/lights/small/fuel_pump_right_9"), -- насос бака 9 прав
	[16] =  globalPropertyf("tu154ce/lights/small/fuel_pump_10"), -- насос бака 10 прав
	[17] =  globalPropertyf("tu154ce/lights/small/fuel_pump_11"), -- насос бака 11 прав
	[18] =  globalPropertyf("tu154ce/lights/small/fuel_pump_1"), -- насос бака 1 прав
	[19] =  globalPropertyf("tu154ce/lights/small/fuel_pump_2"), -- насос бака 2 прав
	[20] =  globalPropertyf("tu154ce/lights/small/fuel_pump_3"), -- насос бака 3 прав
	[21] =  globalPropertyf("tu154ce/lights/small/fuel_pump_4"), -- насос бака 4 прав
	[22] =  globalPropertyf("tu154ce/lights/small/fuel_cut_off_1"), -- перекрывные краны
	[23] =  globalPropertyf("tu154ce/lights/small/fuel_cut_off_2"), -- перекрывные краны
	[24] =  globalPropertyf("tu154ce/lights/small/fuel_cut_off_3"), -- перекрывные краны
	[25] =  globalPropertyf("tu154ce/lights/small/fuel_flow_from_2"), -- порядок расхода
	[26] =  globalPropertyf("tu154ce/lights/small/fuel_flow_from_3"), -- порядок расхода
	[27] =  globalPropertyf("tu154ce/lights/small/fuel_flow_from_4"), -- порядок расхода
	[28] =  globalPropertyf("tu154ce/lights/small/fuel_flow_auto_fail"), -- автомат расхода не работает
	[29] =  globalPropertyf("tu154ce/lights/small/fuel_reserv_trans_left"), -- резервная перекачка в бак 1 
	[30] =  globalPropertyf("tu154ce/lights/small/fuel_reserv_trans_right"), -- резервная перекачка в бак 1 
	[31] =  globalPropertyf("tu154ce/lights/small/fuel_porc_reserv") ,-- порцевание
	[32] =  globalPropertyf("tu154ce/lights/small/fuel_level_automat") -- автомат выравнивания
}]]

include("smooth_light.lua")


-- sounds
local rotary_sound = loadSample('Custom Sounds/plastic_switch.wav')
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')


local passed = get(frame_time)

local function lamps()
	
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local pump_2L = get(pump_tank2_left_work)
	local pump_2R = get(pump_tank2_right_work)
	local pump_3L = get(pump_tank3_left_work)
	local pump_3R = get(pump_tank3_right_work)
	local pump4 = get(pump_tank4_work)
	local pump_1_1 = get(pump_tank1_1_work)
	local pump_1_2 = get(pump_tank1_2_work)
	local pump_1_3 = get(pump_tank1_3_work)
	local pump_1_4 = get(pump_tank1_4_work)

	local tank_level_2 = get(auto_tank_level_2)
	local tank_level_3 = get(auto_tank_level_3)
	
	local fuel_tank3_left_brt = 0
	if tank_level_3 == -1 then fuel_tank3_left_brt = 1 end
	fuel_tank3_left_brt = math.max(fuel_tank3_left_brt * lamps_brt, test_btn)

	
	local fuel_tank2_left_brt = 0
	if tank_level_2 == -1 then fuel_tank2_left_brt = 1 end
	fuel_tank2_left_brt = math.max(fuel_tank2_left_brt * lamps_brt, test_btn)

	
	local fuel_tank3_right_brt = 0
	if tank_level_3 == 1 then fuel_tank3_right_brt = 1 end
	fuel_tank3_right_brt = math.max(fuel_tank3_right_brt * lamps_brt, test_btn)
	
	
	local fuel_tank2_right_brt = 0
	if tank_level_2 == 1 then fuel_tank2_right_brt = 1 end
	fuel_tank2_right_brt = math.max(fuel_tank2_right_brt * lamps_brt, test_btn)

	
	
	local fuel_pump_left_5_brt = math.max(bool2int(pump_2L > 0) * lamps_brt, test_btn)

	
	local fuel_pump_left_6_brt = math.max(bool2int(pump_2L > 1) * lamps_brt, test_btn)

	
	local fuel_pump_left_7_brt = math.max(bool2int(pump_3L > 2) * lamps_brt, test_btn)

	
	local fuel_pump_left_8_brt = math.max(bool2int(pump_3L > 0) * lamps_brt, test_btn) 

	
	local fuel_pump_left_9_brt = math.max(bool2int(pump_3L > 1) * lamps_brt, test_btn)

	
	
	local fuel_pump_right_5_brt = math.max(bool2int(pump_2R > 1) * lamps_brt, test_btn) 

	
	local fuel_pump_right_6_brt = math.max(bool2int(pump_2R > 0) * lamps_brt, test_btn) 

	
	local fuel_pump_right_7_brt = math.max(bool2int(pump_3R > 0) * lamps_brt, test_btn) 

	
	local fuel_pump_right_8_brt = math.max(bool2int(pump_3R > 2) * lamps_brt, test_btn)

	
	local fuel_pump_right_9_brt = math.max(bool2int(pump_3R > 1) * lamps_brt, test_btn) 

	
	
	local fuel_pump_10_brt = math.max(bool2int(pump4 > 0) * lamps_brt, test_btn)
	
	
	local fuel_pump_11_brt = math.max(bool2int(pump4 > 1) * lamps_brt, test_btn)

	
	local fuel_pump_1_brt = math.max(pump_1_1 * lamps_brt, test_btn)

	
	local fuel_pump_2_brt = math.max(pump_1_2 * lamps_brt, test_btn) 
	
	
	local fuel_pump_3_brt = math.max(pump_1_3 * lamps_brt, test_btn) 
	
	
	local fuel_pump_4_brt = math.max(pump_1_4 * lamps_brt, test_btn)
	
	
	
	
	local fuel_cut_off_1_brt = 0
	if get(fire_vlv_open_1) > 0.7 then fuel_cut_off_1_brt = 1 end
	fuel_cut_off_1_brt = math.max(fuel_cut_off_1_brt * lamps_brt, test_btn)
	set(fuel_cut_off_1, smooth_light(fuel_cut_off_1_brt, get(fuel_cut_off_1)))
	
	local fuel_cut_off_2_brt = 0
	if get(fire_vlv_open_2) > 0.7 then fuel_cut_off_2_brt = 1 end
	fuel_cut_off_2_brt = math.max(fuel_cut_off_2_brt * lamps_brt, test_btn)
	set(fuel_cut_off_2, smooth_light(fuel_cut_off_2_brt, get(fuel_cut_off_2)))
	
	local fuel_cut_off_3_brt = 0
	if get(fire_vlv_open_3) > 0.7 then fuel_cut_off_3_brt = 1 end
	fuel_cut_off_3_brt = math.max(fuel_cut_off_3_brt * lamps_brt, test_btn) 
	
	
	
	local fuel_flow_from_2_brt = 0
	local tank_turn = get(auto_tanks_turn)
	if tank_turn == 1 or tank_turn == 2 then fuel_flow_from_2_brt = 1 end
	fuel_flow_from_2_brt = math.max(fuel_flow_from_2_brt * lamps_brt, test_btn) 
	

	local fuel_flow_from_3_brt = 0
	if tank_turn == 2 or tank_turn == 3 then fuel_flow_from_3_brt = 1 end
	fuel_flow_from_3_brt = math.max(fuel_flow_from_3_brt * lamps_brt, test_btn)
	
	
	local fuel_flow_from_4_brt = 0
	if tank_turn == 4 then fuel_flow_from_4_brt = 1 end
	fuel_flow_from_4_brt = math.max(fuel_flow_from_4_brt * lamps_brt, test_btn)
	

	local fuel_flow_auto_fail_brt = 0
	if tank_turn == 0 then fuel_flow_auto_fail_brt = 1 end
	fuel_flow_auto_fail_brt = math.max(fuel_flow_auto_fail_brt * lamps_brt, test_btn)
	
	
	local fuel_reserv_trans_left_brt = math.max(get(reserv_trans) * lamps_brt, test_btn) 
	
	
	local fuel_reserv_trans_right_brt = math.max(get(reserv_trans) * lamps_brt, test_btn)
	
	
	local fuel_porc_reserv_brt = math.max(get(reserv_pump_test) * lamps_brt, test_btn) 
	
	
	--local fuel_level_automat_brt = math.max(get(fuel_level) * get(fuel_flow_mode) * get(fuel_flow_on) * lamps_brt, test_btn)
	local fuel_level_automat_brt = math.max(get(fuel_level) * (1-get(fuel_level_fail)) * lamps_brt, test_btn)
	set(fuel_flow_from_4, 		smooth_light(fuel_flow_from_4_brt 		,get(fuel_flow_from_4)))
	set(fuel_flow_auto_fail, 	smooth_light(fuel_flow_auto_fail_brt	,get(fuel_flow_auto_fail)))
	set(fuel_reserv_trans_left, smooth_light(fuel_reserv_trans_left_brt	,get(fuel_reserv_trans_left)))
	set(fuel_reserv_trans_right,smooth_light(fuel_reserv_trans_right_brt,get(fuel_reserv_trans_right)))
	set(fuel_porc_reserv, 		smooth_light(fuel_porc_reserv_brt		,get(fuel_porc_reserv)))
	set(fuel_level_automat, 	smooth_light(fuel_level_automat_brt		,get(fuel_level_automat)))
	set(fuel_flow_from_3, 		smooth_light(fuel_flow_from_3_brt		,get(fuel_flow_from_3)))
	set(fuel_flow_from_2, 		smooth_light(fuel_flow_from_2_brt		,get(fuel_flow_from_2)))
	set(fuel_cut_off_3, 		smooth_light(fuel_cut_off_3_brt			,get(fuel_cut_off_3)))
	set(fuel_pump_4, 			smooth_light(fuel_pump_4_brt				,get(fuel_pump_4)))
	set(fuel_pump_3, 			smooth_light(fuel_pump_3_brt			,get(fuel_pump_3)))
	set(fuel_pump_2, 			smooth_light(fuel_pump_2_brt			,get(fuel_pump_2)))
	set(fuel_pump_1, 			smooth_light(fuel_pump_1_brt			,get(fuel_pump_1)))
	set(fuel_pump_11, 			smooth_light(fuel_pump_11_brt			,get(fuel_pump_11)))
	set(fuel_pump_10, 			smooth_light(fuel_pump_10_brt			,get(fuel_pump_10)))
	set(fuel_pump_right_9, 		smooth_light(fuel_pump_right_9_brt		,get(fuel_pump_right_9)))
	set(fuel_pump_right_8, 		smooth_light(fuel_pump_right_8_brt		,get(fuel_pump_right_8)))
	set(fuel_pump_right_7, 		smooth_light(fuel_pump_right_7_brt		,get(fuel_pump_right_7)))
	set(fuel_pump_right_6, 		smooth_light(fuel_pump_right_6_brt		,get(fuel_pump_right_6)))
	set(fuel_pump_right_5, 		smooth_light(fuel_pump_right_5_brt		,get(fuel_pump_right_5)))
	set(fuel_pump_left_9, 		smooth_light(fuel_pump_left_9_brt		,get(fuel_pump_left_9)))
	set(fuel_pump_left_8, 		smooth_light(fuel_pump_left_8_brt		,get(fuel_pump_left_8)))
	set(fuel_pump_left_7, 		smooth_light(fuel_pump_left_7_brt		,get(fuel_pump_left_7)))
	set(fuel_pump_left_6, 		smooth_light(fuel_pump_left_6_brt		,get(fuel_pump_left_6)))
	set(fuel_pump_left_5, 		smooth_light(fuel_pump_left_5_brt		,get(fuel_pump_left_5)))
	set(fuel_tank2_right_fail, 	smooth_light(fuel_tank2_right_brt		,get(fuel_tank2_right_fail)))
	set(fuel_tank3_right_fail, 	smooth_light(fuel_tank3_right_brt		,get(fuel_tank3_right_fail)))
	set(fuel_tank2_left_fail, 	smooth_light(fuel_tank2_left_brt		,get(fuel_tank2_left_fail)))
	set(fuel_tank3_left_fail, 	smooth_light(fuel_tank3_left_brt		,get(fuel_tank3_left_fail)))
end







-- reset swittchers for cold & dark
local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(pump_tank2_left, 0)
		set(pump_tank2_right, 0)
		set(pump_tank3_left, 0)
		set(pump_tank3_right, 0)
		set(pump_tank4, 0)
		set(pump_tank1_1, 0)
		set(pump_tank1_2, 0)
		set(pump_tank1_3, 0)
		set(pump_tank1_4, 0)
		set(fuel_level, 0)
		set(fuel_flow_mode, 0)
		set(fuel_flow_on, 0)
		set(fuel_meter_on, 0)
		set(fuel_meter_mech_on, 0)
		set(fire_valve_1, 0)
		set(fire_valve_2, 0)
		set(fire_valve_3, 0)
	end
	
	notLoaded = false
end

-- make switchers sound -- 

local pump_tank2_left_last = get(pump_tank2_left)
local pump_tank2_right_last = get(pump_tank2_right)
local pump_tank3_left_last = get(pump_tank3_left)
local pump_tank3_right_last = get(pump_tank3_right)
local pump_tank4_last = get(pump_tank4)
local pump_tank1_1_last = get(pump_tank1_1)
local pump_tank1_2_last = get(pump_tank1_2)
local pump_tank1_3_last = get(pump_tank1_3)
local pump_tank1_4_last = get(pump_tank1_4)

local fuel_trans_last = get(fuel_trans)
local fuel_porc_last = get(fuel_porc)
local fuel_level_last = get(fuel_level)
local fuel_flow_mode_last = get(fuel_flow_mode)
local fuel_flow_on_last = get(fuel_flow_on)

local fuel_meter_on_last = get(fuel_meter_on)
local fuel_meter_mech_on_last = get(fuel_meter_mech_on)
local fire_valve_1_last = get(fire_valve_1)
local fire_valve_2_last = get(fire_valve_2)
local fire_valve_3_last = get(fire_valve_3)


local function check_switchers()

	local pump_tank2_left_sw = get(pump_tank2_left)
	local pump_tank2_right_sw = get(pump_tank2_right)
	local pump_tank3_left_sw = get(pump_tank3_left)
	local pump_tank3_right_sw = get(pump_tank3_right)
	local pump_tank4_sw = get(pump_tank4)
	local pump_tank1_1_sw = get(pump_tank1_1)
	local pump_tank1_2_sw = get(pump_tank1_2)
	local pump_tank1_3_sw = get(pump_tank1_3)
	local pump_tank1_4_sw = get(pump_tank1_4)
	
	local fuel_trans_sw = get(fuel_trans)
	local fuel_porc_sw = get(fuel_porc)
	local fuel_level_sw = get(fuel_level)
	local fuel_flow_mode_sw = get(fuel_flow_mode)
	local fuel_flow_on_sw = get(fuel_flow_on)
	
	local fuel_meter_on_sw = get(fuel_meter_on)
	local fuel_meter_mech_on_sw = get(fuel_meter_mech_on)
	local fire_valve_1_sw = get(fire_valve_1)
	local fire_valve_2_sw = get(fire_valve_2)
	local fire_valve_3_sw = get(fire_valve_3)
	
	-- compare switchers state
	local sw_change = pump_tank2_left_sw + pump_tank2_right_sw + pump_tank3_left_sw + pump_tank3_right_sw + pump_tank4_sw
	sw_change = sw_change + pump_tank1_1_sw + pump_tank1_2_sw + pump_tank1_3_sw + pump_tank1_4_sw
	sw_change = sw_change + fuel_trans_sw + fuel_porc_sw + fuel_level_sw + fuel_flow_mode_sw + fuel_flow_on_sw
	sw_change = sw_change + fuel_meter_on_sw + fuel_meter_mech_on_sw + fire_valve_1_sw + fire_valve_2_sw + fire_valve_3_sw
	
	sw_change = sw_change - pump_tank2_left_last - pump_tank2_right_last - pump_tank3_left_last - pump_tank3_right_last - pump_tank4_last
	sw_change = sw_change - pump_tank1_1_last - pump_tank1_2_last - pump_tank1_3_last - pump_tank1_4_last
	sw_change = sw_change - fuel_trans_last - fuel_porc_last - fuel_level_last - fuel_flow_mode_last - fuel_flow_on_last
	sw_change = sw_change - fuel_meter_on_last - fuel_meter_mech_on_last - fire_valve_1_last - fire_valve_2_last - fire_valve_3_last
	
	if sw_change ~= 0 then  end -- play sound

	pump_tank2_left_last = pump_tank2_left_sw
	pump_tank2_right_last = pump_tank2_right_sw
	pump_tank3_left_last = pump_tank3_left_sw
	pump_tank3_right_last = pump_tank3_right_sw
	pump_tank4_last = pump_tank4_sw
	pump_tank1_1_last = pump_tank1_1_sw
	pump_tank1_2_last = pump_tank1_2_sw
	pump_tank1_3_last = pump_tank1_3_sw
	pump_tank1_4_last = pump_tank1_4_sw
	
	fuel_trans_last = fuel_trans_sw
	fuel_porc_last = fuel_porc_sw
	fuel_level_last = fuel_level_sw
	fuel_flow_mode_last = fuel_flow_mode_sw
	fuel_flow_on_last = fuel_flow_on_sw
	
	fuel_meter_on_last = fuel_meter_on_sw
	fuel_meter_mech_on_last = fuel_meter_mech_on_sw
	fire_valve_1_last = fire_valve_1_sw
	fire_valve_2_last = fire_valve_2_sw
	fire_valve_3_last = fire_valve_3_sw
	
	
	
end

-- make caps sound --

local fuel_trans_cap_last = get(fuel_trans_cap)
local fuel_porc_cap_last = get(fuel_porc_cap)
local fuel_flow_on_cap_last = get(fuel_flow_on_cap)
local fire_valve_1_cap_last = get(fire_valve_1_cap)
local fire_valve_2_cap_last = get(fire_valve_2_cap)
local fire_valve_3_cap_last = get(fire_valve_3_cap)

local function caps_check()
	local fuel_trans_cap_sw = get(fuel_trans_cap)
	local fuel_porc_cap_sw = get(fuel_porc_cap)
	local fuel_flow_on_cap_sw = get(fuel_flow_on_cap)
	local fire_valve_1_cap_sw = get(fire_valve_1_cap)
	local fire_valve_2_cap_sw = get(fire_valve_2_cap)
	local fire_valve_3_cap_sw = get(fire_valve_3_cap)

	local cap_change = fuel_trans_cap_sw + fuel_porc_cap_sw + fuel_flow_on_cap_sw + fire_valve_1_cap_sw + fire_valve_2_cap_sw + fire_valve_3_cap_sw
	
	
	cap_change = cap_change - fuel_trans_cap_last - fuel_porc_cap_last - fuel_flow_on_cap_last - fire_valve_1_cap_last - fire_valve_2_cap_last - fire_valve_3_cap_last
	
	if cap_change ~= 0 then  end -- play sound
	
	fuel_trans_cap_last = fuel_trans_cap_sw
	fuel_porc_cap_last = fuel_porc_cap_sw
	fuel_flow_on_cap_last = fuel_flow_on_cap_sw
	fire_valve_1_cap_last = fire_valve_1_cap_sw
	fire_valve_2_cap_last = fire_valve_2_cap_sw
	fire_valve_3_cap_last = fire_valve_3_cap_sw
	
	-- fix position of switcher under caps
	if fuel_porc_cap_sw == 0 then set(fuel_porc, 0) end
	

end

-- mechanic fuel meters
 
local mech_counter = 0
 
local function mech_fuel_meter()
	
	local power = get(fuel_meter_mech_on) == 1 and (get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13) -- need to check it out
	
	local fuel_summ_calc = get(fuel_meter_mech)
	
	mech_counter = mech_counter + passed
	
	if fuel_summ_calc > 0 and power and mech_counter > 10 then 
		fuel_summ_calc = fuel_summ_calc - (get(ENGN_FF_1) * (1 - get(fuel_flowmeter_1_fail)) + get(ENGN_FF_2) * (1 - get(fuel_flowmeter_2_fail)) + get(ENGN_FF_3) * (1 - get(fuel_flowmeter_3_fail))) * mech_counter
		mech_counter = 0
	end
	
	set(fuel_meter_mech, fuel_summ_calc)

end

-- fuel meters --
local summ_act = 0
local tank1_act = 0
local tank2L_act = 0
local tank2R_act = 0
local tank3L_act = 0
local tank3R_act = 0
local tank4_act = 0

local summ_front_act = 0

local function electric_meters()
	local power = get(fuel_meter_on) == 1 and (get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13) and (get(bus115_1_volt) > 110 or get(bus115_3_volt) > 110)
	
	
	local tank1_need = get(fuel_meter_tank1)
	local tank2L_need = get(fuel_meter_tank2_left)
	local tank2R_need = get(fuel_meter_tank2_right)
	local tank3L_need = get(fuel_meter_tank3_left)
	local tank3R_need = get(fuel_meter_tank3_right)
	local tank4_need = get(fuel_meter_tank4)
	local summ_front_need = get(fuel_front_ind)
	local summ_need = get(fuel_meter_summ)
	
	if power then 
		tank1_need = get(tank1_w)
		tank2L_need = get(tank2L_w)
		tank2R_need = get(tank2R_w)
		tank3L_need = get(tank3L_w)
		tank3R_need = get(tank3R_w)
		tank4_need = get(tank4_w)
		-- set test buttons

		
		if get(fuel_meter_tank2_zero) == 1 then
			tank2L_need = 0
			tank2R_need = 0
		elseif get(fuel_meter_tank2_max) == 1 then
			tank2L_need = 11400
			tank2R_need = 11400
		end
		
		if get(fuel_meter_tank3_zero) == 1 then
			tank3L_need = 0
			tank3R_need = 0
		elseif get(fuel_meter_tank3_max) == 1 then
			tank3L_need = 6400
			tank3R_need = 6400
		end
		
		if get(fuel_meter_tank4_zero) == 1 then
			tank4_need = 0
		elseif get(fuel_meter_tank4_max) == 1 then
			tank4_need = 8000
		end
		
		-- summ depends on other meters
		summ_need = tank2L_act + tank2R_act + tank3L_act + tank3R_act + tank4_act + tank1_act
		summ_front_need = summ_need
		
		
		if get(fuel_front_zero) == 1 then
			summ_front_need = 0
		elseif get(fuel_front_max) == 1 then
			summ_front_need = 47000
		end
		
		
		if get(fuel_meter_summ_zero) == 1 then
			summ_need = 0
			tank1_need = 0
		elseif get(fuel_meter_summ_max) == 1 then
			summ_need = 47000
			tank1_need = 4700
		end
		
		
	end

	-- set smooth movenents
	
	
	if get(fuel_meter_summ_fail) == 0 then
		if summ_act < summ_need - 1000 then summ_act = summ_act + passed * 10000 * 1.5
		elseif summ_act > summ_need + 1000 then summ_act = summ_act - passed * 10000 * 1.5
		else summ_act = summ_act + (summ_need - summ_act) * passed * 10
		end
	end
	
	if get(fuel_meter_1_fail) == 0 then
		if tank1_act < tank1_need - 100 then tank1_act = tank1_act + passed * 1000 * 1.5
		elseif tank1_act > tank1_need + 100 then tank1_act = tank1_act - passed * 1000 * 1.5
		else tank1_act = tank1_act + (tank1_need - tank1_act) * passed * 10
		end
	end
	
	if get(fuel_meter_2l_fail) == 0 then
		if tank2L_act < tank2L_need - 100 then tank2L_act = tank2L_act + passed * 2000 * 1.8
		elseif tank2L_act > tank2L_need + 100 then tank2L_act = tank2L_act - passed * 2000 * 1.8
		else tank2L_act = tank2L_act + (tank2L_need - tank2L_act) * passed * 15
		end
	end
	
	if get(fuel_meter_2r_fail) == 0 then
		if tank2R_act < tank2R_need - 100 then tank2R_act = tank2R_act + passed * 2000 * 1.8
		elseif tank2R_act > tank2R_need + 100 then tank2R_act = tank2R_act - passed * 2000 * 1.8
		else tank2R_act = tank2R_act + (tank2R_need - tank2R_act) * passed * 15
		end
	end
	
	if get(fuel_meter_3l_fail) == 0 then	
		if tank3L_act < tank3L_need - 100 then tank3L_act = tank3L_act + passed * 1000 * 2
		elseif tank3L_act > tank3L_need + 100 then tank3L_act = tank3L_act - passed * 1000 * 2
		else tank3L_act = tank3L_act + (tank3L_need - tank3L_act) * passed * 15
		end
	end
	
	if get(fuel_meter_3r_fail) == 0 then
		if tank3R_act < tank3R_need - 100 then tank3R_act = tank3R_act + passed * 1000 * 2
		elseif tank3R_act > tank3R_need + 100 then tank3R_act = tank3R_act - passed * 1000 * 2
		else tank3R_act = tank3R_act + (tank3R_need - tank3R_act) * passed * 15
		end
	end
	
	if get(fuel_meter_4_fail) == 0 then
		if tank4_act < tank4_need - 100 then tank4_act = tank4_act + passed * 1000 * 2.5
		elseif tank4_act > tank4_need + 100 then tank4_act = tank4_act - passed * 1000 * 2.5
		else tank4_act = tank4_act + (tank4_need - tank4_act) * passed * 10
		end
	end
	
	if get(fuel_meter_summ_fail) == 0 then
		if summ_front_act < summ_front_need - 1000 then summ_front_act = summ_front_act + passed * 10000 * 1.5
		elseif summ_front_act > summ_front_need + 1000 then summ_front_act = summ_front_act - passed * 10000 * 1.5
		else summ_front_act = summ_front_act + (summ_front_need - summ_front_act) * passed * 10
		end
	end
	
	
	-- set results
	set(fuel_meter_summ, summ_act)
	set(fuel_meter_tank1, tank1_act)
	set(fuel_meter_tank2_left, tank2L_act)
	set(fuel_meter_tank2_right, tank2R_act)
	set(fuel_meter_tank3_left, tank3L_act)
	set(fuel_meter_tank3_right, tank3R_act)
	set(fuel_meter_tank4, tank4_act)
	
	set(fuel_front_ind, summ_front_act)

end


local sim_start_timer = 0

function update()
	
	passed = get(frame_time)
	
	-- reset switchers
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	
		check_switchers()
		caps_check()
	end
local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	mech_fuel_meter()
end
	electric_meters()
	lamps()
	
end