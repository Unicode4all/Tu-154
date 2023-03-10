-- this is power counters logic


-- busses currents. results
defineProperty("bus27_amp_left", globalPropertyf("tu154ce/elec/bus27_amp_left")) -- ток сети 27
defineProperty("bus27_amp_right", globalPropertyf("tu154ce/elec/bus27_amp_right")) -- ток сети 27

defineProperty("bus36_amp_left", globalPropertyf("tu154ce/elec/bus36_amp_left")) -- ток левой сети 36
defineProperty("bus36_amp_right", globalPropertyf("tu154ce/elec/bus36_amp_right")) -- ток правой сети 36
defineProperty("bus36_amp_pts250_1", globalPropertyf("tu154ce/elec/bus36_amp_pts250_1")) -- ток ПТС250 сети 36 1
defineProperty("bus36_amp_pts250_2", globalPropertyf("tu154ce/elec/bus36_amp_pts250_2")) -- ток ПТС250 сети 36 2

defineProperty("bus115_1_amp", globalPropertyf("tu154ce/elec/bus115_1_amp"))
defineProperty("bus115_2_amp", globalPropertyf("tu154ce/elec/bus115_2_amp"))
defineProperty("bus115_3_amp", globalPropertyf("tu154ce/elec/bus115_3_amp"))

defineProperty("bus115_em_1_amp", globalPropertyf("tu154ce/elec/bus115_em_1_amp"))
defineProperty("bus115_em_2_amp", globalPropertyf("tu154ce/elec/bus115_em_2_amp"))






-- sources
-- bus 27v
defineProperty("bat_amp_cc_1", globalPropertyf("tu154ce/elec/bat_cc_1")) -- ток заряда батареи
defineProperty("bat_amp_cc_2", globalPropertyf("tu154ce/elec/bat_cc_2")) -- ток заряда батареи
defineProperty("bat_amp_cc_3", globalPropertyf("tu154ce/elec/bat_cc_3")) -- ток заряда батареи
defineProperty("bat_amp_cc_4", globalPropertyf("tu154ce/elec/bat_cc_4")) -- ток заряда батареи
defineProperty("cockpit_light_cc_left", globalPropertyf("tu154ce/elec/cockpit_light_cc_left"))-- нагрузка на левую сеть от освещения в кабине
defineProperty("cockpit_light_cc_right", globalPropertyf("tu154ce/elec/cockpit_light_cc_right"))-- нагрузка на правую сеть от освещения в кабине
defineProperty("ext_light_cc_left", globalPropertyf("tu154ce/elec/ext_light_cc_left"))-- нагрузка на левую сеть
defineProperty("ext_light_cc_right", globalPropertyf("tu154ce/elec/ext_light_cc_right"))-- нагрузка на правую сеть
defineProperty("apu_start_cc", globalPropertyf("tu154ce/elec/apu_start_cc")) -- потребление тока стартером ВСУ
defineProperty("fuel_pumps_27_cc", globalPropertyf("tu154ce/elec/fuel_pumps_27_cc")) -- нагрузка на сеть 27в от топливных насосо

defineProperty("ai_27_L_cc", globalPropertyf("tu154ce/antiice/ai_27_L_cc")) -- нагрузка на сеть
defineProperty("ai_27_R_cc", globalPropertyf("tu154ce/antiice/ai_27_R_cc")) -- нагрузка на сеть

defineProperty("ctr_27_L_cc", globalPropertyf("tu154ce/control/ctr_27_L_cc")) -- нагрузка на сеть
defineProperty("ctr_27_R_cc", globalPropertyf("tu154ce/control/ctr_27_R_cc")) -- нагрузка на сеть

defineProperty("msrp_27_L_cc", globalPropertyf("tu154ce/msrp/msrp_27_L_cc")) -- нагрузка на сеть
defineProperty("msrp_27_R_cc", globalPropertyf("tu154ce/msrp/msrp_27_R_cc")) -- нагрузка на сеть

defineProperty("svs27_cc", globalPropertyf("tu154ce/svs/power_27cc")) -- потребление тока

defineProperty("auasp_pow27_cc", globalPropertyf("tu154ce/elec/auasp_pow27_cc"))

defineProperty("rv_cc_1", globalPropertyf("tu154ce/elec/rv5_left_cc"))  -- RV
defineProperty("rv_cc_2", globalPropertyf("tu154ce/elec/rv5_right_cc"))  -- RV

defineProperty("taws_cc", globalPropertyf("tu154ce/taws/taws_cc")) -- потребление тока системой СРПБЗ

defineProperty("fire_sys_cc", globalPropertyf("tu154ce/fire/fire_sys_cc")) -- потребление тока пожарной системой

defineProperty("vhf1_cc", globalPropertyf("tu154ce/radio/vhf1_cc"))
defineProperty("vhf2_cc", globalPropertyf("tu154ce/radio/vhf2_cc"))

defineProperty("km5_1_cc", globalPropertyf("tu154ce/tks/km5_1_cc")) -- потребление тока КМ5
defineProperty("km5_2_cc", globalPropertyf("tu154ce/tks/km5_1_cc")) -- потребление тока КМ5

defineProperty("ga_1_cc", globalPropertyf("tu154ce/tks/ga_1_cc")) -- потребление тока ГА осн
defineProperty("ga_2_cc", globalPropertyf("tu154ce/tks/ga_2_cc")) -- потребление тока ГА контр
defineProperty("ga_heat_cc", globalPropertyf("tu154ce/tks/ga_heat_cc")) -- потребление тока
defineProperty("bgmk_1_cc", globalPropertyf("tu154ce/tks/bgmk_1_cc")) -- потребление тока БГМК
defineProperty("bgmk_2_cc", globalPropertyf("tu154ce/tks/bgmk_2_cc")) -- потребление тока БГМК

defineProperty("ush_cc", globalPropertyf("tu154ce/tks/ush_cc")) -- потребление тока УШ

defineProperty("agr_cc", globalPropertyf("tu154ce/ahz/agr_cc")) -- ток
defineProperty("ark15_L_cc", globalPropertyf("tu154ce/radio/ark15_L_cc")) -- потребление тока АРК
defineProperty("ark15_R_cc", globalPropertyf("tu154ce/radio/ark15_R_cc")) -- потребление тока АРК

defineProperty("diss_cc", globalPropertyf("tu154ce/nvu/diss_cc")) -- потребление от ДИСС
defineProperty("radar_cc", globalPropertyf("tu154ce/radio/radar_cc")) -- потребление тока от РЛС Гроза
defineProperty("rsbn_cc", globalPropertyf("tu154ce/radio/rsbn_cc")) -- потребление тока от РСБН
defineProperty("kln_cc", globalPropertyf("tu154ce/KLN90/power_draw"))

-- bus 36v
defineProperty("ctr_36L_cc", globalPropertyf("tu154ce/control/ctr_36L_cc")) -- нагрузка на сеть
defineProperty("ctr_36R_cc", globalPropertyf("tu154ce/control/ctr_36R_cc")) -- нагрузка на сеть

defineProperty("svs36_cc", globalPropertyf("tu154ce/svs/power_36cc")) -- потребление тока
defineProperty("absu_power_cc", globalPropertyf("tu154ce/absu_power_cc")) -- потребление тока АБСУ

defineProperty("pkp_left_power_cc", globalPropertyf("tu154ce/bkk/pkp_left_power_cc")) -- отребление тока ПКП
defineProperty("pkp_right_power_cc", globalPropertyf("tu154ce/bkk/pkp_right_power_cc")) -- отребление тока ПКП
defineProperty("mgv_ctr_power_cc", globalPropertyf("tu154ce/bkk/mgv_ctr_power_cc")) -- отребление тока ПКП

defineProperty("absu_at_power_cc", globalPropertyf("tu154ce/absu_at_power_cc")) -- потребление тока АБСУ
defineProperty("nvu_cc", globalPropertyf("tu154ce/nvu/nvu_cc")) -- потребление тока НВУ

defineProperty("nav1_pow_cc", globalPropertyf("tu154ce/radio/nav1_pow_cc")) -- потребление тока от КурсМП
defineProperty("nav2_pow_cc", globalPropertyf("tu154ce/radio/nav2_pow_cc")) -- потребление тока от КурсМП


-- bus 115v
defineProperty("vu1_amp", globalPropertyf("tu154ce/elec/vu1_amp")) -- работа ВУ
defineProperty("vu2_amp", globalPropertyf("tu154ce/elec/vu2_amp")) -- работа ВУ
defineProperty("vu3_amp", globalPropertyf("tu154ce/elec/vu_res_amp")) -- работа ВУ
defineProperty("cockpit_light_cc_115", globalPropertyf("tu154ce/elec/cockpit_light_cc_115"))-- нагрузка на сеть 115 от освещения в кабине
defineProperty("fuel_pumps_115_1_cc", globalPropertyf("tu154ce/elec/fuel_pumps_115_1_cc")) -- нагрузка на сеть 1 от топливных насосов
defineProperty("fuel_pumps_115_3_cc", globalPropertyf("tu154ce/elec/fuel_pumps_115_3_cc")) -- нагрузка на сеть 3 от топливных насосов
defineProperty("gs_pump_2_cc", globalPropertyf("tu154ce/hydro/gs_pump_2_cc")) -- ток насосной станции
defineProperty("gs_pump_3_cc", globalPropertyf("tu154ce/hydro/gs_pump_3_cc")) -- ток насосной станции

defineProperty("ai_115_1_cc", globalPropertyf("tu154ce/antiice/ai_115_1_cc")) -- нагрузка на сеть
defineProperty("ai_115_2_cc", globalPropertyf("tu154ce/antiice/ai_115_2_cc")) -- нагрузка на сеть
defineProperty("ai_115_3_cc", globalPropertyf("tu154ce/antiice/ai_115_3_cc")) -- нагрузка на сеть

defineProperty("ctr_115_1_cc", globalPropertyf("tu154ce/control/ctr_115_1_cc")) -- нагрузка на сеть
defineProperty("ctr_115_3_cc", globalPropertyf("tu154ce/control/ctr_115_3_cc")) -- нагрузка на сеть

defineProperty("svs115_cc", globalPropertyf("tu154ce/svs/power_115cc")) -- потребление тока

defineProperty("auasp_pow115_cc", globalPropertyf("tu154ce/elec/auasp_pow115_cc"))



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control





function update()

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	


	-- bus 27v
	local bus27_L = get(bat_amp_cc_1) + get(bat_amp_cc_3) + get(cockpit_light_cc_left) + get(ext_light_cc_left) + get(fuel_pumps_27_cc) * 0.5 + get(ai_27_L_cc) + get(ctr_27_L_cc) + get(msrp_27_L_cc)
	bus27_L = bus27_L + get(svs27_cc) + get(kln_cc) + get(rv_cc_1) + get(taws_cc) + get(vhf1_cc) + get(km5_1_cc) * 2 + get(ga_1_cc) * 0.5 + get(ga_2_cc) * 0.5 + get(ga_heat_cc) + get(bgmk_1_cc) + get(agr_cc)
	bus27_L = bus27_L + get(nvu_cc) * 10 + get(ark15_L_cc) + get(diss_cc) + get(rsbn_cc) * 5
	--
	local bus27_R = get(bat_amp_cc_2) + get(bat_amp_cc_4) + get(cockpit_light_cc_right) + get(ext_light_cc_right) + get(fuel_pumps_27_cc) * 0.5 + get(ai_27_R_cc) + get(ctr_27_R_cc) + get(msrp_27_R_cc)
	bus27_R = bus27_R + get(auasp_pow27_cc) + get(rv_cc_2) + get(fire_sys_cc) + get(vhf2_cc) + get(km5_2_cc) * 2 + get(bgmk_2_cc) + get(ush_cc) + get(ark15_R_cc) + get(radar_cc) * 3
	
	set(bus27_amp_left, bus27_L)
	set(bus27_amp_right, bus27_R)
	
	
	-- bus 36v

	local bus36_L = get(ctr_36L_cc) + get(svs36_cc) + get(absu_power_cc) * 3 + get(pkp_left_power_cc) + get(absu_at_power_cc) + get(nvu_cc) * 7 + get(ark15_L_cc) + get(diss_cc)
	
	local bus36_R = get(ctr_36R_cc) + get(absu_power_cc) * 3 + get(pkp_right_power_cc) + get(km5_2_cc) * 3 + get(ga_2_cc) * 2 + get(bgmk_2_cc) + get(ark15_R_cc) + get(nav2_pow_cc)
	
	local bus36_pts_1 = get(absu_power_cc) * 3 + get(mgv_ctr_power_cc) + get(agr_cc) + get(radar_cc)
	
	local bus36_pts_2 = get(km5_1_cc) * 3 + get(ga_1_cc) * 2 + get(bgmk_1_cc) + get(nav1_pow_cc)
	
	set(bus36_amp_left, bus36_L)
	set(bus36_amp_right, bus36_R)
	set(bus36_amp_pts250_1, bus36_pts_1)
	set(bus36_amp_pts250_2, bus36_pts_2)
	
	

	-- bus 115v
	local bus115_1 = get(vu1_amp) * 0.25 + get(vu3_amp) * 0.125 + get(cockpit_light_cc_115) * 0.5 + get(fuel_pumps_115_1_cc) + get(gs_pump_2_cc) + get(ai_115_1_cc) + get(ctr_115_1_cc)
	bus115_1 = bus115_1 + get(svs115_cc) + get(rv_cc_1) + get(taws_cc) * 0.2 + get(absu_at_power_cc) + get(nvu_cc) + get(diss_cc) * 3 + get(nav1_pow_cc) * get(rsbn_cc) * 5
	
	--
	local bus115_2 = get(ai_115_2_cc)
	
	--
	local bus115_3 = get(vu2_amp) * 0.25 + get(vu3_amp) * 0.125 + get(cockpit_light_cc_115) * 0.5 + get(fuel_pumps_115_3_cc) + get(gs_pump_3_cc) + get(ai_115_3_cc) + get(ctr_115_3_cc)
	bus115_3 = bus115_3 + get(auasp_pow115_cc) + get(rv_cc_2) + get(absu_power_cc) + get(nav2_pow_cc) + get(radar_cc) * 3
	
	set(bus115_1_amp, bus115_1)
	set(bus115_2_amp, bus115_2)
	set(bus115_3_amp, bus115_3)
	
end
	
end