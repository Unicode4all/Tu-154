-- this is an APU panel
-- gauges and controlls
defineProperty("apu_main_switch", globalPropertyi("tu154ce/switchers/eng/apu_main_switch")) -- выключатель ВСУ
defineProperty("apu_start_mode", globalPropertyi("tu154ce/switchers/eng/apu_start_mode")) -- режим запуска ВСУ
defineProperty("apu_air_bleed", globalPropertyi("tu154ce/switchers/eng/apu_air_bleed")) -- переключение заслонки отбора воздуха. -1 - закрыть, 0 - нейтр, +1 - открыть
defineProperty("apu_start", globalPropertyi("tu154ce/buttons/eng/apu_start")) -- кнопка старта ВСУ
defineProperty("apu_stop", globalPropertyi("tu154ce/buttons/eng/apu_stop")) -- кнопка стоп ВСУ


defineProperty("apu_rpm", globalPropertyf("tu154ce/gauges/eng/apu_rpm")) -- обороты ВСУ. 0-100%
defineProperty("apu_egt_gau", globalPropertyf("tu154ce/gauges/eng/apu_egt")) -- ТВГ ВСУ. 0 - 900 C
defineProperty("apu_oil_temp", globalPropertyf("tu154ce/gauges/eng/apu_oil_temp")) -- температура масла ВСУ -50 - 150 C




-- lamps
defineProperty("low_oil", globalPropertyf("tu154ce/lights/apu/low_oil")) -- масла мало
defineProperty("low_oil_press", globalPropertyf("tu154ce/lights/apu/low_oil_press")) -- Р масла
defineProperty("high_temp", globalPropertyf("tu154ce/lights/apu/high_temp")) -- предельная температура
defineProperty("high_rpm", globalPropertyf("tu154ce/lights/apu/high_rpm")) -- предельные обороты
defineProperty("pta6_fail", globalPropertyf("tu154ce/lights/apu/pta6_fail")) -- ПТА 6А неисправн
defineProperty("doors_open", globalPropertyf("tu154ce/lights/apu/doors_open")) -- створки открыты
defineProperty("fuel_press", globalPropertyf("tu154ce/lights/apu/fuel_press")) -- Р топлива
defineProperty("start_ready", globalPropertyf("tu154ce/lights/apu/start_ready")) -- Готов к запуску
defineProperty("work_mode", globalPropertyf("tu154ce/lights/apu/work_mode")) -- Выход на режим
defineProperty("start_apu", globalPropertyf("tu154ce/lights/apu/start_apu")) -- запусти ВСУ


-- internal datarefs
defineProperty("apu_n1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ
defineProperty("apu_oil_t", globalPropertyf("tu154ce/eng/apu_oil_t")) -- температура масла ВСУ
defineProperty("apu_oil_q", globalPropertyf("tu154ce/eng/apu_oil_q")) -- количество масла ВСУ
defineProperty("apu_oil_p", globalPropertyf("tu154ce/eng/apu_oil_p")) -- давление масла ВС
defineProperty("apu_egt", globalPropertyf("tu154ce/eng/apu_egt")) -- температура выходных газов ВСУ
defineProperty("apu_air_press", globalPropertyf("tu154ce/eng/apu_air_press")) -- давление воздуха для запуска двигателей

defineProperty("apu_air_doors", globalPropertyf("tu154ce/eng/apu_air_doors")) -- положение створок для накачки воздуха
defineProperty("apu_fuel_p", globalPropertyf("tu154ce/eng/apu_fuel_p")) -- давление топлива ВСУ

defineProperty("apu_start_bus", globalPropertyf("tu154ce/elec/apu_start_bus")) -- напряжение в сети ВСУ
defineProperty("apu_start_cc", globalPropertyf("tu154ce/elec/apu_start_cc")) -- потребление тока стартером ВСУ
defineProperty("apu_start_seq", globalPropertyi("tu154ce/elec/apu_start_seq")) -- идет процесс запуска ВСУ

defineProperty("apu_doors", globalPropertyf("tu154ce/anim/apu_doors")) -- положение створок ВСУ. 0 - закрыты, 1 - открыты.

defineProperty("cockpit_window_left", globalPropertyf("tu154ce/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154ce/anim/cockpit_window_right")) -- открытие форточки

-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("outside_air_temp", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) -- 

-- lamp sources
defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_apu")) -- кнопка проверки ламп панели ВСУ
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.
defineProperty("gear_vent_set", globalPropertyi("tu154ce/switchers/eng/gear_fan")) -- вентиляция шасси

-- enviroment
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- default sim APU
defineProperty("APU_generator_on", globalPropertyi("sim/cockpit2/electrical/APU_generator_on")) -- boolean	APU generator is turned on, 0 or 1.
defineProperty("APU_starter_switch", globalPropertyi("sim/cockpit2/electrical/APU_starter_switch")) -- boolean	APU power switch, 0 is off, 1 is on, 2 is start-er-up!
defineProperty("APU_N1_percent", globalPropertyi("sim/cockpit2/electrical/APU_N1_percent")) -- percent	N1 of the APU
defineProperty("APU_running", globalPropertyi("sim/cockpit2/electrical/APU_running")) -- boolean	APU actually running, 0 or 1.

defineProperty("acf_has_APU_switch", globalPropertyi("sim/aircraft/overflow/acf_has_APU_switch")) -- 
defineProperty("rel_APU_press", globalPropertyi("sim/operation/failures/rel_APU_press")) -- 
defineProperty("bleed_air_mode", globalPropertyi("sim/cockpit2/pressurization/actuators/bleed_air_mode")) -- Bleed air mode, 0=of, 1=left,2=both,3=right,4=apu,5=auto

-- coordinates of airplane and camera
defineProperty("local_x", globalPropertyf("sim/flightmodel/position/local_x")) -- position X
defineProperty("local_y", globalPropertyf("sim/flightmodel/position/local_y")) -- position Y
defineProperty("local_z", globalPropertyf("sim/flightmodel/position/local_z")) -- position Z

defineProperty("view_x", globalPropertyf("sim/graphics/view/view_x")) -- camera position X
defineProperty("view_y", globalPropertyf("sim/graphics/view/view_y")) -- camera position Y
defineProperty("view_z", globalPropertyf("sim/graphics/view/view_z")) -- camera position Z


-- failures
defineProperty("apu_start_fail",globalPropertyi("tu154ce/failures/apu_start_fail")) -- отказ стартера
defineProperty("apu_gen_fail",globalPropertyi("tu154ce/failures/apu_gen_fail")) -- отказ генератора
defineProperty("apu_fail_oilt",globalPropertyi("tu154ce/failures/apu_fail_oilt")) -- отказ по температуре масла
defineProperty("apu_fail_egt",globalPropertyi("tu154ce/failures/apu_fail_egt")) -- отказ по ТВГ
defineProperty("apu_fail_fuel_left",globalPropertyi("tu154ce/failures/apu_fail_fuel_left")) -- отказ пр остатку топлива в камере при запуске
defineProperty("apu_fail",globalPropertyi("tu154ce/failures/apu_fail")) -- отказ по наработке
defineProperty("apu_press_fail", globalPropertyi("tu154ce/failures/apu_press_fail")) -- отказ отбора воздуха от двигателя


include("smooth_light.lua")


-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

local passed = get(frame_time)


local function default_APU()
	set(rel_APU_press, 0)
	set(acf_has_APU_switch, 1)
	set(APU_generator_on, 1)
	set(bleed_air_mode, 4)
	-- start APU if it's not running
	if (get(APU_running) ~= 1 or get(APU_N1_percent) < 50) and (get(bus27_volt_left) > 10 or get(bus27_volt_right) > 10) then
		set(APU_starter_switch, 2)
	elseif get(bus27_volt_left) > 10 or get(bus27_volt_right) > 10 then
		set(APU_starter_switch, 1)
	else set(APU_starter_switch, 0)
	end
end


local n1_table_start = {{ -5000, 0},    -- bugs workaround
				  { 0, 0 },
				  { 8, 0 },   --
				  { 12, 15 },   --
				  { 14, 5 },   --
				  { 16, 18 },   --
				  { 18, 15 },   --
				  { 20, 20 },   --
				  { 110, 110 },  -- 
          		  { 1000, 110 }}   -- bugs workaround

local n1_table_off = {{ -5000, 0},    -- bugs workaround
				  { 0, 0 },
				  { 110, 110 },  -- 
          		  { 1000, 110 }}   -- bugs workaround

local n1_actual = 0
local EGT_actual = 0
local oil_t_actual = -60

local function gauges()
	local n1_angle = 0
	local EGT_angle = 0
	local oil_t_angle = -60
	local n1 = get(apu_n1)
	if n1 > n1_actual then n1_angle = interpolate(n1_table_start, n1) -- if starting, add needle trembling
	else n1_angle = interpolate(n1_table_off, n1) end
	EGT_angle = get(apu_egt)

	if EGT_angle < -10 then EGT_angle = -10 end

	if get(bus27_volt_right) > 13 then
		oil_t_angle = get(apu_oil_t)
	else
		oil_t_angle = -75
	end

	--n1_angle = 99
	--EGT_angle = 300
	--oil_t_angle = 100

	-- set smooth movements
	n1_actual = n1_actual + (n1_angle - n1_actual) * passed * 5
	EGT_actual = EGT_actual + (EGT_angle - EGT_actual) * passed * 3
	oil_t_actual = oil_t_actual + (oil_t_angle - oil_t_actual) * passed * 3

	-- set results
	set(apu_rpm, n1_actual)
	set(apu_egt_gau, EGT_actual)
	set(apu_oil_temp, oil_t_actual)

end



local apu_main_last = get(apu_main_switch)
local apu_start_mod_last = get(apu_start_mode)
local apu_air_last = get(apu_air_bleed)
local apu_start_last = get(apu_start)
local apu_stop_last = get(apu_stop)
local test_lamps_last = get(test_lamps)

local function check_controls()

	local apu_main_sw = get(apu_main_switch)
	local apu_start_mod_sw = get(apu_start_mode)
	local apu_air_sw = get(apu_air_bleed)
	local apu_start_but = get(apu_start)
	local apu_stop_but = get(apu_stop)
	local test_lamps_but = get(test_lamps)

	local changes_sw = apu_main_sw + apu_start_mod_sw + apu_air_sw - apu_main_last - apu_start_mod_last - apu_air_last
	local changes_but = apu_start_but + apu_stop_but + test_lamps_but - apu_start_last - apu_stop_last - test_lamps_last

	if changes_sw ~= 0 then  end
	if changes_but ~= 0 then  end

	apu_main_last = apu_main_sw
	apu_start_mod_last = apu_start_mod_sw
	apu_air_last = apu_air_sw
	apu_start_last = apu_start_but
	apu_stop_last = apu_stop_but
	test_lamps_last = test_lamps_but
end


local low_oil_press_sign = 0
local high_temp_sign = 0
local high_rpm_sign = 0

local start_ready_brt = 0
local t = 0
local function lamps()

	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night

	-- local variables
	local rpm = get(apu_n1)
	local start_seq = get(apu_start_seq) == 1
	local thermo = get(apu_egt)
	local main_sw = get(apu_main_switch) == 1

	-- red signs. resets only after disabling APU switcher
	if get(apu_oil_p) < 1 then low_oil_press_sign = 1 end
	if (start_seq and thermo > 700) or (not start_seq and thermo > 570) then high_temp_sign = 1 end
	if rpm > 105 then high_rpm_sign = 1 end

	-- reset red signs
	if not main_sw then
		low_oil_press_sign = 0
		high_temp_sign = 0
		high_rpm_sign = 0
	end

	local low_oil_brt = 0
	if get(apu_oil_q) < 0.4 then low_oil_brt = 1 end


	low_oil_brt = math.max(low_oil_brt * lamps_brt, test_btn) * math.max(math.fmod(sasl.getCurrentCycle() * 0.01, 1), 1.0)

	set(low_oil, smooth_light(low_oil_brt, get(low_oil)))

	local low_oil_press_brt = math.max(low_oil_press_sign * lamps_brt, test_btn)
	set(low_oil_press, smooth_light(low_oil_press_brt, get(low_oil_press)))

	local high_temp_brt = math.max(high_temp_sign * lamps_brt, test_btn)
	set(high_temp, smooth_light(high_temp_brt, get(high_temp)))

	local high_rpm_brt = math.max(high_rpm_sign * lamps_brt, test_btn)
	set(high_rpm, smooth_light(high_rpm_brt, get(high_rpm)))

	local pta6_fail_brt = math.max(0, test_btn) -- TODO: implement PTA-6
	set(pta6_fail, smooth_light(pta6_fail_brt, get(pta6_fail)))

	local doors_open_brt = 0
	if get(apu_doors) > 0.9 then doors_open_brt = 1 end
	doors_open_brt = math.max(doors_open_brt * lamps_brt, test_btn)
	set(doors_open, smooth_light(doors_open_brt, get(doors_open)))

	local fuel_press_brt = 0
	if get(apu_fuel_p) > 0.8 then fuel_press_brt = 1 end
	fuel_press_brt = math.max(fuel_press_brt * lamps_brt, test_btn)
	set(fuel_press, smooth_light(fuel_press_brt, get(fuel_press)))


	if get(apu_air_doors) == 0 and get(apu_doors) == 1 then start_ready_brt = 1 end
	if get(apu_air_doors) == 1 or get(apu_doors) < 0.9 then start_ready_brt = 0 end
	local start_ready_lit = math.max(start_ready_brt * lamps_brt, test_btn)
	set(start_ready, smooth_light(start_ready_lit, get(start_ready)))

	local work_mode_brt = 0
	if rpm > 92 and main_sw then work_mode_brt = 1 end
	work_mode_brt = math.max(work_mode_brt * lamps_brt, test_btn)
	set(work_mode, smooth_light(work_mode_brt, get(work_mode)))

	local start_apu_brt = 0
	if rpm < 92 and get(gear_vent_set) == 1 then start_apu_brt = 1 end
	start_apu_brt = math.max(start_apu_brt * lamps_brt, test_btn) -- вентиляция щасси и когда ВСУ выклчюено.
	set(start_apu, smooth_light(start_apu_brt, get(start_apu)))

end


function update()
	passed = get(frame_time)

	default_APU()
	check_controls()
	lamps()
	gauges()
	--apu_sound()

end