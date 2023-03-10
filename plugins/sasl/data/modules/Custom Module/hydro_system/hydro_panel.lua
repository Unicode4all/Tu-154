-- this is hydraulic panel

-- gauges
defineProperty("pressure_ind_1", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_1")) -- индикатор давления гидросистемы 1
defineProperty("pressure_ind_2", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_2")) -- индикатор давления гидросистемы 2
defineProperty("pressure_ind_3", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_3")) -- индикатор давления гидросистемы 3
defineProperty("pressure_ind_emerg", globalPropertyf("tu154ce/gauges/hydro/pressure_ind_emerg")) -- индикатор давления аварийного торможения

defineProperty("qty_12", globalPropertyf("tu154ce/gauges/hydro/qty_12")) -- гидробаки
defineProperty("qty_3", globalPropertyf("tu154ce/gauges/hydro/qty_3")) -- гидробаки

defineProperty("gear_brake_press_L", globalPropertyf("tu154ce/gauges/console/gear_brake_press_L")) -- давление тормозов лев
defineProperty("gear_brake_press_R", globalPropertyf("tu154ce/gauges/console/gear_brake_press_R")) -- давление тормозов прав


-- controls
defineProperty("lamp_test_hydro", globalPropertyi("tu154ce/buttons/lamp_test_hydro")) -- кнопка проверки ламп на панели гидросистемы
defineProperty("lamp_test_front", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп на панели гидросистемы

defineProperty("qty_test_12", globalPropertyi("tu154ce/buttons/hydro/qty_test_12")) -- контроль уровня
defineProperty("qty_test_3", globalPropertyi("tu154ce/buttons/hydro/qty_test_3")) -- контроль уровня

defineProperty("accum_fill", globalPropertyi("tu154ce/buttons/hydro/accum_fill")) -- зарядка аккумулятора


defineProperty("connect2to1", globalPropertyi("tu154ce/switchers/hydro/connect2to1")) -- подключение 2 ГС на 1 ГС
defineProperty("connect2to1_cap", globalPropertyi("tu154ce/switchers/hydro/connect2to1_cap")) -- подключение 2 ГС на 1 ГС
defineProperty("pump_2", globalPropertyi("tu154ce/switchers/hydro/pump_2")) -- подключение 2 ГС на 1 ГС
defineProperty("pump_3", globalPropertyi("tu154ce/switchers/hydro/pump_3")) -- подключение 2 ГС на 1 ГС

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- lamps
defineProperty("eng_hydr_fail_1", globalPropertyf("tu154ce/lights/small/eng_hydr_fail_1")) -- низкое давление ГС 1.панель БИ
defineProperty("eng_hydr_fail_2", globalPropertyf("tu154ce/lights/small/eng_hydr_fail_2")) -- низкое давление ГС 2.панель БИ
defineProperty("eng_hydr_fail_3", globalPropertyf("tu154ce/lights/small/eng_hydr_fail_3")) -- низкое давление ГС 3.панель БИ
defineProperty("eng_hydr_fail_4", globalPropertyf("tu154ce/lights/small/eng_hydr_fail_4")) -- низкое давление ГС аварийн.панель БИ

defineProperty("front_hydr_fail_1", globalPropertyf("tu154ce/lights/small/front_hydr_fail_1")) -- низкое давление ГС 1.передняя панель
defineProperty("front_hydr_fail_2", globalPropertyf("tu154ce/lights/small/front_hydr_fail_2")) -- низкое давление ГС 2.передняя панель
defineProperty("front_hydr_fail_3", globalPropertyf("tu154ce/lights/small/front_hydr_fail_3")) -- низкое давление ГС 3.передняя панель
defineProperty("front_hydr_fail_4", globalPropertyf("tu154ce/lights/small/front_hydr_fail_4")) -- низкое давление ГС аварийн.передняя панель


-- sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus36_volt_right", globalPropertyf("tu154ce/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154ce/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1


defineProperty("gs_press_1", globalPropertyf("tu154ce/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154ce/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154ce/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154ce/hydro/gs_press_4")) -- давление в ГС4

defineProperty("gs_qty_12_show", globalPropertyf("tu154ce/hydro/gs_qty_12_show")) -- остаток масла в гидробаке
defineProperty("gs_qty_3_show", globalPropertyf("tu154ce/hydro/gs_qty_3_show")) -- остаток масла в гидробаке


--defineProperty("l_brake_add", globalPropertyf("sim/flightmodel/controls/l_brake_add")) -- Left Brake
--defineProperty("r_brake_add", globalPropertyf("sim/flightmodel/controls/r_brake_add")) -- Right Brake

defineProperty("l_brake_add", globalPropertyf("tu154ce/brakes/int_brakes_L")) -- реальное положение тормоза
defineProperty("r_brake_add", globalPropertyf("tu154ce/brakes/int_brakes_R")) -- реальное положение тормоза

--defineProperty("l_brake_add", globalPropertyf("tu154ce/SC/brakes/int_brakes_L")) 
--defineProperty("r_brake_add", globalPropertyf("tu154ce/SC/brakes/int_brakes_R")) 



--defineProperty("l_brake_add", globalPropertyf("tu154ce/controlls/brake_L")) -- 
--defineProperty("r_brake_add", globalPropertyf("tu154ce/controlls/brake_R")) -- 

defineProperty("parkbrake", globalPropertyf("sim/flightmodel/controls/parkbrake")) -- Parking Brake
--defineProperty("parkbrake", globalPropertyf("tu154ce/SC/controls/parkbrake")) 


defineProperty("brake_emerg", globalPropertyf("tu154ce/controlls/brake_emerg")) -- аварийный тормоз

-- failures
defineProperty("rel_lbrakes", globalPropertyi("sim/operation/failures/rel_lbrakes")) -- Left Brakes
defineProperty("rel_rbrakes", globalPropertyi("sim/operation/failures/rel_rbrakes")) -- Right Brakes




-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local cap_sound = loadSample('Custom Sounds/cap.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')

local passed = 0

local press_1 = get(gs_press_1)
local press_2 = get(gs_press_2)
local press_3 = get(gs_press_3)
local press_4 = get(gs_press_4)

local function lamps_eng()
	local test_btn = get(lamp_test_hydro) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	press_1 = get(gs_press_1)
	press_2 = get(gs_press_2)
	press_3 = get(gs_press_3)
	press_4 = get(gs_press_4)
	
	local eng_hydr_fail_1_brt = 0
	if press_1 < 100 then eng_hydr_fail_1_brt = 1 end
	eng_hydr_fail_1_brt = math.max(eng_hydr_fail_1_brt * lamps_brt, test_btn) 
	set(eng_hydr_fail_1, eng_hydr_fail_1_brt)
	
	local eng_hydr_fail_2_brt = 0
	if press_2 < 100 then eng_hydr_fail_2_brt = 1 end
	eng_hydr_fail_2_brt = math.max(eng_hydr_fail_2_brt * lamps_brt, test_btn) 
	set(eng_hydr_fail_2, eng_hydr_fail_2_brt)
	
	local eng_hydr_fail_3_brt = 0
	if press_3 < 100 then eng_hydr_fail_3_brt = 1 end
	eng_hydr_fail_3_brt = math.max(eng_hydr_fail_3_brt * lamps_brt, test_btn) 
	set(eng_hydr_fail_3, eng_hydr_fail_3_brt)
	
	local eng_hydr_fail_4_brt = 0
	if press_4 < 190 then eng_hydr_fail_4_brt = 1 end
	eng_hydr_fail_4_brt = math.max(eng_hydr_fail_4_brt * lamps_brt, test_btn)
	set(eng_hydr_fail_4, eng_hydr_fail_4_brt)
	
end


local function lamps_front()
	local test_btn = get(lamp_test_front) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local front_hydr_fail_1_brt = 0
	if press_1 < 100 then front_hydr_fail_1_brt = 1 end
	front_hydr_fail_1_brt = math.max(front_hydr_fail_1_brt * lamps_brt, test_btn)
	set(front_hydr_fail_1, front_hydr_fail_1_brt)
	
	local front_hydr_fail_2_brt = 0
	if press_2 < 100 then front_hydr_fail_2_brt = 1 end
	front_hydr_fail_2_brt = math.max(front_hydr_fail_2_brt * lamps_brt, test_btn)
	set(front_hydr_fail_2, front_hydr_fail_2_brt)
	
	local front_hydr_fail_3_brt = 0
	if press_3 < 100 then front_hydr_fail_3_brt = 1 end
	front_hydr_fail_3_brt = math.max(front_hydr_fail_3_brt * lamps_brt, test_btn) 
	set(front_hydr_fail_3, front_hydr_fail_3_brt)
	
	local front_hydr_fail_4_brt = 0
	if press_4 < 190 then front_hydr_fail_4_brt = 1 end
	front_hydr_fail_4_brt = math.max(front_hydr_fail_4_brt * lamps_brt, test_btn)
	set(front_hydr_fail_4, front_hydr_fail_4_brt)
	
end

local connect2to1_last = get(connect2to1)
local pump_2_last = get(pump_2)
local pump_3_last = get(pump_3)
local connect2to1_cap_last = get(connect2to1_cap)

local function check_switchers ()
	local connect2to1_sw = get(connect2to1)
	local pump_2_sw = get(pump_2)
	local pump_3_sw = get(pump_3)
	
	local connect2to1_cap_sw = get(connect2to1_cap)
	
	local sw_changes = connect2to1_sw + pump_2_sw + pump_3_sw - connect2to1_last - pump_2_last - pump_3_last
	
	if sw_changes ~= 0 then  end
	
	if connect2to1_cap_sw - connect2to1_cap_last ~= 0 then  end
	
	connect2to1_last = connect2to1_sw
	pump_2_last = pump_2_sw
	pump_3_last = pump_3_sw
	connect2to1_cap_last = connect2to1_cap_sw
	
	-- switch back under cap
	if connect2to1_cap_sw == 0 then
		set(connect2to1, 0)
	end
	
end

local lamp_test_hydro_last = get(lamp_test_hydro)
local qty_test_12_last = get(qty_test_12)
local qty_test_3_last = get(qty_test_3)
local accum_fill_last = get(accum_fill)

local function buttons_check ()

	local lamp_test_hydro_sw = get(lamp_test_hydro)
	local qty_test_12_sw = get(qty_test_12)
	local qty_test_3_sw = get(qty_test_3)
	local accum_fill_sw = get(accum_fill)
	
	--print(qty_test_12_sw, qty_test_3_sw, accum_fill_last_sw)
	
	
	local sw_changes = lamp_test_hydro_sw + qty_test_12_sw + qty_test_3_sw + accum_fill_sw - lamp_test_hydro_last - qty_test_12_last - qty_test_3_last - accum_fill_last
	
	if sw_changes ~= 0 then  end
	
	lamp_test_hydro_last = lamp_test_hydro_sw
	qty_test_12_last = qty_test_12_sw
	qty_test_3_last = qty_test_3_sw
	accum_fill_last = accum_fill_sw

end


local oil_qty_12_t = { 
{  -1000, -180}, 
{  0, -180},    
{  24, -120 }, 
{  28, -60 },     
{  32, 0 },  
{  36, 60 },
{  40, 120 },
{  42, 145 },
{  1000, 150 }} 

local oil_qty_3_t = { 
{  -1000, -180}, 
{  0, -180},    
{  16, -100 },    
{  20, -40 },    
{  24, 20 },
{  28, 80 },
{  32, 125 },
{  1000, 130 }} 

local oil_qty_12_act = -180
local oil_qty_3_act = -180

local left_br_act = 0
local right_br_act = 0

local function gauges()
	
	local power36 = bool2int(get(bus36_volt_pts250_1) > 30 or get(bus36_volt_right) > 30)
	local power27L = bool2int(get(bus27_volt_left) > 13)
	local power27R = bool2int(get(bus27_volt_right) > 13)
	
	-- manometers
	set(pressure_ind_1, press_1 * power36)
	set(pressure_ind_2, press_2 * power36)
	set(pressure_ind_3, press_3 * power36)
	set(pressure_ind_emerg, press_4 * power36)

	local park = get(parkbrake)
	
	local e_brake = get(brake_emerg)
	local e_press = math.min(get(gs_press_4) / 120, 1)
	
	left_br_act = left_br_act + (math.max(math.min(get(l_brake_add), 1), e_brake * e_press) * 120 * power36 * bool2int(get(rel_lbrakes) < 6) - left_br_act) * passed * 10
	right_br_act = right_br_act + (math.max(math.min(get(r_brake_add), 1), e_brake * e_press) * 120 * power36 * bool2int(get(rel_rbrakes) < 6) - right_br_act) * passed * 10
	
	set(gear_brake_press_L, left_br_act)
	set(gear_brake_press_R, right_br_act)
	
	-- oil quantity
	local test_btn_12 = get(qty_test_12)
	local test_btn_3 = get(qty_test_3)
	
	local qty_12_need =  interpolate(oil_qty_12_t, get(gs_qty_12_show) * test_btn_12 * power27L)
	local qty_3_need = interpolate(oil_qty_3_t, get(gs_qty_3_show) * test_btn_3 * power27R)
	
	oil_qty_12_act = oil_qty_12_act + (qty_12_need - oil_qty_12_act) * passed * 5
	oil_qty_3_act = oil_qty_3_act + (qty_3_need - oil_qty_3_act) * passed * 5
	
	set(qty_12, oil_qty_12_act)
	set(qty_3, oil_qty_3_act)
	
	
end


function update()
	passed = get(frame_time)
	
	check_switchers ()
	buttons_check ()
	lamps_eng()
	lamps_front()
	gauges()
	
end