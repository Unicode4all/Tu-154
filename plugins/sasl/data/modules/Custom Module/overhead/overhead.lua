-- this is overhead panel

-- switchers
defineProperty("var_left", globalPropertyi("tu154ce/switchers/ovhd/var_left"))  -- оерхед. вар лев
defineProperty("var_right", globalPropertyi("tu154ce/switchers/ovhd/var_right"))  -- оерхед. вар прав
defineProperty("auasp_on", globalPropertyi("tu154ce/switchers/ovhd/auasp_on"))  -- оерхед. АУАСП
defineProperty("auasp_contr", globalPropertyi("tu154ce/switchers/ovhd/auasp_contr"))  -- оерхед. АУАСП контроль
defineProperty("eup_on", globalPropertyi("tu154ce/switchers/ovhd/eup_on"))  -- выключатель ЭУП
defineProperty("agr_on", globalPropertyi("tu154ce/switchers/ovhd/agr_on"))  -- выключатель АГР
defineProperty("bkk_contr", globalPropertyi("tu154ce/switchers/ovhd/bkk_contr"))  -- контроль БКК. -1 - 2, 0 - выкл, +1 - 1
defineProperty("bkk_on", globalPropertyi("tu154ce/switchers/ovhd/bkk_on"))  -- выключатель БКК
defineProperty("sau_stu_on", globalPropertyi("tu154ce/switchers/ovhd/sau_stu_on"))  -- САУ СТУ выключатель
defineProperty("pkp_left_on", globalPropertyi("tu154ce/switchers/ovhd/pkp_left_on"))  -- ПКП лев	
defineProperty("pkp_right_on", globalPropertyi("tu154ce/switchers/ovhd/pkp_right_on"))  -- 	ПКП прав
defineProperty("mgv_contr", globalPropertyi("tu154ce/switchers/ovhd/mgv_contr"))  -- контроль МГВ
defineProperty("tks_on_1", globalPropertyi("tu154ce/switchers/ovhd/tks_on_1"))  -- выключатель ТКС 1
defineProperty("tks_on_2", globalPropertyi("tu154ce/switchers/ovhd/tks_on_2"))  -- выключатель ТКС 2
defineProperty("tks_heat", globalPropertyi("tu154ce/switchers/ovhd/tks_heat"))  -- обогрев ГА
defineProperty("tks_corr_1", globalPropertyi("tu154ce/switchers/ovhd/tks_corr_1"))  -- коррекция БГМК 2 - 1
defineProperty("tks_corr_2", globalPropertyi("tu154ce/switchers/ovhd/tks_corr_2"))  -- коррекция БГМК 2 - 2
defineProperty("curs_pnp_mode_1", globalPropertyi("tu154ce/switchers/ovhd/curs_pnp_mode_1"))  -- режим курс ПНП. 0 - ГМК, 1 - ГПК
defineProperty("curs_pnp_mode_2", globalPropertyi("tu154ce/switchers/ovhd/curs_pnp_mode_2"))  -- режим курс ПНП. 0 - ГМК, 1 - ГПК
defineProperty("svs_on", globalPropertyi("tu154ce/switchers/ovhd/svs_on"))  -- выключатель СВС
defineProperty("svs_heat", globalPropertyi("tu154ce/switchers/ovhd/svs_heat"))  -- обогрев СВС
defineProperty("kln_on", globalPropertyi("tu154ce/switchers/ovhd/kln_on"))  -- выключатель КЛН

---
defineProperty("tcas_on", globalPropertyi("tu154ce/switchers/ovhd/tcas_on"))  -- выключатель TCAS
defineProperty("emerg_light_on", globalPropertyi("tu154ce/switchers/ovhd/emerg_light_on"))  -- аварийное освещение
defineProperty("curs_np_on_1", globalPropertyi("tu154ce/switchers/ovhd/curs_np_on_1"))  -- курс МП 1
defineProperty("curs_np_on_2", globalPropertyi("tu154ce/switchers/ovhd/curs_np_on_2"))  -- курс МП 2
defineProperty("tra_67_on", globalPropertyi("tu154ce/switchers/ovhd/tra_67_on"))  -- ТРА 67
defineProperty("rsbn_on", globalPropertyi("tu154ce/switchers/ovhd/rsbn_on"))  -- РСБН питание
defineProperty("rsbn_recon", globalPropertyi("tu154ce/switchers/ovhd/rsbn_recon"))  -- РСБН опознавание
defineProperty("rv5_1_on", globalPropertyi("tu154ce/switchers/ovhd/rv5_1_on"))  -- РВ5 1
defineProperty("rv5_2_on", globalPropertyi("tu154ce/switchers/ovhd/rv5_2_on"))  -- РВ5 2
defineProperty("vhf_1_on", globalPropertyi("tu154ce/switchers/ovhd/vhf_1_on"))  -- УКВ 1
defineProperty("vhf_2_on", globalPropertyi("tu154ce/switchers/ovhd/vhf_2_on"))  -- УКВ 2
defineProperty("stabil_ga_main", globalPropertyi("tu154ce/switchers/ovhd/stabil_ga_main"))  -- стабилизация ГА по крену осн
defineProperty("stabil_ga_reserv", globalPropertyi("tu154ce/switchers/ovhd/stabil_ga_reserv"))  -- стабилизация ГА резерв
defineProperty("micron_1_on", globalPropertyi("tu154ce/switchers/ovhd/micron_1_on"))  -- микрон 1
defineProperty("micron_2_on", globalPropertyi("tu154ce/switchers/ovhd/micron_2_on"))  -- микрон 2
defineProperty("spu_on", globalPropertyi("tu154ce/switchers/ovhd/spu_on"))  -- СПУ
defineProperty("sgs_on", globalPropertyi("tu154ce/switchers/ovhd/sgs_on"))  -- СГС
defineProperty("sd75_1_on", globalPropertyi("tu154ce/switchers/ovhd/sd75_1_on"))  -- СД75 1
defineProperty("sd75_2_on", globalPropertyi("tu154ce/switchers/ovhd/sd75_2_on"))  -- СД75 2
---
defineProperty("uvid_on", globalPropertyi("tu154ce/switchers/ovhd/uvid_on"))  -- выключатель УВИД
defineProperty("vbe_1_on", globalPropertyi("tu154ce/switchers/ovhd/vbe_1_on"))  -- ВБЭ 1
defineProperty("vbe_2_on", globalPropertyi("tu154ce/switchers/ovhd/vbe_2_on"))  -- ВБЭ 2
defineProperty("mars_on", globalPropertyi("tu154ce/switchers/ovhd/mars_on"))  -- МАРС

defineProperty("vent_1", globalPropertyi("tu154ce/switchers/ovhd/vent_1"))  -- вентилятор КВС
defineProperty("vent_2", globalPropertyi("tu154ce/switchers/ovhd/vent_2"))  -- вентилятор 2П
defineProperty("vent_3", globalPropertyi("tu154ce/switchers/ovhd/vent_3"))  -- вентилятор БИ

defineProperty("arm406", globalPropertyi("tu154ce/switchers/ovhd/arm406"))  -- АРМ 406
defineProperty("ushdb_mode_1", globalPropertyi("tu154ce/switchers/ovhd/ushdb_mode_1"))  -- УШДБ и СПУ 1. 0 - АРК, 1 - VOR
defineProperty("ushdb_mode_2", globalPropertyi("tu154ce/switchers/ovhd/ushdb_mode_2"))  -- УШДБ и СПУ 2. 0 - АРК, 1 - VOR

-- buttons
defineProperty("tks_signal_off", globalPropertyi("tu154ce/buttons/ovhd/tks_signal_off"))  -- снятие блокировки сигнала ТКС
defineProperty("svs_contr", globalPropertyi("tu154ce/buttons/ovhd/svs_contr"))  -- кнопка контроля СВС

-- caps
defineProperty("bkk_contr_cap", globalPropertyi("tu154ce/switchers/ovhd/bkk_contr_cap"))  -- крышка тумблера контроля БКК
defineProperty("bkk_on_cap", globalPropertyi("tu154ce/switchers/ovhd/bkk_on_cap"))  -- крышка выключателя БКК
defineProperty("sau_stu_cap", globalPropertyi("tu154ce/switchers/ovhd/sau_stu_cap"))  -- крышка выключателя САУ СТУ
defineProperty("pkp_left_cap", globalPropertyi("tu154ce/switchers/ovhd/pkp_left_cap"))  -- крылка ПКП лев
defineProperty("pkp_right_cap", globalPropertyi("tu154ce/switchers/ovhd/pkp_right_cap"))  -- крышка ПКП прав
defineProperty("mgv_contr_cap", globalPropertyi("tu154ce/switchers/ovhd/mgv_contr_cap"))  -- 	контроль МГВ крышка
defineProperty("emerg_light_cap", globalPropertyi("tu154ce/switchers/ovhd/emerg_light_cap"))  -- крышка аварийного освещения

-- other datarefs
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(var_left, 0)
		set(var_right, 0)
		set(auasp_on, 0)
		set(sau_stu_on, 0)
		set(eup_on, 0)
		set(agr_on, 0)
		set(bkk_on, 0)
		set(pkp_left_on, 0)
		set(pkp_right_on, 0)
		set(mgv_contr, 0)
		set(tks_on_1, 0)
		set(tks_on_2, 0)
		set(tks_heat, 0)
		set(tks_corr_1, 0)
		set(tks_corr_2, 0)
		set(curs_pnp_mode_1, 0)
		set(curs_pnp_mode_2, 0)
		set(svs_on, 0)
		set(svs_heat, 0)
		set(kln_on, 0)
		set(tcas_on, 0)
		set(emerg_light_on, 0)
		set(curs_np_on_1, 0)
		set(curs_np_on_2, 0)
		set(tra_67_on, 0)
		set(rsbn_on, 0)
		set(rsbn_recon, 0)
		set(rv5_1_on, 0)
		set(rv5_2_on, 0)
		set(vhf_1_on, 0)
		set(vhf_2_on, 0)
		set(stabil_ga_main, 0)
		set(stabil_ga_reserv, 0)
		set(micron_1_on, 0)
		set(micron_2_on, 0)
		set(spu_on, 0)
		set(sgs_on, 0)
		set(sd75_1_on, 0)
		set(sd75_2_on, 0)
		set(uvid_on, 0)
		set(vbe_1_on, 0)
		set(vbe_2_on, 0)
		set(mars_on, 0)
		
		set(bkk_contr_cap, 1)
		set(bkk_on_cap, 1)
		set(sau_stu_cap, 1)
		set(pkp_left_cap, 1)
		set(pkp_right_cap, 1)
		set(mgv_contr_cap, 1)
		--set(emerg_light_cap, 1)
		set(arm406, 0)
	end	
	notLoaded = false
end




local var_left_last = get(var_left)
local var_right_last = get(var_right)
local auasp_on_last = get(auasp_on)
local auasp_contr_last = get(auasp_contr)
local eup_on_last = get(eup_on)
local agr_on_last = get(agr_on)
local bkk_contr_last = get(bkk_contr)
local bkk_on_last = get(bkk_on)
local sau_stu_on_last = get(sau_stu_on)
local pkp_left_on_last = get(pkp_left_on)
local pkp_right_on_last = get(pkp_right_on)
local mgv_contr_last = get(mgv_contr)
local tks_on_1_last = get(tks_on_1)
local tks_on_2_last = get(tks_on_2)
local tks_heat_last = get(tks_heat)
local tks_corr_1_last = get(tks_corr_1)
local tks_corr_2_last = get(tks_corr_2)
local curs_pnp_mode_1_last = get(curs_pnp_mode_1)
local curs_pnp_mode_2_last = get(curs_pnp_mode_2)
local svs_on_last = get(svs_on)
local svs_heat_last = get(svs_heat)
local kln_on_last = get(kln_on)

local tcas_on_last = get(tcas_on)
local emerg_light_on_last = get(emerg_light_on)
local curs_np_on_1_last = get(curs_np_on_1)
local curs_np_on_2_last = get(curs_np_on_2)
local tra_67_on_last = get(tra_67_on)
local rsbn_on_last = get(rsbn_on)
local rsbn_recon_last = get(rsbn_recon)
local rv5_1_on_last = get(rv5_1_on)
local rv5_2_on_last = get(rv5_2_on)
local vhf_1_on_last = get(vhf_1_on)
local vhf_2_on_last = get(vhf_2_on)
local stabil_ga_main_last = get(stabil_ga_main)
local stabil_ga_reserv_last = get(stabil_ga_reserv)
local micron_1_on_last = get(micron_1_on)
local micron_2_on_last = get(micron_2_on)
local spu_on_last = get(spu_on)
local sgs_on_last = get(sgs_on)
local sd75_1_on_last = get(sd75_1_on)
local sd75_2_on_last = get(sd75_2_on)

local vent_1_last = get(vent_1)
local vent_2_last = get(vent_2)
local vent_3_last = get(vent_3)

local arm406_last = get(arm406)
local ushdb_mode_1_last = get(ushdb_mode_1)
local ushdb_mode_2_last = get(ushdb_mode_2)



local function switchers()

	local var_left_sw = get(var_left)
	local var_right_sw = get(var_right)
	local auasp_on_sw = get(auasp_on)
	local auasp_contr_sw = get(auasp_contr)
	local eup_on_sw = get(eup_on)
	local agr_on_sw = get(agr_on)
	local bkk_contr_sw = get(bkk_contr)
	local bkk_on_sw = get(bkk_on)
	local sau_stu_on_sw = get(sau_stu_on)
	local pkp_left_on_sw = get(pkp_left_on)
	local pkp_right_on_sw = get(pkp_right_on)
	local mgv_contr_sw = get(mgv_contr)
	local tks_on_1_sw = get(tks_on_1)
	local tks_on_2_sw = get(tks_on_2)
	local tks_heat_sw = get(tks_heat)
	local tks_corr_1_sw = get(tks_corr_1)
	local tks_corr_2_sw = get(tks_corr_2)
	local curs_pnp_mode_1_sw = get(curs_pnp_mode_1)
	local curs_pnp_mode_2_sw = get(curs_pnp_mode_2)
	local svs_on_sw = get(svs_on)
	local svs_heat_sw = get(svs_heat)
	local kln_on_sw = get(kln_on)

	local tcas_on_sw = get(tcas_on)
	local emerg_light_on_sw = get(emerg_light_on)
	local curs_np_on_1_sw = get(curs_np_on_1)
	local curs_np_on_2_sw = get(curs_np_on_2)
	local tra_67_on_sw = get(tra_67_on)
	local rsbn_on_sw = get(rsbn_on)
	local rsbn_recon_sw = get(rsbn_recon)
	local rv5_1_on_sw = get(rv5_1_on)
	local rv5_2_on_sw = get(rv5_2_on)
	local vhf_1_on_sw = get(vhf_1_on)
	local vhf_2_on_sw = get(vhf_2_on)
	local stabil_ga_main_sw = get(stabil_ga_main)
	local stabil_ga_reserv_sw = get(stabil_ga_reserv)
	local micron_1_on_sw = get(micron_1_on)
	local micron_2_on_sw = get(micron_2_on)
	local spu_on_sw = get(spu_on)
	local sgs_on_sw = get(sgs_on)
	local sd75_1_on_sw = get(sd75_1_on)
	local sd75_2_on_sw = get(sd75_2_on)
	
	local vent_1_sw = get(vent_1)
	local vent_2_sw = get(vent_2)
	local vent_3_sw = get(vent_3)

	local arm406_sw = get(arm406)
	local ushdb_mode_1_sw = get(ushdb_mode_1)
	local ushdb_mode_2_sw = get(ushdb_mode_2)
	
	
	local changes = var_left_sw + var_right_sw + auasp_on_sw + auasp_contr_sw + eup_on_sw + agr_on_sw + bkk_contr_sw + sau_stu_on_sw
	changes = changes + pkp_left_on_sw + pkp_right_on_sw + mgv_contr_sw + tks_on_1_sw + tks_on_2_sw + tks_heat_sw + tks_corr_1_sw + tks_corr_2_sw
	changes = changes + curs_pnp_mode_1_sw + curs_pnp_mode_2_sw + svs_on_sw + svs_heat_sw + kln_on_sw + bkk_on_sw
	changes = changes + tcas_on_sw + emerg_light_on_sw + curs_np_on_1_sw + curs_np_on_2_sw + tra_67_on_sw + rsbn_on_sw + rsbn_recon_sw
	changes = changes + rv5_1_on_sw + rv5_2_on_sw + vhf_1_on_sw + vhf_2_on_sw + stabil_ga_main_sw + stabil_ga_reserv_sw
	changes = changes + micron_1_on_sw + micron_2_on_sw + spu_on_sw + sgs_on_sw + sd75_1_on_sw + sd75_2_on_sw
	changes = changes + vent_1_sw + vent_2_sw + vent_3_sw + arm406_sw + ushdb_mode_1_sw + ushdb_mode_2_sw
	
	changes = changes - var_left_last - var_right_last - auasp_on_last - auasp_contr_last - eup_on_last - agr_on_last - bkk_contr_last - sau_stu_on_last
	changes = changes - pkp_left_on_last - pkp_right_on_last - mgv_contr_last - tks_on_1_last - tks_on_2_last - tks_heat_last - tks_corr_1_last - tks_corr_2_last
	changes = changes - curs_pnp_mode_1_last - curs_pnp_mode_2_last - svs_on_last - svs_heat_last - kln_on_last - bkk_on_last
	changes = changes - tcas_on_last - emerg_light_on_last - curs_np_on_1_last - curs_np_on_2_last - tra_67_on_last - rsbn_on_last - rsbn_recon_last
	changes = changes - rv5_1_on_last - rv5_2_on_last - vhf_1_on_last - vhf_2_on_last - stabil_ga_main_last - stabil_ga_reserv_last
	changes = changes - micron_1_on_last - micron_2_on_last - spu_on_last - sgs_on_last - sd75_1_on_last - sd75_2_on_last
	changes = changes - vent_1_last - vent_2_last - vent_3_last - arm406_last - ushdb_mode_1_last - ushdb_mode_2_last
	
	if changes ~= 0 then  end
	
	
	
	var_left_last = var_left_sw
	var_right_last = var_right_sw
	auasp_on_last = auasp_on_sw
	auasp_contr_last = auasp_contr_sw
	eup_on_last = eup_on_sw
	agr_on_last = agr_on_sw
	bkk_contr_last = bkk_contr_sw
	bkk_on_last = bkk_on_sw
	sau_stu_on_last = sau_stu_on_sw
	pkp_left_on_last = pkp_left_on_sw
	pkp_right_on_last = pkp_right_on_sw
	mgv_contr_last = mgv_contr_sw
	tks_on_1_last = tks_on_1_sw
	tks_on_2_last = tks_on_2_sw
	tks_heat_last = tks_heat_sw
	tks_corr_1_last = tks_corr_1_sw
	tks_corr_2_last = tks_corr_2_sw
	curs_pnp_mode_1_last = curs_pnp_mode_1_sw
	curs_pnp_mode_2_last = curs_pnp_mode_2_sw
	svs_on_last = svs_on_sw
	svs_heat_last = svs_heat_sw
	kln_on_last = kln_on_sw

	tcas_on_last = tcas_on_sw
	emerg_light_on_last = emerg_light_on_sw
	curs_np_on_1_last = curs_np_on_1_sw
	curs_np_on_2_last = curs_np_on_2_sw
	tra_67_on_last = tra_67_on_sw
	rsbn_on_last = rsbn_on_sw
	rsbn_recon_last = rsbn_recon_sw
	rv5_1_on_last = rv5_1_on_sw
	rv5_2_on_last = rv5_2_on_sw
	vhf_1_on_last = vhf_1_on_sw
	vhf_2_on_last = vhf_2_on_sw
	stabil_ga_main_last = stabil_ga_main_sw
	stabil_ga_reserv_last = stabil_ga_reserv_sw
	micron_1_on_last = micron_1_on_sw
	micron_2_on_last = micron_2_on_sw
	spu_on_last = spu_on_sw
	sgs_on_last = sgs_on_sw
	sd75_1_on_last = sd75_1_on_sw
	sd75_2_on_last = sd75_2_on_sw	
	
	vent_1_last = vent_1_sw
	vent_2_last = vent_2_sw
	vent_3_last = vent_3_sw
	
	arm406_last = arm406_sw
	ushdb_mode_1_last = ushdb_mode_1_sw
	ushdb_mode_2_last = ushdb_mode_2_sw
	
	
	
end


local bkk_contr_cap_last = get(bkk_contr_cap)
local bkk_on_cap_last = get(bkk_on_cap)
local sau_stu_cap_last = get(sau_stu_cap)
local pkp_left_cap_last = get(pkp_left_cap)
local pkp_right_cap_last = get(pkp_right_cap)
local mgv_contr_cap_last = get(mgv_contr_cap)
local emerg_light_cap_last = get(emerg_light_cap)


local function caps ()

	local bkk_contr_cap_sw = get(bkk_contr_cap)
	local bkk_on_cap_sw = get(bkk_on_cap)
	local sau_stu_cap_sw = get(sau_stu_cap)
	local pkp_left_cap_sw = get(pkp_left_cap)
	local pkp_right_cap_sw = get(pkp_right_cap)
	local mgv_contr_cap_sw = get(mgv_contr_cap)
	local emerg_light_cap_sw = get(emerg_light_cap)

	local changes = bkk_contr_cap_sw + bkk_on_cap_sw + sau_stu_cap_sw + pkp_left_cap_sw + pkp_right_cap_sw + mgv_contr_cap_sw + emerg_light_cap_sw
	changes = changes - bkk_contr_cap_last - bkk_on_cap_last - sau_stu_cap_last - pkp_left_cap_last - pkp_right_cap_last - mgv_contr_cap_last - emerg_light_cap_last
	
	if changes ~= 0 then  end
	
	
	bkk_contr_cap_last = bkk_contr_cap_sw
	bkk_on_cap_last = bkk_on_cap_sw
	sau_stu_cap_last = sau_stu_cap_sw
	pkp_left_cap_last = pkp_left_cap_sw
	pkp_right_cap_last = pkp_right_cap_sw
	mgv_contr_cap_last = mgv_contr_cap_sw
	emerg_light_cap_last = emerg_light_cap_sw
	
	if bkk_contr_cap_sw == 0 then set(bkk_contr, 0) end
	if bkk_on_cap_sw == 0 then set(bkk_on, 1) end
	if sau_stu_cap_sw == 0 then set(sau_stu_on, 1) end
	if pkp_left_cap_sw == 0 then set(pkp_left_on, 1) end
	if pkp_right_cap_sw == 0 then set(pkp_right_on, 1) end
	if mgv_contr_cap_sw == 0 then set(mgv_contr, 1) end
	if emerg_light_cap_sw == 0 then set(emerg_light_on, 0) end
	
end



local tks_signal_off_last = get(tks_signal_off)
local svs_contr_last = get(svs_contr)

local function buttons()

	local tks_signal_off_sw = get(tks_signal_off)
	local svs_contr_sw = get(svs_contr)
	
	local changes = tks_signal_off_sw + svs_contr_sw - tks_signal_off_last - svs_contr_last
	
	if changes ~= 0 then  end
	
	tks_signal_off_last = tks_signal_off_sw
	svs_contr_last = svs_contr_sw

end











function update()
	
	local passed = get(frame_time)
	
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end
	
	
	
	switchers()
	caps ()
	buttons()




end



