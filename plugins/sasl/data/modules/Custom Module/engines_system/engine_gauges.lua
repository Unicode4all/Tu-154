-- this is engine's gauges logic
defineProperty("xp_version", globalPropertyi("sim/version/xplane_internal_version"))
-- controls
defineProperty("control_ut", globalPropertyi("tu154ce/buttons/eng/control_ut")) -- кнопка контроль УТ
defineProperty("control_vibro_1", globalPropertyi("tu154ce/buttons/eng/control_vibro_1")) -- кнопка контроль вибрации
defineProperty("control_vibro_2", globalPropertyi("tu154ce/buttons/eng/control_vibro_2")) -- кнопка контроль вибрации
defineProperty("control_vibro_3", globalPropertyi("tu154ce/buttons/eng/control_vibro_3")) -- кнопка контроль вибрации
defineProperty("vibro_sel_1", globalPropertyi("tu154ce/switchers/eng/vibro_sel_1")) -- переключатель прибора вибрации
defineProperty("vibro_sel_2", globalPropertyi("tu154ce/switchers/eng/vibro_sel_2")) -- переключатель прибора вибрации
defineProperty("vibro_sel_3", globalPropertyi("tu154ce/switchers/eng/vibro_sel_3")) -- переключатель прибора вибрации

defineProperty("fuel_meter_on", globalPropertyi("tu154ce/switchers/fuel/fuel_meter_mech_on")) -- расходомер

defineProperty("gauges_on_1", globalPropertyi("tu154ce/switchers/eng/gauges_on_1")) -- приборы контроля двигателей
defineProperty("gauges_on_2", globalPropertyi("tu154ce/switchers/eng/gauges_on_2")) -- приборы контроля двигателей
defineProperty("gauges_on_3", globalPropertyi("tu154ce/switchers/eng/gauges_on_3")) -- приборы контроля двигателей

-- gauges
defineProperty("rpm_low_1", globalPropertyf("tu154ce/gauges/engine/rpm_low_1")) -- обороты турбины низкого давления №1
defineProperty("rpm_low_2", globalPropertyf("tu154ce/gauges/engine/rpm_low_2")) -- обороты турбины низкого давления №2
defineProperty("rpm_low_3", globalPropertyf("tu154ce/gauges/engine/rpm_low_3")) -- обороты турбины низкого давления №3
defineProperty("rpm_high_1", globalPropertyf("tu154ce/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154ce/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154ce/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

defineProperty("egt_1", globalPropertyf("tu154ce/gauges/eng/egt_1")) -- ТВГ двиг 1
defineProperty("egt_2", globalPropertyf("tu154ce/gauges/eng/egt_2")) -- ТВГ двиг 2
defineProperty("egt_3", globalPropertyf("tu154ce/gauges/eng/egt_3")) -- ТВГ двиг 3

defineProperty("fuel_press_1", globalPropertyf("tu154ce/gauges/eng/fuel_press_1")) -- давление топлива двиг 1
defineProperty("fuel_press_2", globalPropertyf("tu154ce/gauges/eng/fuel_press_2")) -- давление топлива двиг 2
defineProperty("fuel_press_3", globalPropertyf("tu154ce/gauges/eng/fuel_press_3")) -- давление топлива двиг 3

defineProperty("oil_press_1", globalPropertyf("tu154ce/gauges/eng/oil_press_1")) -- давление масла двиг 1
defineProperty("oil_press_2", globalPropertyf("tu154ce/gauges/eng/oil_press_2")) -- давление масла двиг 2
defineProperty("oil_press_3", globalPropertyf("tu154ce/gauges/eng/oil_press_3")) -- давление масла двиг 3

defineProperty("oil_temp_1", globalPropertyf("tu154ce/gauges/eng/oil_temp_1")) -- температура масла двиг 1
defineProperty("oil_temp_2", globalPropertyf("tu154ce/gauges/eng/oil_temp_2")) -- температура масла двиг 2
defineProperty("oil_temp_3", globalPropertyf("tu154ce/gauges/eng/oil_temp_3")) -- температура масла двиг 3

defineProperty("fuel_flow_1", globalPropertyf("tu154ce/gauges/eng/fuel_flow_1")) -- расход топлива двиг 1
defineProperty("fuel_flow_2", globalPropertyf("tu154ce/gauges/eng/fuel_flow_2")) -- расход топлива двиг 2
defineProperty("fuel_flow_3", globalPropertyf("tu154ce/gauges/eng/fuel_flow_3")) -- расход топлива двиг 3

defineProperty("vibra_1", globalPropertyf("tu154ce/gauges/eng/vibra_1")) -- вибрация двиг 1
defineProperty("vibra_2", globalPropertyf("tu154ce/gauges/eng/vibra_2")) -- вибрация двиг 2
defineProperty("vibra_3", globalPropertyf("tu154ce/gauges/eng/vibra_3")) -- вибрация двиг 3


defineProperty("oil_qty_1", globalPropertyf("tu154ce/gauges/eng/oil_qty_1")) -- количество масла
defineProperty("oil_qty_2", globalPropertyf("tu154ce/gauges/eng/oil_qty_2")) -- количество масла
defineProperty("oil_qty_3", globalPropertyf("tu154ce/gauges/eng/oil_qty_3")) -- количество масла

defineProperty("fuel_temp_1", globalPropertyf("tu154ce/gauges/eng/fuel_temp_1")) -- температура топлива
defineProperty("fuel_temp_2", globalPropertyf("tu154ce/gauges/eng/fuel_temp_2")) -- температура топлива


-- sources
defineProperty("sim_egt_1", globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[0]")) -- EGT from sim
defineProperty("sim_egt_2", globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[1]")) -- EGT from sim
defineProperty("sim_egt_3", globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[2]")) -- EGT from sim

defineProperty("ENGN_FF_1", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]")) -- FF from sim kg/second
defineProperty("ENGN_FF_2", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]")) -- FF from sim kg/second
defineProperty("ENGN_FF_3", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[2]")) -- FF from sim kg/second

defineProperty("fuel_p_1", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[0]"))
defineProperty("fuel_p_2", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[1]"))
defineProperty("fuel_p_3", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[2]"))

defineProperty("oil_p_1", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[0]"))
defineProperty("oil_p_2", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[1]"))
defineProperty("oil_p_3", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[2]"))

defineProperty("oil_t_1", globalProperty("sim/cockpit2/engine/indicators/oil_temperature_deg_C[0]"))
defineProperty("oil_t_2", globalProperty("sim/cockpit2/engine/indicators/oil_temperature_deg_C[1]"))
defineProperty("oil_t_3", globalProperty("sim/cockpit2/engine/indicators/oil_temperature_deg_C[2]"))

defineProperty("vibration_1", globalPropertyf("tu154ce/eng/vibration_1")) -- вибрация двигателя
defineProperty("vibration_2", globalPropertyf("tu154ce/eng/vibration_2")) -- вибрация двигателя
defineProperty("vibration_3", globalPropertyf("tu154ce/eng/vibration_3")) -- вибрация двигателя

defineProperty("engn_oil_qty_1", globalPropertyf("tu154ce/failures/engn_oil_qty_1")) -- остаток масла
defineProperty("engn_oil_qty_2", globalPropertyf("tu154ce/failures/engn_oil_qty_2")) -- остаток масла
defineProperty("engn_oil_qty_3", globalPropertyf("tu154ce/failures/engn_oil_qty_3")) -- остаток масла





-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("eng1_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]")) -- engine 1 rpm
defineProperty("eng2_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]")) -- engine 2 rpm
defineProperty("eng3_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]")) -- engine 3 rpm

defineProperty("comsta0", globalPropertyi("sim/operation/failures/rel_comsta0")) -- compressor stall
defineProperty("comsta1", globalPropertyi("sim/operation/failures/rel_comsta1"))
defineProperty("comsta2", globalPropertyi("sim/operation/failures/rel_comsta2"))


-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("emerg_inv115", globalPropertyi("tu154ce/switchers/eng/emerg_inv115")) -- аварийн. преобраз 115в

defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))

defineProperty("bus36_volt_left", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав

defineProperty("thermo", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) -- outside temperature

defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- barometric alt. maybe in feet, maybe in meters.
defineProperty("baro_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg

-- failures
defineProperty("fuel_flowmeter_1_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_1_fail"))
defineProperty("fuel_flowmeter_2_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_2_fail"))
defineProperty("fuel_flowmeter_3_fail", globalPropertyi("tu154ce/failures/fuel_flowmeter_3_fail"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




-- test
--defineProperty("fuel_pump_1", globalPropertyi("sim/operation/failures/rel_fuepmp1")) 
--set(fuel_pump_1, 6)

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

local MASTER = get(ismaster) ~= 1	

local passed = get(frame_time)

local power_27_L = get(bus27_volt_left) > 13
local power_27_R = get(bus27_volt_right) > 13
local power_36_L = get(bus36_volt_left) > 30
local power_36_R = get(bus36_volt_right) > 30
local power_115 = get(bus115_1_volt) > 110

local gau_1_on = get(gauges_on_1)
local gau_2_on = get(gauges_on_2)
local gau_3_on = get(gauges_on_3)

-- vibration gauges


local vibr_1_actual = 0
local vibr_2_actual = 0
local vibr_3_actual = 0

local function vibra_gau()

	local vibr_1 = 0
	local vibr_2 = 0
	local vibr_3 = 0
	
	local vibrat_1 = get(vibration_1)
	local vibrat_2 = get(vibration_2)
	local vibrat_3 = get(vibration_3)
	
	if power_27_L then
		if get(control_vibro_1) == 1 then
			vibr_1 = 95 * gau_1_on
		elseif get(vibro_sel_1) == 0 then
			vibr_1 = vibrat_1 * gau_1_on * 0.95
		else
			vibr_1 = vibrat_1 * gau_1_on 
		end
	end
	
	if power_27_R then
		if get(control_vibro_2) == 1 then
			vibr_2 = 95 * gau_2_on
		elseif get(vibro_sel_2) == 0 then
			vibr_2 = vibrat_2 * gau_2_on * 0.95
		else
			vibr_2 = vibrat_2 * gau_2_on
		end		
		
		if get(control_vibro_3) == 1 then
			vibr_3 = 95 * gau_3_on
		elseif get(vibro_sel_3) == 0 then
			vibr_3 = vibrat_3 * gau_3_on * 0.95
		else
			vibr_3 = vibrat_3 * gau_3_on
		end
	end
	
	-- smooth movement
	vibr_1_actual = vibr_1_actual + (vibr_1 - vibr_1_actual) * passed * 3
	vibr_2_actual = vibr_2_actual + (vibr_2 - vibr_2_actual) * passed * 3
	vibr_3_actual = vibr_3_actual + (vibr_3 - vibr_3_actual) * passed * 3

	-- set results
	set(vibra_1, vibr_1_actual)
	set(vibra_2, vibr_2_actual)
	set(vibra_3, vibr_3_actual)


end







-- 3 needle gauges

local fuelP_1_actual = 0
local fuelP_2_actual = 0
local fuelP_3_actual = 0

local oilP_1_actual = 0
local oilP_2_actual = 0
local oilP_3_actual = 0

local oilT_1_actual = 0
local oilT_2_actual = 0
local oilT_3_actual = 0

local fuel_P_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- zero pressure
				  {  40, 30 }, --
				  {  50, 40 }, -- 
           	      {  60, 60 }, -- 
				  {  100, 100 },    -- 
          	      {  1000000000, 110 }}    -- bugs walkaround	

local oil_P_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- zero pressure
				  {  15, 30 }, -- 
           	      {  45, 41 }, -- 
				  {  80, 80 },    -- 
          	      {  1000000000, 110 }}    -- bugs walkaround	

local function emi3()
	

	local fuelP_1 = 0
	local fuelP_2 = 0
	local fuelP_3 = 0
	
	local oilP_1 = 0
	local oilP_2 = 0
	local oilP_3 = 0
	
	local oilT_1 = -50
	local oilT_2 = -50
	local oilT_3 = -50
	
	if power_36_L then 
		fuelP_1 = interpolate(fuel_P_table, get(fuel_p_1))-- * gau_1_on
		oilP_1 = interpolate(oil_P_table, get(oil_p_1)) * 0.1-- * gau_1_on 
	end	
	
	if power_36_R then
		fuelP_2 = interpolate(fuel_P_table, get(fuel_p_2))-- * gau_2_on
		fuelP_3 = interpolate(fuel_P_table, get(fuel_p_3))-- * gau_3_on
		
		oilP_2 = interpolate(oil_P_table, get(oil_p_2)) * 0.1-- * gau_2_on
		oilP_3 = interpolate(oil_P_table, get(oil_p_3)) * 0.1-- * gau_3_on
	end
	
	if power_27_L then --and gau_1_on == 1 then
		oilT_1 = get(oil_t_1)
	end

	if power_27_R then --and gau_2_on == 1 then
		oilT_2 = get(oil_t_2)
	end

	if power_27_R then --and gau_3_on == 1 then
		oilT_3 = get(oil_t_3)
	end	
	--oilP_2 = get(oil_p_2) * 0.1
	-- smooth movements
	fuelP_1_actual = fuelP_1_actual + (fuelP_1 - fuelP_1_actual) * passed * 3
	fuelP_2_actual = fuelP_2_actual + (fuelP_2 - fuelP_2_actual) * passed * 3
	fuelP_3_actual = fuelP_3_actual + (fuelP_3 - fuelP_3_actual) * passed * 3
	
	oilP_1_actual = oilP_1_actual + (oilP_1 - oilP_1_actual) * passed * 3
	oilP_2_actual = oilP_2_actual + (oilP_2 - oilP_2_actual) * passed * 3
	oilP_3_actual = oilP_3_actual + (oilP_3 - oilP_3_actual) * passed * 3
	
	oilT_1_actual = oilT_1_actual + (oilT_1 - oilT_1_actual) * passed * 3
	oilT_2_actual = oilT_2_actual + (oilT_2 - oilT_2_actual) * passed * 3
	oilT_3_actual = oilT_3_actual + (oilT_3 - oilT_3_actual) * passed * 3
	
	-- set results
	set(fuel_press_1, fuelP_1_actual)
	set(fuel_press_2, fuelP_2_actual)
	set(fuel_press_3, fuelP_3_actual)
	
	set(oil_press_1, oilP_1_actual)
	set(oil_press_2, oilP_2_actual)
	set(oil_press_3, oilP_3_actual)
	
	set(oil_temp_1, oilT_1_actual)
	set(oil_temp_2, oilT_2_actual)
	set(oil_temp_3, oilT_3_actual)


end




-- EGT
local egt_1_actual = 0
local egt_2_actual = 0
local egt_3_actual = 0

local EGT_gau_on_L = 0
local EGT_gau_on_R = 0

local function egt_gauges()
	
	-- check power for EGT gauges

	local emerg_sw = get(emerg_inv115) == 1
	
	local power_L = power_27_L and (power_115 or ((power_27_L or power_27_R) and emerg_sw))
	local power_R = power_27_R and (power_115 or ((power_27_L or power_27_R) and emerg_sw))
	
	local egt_1_need = 0
	local egt_2_need = 0
	local egt_3_need = 0
	
	local stall_1 = 0
	if get(comsta0) == 6 then stall_1 = 1 end
	local stall_2 = 0
	if get(comsta1) == 6 then stall_2 = 1 end
	local stall_3 = 0
	if get(comsta2) == 6 then stall_3 = 1 end
	
	local test_button = get(control_ut) == 1
	
	if power_L then
		egt_1_need = get(sim_egt_1) * (1 + stall_1 * 1)
		if test_button then egt_1_need = 120 end
		EGT_gau_on_L = 1
	else
		EGT_gau_on_L = 0
	end
	if power_R then
		egt_2_need = get(sim_egt_2) * (1 + stall_2 * 1)
		egt_3_need = get(sim_egt_3) * (1 + stall_3 * 1)
		if test_button then egt_2_need = 140 end
		if test_button then egt_3_need = 130 end
		EGT_gau_on_R = 1
	else
		EGT_gau_on_R = 0
	end	
	
	-- smooth needle movement
	egt_1_actual = egt_1_actual + (egt_1_need - egt_1_actual) * passed
	egt_2_actual = egt_2_actual + (egt_2_need - egt_2_actual) * passed
	egt_3_actual = egt_3_actual + (egt_3_need - egt_3_actual) * passed
	
	set(egt_1, egt_1_actual)
	set(egt_2, egt_2_actual)
	set(egt_3, egt_3_actual)

end


-- fuel flow meters
local FF_1 = 200
local FF_2 = 200
local FF_3 = 200

local FF_1_act = 200
local FF_2_act = 200
local FF_3_act = 200

local fuel_flow_gau_on = 0

local function fuel_flow()
	
	-- check power for gauges
	local power = power_27_R and power_115 and get(fuel_meter_on) == 1
	
	if power then 
		FF_1 = get(ENGN_FF_1) * 3600 * (1 - get(fuel_flowmeter_1_fail))
		FF_2 = get(ENGN_FF_2) * 3600 * (1 - get(fuel_flowmeter_2_fail))
		FF_3 = get(ENGN_FF_3) * 3600 * (1 - get(fuel_flowmeter_3_fail))
		fuel_flow_gau_on = 1
	else
		fuel_flow_gau_on = 0
	end
	
	-- set limits
	if FF_1 < 200 then FF_1 = 200 end
	if FF_2 < 200 then FF_2 = 200 end
	if FF_3 < 200 then FF_3 = 200 end
	
	-- set smooth
	FF_1_act = FF_1_act + (FF_1 - FF_1_act) * passed * 3
	FF_2_act = FF_2_act + (FF_2 - FF_2_act) * passed * 3
	FF_3_act = FF_3_act + (FF_3 - FF_3_act) * passed * 3
	
	set(fuel_flow_1, FF_1_act)
	set(fuel_flow_2, FF_2_act)
	set(fuel_flow_3, FF_3_act)

end

-- tachometers
local eng1_1_ang_act = 0
local eng2_1_ang_act = 0
local eng3_1_ang_act = 0

local eng1_2_ang_act = 0
local eng2_2_ang_act = 0
local eng3_2_ang_act = 0

-- tables for engine gauges on ground, +15ºC
local high_table_start = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 3, 0 },   -- needle movements
				  { 4, 5 },   --
				  { 6, -1 },   --
				  { 8, 12 },   --
				  { 10, 5 },   --
				  { 12, 10 },   --
				  { 23, 21 },   --
				  {  71.3, 60.5 }, -- IDLE - 940 kgs - 2072
				  {  84.0, 82.5 }, -- 0.42 - flight idle - 4000 kgs - 8818
				  {  89, 86.5 }, -- 0.6 - 5700 kgs - 12566
				  {  91.3, 88.75 }, -- 0.7 - 6650 kgs - 14660
				  {  95.7, 91.9 }, -- 0.9 - 8550 kgs - 18849
				  {  97.4, 93.5 }, -- nominal - 9500 kgs  - 20943
				  {  99, 95 }, -- TO - 10500 kgs = 10500 kgs - 23148
           	      {  110, 105 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround
				  
local high_gnd_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 23, 21 },   --
				  {  71.3, 60.5 }, -- IDLE - 940 kgs - 0.04
				  {  84.0, 82.5 }, -- 0.42 - flight idle - 4000 kgs - 0.38
				  {  89, 86.5 }, -- 0.6 - 5700 kgs - 0.55
				  {  91.3, 88.75 }, -- 0.7 - 6650 kgs - 0.637
				  {  95.7, 91.9 }, -- 0.9 - 8550 kgs - 0.805
				  {  97.4, 93.5 }, -- nominal - 9500 kgs  - 0.886
				  {  99, 95 }, -- TO - 10500 kgs = 10500 kgs - 0.95
           	      {  110, 105 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround

local low_gnd_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- IDLE
				  {  1, 3 }, 
				  {  36.3, 30 }, -- IDLE
				  {  59.3, 59 }, -- 0.42 - flight idle
				  {  70.5, 68.5 }, -- 0.6
				  {  76.2, 72.5 }, -- 0.7
				  {  87.5, 80 }, -- 0.9
				  {  92.4, 83.5 }, -- nominal
           	      {  97, 86.75 }, -- TO
				  {  110, 98 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround				  
				  

				  
				  
				  
-- high altitude tables
-- sim N2
local high_table_start_11km = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 3, 0 },   -- needle movements
				  { 4, 5 },   --
				  { 6, -1 },   --
				  { 8, 12 },   --
				  { 10, 5 },   --
				  { 12, 10 },   --
				  { 23, 21 },   --
				  {  82.4, 78.0 }, -- IDLE - 8.75 kN - 1967 lb
				  {  86.7, 82.25 }, -- 0.42 - flight idle - 12.5 kN - 2810 lb
				  {  92.9, 86.75 }, -- 0.6 - 19.7 kN - 4429 lb
				  {  95.2, 88.75 }, -- 0.7 - 22.9 kN - 5148 lb
				  {  98.3, 92.5 }, -- 0.9 - 27.5 kN - 6182 lb
				  {  99.3, 94.0 }, -- nominal - 29.2 kN - 6564 lb
				  {  100.9, 96.5 }, -- TO - 32 kN - 7194 lb
           	      {  110, 100 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround

-- sim N2				  
local high_11km_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- STOP
				  { 23, 21 },   --
				  {  82.4, 78.0 }, -- IDLE - 8.75 kN - 1967 lb
				  {  86.7, 82.25 }, -- 0.42 - flight idle - 12.5 kN - 2810 lb
				  {  92.9, 86.75 }, -- 0.6 - 19.7 kN - 4429 lb
				  {  95.2, 88.75 }, -- 0.7 - 22.9 kN - 5148 lb
				  {  98.3, 92.5 }, -- 0.9 - 27.5 kN - 6182 lb
				  {  99.3, 94.0 }, -- nominal - 29.2 kN - 6564 lb
				  {  100.9, 96.5 }, -- TO - 32 kN - 7194 lb
           	      {  110, 100 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround

-- sim N1
local low_11km_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- STOP
				  {  1, 3 }, 
				  {  55.9, 63.0 }, -- IDLE
				  {  65.3, 69.25 }, -- 0.42 - flight idle
				  {  80.2, 77.5 }, -- 0.6
				  {  86.3, 81 }, -- 0.7
				  {  94.8, 86.75 }, -- 0.9
				  {  97.8, 89.25 }, -- nominal
           	      {  102.8, 94.25 }, -- TO
				  {  110, 100 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround


				  
				  
				  
				  
				  
				  
				  
				  
local XP11 = get(xp_version) > 11000				  

if XP11 then

-- tables for engine gauges on ground, +15ºC
high_table_start = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 3, 0 },   -- needle movements
				  { 4, 5 },   --
				  { 6, -1 },   --
				  { 8, 12 },   --
				  { 10, 5 },   --
				  { 12, 10 },   --
				  { 23, 21 },   --
				  {  73.78, 60.5 }, -- IDLE - 940 kgs - 2072
				  {  89.46, 82.5 }, -- 0.42 - flight idle - 4000 kgs - 8818
				  {  93.1, 86.5 }, -- 0.6 - 5700 kgs - 12566
				  {  94.88, 88.75 }, -- 0.7 - 6650 kgs - 14660
				  {  97.46, 91.9 }, -- 0.9 - 8550 kgs - 18849
				  {  98.47, 93.5 }, -- nominal - 9500 kgs  - 20943
				  {  99.52, 95 }, -- TO - 10500 kgs = 10500 kgs - 23148
           	      {  110, 105 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround
				  
high_gnd_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 23, 21 },   --
				  {  73.78, 60.5 }, -- IDLE - 940 kgs - 0.04
				  {  89.46, 82.5 }, -- 0.42 - flight idle - 4000 kgs - 0.38
				  {  93.1, 86.5 }, -- 0.6 - 5700 kgs - 0.55
				  {  94.88, 88.75 }, -- 0.7 - 6650 kgs - 0.637
				  {  97.46, 91.9 }, -- 0.9 - 8550 kgs - 0.805
				  {  98.47, 93.5 }, -- nominal - 9500 kgs  - 0.886
				  {  99.52, 95 }, -- TO - 10500 kgs = 10500 kgs - 0.95
           	      {  110, 105 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround

low_gnd_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- IDLE
				  {  1, 3 }, 
				  {  34.5, 30 }, -- IDLE
				  {  67.72, 59 }, -- 0.42 - flight idle
				  {  77.82, 68.5 }, -- 0.6
				  {  83.2, 72.5 }, -- 0.7
				  {  91.38, 80 }, -- 0.9
				  {  94.74, 83.5 }, -- nominal
           	      {  98.32, 86.75 }, -- TO
				  {  110, 98 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround				  
				  

				  
				  
				  
-- high altitude tables
-- sim N2
high_table_start_11km = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 3, 0 },   -- needle movements
				  { 4, 5 },   --
				  { 6, -1 },   --
				  { 8, 12 },   --
				  { 10, 5 },   --
				  { 12, 10 },   --
				  { 23, 21 },   --
				  {  89.67, 78.0 }, -- IDLE - 8.75 kN - 1967 lb
				  {  92.83, 82.25 }, -- 0.42 - flight idle - 12.5 kN - 2810 lb
				  {  96.94, 86.75 }, -- 0.6 - 19.7 kN - 4429 lb
				  {  98.31, 88.75 }, -- 0.7 - 22.9 kN - 5148 lb
				  {  99.95, 92.5 }, -- 0.9 - 27.5 kN - 6182 lb
				  {  100.5, 94.0 }, -- nominal - 29.2 kN - 6564 lb
				  {  101.3, 96.5 }, -- TO - 32 kN - 7194 lb
           	      {  110, 100 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround

-- sim N2				  
high_11km_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- STOP
				  { 23, 21 },   --
				  {  89.67, 78.0 }, -- IDLE - 8.75 kN - 1967 lb
				  {  92.83, 82.25 }, -- 0.42 - flight idle - 12.5 kN - 2810 lb
				  {  96.94, 86.75 }, -- 0.6 - 19.7 kN - 4429 lb
				  {  98.31, 88.75 }, -- 0.7 - 22.9 kN - 5148 lb
				  {  99.95, 92.5 }, -- 0.9 - 27.5 kN - 6182 lb
				  {  100.5, 94.0 }, -- nominal - 29.2 kN - 6564 lb
				  {  101.3, 96.5 }, -- TO - 32 kN - 7194 lb
           	      {  110, 100 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround

-- sim N1
low_11km_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- STOP
				  {  1, 3 }, 
				  {  68.27, 63.0 }, -- IDLE
				  {  77.08, 69.25 }, -- 0.42 - flight idle
				  {  89.68, 77.5 }, -- 0.6
				  {  94.22, 81 }, -- 0.7
				  {  99.75, 86.75 }, -- 0.9
				  {  101.77, 89.25 }, -- nominal
           	      {  104.9, 94.25 }, -- TO
				  {  110, 100 },    -- 
          	      {  1000000000, 100 }}    -- bugs walkaround

end






			  
local rpm_1_last = get(eng1_N2)
local rpm_2_last = get(eng2_N2)
local rpm_3_last = get(eng3_N2)

-- идея в том, чтобы вычислить два интерполированых значения и затем линейно интерполировать их по высоте.

local function tachometers()
	
	local alt = get(msl_alt) * 3.28083 -- MSL alt in feet
	local alt_baro = alt * 0.3048 + (29.92 - get(baro_press)) * 1000 * 0.3048 -- in meters
	
	
if MASTER then	
	
	-- high pressure turbine
	rpm_1 = get(eng1_N2)
	rpm_2 = get(eng2_N2)
	rpm_3 = get(eng3_N2)
	
	local eng1_N1_need = line(alt_baro, 0, interpolate(high_table_start, rpm_1), 11000, interpolate(high_table_start_11km, rpm_1))
	if rpm_1 < rpm_1_last then eng1_N1_need = line(alt_baro, 0, interpolate(high_gnd_table, rpm_1), 11000, interpolate(high_11km_table, rpm_1)) end
	eng1_1_ang_act = eng1_1_ang_act + (eng1_N1_need - eng1_1_ang_act) * passed * 5
	set(rpm_high_1, eng1_1_ang_act)
	
	local eng2_N1_need = line(alt_baro, 0, interpolate(high_table_start, rpm_2), 11000, interpolate(high_table_start_11km, rpm_2))
	if rpm_2 < rpm_2_last then eng2_N1_need = line(alt_baro, 0, interpolate(high_gnd_table, rpm_2), 11000, interpolate(high_11km_table, rpm_2)) end
	eng2_1_ang_act = eng2_1_ang_act + (eng2_N1_need - eng2_1_ang_act) * passed * 5
	set(rpm_high_2, eng2_1_ang_act)	
	
	local eng3_N1_need = line(alt_baro, 0, interpolate(high_table_start, rpm_3), 11000, interpolate(high_table_start_11km, rpm_3))
	if rpm_3 < rpm_3_last then eng3_N1_need = line(alt_baro, 0, interpolate(high_gnd_table, rpm_3), 11000, interpolate(high_11km_table, rpm_3)) end
	eng3_1_ang_act = eng3_1_ang_act + (eng3_N1_need - eng3_1_ang_act) * passed * 5
	set(rpm_high_3, eng3_1_ang_act)

	rpm_1_last = rpm_1
	rpm_2_last = rpm_2
	rpm_3_last = rpm_3
	
	
	
	-- low pressure turbine
	local eng1_N2_need = line(alt_baro, 0, interpolate(low_gnd_table, get(eng1_N1)), 11000, interpolate(low_11km_table, get(eng1_N1)))
	eng1_2_ang_act = eng1_2_ang_act + (eng1_N2_need - eng1_2_ang_act) * passed * 5
	set(rpm_low_1, eng1_2_ang_act)
	
	local eng2_N2_need = line(alt_baro, 0, interpolate(low_gnd_table, get(eng2_N1)), 11000, interpolate(low_11km_table, get(eng2_N1)))
	eng2_2_ang_act = eng2_2_ang_act + (eng2_N2_need - eng2_2_ang_act) * passed * 5
	set(rpm_low_2, eng2_2_ang_act)	
	
	local eng3_N2_need = line(alt_baro, 0, interpolate(low_gnd_table, get(eng3_N1)), 11000, interpolate(low_11km_table, get(eng3_N1)))
	eng3_2_ang_act = eng3_2_ang_act + (eng3_N2_need - eng3_2_ang_act) * passed * 5
	set(rpm_low_3, eng3_2_ang_act)

end

end



------------------------
-- fake gauges --
------------------------

local oil_qty_act_1 = 4
local oil_qty_act_2 = 4
local oil_qty_act_3 = 4





local function oil_qty_gau()
	
	local oil_now_1 = get(engn_oil_qty_1)
	local oil_now_2 = get(engn_oil_qty_2)
	local oil_now_3 = get(engn_oil_qty_3)
	
	
	local qty_1 = 4
	local qty_2 = 4
	local qty_3 = 4
	
	if power_36_L and power_36_R then
		qty_1 = oil_now_1 - rpm_1_last * 0.05
		qty_2 = oil_now_2 - rpm_2_last * 0.05
		qty_3 = oil_now_3 - rpm_3_last * 0.05
	else
		qty_1 = 4
		qty_2 = 4
		qty_3 = 4
	end
	
	if get(gauges_on_1) == 0 then qty_1 = 4 end
	if get(gauges_on_2) == 0 then qty_2 = 4 end
	if get(gauges_on_3) == 0 then qty_3 = 4 end
	
	
	oil_qty_act_1 = oil_qty_act_1 + (qty_1 - oil_qty_act_1) * passed
	oil_qty_act_2 = oil_qty_act_2 + (qty_2 - oil_qty_act_2) * passed
	oil_qty_act_3 = oil_qty_act_3 + (qty_3 - oil_qty_act_3) * passed
	
	
	set(oil_qty_1, math.max(4, oil_qty_act_1))
	set(oil_qty_2, math.max(4, oil_qty_act_2))
	set(oil_qty_3, math.max(4, oil_qty_act_3))
	


end


local fuel_temp_act_1 = 0
local fuel_temp_act_2 = 0

local function fuel_temp_gau()

	local air_temp = get(thermo)
	
	if power_27_R then 
		fuel_temp_act_1 = fuel_temp_act_1 + (air_temp - fuel_temp_act_1) * passed
		fuel_temp_act_2 = fuel_temp_act_2 + (air_temp - fuel_temp_act_2) * passed
	else
		fuel_temp_act_1 = fuel_temp_act_1 + (0 - fuel_temp_act_1) * passed
		fuel_temp_act_2 = fuel_temp_act_2 + (0 - fuel_temp_act_2) * passed
	
	end

	if fuel_temp_act_1 > 65 then fuel_temp_act_1 = 65
	elseif fuel_temp_act_1 < -65 then fuel_temp_act_1 = -65 end
	
	if fuel_temp_act_2 > 65 then fuel_temp_act_2 = 65
	elseif fuel_temp_act_2 < -65 then fuel_temp_act_2 = -65 end

	set(fuel_temp_1, fuel_temp_act_1)
	set(fuel_temp_2, fuel_temp_act_2)


end




function update()
	passed = get(frame_time)
	
	MASTER = get(ismaster) ~= 1	
	
	
	power_27_L = get(bus27_volt_left) > 13
	power_27_R = get(bus27_volt_right) > 13
	power_115 = get(bus115_1_volt) > 110
	power_36_L = get(bus36_volt_left) > 30
	power_36_R = get(bus36_volt_right) > 30
	
	gau_1_on = get(gauges_on_1)
	gau_2_on = get(gauges_on_2) 
	gau_3_on = get(gauges_on_3)
	
	tachometers()
	egt_gauges()
	emi3()	
	fuel_flow()
	vibra_gau()
	oil_qty_gau()
	fuel_temp_gau()

end
