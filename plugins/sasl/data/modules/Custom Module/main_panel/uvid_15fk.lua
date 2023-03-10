-- this is UVID-15FK logic


defineProperty("static_fail_L", globalPropertyi("sim/operation/failures/rel_static"))  -- static fail

defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus115_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- fail
defineProperty("uvid_fail", globalPropertyi("tu154ce/failures/uvid15_fail")) -- fail


-- current altitude
defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters
defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg


-- indication and controls
defineProperty("uvid_needle_left", globalPropertyf("tu154ce/gauges/alt/uvid_needle_left"))  -- стрелка высотомера УВИД КВС
defineProperty("uvid_feet_counter", globalPropertyf("tu154ce/gauges/alt/uvid_feet_counter"))  -- барабанчик счета удиниц футов
defineProperty("uvid_hundreads_counter", globalPropertyf("tu154ce/gauges/alt/uvid_hundreads_counter"))  -- барабанчик счета сотен футов
defineProperty("uvid_thousands_counter", globalPropertyf("tu154ce/gauges/alt/uvid_thousands_counter"))  -- барабанчик счета тысяч футов
defineProperty("uvid_tens_thousands_counter", globalPropertyf("tu154ce/gauges/alt/uvid_tens_thousands_counter"))  -- барабанчик счета десятков тысяч футов
defineProperty("uvid_pressure_knob", globalPropertyf("tu154ce/gauges/alt/uvid_pressure_knob"))  -- ручка установки давления
defineProperty("uvid_pressure_one", globalPropertyf("tu154ce/gauges/alt/uvid_pressure_one"))  -- единицы давления
defineProperty("uvid_pressure_ten", globalPropertyf("tu154ce/gauges/alt/uvid_pressure_ten"))  -- десятки давления
defineProperty("uvid_pressure_hund", globalPropertyf("tu154ce/gauges/alt/uvid_pressure_hund"))  -- сотни давления
defineProperty("uvid_pressure_thous", globalPropertyf("tu154ce/gauges/alt/uvid_pressure_thous"))  -- тысячи давления

defineProperty("uvid_on", globalPropertyi("tu154ce/switchers/ovhd/uvid_on"))  -- выключатель УВИД

defineProperty("sim_barometer_setting", globalPropertyf("sim/cockpit/misc/barometer_setting"))  -- лампочка УВИД15
defineProperty("vd15_lamp", globalPropertyf("tu154ce/lights/small/vd15_lamp"))  -- лампочка УВИД15

-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')

local left_MSL = 0
local uvid_alt = 0
local uvid_alt_act = 0

local switcher_last = get(uvid_on)
function update()
	local passed = get(frame_time)
	
	-- calculate altitude
	local staticFail_left = get(static_fail_L) == 6
	local msl = get(msl_alt) * 3.28083 -- real alt MSL in feet

	if not staticFail_left then
		left_MSL = msl -- update altitudes for left altimeters
	end
	
	-- check power
	local power27 = get(bus27_volt) > 13
	local power115 = get(bus115_volt) > 110
	local sw_on = get(uvid_on) == 1
	local press_set = get(uvid_pressure_knob)
	local press_inHg = press_set * 0.0295300586467
	
	-- sounds
	if switcher_last ~= sw_on then
		
	end
	switcher_last = sw_on
	
	-- calculate indicated altidude
	if power27 and power115 and sw_on and get(uvid_fail) == 0 then
		uvid_alt = left_MSL + (press_inHg - get(msl_press)) * 1000  -- calculate barometric altitude in feet
	end
	
	-- altitude on needle
	uvid_alt_act = uvid_alt_act + (uvid_alt - uvid_alt_act) * passed * 5
	
	-- altitude on first drumm
	local alt_dr_1 = uvid_alt_act % 100
	
	-- altitude hundreds drumm
	local alt_dr_100 = math.floor((uvid_alt_act % 1000) * 0.01) + math.max(math.max((alt_dr_1 - 50), 0) / 50, 0)
	
	-- altitude thousadns drumm
	local alt_dr_1000 = math.floor((uvid_alt_act % 10000) * 0.001) + math.max(math.max((alt_dr_100 - 9), 0), 0)
	
	-- altitude tens thousands drumm
	local alt_dr_10th = math.floor((uvid_alt_act % 100000) * 0.0001) + math.max(math.max((alt_dr_1000 - 9), 0), 0)
	
	
	-- pressure drumms
	-- ones
	local press_1 = press_set % 10
	
	-- tens
	local press_10 = math.floor((press_set % 100) * 0.1) + math.max(math.max((press_1 - 9), 0), 0)
	
	-- hundreads
	local press_100 = math.floor((press_set % 1000) * 0.01) + math.max(math.max((press_10 - 9), 0), 0)
	
	-- thausands
	local press_1000 = math.floor((press_set % 10000) * 0.001) + math.max(math.max((press_100 - 9), 0), 0)
	
	local lamp_shine = power27 and sw_on and (not power115 or uvid_alt > 50000 or press_set < 788 or press_set > 1074)
		
	set(vd15_lamp, bool2int(lamp_shine))
	
	-- set results
	set(uvid_needle_left, uvid_alt_act * 360 / 1000)
	set(uvid_feet_counter, uvid_alt_act)
	set(uvid_hundreads_counter, alt_dr_100)
	set(uvid_thousands_counter, alt_dr_1000)
	set(uvid_tens_thousands_counter, alt_dr_10th)
	
	set(uvid_pressure_one, press_1)
	set(uvid_pressure_ten, press_10)
	set(uvid_pressure_hund, press_100)
	set(uvid_pressure_thous, press_1000)
	
	set(sim_barometer_setting, press_inHg)

end