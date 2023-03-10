-- this is electric panel. here we have controls and indicators for electric system
-- controls on panel
defineProperty("gpu_on", globalPropertyi("tu154ce/switchers/eng/gpu_on")) -- выключатель РАП
defineProperty("apu_gen_on", globalPropertyi("tu154ce/switchers/eng/apu_gen_on")) -- выключатель ген ВСУ
defineProperty("bus115_volt_sel", globalPropertyi("tu154ce/switchers/eng/bus115_volt_sel")) -- переключатель источника вольтметра
defineProperty("bus115_volt_phase_sel", globalPropertyi("tu154ce/switchers/eng/bus115_volt_phase_sel")) -- переключатель источника вольтметра
defineProperty("bus115_amp_sel", globalPropertyi("tu154ce/switchers/eng/bus115_amp_sel")) -- переключатель источника амерметра
defineProperty("bus115_amp_phase_sel", globalPropertyi("tu154ce/switchers/eng/bus115_amp_phase_sel")) -- переключатель источника амерметра

defineProperty("gen_1_on", globalPropertyi("tu154ce/switchers/eng/gen_1_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_2_on", globalPropertyi("tu154ce/switchers/eng/gen_2_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_3_on", globalPropertyi("tu154ce/switchers/eng/gen_3_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл

defineProperty("emerg_inv115", globalPropertyi("tu154ce/switchers/eng/emerg_inv115")) -- аварийн. преобраз 115в
defineProperty("emerg_inv115_cap", globalPropertyi("tu154ce/switchers/eng/emerg_inv115_cap")) -- аварийн. преобраз 115в

defineProperty("bus36_volt_sel", globalPropertyi("tu154ce/switchers/eng/bus36_volt_sel")) -- переключатель вольтметра 36в
defineProperty("pts250_sel", globalPropertyi("tu154ce/switchers/eng/pts250_sel")) -- переключатель ПТС250. 0 - №1, 1 - №2
defineProperty("bus36_tr_left_to_right", globalPropertyi("tu154ce/switchers/eng/bus36_tr_left_to_right")) -- лев сеть на тр2. 0 - авто, 1 - ручное
defineProperty("bus36_tr_right_to_left", globalPropertyi("tu154ce/switchers/eng/bus36_tr_right_to_left")) -- прав сеть на тр1
defineProperty("pts250_on", globalPropertyi("tu154ce/switchers/eng/pts250_on")) -- выключатель ПТС250
defineProperty("pts250_mode", globalPropertyi("tu154ce/switchers/eng/pts250_mode")) -- режим ПТС250. авто - ручное
defineProperty("pts250_on_cap", globalPropertyi("tu154ce/switchers/eng/pts250_on_cap")) -- выключатель ПТС250
defineProperty("pts250_mode_cap", globalPropertyi("tu154ce/switchers/eng/pts250_mode_cap")) -- режим ПТС250. авто - ручное

defineProperty("bus27_volt_sel", globalPropertyi("tu154ce/switchers/eng/bus27_volt_sel")) -- переключатель вольтметра 27в
defineProperty("bus27_amp1_sel", globalPropertyi("tu154ce/switchers/eng/bus27_amp1_sel")) -- переключатель амперметра 27в
defineProperty("bus27_amp2_sel", globalPropertyi("tu154ce/switchers/eng/bus27_amp2_sel")) -- переключатель амперметра 27в

defineProperty("bus27_connect", globalPropertyi("tu154ce/switchers/eng/bus27_connect")) -- соединение сетей 27в
defineProperty("bus27_connect_cap", globalPropertyi("tu154ce/switchers/eng/bus27_connect_cap")) -- соединение сетей 27в
defineProperty("bus27_vu1", globalPropertyi("tu154ce/switchers/eng/bus27_vu1")) -- ВУ1. -1 - резерв, 0 - выкл, +1 - вкл.
defineProperty("bus27_vu2", globalPropertyi("tu154ce/switchers/eng/bus27_vu2")) -- ВУ2. -1 - резерв, 0 - выкл, +1 - вкл.
defineProperty("bat1_on", globalPropertyi("tu154ce/switchers/eng/bat1_on")) -- батарея 1
defineProperty("bat2_on", globalPropertyi("tu154ce/switchers/eng/bat2_on")) -- батарея 2
defineProperty("bat3_on", globalPropertyi("tu154ce/switchers/eng/bat3_on")) -- батарея 3
defineProperty("bat4_on", globalPropertyi("tu154ce/switchers/eng/bat4_on")) -- батарея 4

-- gauges
defineProperty("bus115_freq", globalPropertyf("tu154ce/gauges/eng/bus115_freq")) -- частотомер сети 115в - угол
defineProperty("bus115_volt", globalPropertyf("tu154ce/gauges/eng/bus115_volt")) -- вольтметр сети 115в - угол
defineProperty("bus115_amp", globalPropertyf("tu154ce/gauges/eng/bus115_amp")) -- амерметр сети 115в - угол

defineProperty("bus36_volt", globalPropertyf("tu154ce/gauges/eng/bus36_volt")) -- вольтметр сети 36в - угол

defineProperty("bus27_volt", globalPropertyf("tu154ce/gauges/eng/bus27_volt")) -- вольтметр сети 36в - угол
defineProperty("bus27_amp1", globalPropertyf("tu154ce/gauges/eng/bus27_amp1")) -- вольтметр сети 36в - угол
defineProperty("bus27_amp2", globalPropertyf("tu154ce/gauges/eng/bus27_amp2")) -- вольтметр сети 36в - угол

-- other datarefs
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time
defineProperty("sim_run_time", globalPropertyf("sim/time/total_running_time_sec"))

-- sources  for gauges
-- bus 27v
defineProperty("bat_volt_1", globalPropertyf("tu154ce/elec/bat_volt_1"))
defineProperty("bat_volt_2", globalPropertyf("tu154ce/elec/bat_volt_2"))
defineProperty("bat_volt_3", globalPropertyf("tu154ce/elec/bat_volt_3"))
defineProperty("bat_volt_4", globalPropertyf("tu154ce/elec/bat_volt_4"))

defineProperty("bat_amp_1", globalPropertyf("tu154ce/elec/bat_amp_1"))
defineProperty("bat_amp_2", globalPropertyf("tu154ce/elec/bat_amp_2"))
defineProperty("bat_amp_3", globalPropertyf("tu154ce/elec/bat_amp_3"))
defineProperty("bat_amp_4", globalPropertyf("tu154ce/elec/bat_amp_4"))

defineProperty("bat_amp_cc_1", globalPropertyf("tu154ce/elec/bat_cc_1")) -- ток заряда батареи
defineProperty("bat_amp_cc_2", globalPropertyf("tu154ce/elec/bat_cc_2")) -- ток заряда батареи
defineProperty("bat_amp_cc_3", globalPropertyf("tu154ce/elec/bat_cc_3")) -- ток заряда батареи
defineProperty("bat_amp_cc_4", globalPropertyf("tu154ce/elec/bat_cc_4")) -- ток заряда батареи

defineProperty("vu1_amp", globalPropertyf("tu154ce/elec/vu1_amp"))
defineProperty("vu2_amp", globalPropertyf("tu154ce/elec/vu2_amp"))
defineProperty("vu_res_amp", globalPropertyf("tu154ce/elec/vu_res_amp"))

defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right"))

-- bus 36v
defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left"))
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right"))
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1"))
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154ce/elec/bus36_volt_pts250_2"))

-- bus 115/200v
defineProperty("gen1_volt", globalPropertyf("tu154ce/elec/gen1_volt"))
defineProperty("gen2_volt", globalPropertyf("tu154ce/elec/gen2_volt"))
defineProperty("gen3_volt", globalPropertyf("tu154ce/elec/gen3_volt"))
defineProperty("gen4_volt", globalPropertyf("tu154ce/elec/gen4_volt"))
defineProperty("gpu_volt", globalPropertyf("tu154ce/elec/gpu_volt"))

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154ce/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt"))

defineProperty("bus115_em_1_volt", globalPropertyf("tu154ce/elec/bus115_em_1_volt"))
defineProperty("bus115_em_2_volt", globalPropertyf("tu154ce/elec/bus115_em_2_volt"))

defineProperty("gen1_amp", globalPropertyf("tu154ce/elec/gen1_amp"))
defineProperty("gen2_amp", globalPropertyf("tu154ce/elec/gen2_amp"))
defineProperty("gen3_amp", globalPropertyf("tu154ce/elec/gen3_amp"))
defineProperty("gen4_amp", globalPropertyf("tu154ce/elec/gen4_amp"))
defineProperty("gpu_amp", globalPropertyf("tu154ce/elec/gpu_amp"))

-- lamps
defineProperty("lamp_apu_gen_on", globalPropertyf("tu154ce/lights/small/apu_gen_on")) -- РАП подключен
defineProperty("bus_npk_1", globalPropertyf("tu154ce/lights/small/bus_npk_1")) -- сети НПК лев на 3
defineProperty("bus_npk_2", globalPropertyf("tu154ce/lights/small/bus_npk_2")) -- сети НПК прав на 1
defineProperty("emerg_inv_115", globalPropertyf("tu154ce/lights/small/emerg_inv_115")) -- аварийный преобразов. 115в

defineProperty("gen_fail_1", globalPropertyf("tu154ce/lights/small/gen_fail_1")) -- генератор не работает
defineProperty("gen_fail_2", globalPropertyf("tu154ce/lights/small/gen_fail_2")) -- генератор не работает
defineProperty("gen_fail_3", globalPropertyf("tu154ce/lights/small/gen_fail_3")) -- генератор не работает

defineProperty("bus_connected", globalPropertyf("tu154ce/lights/small/bus_connected")) -- сети соединены
defineProperty("left_bus_use_bat", globalPropertyf("tu154ce/lights/small/left_bus_use_bat")) -- левая сеть от батарей
defineProperty("right_bus_use_bat", globalPropertyf("tu154ce/lights/small/right_bus_use_bat")) -- правая сеть от батарей

defineProperty("turn_off_bat_1", globalPropertyf("tu154ce/lights/small/turn_off_bat_1")) -- выключи батарею
defineProperty("turn_off_bat_3", globalPropertyf("tu154ce/lights/small/turn_off_bat_3")) -- выключи батарею
defineProperty("turn_off_bat_2", globalPropertyf("tu154ce/lights/small/turn_off_bat_2")) -- выключи батарею
defineProperty("turn_off_bat_4", globalPropertyf("tu154ce/lights/small/turn_off_bat_4")) -- выключи батарею

defineProperty("vu_on_1", globalPropertyf("tu154ce/lights/small/vu_on_1")) -- ВУ1
defineProperty("vu_on_2", globalPropertyf("tu154ce/lights/small/vu_on_2")) -- ВУ2
defineProperty("left_bus_on_tr2", globalPropertyf("tu154ce/lights/small/left_bus_on_tr2")) -- левая сеть на тр 2
defineProperty("right_bus_on_tr1", globalPropertyf("tu154ce/lights/small/right_bus_on_tr1")) -- правая сеть на тр 1
defineProperty("pts250_n1", globalPropertyf("tu154ce/lights/small/pts250_n1")) -- ПТС 250 не работает
defineProperty("pts250_n2", globalPropertyf("tu154ce/lights/small/pts250_n2")) -- ПТС 250 на сеть

-- lamps sources
defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_apu")) -- кнопка првоерки ламп панели ВСУ

defineProperty("gpu_work_bus", globalPropertyf("tu154ce/elec/gpu_work"))
defineProperty("inv115_fail", globalPropertyf("tu154ce/failures/inv115_fail"))


defineProperty("buses_connected", globalPropertyf("tu154ce/elec/bus_connected"))

defineProperty("bus27_source_left", globalPropertyf("tu154ce/elec/bus27_source_left")) -- источник сети. 0 - ничего. 1 - ВУ1, 2 - ВУрезерв, 3 - батареи 1 и 3, 6 - соседняя сеть
defineProperty("bus27_source_right", globalPropertyf("tu154ce/elec/bus27_source_right")) -- источник сети. 0 - ничего. 1 - ВУ2, 2 - ВУрезерв, 3 - батареи 2 и 4, 6 - соседняя сеть

defineProperty("vu_res_to_L", globalPropertyi("tu154ce/elec/vu_res_to_L")) -- резервное ВУ подключено на лев сеть
defineProperty("vu_res_to_R", globalPropertyi("tu154ce/elec/vu_res_to_R")) -- резервное ВУ подключено на прав сеть

defineProperty("bus36_src_L", globalPropertyi("tu154ce/elec/bus36_src_L")) --  источник левой сети. 0 = ТР1, 1 = ТР2
defineProperty("bus36_src_R", globalPropertyi("tu154ce/elec/bus36_src_R")) -- источник правой сети. 0 = ТР2, 1 = ТР1

defineProperty("bus36_pts1_work", globalPropertyi("tu154ce/elec/bus36_pts1_work")) -- ПТС250 1 работает
defineProperty("bus36_pts2_work", globalPropertyi("tu154ce/elec/bus36_pts2_work")) -- ПТС250 2 работает

defineProperty("bat_therm_1", globalPropertyf("tu154ce/elec/bat_therm_1")) -- температурыа батаре
defineProperty("bat_therm_2", globalPropertyf("tu154ce/elec/bat_therm_2")) -- температурыа батаре
defineProperty("bat_therm_3", globalPropertyf("tu154ce/elec/bat_therm_3")) -- температурыа батаре
defineProperty("bat_therm_4", globalPropertyf("tu154ce/elec/bat_therm_4")) -- температурыа батаре

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("sim_avionics", globalPropertyi("sim/cockpit2/switches/avionics_power_on")) -- default sim avionics switcher

include("smooth_light.lua")
-- sounds
local rotary_sound = loadSample('Custom Sounds/plastic_switch.wav')
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')


local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(gen_1_on, 0)
		set(gen_2_on, 0)
		set(gen_3_on, 0)
		set(bus27_vu1, 0)
		set(bus27_vu2, 0)
		set(bat1_on, 0)
		set(bat2_on, 0)
		set(bat3_on, 0)
		set(bat4_on, 0)
	end
	
	notLoaded = false
end



local k1 = 50 -- needle acceleration koef
local k2 = 200 -- needle friction coef
local vlim = 20 -- needle speed limit
local alim = 5 -- needle acceleration limit
	

-- convert volts to angle
local volt115_table = {{ -5000, -120},    -- bugs workaround
				  { 0, -120 },   -- 
				  { 50, -95 },   -- 
            	  { 100,  0 },   -- 
           		  { 120, 20 },    -- 
          		  { 150, 120 },  --  
          		  { 1000, 120 }}   -- bugs workaround

-- calculate the voltmeter's needle angle
local volt115_actual = -120 -- needle angle
local freq115_actual = -120 -- neddle angle
local passed = get(frame_time)
local volt115_v = 0 -- current needle velocity
local freq115_v = 0 -- current needle velocity
local volt115_timer = 0
local freq115_timer = 0

local v115_sw_last = get(bus115_volt_sel)
local phaseSel_115_last = get(bus115_volt_phase_sel)

local function voltmetr115()

	local volt115_angle = -120
	local v115_sw = get(bus115_volt_sel)
	local phaseSel_115 = get(bus115_volt_phase_sel)
	
	volt115_timer = volt115_timer + passed
	
	if v115_sw ~= v115_sw_last or phaseSel_115 ~= phaseSel_115_last then
		volt115_timer = 0
		freq115_timer = 0
		--[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]]
	end
	
	v115_sw_last = v115_sw
	phaseSel_115_last = phaseSel_115
	
	if volt115_timer < 0.05 then volt115_angle = -120 -- for the switching effect
	elseif v115_sw == 0 then volt115_angle = interpolate(volt115_table, get(gen1_volt))
	elseif v115_sw == 1 then volt115_angle = interpolate(volt115_table, get(gen2_volt))
	elseif v115_sw == 2 then volt115_angle = interpolate(volt115_table, get(gen3_volt))
	elseif v115_sw == 3 then volt115_angle = interpolate(volt115_table, get(gen4_volt))
	elseif v115_sw == 4 then volt115_angle = interpolate(volt115_table, get(gpu_volt))
	elseif v115_sw == 5 then volt115_angle = interpolate(volt115_table, get(bus115_em_1_volt))
	elseif v115_sw == 6 then volt115_angle = interpolate(volt115_table, get(bus115_em_2_volt))
	elseif v115_sw == 7 then volt115_angle = interpolate(volt115_table, get(bus115_1_volt))
	elseif v115_sw == 8 then volt115_angle = interpolate(volt115_table, get(bus115_2_volt))
	elseif v115_sw == 9 then volt115_angle = interpolate(volt115_table, get(bus115_3_volt))
	end
	
	-- voltmeter needle

	local a115 = (volt115_angle - volt115_actual) * k1 -- needle acceleration
	volt115_v = volt115_v + a115 * passed -- needle speed
	
	volt115_v = volt115_v - sign(volt115_v) * math.min(k2 * passed, math.abs(volt115_v)*0.5) -- needle speed with friction
	-- limit the velocity
	if volt115_v > vlim then volt115_v = vlim
	elseif volt115_v < -vlim then volt115_v = -vlim end
	
	if passed == 0 then volt115_v = 0 end
	
	volt115_actual = volt115_actual + volt115_v
	
	set(bus115_volt, volt115_actual)

	-- freq-meter needle
	local freq115_angle = -120 
	if volt115_angle > 0 and freq115_timer > 0.2 then freq115_angle = 0 else freq115_angle = -120 end
	freq115_timer = freq115_timer + passed
	
	
	local f115 = (freq115_angle - freq115_actual) * k1 -- needle acceleration
	freq115_v = freq115_v + f115 * passed -- needle speed
	
	freq115_v = freq115_v - sign(freq115_v) * math.min(k2 * passed, math.abs(freq115_v)*0.5) -- needle speed with friction
	-- limit the velocity
	if freq115_v > vlim then freq115_v = vlim
	elseif freq115_v < -vlim then freq115_v = -vlim end
	
	if passed == 0 then freq115_v = 0 end
	
	freq115_actual = freq115_actual + freq115_v
	
	set(bus115_freq, freq115_actual)
	
	

end

-- convert amps to angle
local amp115_table = {{ -5000, -120},    -- bugs workaround
				  { 0, -120 },   -- 
				  { 40, -100 },   -- 
            	  { 50,  -90 },   -- 
           		  { 100, -20 },    -- 
          		  { 110, 0 },  --  
				  { 145, 97 },  -- 
				  { 150, 120 },  -- 
          		  { 1000, 120 }}   -- bugs workaround

				  
local ampSel_115_last = get(bus115_amp_sel)
local ampPhaseSel_115_last = get(bus115_amp_phase_sel)
local amp115_timer = 0
local amp115_actual = -120
local amp115_v = 0
				  
local function ampermeter115()

	local ampSel_115 = get(bus115_amp_sel)
	local ampPhaseSel_115 = get(bus115_amp_phase_sel)
	
	-- play sound and reset timers
	if ampSel_115 ~= ampSel_115_last or ampPhaseSel_115 ~= ampPhaseSel_115_last then
		amp115_timer = 0
		--[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]]
	end	
	ampSel_115_last = ampSel_115
	ampPhaseSel_115_last = ampPhaseSel_115
	
	-- set angles
	amp115_timer = amp115_timer + passed
	local amp115_angle = -120
	if amp115_timer < 0.05 then amp115_angle = -120
	elseif ampSel_115 == 0 then amp115_angle = interpolate(amp115_table, get(gpu_amp))
	elseif ampSel_115 == 1 then amp115_angle = interpolate(amp115_table, get(gen1_amp))
	elseif ampSel_115 == 2 then amp115_angle = interpolate(amp115_table, get(gen2_amp))
	elseif ampSel_115 == 3 then amp115_angle = interpolate(amp115_table, get(gen3_amp))
	elseif ampSel_115 == 4 then amp115_angle = interpolate(amp115_table, get(gen4_amp))
	end
	
	-- needle movement
	local a115 = (amp115_angle - amp115_actual) * k1 -- needle acceleration
	amp115_v = amp115_v + a115 * passed -- needle speed
	
	amp115_v = amp115_v - sign(amp115_v) * math.min(k2 * passed, math.abs(amp115_v)*0.5) -- needle speed with friction
	-- limit the velocity
	if amp115_v > vlim then amp115_v = vlim
	elseif amp115_v < -vlim then amp115_v = -vlim end
	
	if passed == 0 then amp115_v = 0 end
	
	amp115_actual = amp115_actual + amp115_v
	
	set(bus115_amp, amp115_actual)
	


end

-- bus 36 gauge
-- convert volts to angle
local volt36_table = {{ -5000, -120},    -- bugs workaround
				  { 0, -120 },   -- 
				  { 15, -90 },   -- 
            	  { 30,  -10 },   -- 
           		  { 40, 60 },    -- 
				  { 45, 120 },  -- 
          		  { 1000, 120 }}   -- bugs workaround

local volSel_36_last = get(bus36_volt_sel)
local volt36_timer = 0
local volt36_v = 0
local volt36_actual = -120

local function voltmeter36()
	local volSel_36 = get(bus36_volt_sel)
	volt36_timer = volt36_timer + passed
	-- play sound and reset timers
	if volSel_36 ~= volSel_36_last then
		volt36_timer = 0
		--[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]]
	end	
	
	local volt36_angle = -120
	if volt36_timer < 0.05 then volt36_angle = -120
	elseif volSel_36 < 3 then volt36_angle = interpolate(volt36_table, get(bus36_volt_left))
	elseif volSel_36 < 6 then volt36_angle = interpolate(volt36_table, get(bus36_volt_right))
	else 
		if get(pts250_sel) == 0 then
			volt36_angle = interpolate(volt36_table, get(bus36_volt_pts250_1))
		else
			volt36_angle = interpolate(volt36_table, get(bus36_volt_pts250_2))
		end
	end
	
	-- needle movement
	local a36 = (volt36_angle - volt36_actual) * k1 -- needle acceleration
	volt36_v = volt36_v + a36 * passed -- needle speed
	
	volt36_v = volt36_v - sign(volt36_v) * math.min(k2 * passed, math.abs(volt36_v)*0.5) -- needle speed with friction
	-- limit the velocity
	if volt36_v > vlim then volt36_v = vlim
	elseif volt36_v < -vlim then volt36_v = -vlim end
	
	if passed == 0 then volt36_v = 0 end
	
	volt36_actual = volt36_actual + volt36_v

	
	set(bus36_volt, volt36_actual)
	volSel_36_last = volSel_36
end
				  
				  


-- bus 27 gauges
local volSel_27_last = get(bus27_volt_sel)
local ampSel_27_1_last = get(bus27_amp1_sel)
local ampSel_27_2_last = get(bus27_amp2_sel)
local volt27_timer = 0
local amp27_1_timer = 0
local amp27_2_timer = 0

local volt27_v = 0
local volt27_actual = -120

local amp27_1_v = 0
local amp27_1_actual = -99

local amp27_2_v = 0
local amp27_2_actual = -99

local volt27_table = {{ -5000, -120},    -- bugs workaround
				  { 0, -120 },   -- 
				  { 30, 120 },  -- 
          		  { 1000, 120 }}   -- bugs workaround

local amp27_table = {{ -5000, -120},    -- bugs workaround
				  { -40, -120 },
				  { 0, -99 },   -- 
				  { 400, 120 },  -- 
          		  { 1000, 120 }}   -- bugs workaround

local function bus27_gaug()

	local volSel_27 = get(bus27_volt_sel)
	local ampSel_27_1 = get(bus27_amp1_sel)
	local ampSel_27_2 = get(bus27_amp2_sel)
	
	volt27_timer = volt27_timer + passed
	amp27_1_timer = amp27_1_timer + passed
	amp27_2_timer = amp27_2_timer + passed
	
	-- play sounds and reset timers
	if volSel_27 ~= volSel_27_last then
		volt27_timer = 0
		--[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]]
	end
	if ampSel_27_1 ~= ampSel_27_1_last then
		amp27_1_timer = 0
		--[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]]
	end
	if ampSel_27_2 ~= ampSel_27_2_last then
		amp27_2_timer = 0
		--[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]]
	end
	
	volSel_27_last = volSel_27
	ampSel_27_1_last = ampSel_27_1
	ampSel_27_2_last = ampSel_27_2
	
	local volt27_angle = -120
	if volt27_timer < 0.05 then volt27_angle = -120
	elseif volSel_27 == 0 then volt27_angle = interpolate(volt27_table, get(bat_volt_1))
	elseif volSel_27 == 4 then volt27_angle = interpolate(volt27_table, get(bat_volt_2))
	elseif volSel_27 == 1 then volt27_angle = interpolate(volt27_table, get(bat_volt_3))
	elseif volSel_27 == 5 then volt27_angle = interpolate(volt27_table, get(bat_volt_4))
	elseif volSel_27 == 2 then volt27_angle = interpolate(volt27_table, get(bus27_volt_left))
	elseif volSel_27 == 3 then volt27_angle = interpolate(volt27_table, get(bus27_volt_right))
	end

	local amp27_1_angle = -99
	if amp27_1_timer < 0.05 then amp27_1_angle = -99
	elseif ampSel_27_1 == 0 then amp27_1_angle = interpolate(amp27_table, get(bat_amp_1) - get(bat_amp_cc_1))
	elseif ampSel_27_1 == 1 then amp27_1_angle = interpolate(amp27_table, get(bat_amp_3) - get(bat_amp_cc_3))
	elseif ampSel_27_1 == 2 then amp27_1_angle = interpolate(amp27_table, get(vu1_amp))
	elseif ampSel_27_1 == 3 then amp27_1_angle = interpolate(amp27_table, get(vu_res_amp))
	end

	local amp27_2_angle = -99
	if amp27_2_timer < 0.05 then amp27_2_angle = -99
	elseif ampSel_27_2 == 0 then amp27_2_angle = interpolate(amp27_table, get(bat_amp_2) - get(bat_amp_cc_2))
	elseif ampSel_27_2 == 1 then amp27_2_angle = interpolate(amp27_table, get(bat_amp_4) - get(bat_amp_cc_4))
	elseif ampSel_27_2 == 2 then amp27_2_angle = interpolate(amp27_table, get(vu2_amp))
	elseif ampSel_27_2 == 3 then amp27_2_angle = interpolate(amp27_table, get(vu_res_amp))
	end

	-- needles movements
	-- voltmeter
	local av27 = (volt27_angle - volt27_actual) * k1 -- needle acceleration
	volt27_v = volt27_v + av27 * passed -- needle speed
	
	volt27_v = volt27_v - sign(volt27_v) * math.min(k2 * passed, math.abs(volt27_v)*0.5) -- needle speed with friction
	-- limit the velocity
	if volt27_v > vlim then volt27_v = vlim
	elseif volt27_v < -vlim then volt27_v = -vlim end
	
	if passed == 0 then volt27_v = 0 end
	
	volt27_actual = volt27_actual + volt27_v	
	
	-- ampermeter 1
	local aa27_1 = (amp27_1_angle - amp27_1_actual) * k1 -- needle acceleration
	amp27_1_v = amp27_1_v + aa27_1 * passed -- needle speed
	
	amp27_1_v = amp27_1_v - sign(amp27_1_v) * math.min(k2 * passed, math.abs(amp27_1_v)*0.5) -- needle speed with friction
	-- limit the velocity
	if amp27_1_v > vlim then amp27_1_v = vlim
	elseif amp27_1_v < -vlim then amp27_1_v = -vlim end
	
	if passed == 0 then amp27_1_v = 0 end
	
	amp27_1_actual = amp27_1_actual + amp27_1_v	

	-- ampermeter 2
	local aa27_2 = (amp27_2_angle - amp27_2_actual) * k1 -- needle acceleration
	amp27_2_v = amp27_2_v + aa27_2 * passed -- needle speed
	
	amp27_2_v = amp27_2_v - sign(amp27_2_v) * math.min(k2 * passed, math.abs(amp27_2_v)*0.5) -- needle speed with friction
	-- limit the velocity
	if amp27_2_v > vlim then amp27_2_v = vlim
	elseif amp27_2_v < -vlim then amp27_2_v = -vlim end
	
	if passed == 0 then amp27_2_v = 0 end
	
	amp27_2_actual = amp27_2_actual + amp27_2_v	
		
	
	set(bus27_volt, volt27_actual)
	set(bus27_amp1, amp27_1_actual)
	set(bus27_amp2, amp27_2_actual)
	
end

-- switchers
	local gpu_sw_last = get(gpu_on)
	local apu_sw_last = get(apu_gen_on)
	local gen_1_last = get(gen_1_on)
	local gen_2_last = get(gen_2_on)
	local gen_3_last = get(gen_3_on)
	local pts_sw_last = get(pts250_sel)
	local pts_LR_last = get(bus36_tr_left_to_right)
	local pts_RL_last = get(bus36_tr_right_to_left)
	local pts_sw_on_last = get(pts250_on)
	local pts_mod_last = get(pts250_mode)
	local vu1_last = get(bus27_vu1)
	local vu2_last = get(bus27_vu2)
	local bat1_last = get(bat1_on)
	local bat2_last = get(bat2_on)
	local bat3_last = get(bat3_on)
	local bat4_last = get(bat4_on)
	local emerg_115_last = get(emerg_inv115)
	local bus_con_last = get(bus27_connect)	
	
local function swichers_check()

	local gpu_sw = get(gpu_on)
	local apu_sw = get(apu_gen_on)
	local gen_1 = get(gen_1_on)
	local gen_2 = get(gen_2_on)
	local gen_3 = get(gen_3_on)
	local pts_sw = get(pts250_sel)
	local pts_LR = get(bus36_tr_left_to_right)
	local pts_RL = get(bus36_tr_right_to_left)
	local pts_on_sw = get(pts250_on)
	local pts_mod = get(pts250_mode)
	local vu1 = get(bus27_vu1)
	local vu2 = get(bus27_vu2)
	local bat1 = get(bat1_on)
	local bat2 = get(bat2_on)
	local bat3 = get(bat3_on)
	local bat4 = get(bat4_on)
	
	local emerg_115 = get(emerg_inv115)
	local bus_con = get(bus27_connect)
	
	local sw_change = gpu_sw - gpu_sw_last + apu_sw - apu_sw_last + gen_1 - gen_1_last + gen_2 - gen_2_last + gen_3 - gen_3_last
	sw_change = sw_change + pts_sw - pts_sw_last + pts_LR - pts_LR_last + pts_RL - pts_RL_last + pts_on_sw - pts_sw_on_last + pts_mod - pts_mod_last
	sw_change = sw_change + vu1 - vu1_last + vu2 - vu2_last + bat1 - bat1_last + bat2 - bat2_last + bat3 - bat3_last + bat4 - bat4_last
	sw_change = sw_change + emerg_115 + bus_con - emerg_115_last - bus_con_last
	
	--if sw_change ~= 0 then  end -- play sound
	
	gpu_sw_last = gpu_sw
	apu_sw_last = apu_sw
	gen_1_last = gen_1
	gen_2_last = gen_2
	gen_3_last = gen_3
	pts_sw_last = pts_sw
	pts_LR_last = pts_LR
	pts_RL_last = pts_RL
	pts_sw_on_last = pts_on_sw
	pts_mod_last = pts_mod
	vu1_last = vu1
	vu2_last = vu2
	bat1_last = bat1
	bat2_last = bat2
	bat3_last = bat3
	bat4_last = bat4
	emerg_115_last = emerg_115
	bus_con_last = bus_con
	
	

end

-- caps
	local em115_cap_last = get(emerg_inv115_cap)
	local pts_on_cap_last = get(pts250_on_cap)
	local pts_mod_cap_last = get(pts250_mode_cap)
	local bus_con_cap_last = get(bus27_connect_cap)

local function caps_check()

	local em115_cap = get(emerg_inv115_cap)
	local pts_on_cap = get(pts250_on_cap)
	local pts_mod_cap = get(pts250_mode_cap)
	local bus_con_cap = get(bus27_connect_cap)
	
	local cap_change = em115_cap + pts_on_cap + pts_mod_cap + bus_con_cap - em115_cap_last - pts_on_cap_last - pts_mod_cap_last - bus_con_cap_last
	
	--if cap_change ~= 0 then  end -- play sound
	
	if em115_cap == 0 then set(emerg_inv115, 0) end
	if pts_on_cap == 0 then set(pts250_on, 0) end
	if pts_mod_cap == 0 then set(pts250_mode, 0) end
	if bus_con_cap == 0 then set(bus27_connect, 0) end
	
	em115_cap_last = em115_cap
	pts_on_cap_last = pts_on_cap
	pts_mod_cap_last = pts_mod_cap
	bus_con_cap_last = bus_con_cap
	

end

local function lamps()
	local lamps_brt = math.max((math.max(get(bus27_volt_right), get(bus27_volt_left))  - 10) / 18.5, 0)
	local test_btn = get(test_lamps) * math.max(get(bus27_volt_right)  - 10 / 18.5, 0)
		
	-- lamps logic
	local gpu_brt = math.max(get(gpu_work_bus) * lamps_brt, test_btn)
	
	local npk_brt = 0
	if get(bus115_1_volt) < 110 and get(bus115_3_volt) < 110 then npk_brt = 1 end
	npk_brt = math.max(npk_brt * lamps_brt, test_btn)
	
	local emerg115_brt = math.max(get(emerg_inv115) * (1 - get(inv115_fail)), test_btn) * lamps_brt
		
	local gen_1_brt = 0
	if get(gen1_volt) < 110 then gen_1_brt = 1 end
	gen_1_brt = math.max(gen_1_brt * lamps_brt, test_btn)

	local gen_2_brt = 0
	if get(gen2_volt) < 110 then gen_2_brt = 1 end
	gen_2_brt = math.max(gen_2_brt * lamps_brt, test_btn)

	local gen_3_brt = 0
	if get(gen3_volt) < 110 then gen_3_brt = 1 end
	gen_3_brt = math.max(gen_3_brt * lamps_brt, test_btn)	
	
	local bus_con_brt = math.max(get(buses_connected) * lamps_brt, test_btn)

	local left_bat_brt = 0
	if get(bus27_source_left) > 2 then left_bat_brt = math.max(get(bat1_on), get(bat3_on)) end
	left_bat_brt = math.max(left_bat_brt * lamps_brt, test_btn)
	
	local right_bat_brt = 0
	if get(bus27_source_right) > 2 then right_bat_brt = math.max(get(bat2_on), get(bat4_on)) end
	right_bat_brt = math.max(right_bat_brt * lamps_brt, test_btn)
	
	local bat_1_brt = 0
	if get(bat_therm_1) > 100 then bat_1_brt = 1 end
	bat_1_brt = math.max(bat_1_brt * lamps_brt, test_btn)
	
	local bat_2_brt = 0
	if get(bat_therm_2) > 100 then bat_2_brt = 1 end
	bat_2_brt = math.max(bat_2_brt * lamps_brt, test_btn)

	local bat_3_brt = 0
	if get(bat_therm_3) > 100 then bat_3_brt = 1 end
	bat_3_brt = math.max(bat_3_brt * lamps_brt, test_btn)

	local bat_4_brt = 0
	if get(bat_therm_4) > 100 then bat_4_brt = 1 end
	bat_4_brt = math.max(bat_4_brt * lamps_brt, test_btn)

	
	local left_VU_brt = math.max(get(vu_res_to_L) * lamps_brt, test_btn)
	local right_VU_brt = math.max(get(vu_res_to_R) * lamps_brt, test_btn)
	
	local L_R_brt = math.max(get(bus36_src_L) * lamps_brt, test_btn)
	local R_L_brt = math.max(get(bus36_src_R) * lamps_brt, test_btn)
	
	
	local pts_1_brt = math.max((1 - get(bus36_pts1_work)) * lamps_brt, test_btn)
	local pts_2_brt = math.max(get(bus36_pts2_work) * lamps_brt, test_btn)

	-- set results
	set(lamp_apu_gen_on, smooth_light(gpu_brt, get(lamp_apu_gen_on)))
	set(bus_npk_1, smooth_light(npk_brt, get(bus_npk_1)))
	set(bus_npk_2, smooth_light(npk_brt, get(bus_npk_2)))
	set(emerg_inv_115, smooth_light(emerg115_brt, get(emerg_inv_115)))
	set(gen_fail_1, smooth_light(gen_1_brt, get(gen_fail_1)))
	set(gen_fail_2, smooth_light(gen_2_brt, get(gen_fail_2)))
	set(gen_fail_3, smooth_light(gen_3_brt, get(gen_fail_3)))
	set(bus_connected, smooth_light(bus_con_brt, get(bus_connected)))
	set(left_bus_use_bat, smooth_light(left_bat_brt, get(left_bus_use_bat)))
	set(right_bus_use_bat, smooth_light(right_bat_brt, get(right_bus_use_bat)))
	
	set(turn_off_bat_1, smooth_light(bat_1_brt, get(turn_off_bat_1)))
	set(turn_off_bat_2, smooth_light(bat_2_brt, get(turn_off_bat_2)))
	set(turn_off_bat_3, smooth_light(bat_3_brt, get(turn_off_bat_3)))
	set(turn_off_bat_4, smooth_light(bat_4_brt, get(turn_off_bat_4)))
	
	set(vu_on_1, smooth_light(left_VU_brt,  get(vu_on_1)))
	set(vu_on_2, smooth_light(right_VU_brt, get(vu_on_2)))
	
	set(left_bus_on_tr2, smooth_light(L_R_brt,  get(left_bus_on_tr2)))
	set(right_bus_on_tr1, smooth_light(R_L_brt, get(right_bus_on_tr1)))
	set(pts250_n1, smooth_light(pts_1_brt, get(pts250_n1)))
	set(pts250_n2, smooth_light(pts_2_brt, get(pts250_n2)))
	
end

local sim_start_timer = 0

function update()
	
	--print(get(eng1_N1), "  ", get(eng2_N1), "  ", get(eng3_N1))
	
	passed = get(frame_time)
	
	-- reset switchers
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	
		--swichers_check() -- make them sound
		caps_check() -- make them sound
	end
	voltmetr115()
	ampermeter115()
	voltmeter36()
	bus27_gaug()
	lamps()
	
	-- set sim avionics
	if get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13 then
		set(sim_avionics, 1)
	else
		set(sim_avionics, 0)
	end
	

end
