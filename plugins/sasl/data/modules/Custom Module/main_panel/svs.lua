-- this is SVS logic

-- sources
defineProperty("mach_sim", globalPropertyf("sim/flightmodel/misc/machno")) -- Mach number

defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters
defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg

defineProperty("airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- indicated airspeed in KTS
defineProperty("true_airspeed", globalPropertyf("sim/flightmodel/position/true_airspeed")) -- indicated true airspeed in m/s

-- controls
defineProperty("svs_contr", globalPropertyi("tu154ce/buttons/ovhd/svs_contr")) -- кнопка контроля СВС
defineProperty("svs_on", globalPropertyi("tu154ce/switchers/ovhd/svs_on")) -- выключатель СВС
defineProperty("svs_heat", globalPropertyi("tu154ce/switchers/ovhd/svs_heat")) -- обогрев СВС

-- failures
defineProperty("rel_pitot", globalPropertyi("sim/operation/failures/rel_pitot")) -- Pitot 1 - Blockage
defineProperty("rel_pitot2", globalPropertyi("sim/operation/failures/rel_pitot2")) -- Pitot 2 - Blockage
defineProperty("static_fail_L", globalPropertyi("sim/operation/failures/rel_static"))  -- static fail
defineProperty("static_fail_R", globalPropertyi("sim/operation/failures/rel_static2"))  -- static fail
defineProperty("svs_fail", globalPropertyi("sim/operation/failures/rel_adc_comp"))  -- static fail

-- results
defineProperty("mach_svs", globalPropertyf("tu154ce/svs/machno")) -- Mach number
defineProperty("alt_svs", globalPropertyf("tu154ce/svs/altitude")) -- Altitude by 1013 hpa
defineProperty("tas_svs", globalPropertyf("tu154ce/svs/true_airspeed")) -- TAS

-- power
defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus36_volt", globalPropertyf("tu154ce/elec/bus36_volt_left")) -- напряжение сети 36
defineProperty("bus115_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в

defineProperty("svs27_cc", globalPropertyf("tu154ce/svs/power_27cc")) -- потребление тока
defineProperty("svs36_cc", globalPropertyf("tu154ce/svs/power_36cc")) -- потребление тока
defineProperty("svs115_cc", globalPropertyf("tu154ce/svs/power_115cc")) -- потребление тока


-- caps
defineProperty("sensors_caps", globalPropertyi("tu154ce/anim/sensors_caps"))  -- чехлы и крышки


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




--[[

local alt_kus_tbl = {{ -50000000, 0.5},    -- bugs workaround
				  { 0, 1 },    -- on standard pressure zero level
          		  {  2000, 1.0288 },
				  {  4000, 1.0571 },
				  {  6000, 1.0879 },
				  {  8000, 1.1205 },
				  {  10000, 1.1549 },
				  {  12000, 1.1901 },
				  {  14000, 1.2223 },
				  {  16000, 1.2558 },  
          		  {  18000, 1.2924 },   
          		  {  20000, 1.3341 },
				  {  22000, 1.3708 },
				  {  24000, 1.4154 },
				  {  26000, 1.4558 },
				  {  28000, 1.5005 },
				  {  30000, 1.5500 },
				  {  32000, 1.6039 },
				  {  34000, 1.6597 },
				  {  36000, 1.7164 },
				  {  38000, 1.7920 },
				  {  40000, 1.8762 },
				  {  42000, 1.9653 },
          		  {  10000000, 10 }}   -- linear above
				  
--]]

local mach = 0
local tas = 0
local altitude = 0

function update()
	
	-- power
	local power = get(svs_on) == 1 and get(bus27_volt) > 13 and get(bus36_volt) > 30 and get(bus115_volt) > 110 and get(svs_fail) == 0
	
	local test = power and get(svs_contr) == 1
	
	local heat = power and get(svs_heat) == 1
	
	--local blocked = get(sensors_caps) == 1
	
	-- current consumption
	local cc_27 = bool2int(power) * 10 + bool2int(test) * 4 + bool2int(heat) * 17
	local cc_other = bool2int(power)
	
	set(svs27_cc, cc_27)
	set(svs36_cc, cc_other * 1.5)
	set(svs115_cc, cc_other * 3.5)
	
	-- mach number
	local pitot_fail = (get(rel_pitot) == 6 and get(rel_pitot2) == 6)
	if not pitot_fail and power then mach = get(mach_sim) end
	
	if test then mach = 0.8 end -- svs control check

	
	
	-- altitude
	local alt_QNE = get(msl_alt) * 3.28083 + (29.92 - get(msl_press)) * 1000  -- calculate altitude in feet above standart pressure
	local static_fail = (get(static_fail_L) == 6 and get(static_fail_R) == 6)
	
	if power and not static_fail then altitude = alt_QNE * 0.3048 end
	
	if test then altitude = 12000 end
	
	
	
		
	-- TAS
	-- local alt_tas_coef = interpolate(alt_kus_tbl, alt_QNE)	
	
	if power and not pitot_fail then tas = get(true_airspeed) * 3.6 end --get(airspeed) * alt_tas_coef * 1.852 end
	
	if tas < 180 then tas = 0 end
		
	if test then tas = 900 end

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	
	
	-- results
	set(mach_svs, mach)
	set(alt_svs, altitude)	
	set(tas_svs, tas)

end



end


