-- this is the MSRP panel

-- lights
defineProperty("msrp_mlp_main", globalPropertyf("tu154ce/lights/small/msrp_mlp_main")) -- МСРП. МЛП ОСН
defineProperty("msrp_mlp_aux", globalPropertyf("tu154ce/lights/small/msrp_mlp_aux")) -- МСРП. МЛП ДОП
defineProperty("msrp_up2", globalPropertyf("tu154ce/lights/small/msrp_up2")) -- МСРП. УП2
defineProperty("msrp_mars", globalPropertyf("tu154ce/lights/small/msrp_mars")) -- МСРП. МАРС

-- buttons
defineProperty("lamp_test_msrp", globalPropertyf("tu154ce/buttons/lamp_test_msrp")) -- кнопка проверки ламп МСРП

-- controlls
defineProperty("msrp_date_ten", globalPropertyi("tu154ce/switchers/eng/msrp_date_ten")) -- МРСП дата число десятки
defineProperty("msrp_date_one", globalPropertyi("tu154ce/switchers/eng/msrp_date_one")) -- МРСП дата число единицы
defineProperty("msrp_month_ten", globalPropertyi("tu154ce/switchers/eng/msrp_month_ten")) -- МРСП дата месяц десятки
defineProperty("msrp_month_one", globalPropertyi("tu154ce/switchers/eng/msrp_month_one")) -- МРСП дата месяц единицы
defineProperty("msrp_year_ten", globalPropertyi("tu154ce/switchers/eng/msrp_year_ten")) -- кнопка проверки ламп МСРП
defineProperty("msrp_year_one", globalPropertyi("tu154ce/switchers/eng/msrp_year_one")) -- кнопка проверки ламп МСРП
defineProperty("msrp_route_hun", globalPropertyi("tu154ce/switchers/eng/msrp_route_hun")) -- кнопка проверки ламп МСРП
defineProperty("msrp_route_ten", globalPropertyi("tu154ce/switchers/eng/msrp_route_ten")) -- кнопка проверки ламп МСРП
defineProperty("msrp_route_one", globalPropertyi("tu154ce/switchers/eng/msrp_route_one")) -- кнопка проверки ламп МСРП
defineProperty("msrp_mlp_1", globalPropertyi("tu154ce/switchers/eng/msrp_mlp_1")) -- кнопка проверки ламп МСРП
defineProperty("msrp_mlp_2", globalPropertyi("tu154ce/switchers/eng/msrp_mlp_2")) -- кнопка проверки ламп МСРП
defineProperty("msrp_night_day", globalPropertyi("tu154ce/switchers/eng/msrp_night_day")) -- кнопка проверки ламп МСРП
defineProperty("msrp_main_switch", globalPropertyi("tu154ce/switchers/eng/msrp_main_switch")) -- кнопка проверки ламп МСРП

defineProperty("mars_on", globalPropertyi("tu154ce/switchers/ovhd/mars_on")) --  МАРС



-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("msrp_recording", globalPropertyi("tu154ce/msrp/msrp_recording")) -- МСРП в режиме записи


-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm
include("smooth_light.lua")

local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(msrp_mlp_1, 0)
		set(msrp_mlp_2, 0)
		set(msrp_main_switch, 0)
	end
	
	notLoaded = false

end


-- sounds
local switcher_sound = loadSample('Custom Sounds/metal_switch.wav')
local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local rot_sound = loadSample('Custom Sounds/rot_click.wav')

local passed = get(frame_time)

local function set_date()

	local system_date = os.date("*t") -- get system date as named table
	
	local date_ten = math.floor(system_date.day/10)
	local date_one = system_date.day - date_ten * 10
	
	local month_ten = math.floor(system_date.month/10)
	local month_one = system_date.month - month_ten * 10
	
	local year_thou = math.floor(system_date.year/1000)
	local year_hun = math.floor((system_date.year - year_thou*1000)/100)
	local year_ten = math.floor((system_date.year - year_thou*1000 - year_hun*100)/10)
	local year_one = system_date.year - year_thou*1000 - year_hun*100 - year_ten*10
	
	local route_hun = get(msrp_route_hun)
	local route_ten = get(msrp_route_ten)
	local route_one = get(msrp_route_one)
	
	local flightNum = route_hun*100 + route_ten*10 + route_one
	
	
	-- check file exist and create a new number, if so
	while true do
		
		route_hun = math.floor(flightNum/100)
		route_ten = math.floor((flightNum - route_hun)/10)
		route_one = flightNum - route_hun - route_ten
		
		local panel_numbers = date_ten .. date_one .."_".. month_ten .. month_one .."_".. year_ten .. year_one .."_".. route_hun .. route_ten .. route_one
		local filename = sasl.getAircraftPath().."/black_box/".. panel_numbers .. ".bbox"	
		
		local file = io.open(filename, "r")
		
		if file then 
			print("found Black Box file with same name - "..filename)
			print("changing route number")
			flightNum = flightNum + 1
			io.close(file)
		else 
			break 
		end
	
	end
	
	route_hun = math.floor(flightNum/100)
	route_ten = math.floor((flightNum - route_hun)/10)
	route_one = flightNum - route_hun - route_ten
	
	
	set(msrp_date_ten, date_ten)
	set(msrp_date_one, date_one)
	
	set(msrp_month_ten, month_ten)
	set(msrp_month_one, month_one)
	
	set(msrp_year_ten, year_ten)
	set(msrp_year_one, year_one)
	
	set(msrp_route_hun, route_hun)
	set(msrp_route_ten, route_ten)
	set(msrp_route_one, route_one)
	
	
	
	
	
end


set_date() -- set rotary digits once

local msrp_date_ten_last = get(msrp_date_ten)
local msrp_date_one_last = get(msrp_date_one)
local msrp_month_ten_last = get(msrp_month_ten)
local msrp_month_one_last = get(msrp_month_one)
local msrp_year_ten_last = get(msrp_year_ten)
local msrp_year_one_last = get(msrp_year_one)
local msrp_route_hun_last = get(msrp_route_hun)
local msrp_route_ten_last = get(msrp_route_ten)
local msrp_route_one_last = get(msrp_route_one)

local msrp_mlp_1_last = get(msrp_mlp_1)
local msrp_mlp_2_last = get(msrp_mlp_2)
local msrp_night_day_last = get(msrp_night_day)
local msrp_main_switch_last = get(msrp_main_switch)
local mars_on_last = get(mars_on)

local lamp_test_msrp_last = get(lamp_test_msrp)

local function check_controls()

	local lamp_test_msrp_sw = get(lamp_test_msrp)

	if lamp_test_msrp_sw ~= lamp_test_msrp_last then  end
	
	local msrp_date_ten_sw = get(msrp_date_ten)
	local msrp_date_one_sw = get(msrp_date_one)
	local msrp_month_ten_sw = get(msrp_month_ten)
	local msrp_month_one_sw = get(msrp_month_one)
	local msrp_year_ten_sw = get(msrp_year_ten)
	local msrp_year_one_sw = get(msrp_year_one)
	local msrp_route_hun_sw = get(msrp_route_hun)
	local msrp_route_ten_sw = get(msrp_route_ten)
	local msrp_route_one_sw = get(msrp_route_one)
	
	
	local changes = msrp_date_ten_sw + msrp_date_one_sw + msrp_month_ten_sw + msrp_month_one_sw + msrp_year_ten_sw + msrp_year_one_sw
	changes = changes + msrp_route_hun_sw + msrp_route_ten_sw + msrp_route_one_sw
	
	
	changes = changes - msrp_date_ten_last - msrp_date_one_last - msrp_month_ten_last - msrp_month_one_last - msrp_year_ten_last - msrp_year_one_last
	changes = changes - msrp_route_hun_last - msrp_route_ten_last - msrp_route_one_last
	
	if changes ~= 0 then if get(xplane_version) < 120000 then playSample(rot_sound, false) end end
	
	
	local msrp_mlp_1_sw = get(msrp_mlp_1)
	local msrp_mlp_2_sw = get(msrp_mlp_2)
	local msrp_night_day_sw = get(msrp_night_day)
	local msrp_main_switch_sw = get(msrp_main_switch)	
	local mars_on_sw = get(mars_on)
	
	local swt = msrp_mlp_1_sw + msrp_mlp_2_sw + msrp_night_day_sw + msrp_main_switch_sw + mars_on_sw
	swt = swt - msrp_mlp_1_last - msrp_mlp_2_last - msrp_night_day_last - msrp_main_switch_last - mars_on_last
	
	if swt ~= 0 then   end
	
	
	msrp_date_ten_last = msrp_date_ten_sw
	msrp_date_one_last = msrp_date_one_sw
	msrp_month_ten_last = msrp_month_ten_sw
	msrp_month_one_last = msrp_month_one_sw
	msrp_year_ten_last = msrp_year_ten_sw
	msrp_year_one_last = msrp_year_one_sw
	msrp_route_hun_last = msrp_route_hun_sw
	msrp_route_ten_last = msrp_route_ten_sw
	msrp_route_one_last = msrp_route_one_sw
	
	msrp_mlp_1_last = msrp_mlp_1_sw
	msrp_mlp_2_last = msrp_mlp_2_sw
	msrp_night_day_last = msrp_night_day_sw
	msrp_main_switch_last = msrp_main_switch_sw
	mars_on_last = mars_on_sw
	
	
	lamp_test_msrp_last = lamp_test_msrp_sw
	
	
	--------------------
	-- limit controls --


	
	while msrp_date_ten_sw > 9 do
		msrp_date_ten_sw = msrp_date_ten_sw - 10
	end
	
	while msrp_date_ten_sw < 0 do
		msrp_date_ten_sw = msrp_date_ten_sw + 10
	end
	
	set(msrp_date_ten, msrp_date_ten_sw)
	
	--
	while msrp_date_one_sw > 9 do
		msrp_date_one_sw = msrp_date_one_sw - 10
	end
	
	while msrp_date_one_sw < 0 do
		msrp_date_one_sw = msrp_date_one_sw + 10
	end
	
	set(msrp_date_one, msrp_date_one_sw)	
	
	--
	while msrp_month_ten_sw > 9 do
		msrp_month_ten_sw = msrp_month_ten_sw - 10
	end
	
	while msrp_month_ten_sw < 0 do
		msrp_month_ten_sw = msrp_month_ten_sw + 10
	end
	
	set(msrp_month_ten, msrp_month_ten_sw)		
	
	--
	while msrp_month_one_sw > 9 do
		msrp_month_one_sw = msrp_month_one_sw - 10
	end
	
	while msrp_month_one_sw < 0 do
		msrp_month_one_sw = msrp_month_one_sw + 10
	end
	
	set(msrp_month_one, msrp_month_one_sw)		
	
	--
	while msrp_year_ten_sw > 9 do
		msrp_year_ten_sw = msrp_year_ten_sw - 10
	end
	
	while msrp_year_ten_sw < 0 do
		msrp_year_ten_sw = msrp_year_ten_sw + 10
	end
	
	set(msrp_year_ten, msrp_year_ten_sw)		
	
	--
	while msrp_year_one_sw > 9 do
		msrp_year_one_sw = msrp_year_one_sw - 10
	end
	
	while msrp_year_one_sw < 0 do
		msrp_year_one_sw = msrp_year_one_sw + 10
	end
	
	set(msrp_year_one, msrp_year_one_sw)	
	
	
	--
	while msrp_route_hun_sw > 9 do
		msrp_route_hun_sw = msrp_route_hun_sw - 10
	end
	
	while msrp_route_hun_sw < 0 do
		msrp_route_hun_sw = msrp_route_hun_sw + 10
	end
	
	set(msrp_route_hun, msrp_route_hun_sw)	
	
	--
	while msrp_route_ten_sw > 9 do
		msrp_route_ten_sw = msrp_route_ten_sw - 10
	end
	
	while msrp_route_ten_sw < 0 do
		msrp_route_ten_sw = msrp_route_ten_sw + 10
	end
	
	set(msrp_route_ten, msrp_route_ten_sw)		
	
	--
	while msrp_route_one_sw > 9 do
		msrp_route_one_sw = msrp_route_one_sw - 10
	end
	
	while msrp_route_one_sw < 0 do
		msrp_route_one_sw = msrp_route_one_sw + 10
	end
	
	set(msrp_route_one, msrp_route_one_sw)		
	
	
	
	

end


local mlp_lit_1 = false
local mlp_lit_2 = false
local mlp_1_timer = 0
local mlp_2_timer = 0


local function lamps()
	
	local main_sw = get(msrp_main_switch)
	local test_btn = get(lamp_test_msrp) * math.max((get(bus27_volt_right) - 10) / 18.5, 0) * main_sw
	local day_night = 0.75 + get(msrp_night_day) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night * main_sw
	
	local record = get(msrp_recording) == 1
	
	local mlp_1_brt = 0
	local mlp_2_brt = 0
	
	if main_sw == 1 then
		if get(msrp_mlp_1) == 1 then
			mlp_1_timer = mlp_1_timer + passed
			if mlp_1_timer > 7.1 then
				mlp_lit_1 = not mlp_lit_1
				mlp_1_timer = 0
			end
		else
			mlp_1_timer = 0
			mlp_lit_1 = false
			
		end
		
		mlp_1_brt = bool2int(mlp_lit_1)
		
		if get(msrp_mlp_2) == 1 then
			mlp_2_timer = mlp_2_timer + passed
			if mlp_2_timer > 6.9 then
				mlp_lit_2 = not mlp_lit_2
				mlp_2_timer = 0
			end
		else
			mlp_2_timer = 0
			mlp_lit_2 = false
			
		end
		
		mlp_2_brt = bool2int(mlp_lit_2)
		
	else
		mlp_1_brt = 0
		mlp_2_brt = 0	
		mlp_1_timer = 0
		mlp_2_timer = 0
	end	
	
	
	local msrp_mlp_main_brt = math.max(mlp_1_brt * lamps_brt, test_btn)
	set(msrp_mlp_main, smooth_light(msrp_mlp_main_brt, get(msrp_mlp_main)))
	
	local msrp_mlp_aux_brt = math.max(mlp_2_brt * lamps_brt, test_btn) 
	set(msrp_mlp_aux, smooth_light(msrp_mlp_aux_brt, get(msrp_mlp_aux)))
	
	local msrp_up2_brt = math.max(lamps_brt, test_btn) 
	set(msrp_up2, smooth_light(msrp_up2_brt, get(msrp_up2)))
	
	local msrp_mars_brt = math.max(get(mars_on) * lamps_brt, test_btn)
	set(msrp_mars, smooth_light(msrp_mars_brt, get(msrp_mars)))
	
	
end


function update()
	passed = get(frame_time)

	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end
	
	check_controls()
	lamps()

end