-- this is payload panel
size = {1024, 683}


defineProperty("save_state", globalPropertyi("tu154ce/save_state")) -- принудительное сохранение состояния самолета

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("hide_eng_objects", globalPropertyi("tu154ce/lang/hide_eng_objects")) -- спрятать английские объекты кабины. 1 = RUS

defineProperty("show_load_panel",globalPropertyi("tu154ce/panels/show_load_panel")) -- показать панель загрузки

-- load images
defineProperty("bg_img", loadImage("load_panel.png"))
defineProperty("bg_img_rus", loadImage("load_panel_RUS.png"))

-- define global properties
defineProperty("crew_num_pr",globalPropertyi("tu154ce/payload/crew_num"))
defineProperty("zone_1_pr",globalPropertyi("tu154ce/payload/zone_1"))
defineProperty("zone_2_pr",globalPropertyi("tu154ce/payload/zone_2"))
defineProperty("cabin_num_pr",globalPropertyi("tu154ce/payload/cabin_num"))
defineProperty("zone_4_pr",globalPropertyi("tu154ce/payload/zone_4"))
defineProperty("zone_5_pr",globalPropertyi("tu154ce/payload/zone_5"))
defineProperty("zone_6_pr",globalPropertyi("tu154ce/payload/zone_6"))

defineProperty("cargo_1_pr",globalPropertyi("tu154ce/payload/cargo_1"))
defineProperty("cargo_2_pr",globalPropertyi("tu154ce/payload/cargo_2"))

defineProperty("kitchens_pr",globalPropertyi("tu154ce/payload/kitchens"))
defineProperty("various_pr",globalPropertyi("tu154ce/payload/various"))

defineProperty("main_dist_pr",globalPropertyi("tu154ce/payload/main_dist"))
defineProperty("alt_dist_pr",globalPropertyi("tu154ce/payload/alt_dist"))

defineProperty("main_fl_pr",globalPropertyi("tu154ce/payload/main_fl"))
defineProperty("alt_fl_pr",globalPropertyi("tu154ce/payload/alt_fl"))

defineProperty("nav_fuel_pr",globalPropertyi("tu154ce/payload/nav_fuel"))
defineProperty("taxi_fuel_pr",globalPropertyi("tu154ce/payload/taxi_fuel"))

defineProperty("tank_1_pr",globalPropertyi("tu154ce/payload/tank_1"))
defineProperty("tank_4_pr",globalPropertyi("tu154ce/payload/tank_4"))
defineProperty("tank_2L_pr",globalPropertyi("tu154ce/payload/tank_2L"))
defineProperty("tank_2R_pr",globalPropertyi("tu154ce/payload/tank_2R"))
defineProperty("tank_3L_pr",globalPropertyi("tu154ce/payload/tank_3L"))
defineProperty("tank_3R_pr",globalPropertyi("tu154ce/payload/tank_3R"))

defineProperty("eng_rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))   
defineProperty("eng_rpm2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("eng_rpm3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))

defineProperty("gear1_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))


-- results
-- sim load
defineProperty("payload",   globalPropertyf("sim/flightmodel/weight/m_fixed"))  -- payload weight, kg
defineProperty("CG_load",   globalPropertyf("sim/flightmodel/misc/cgz_ref_to_default")) -- Center of Gravity reference to default, m
defineProperty("fuel_q_1",  globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel quantity for tank 1
defineProperty("fuel_q_4",  globalProperty("sim/flightmodel/weight/m_fuel[1]")) -- fuel quantity for tank 4
defineProperty("fuel_q_2R", globalProperty("sim/flightmodel/weight/m_fuel[2]")) -- fuel quantity for tank 2R
defineProperty("fuel_q_2L", globalProperty("sim/flightmodel/weight/m_fuel[3]")) -- fuel quantity for tank 2L
defineProperty("fuel_q_3R", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel quantity for tank 3R
defineProperty("fuel_q_3L", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel quantity for tank 3L

defineProperty("paylod_set", globalPropertyf("tu154ce/payload/paylod_set")) -- Нужно загрузить
defineProperty("cg_set", globalPropertyf("tu154ce/payload/cg_set")) -- Нужно загрузить

defineProperty("load_fuel_btn",globalPropertyi("tu154ce/payload/load_fuel_btn")) -- кнопка загрузки топлива
defineProperty("load_fast_btn",globalPropertyi("tu154ce/payload/load_fast_btn")) -- кнопка загрузки
defineProperty("load_slow_btn",globalPropertyi("tu154ce/payload/load_slow_btn")) -- кнопка загрузки




include("fuel_tables.lua")
--include("fuel_tables.sec")



local draw_font = loadFont('AVIA.ttf')

---local EMPTY_WEIGHT = 54865

-- load parameters
local crew_num = 3
local zone_1 = 18
local zone_2 = 44
local cabin_num = 7
local zone_4 = 48
local zone_5 = 42
local zone_6 = 14

local cargo_1 = 12900
local cargo_2 = 10400

local kitchens = 500
local various = 500

local main_dist = 5000
local alt_dist = 5000

local main_fl = 390 -- minimum - 140
local alt_fl = 380 -- minimum - 140

local nav_fuel = 4500
local taxi_fuel = 500

-- results variables
local total_pax_load = zone_1 + zone_2 + zone_4 + zone_5 + zone_6
local cargo_load = cargo_1 + cargo_2
local traffic_load = total_pax_load + cargo_load
local dry_op_weight = 54865 + crew_num * 80 + cabin_num * 80 + kitchens + various
local zero_fuel_weight = dry_op_weight + traffic_load

local main_fuel = 20000
local alt_fuel = 15000
local total_fuel = main_fuel + alt_fuel + nav_fuel + taxi_fuel



local tank_1 = 3300
local tank_4 = 6595
local tank_2L = 9500
local tank_2R = 9500
local tank_3L = 5405
local tank_3R = 5405

local total_fuel_actual = tank_1 + tank_4 + tank_2L + tank_2R + tank_3L + tank_3R


--local takeoff_fuel = total_fuel - taxi_fuel
local takeoff_weight = zero_fuel_weight + total_fuel--takeoff_fuel

local trip_fuel = main_fuel + nav_fuel

local landing_weight = takeoff_weight - trip_fuel

local zfw_cg = 35.9587
local to_cg = 19.9587
local land_cg = 25.9587

local stab_set = "MID/MID/MID"



-- indicators
local cargo_1_fill = 1
local cargo_2_fill = 1
local zfw_overweight = false
local to_overweight = false
local land_overweight = false
local fuel_over_limits = 0


local tank_1_fill = 1
local tank_4_fill = 1
local tank_2L_fill = 1
local tank_2R_fill = 1
local tank_3L_fill = 1
local tank_3R_fill = 1

local main_fuel_show = main_fuel
local alt_fuel_show = alt_fuel
local total_fuel_show = total_fuel

---local stab_to_color = {}

local optimal_mach = 0.8


local click_timer = 0
local dist_fl_M_last = 0
local dist_fl_A_last = 0



local function calc_opt_fl(dist)
	
	local selected_fl = interpolate(optimal_fl_tbl, dist)

	local rounded_fl = math.floor(selected_fl / 10) * 10
	
	return rounded_fl
	
end


local function calc_fuel(dist, flightlevel)
	
	local fuel_tbl = {
	{200, interpolate(fl_200_tbl, dist)},
	{230, interpolate(fl_230_tbl, dist)},
	{250, interpolate(fl_250_tbl, dist)},
	{270, interpolate(fl_270_tbl, dist)},
	{290, interpolate(fl_290_tbl, dist)},
	{310, interpolate(fl_310_tbl, dist)},
	{330, interpolate(fl_330_tbl, dist)},
	{350, interpolate(fl_350_tbl, dist)},
	{370, interpolate(fl_370_tbl, dist)},
	{390, interpolate(fl_390_tbl, dist)}}
	
	return interpolate(fuel_tbl, flightlevel)


end

-- initial weights setup

	set(payload, 10815)
	--set(CG_load, 0.077616)
	set(CG_load, (26 - 25) * 5.28 / 100 - 0.3)
	if get(gear1_deflect) > 0 then set(CG_load, (26 - 25) * 5.28 / 100) end
	set(fuel_q_1, 3300)
	set(fuel_q_4, 0)
	set(fuel_q_2L, 1500)
	set(fuel_q_2R, 1500)
	set(fuel_q_3L, 3225)
	set(fuel_q_3R, 3225)
	


local function calc_CG(weight, index) -- try to unify calculations of CG by diagramm
	
	local MID_CG = 40 -- %MAC, centerline of diagramm
	local MID_CG_POS = 60 -- position of middle in index CG on diagramm
	local MIN_WEIGHT = 54000 -- mininmum weight on diagramm, kg
	local MAX_WEIGHT = 74000 -- maximum weight on diagramm, kg
	local MAX_WEIGHT_POS = 1 -- position of max weight in index on diagramm
	local MIN_CG = 22 -- minimum CG on diagramm
	local MIN_CG_LOW_POS = MID_CG_POS - 34.3 -- MIN CG position on low weight scale in index of diagramm
	local MIN_CG_HIGH_POS = MID_CG_POS - 24.8 -- MIN CG position on high weight scale in index of diagramm
	
	-- calculate relative position of weight on diagramm
	local z = (weight - MIN_WEIGHT) * MAX_WEIGHT_POS / (MAX_WEIGHT - MIN_WEIGHT)  
	
	-- calculate CG in index from middle line
	local b = ((MID_CG_POS - index) * MIN_CG_LOW_POS * MAX_WEIGHT_POS) / (z * MIN_CG_HIGH_POS - z * MIN_CG_LOW_POS + MIN_CG_LOW_POS * MAX_WEIGHT_POS)
	
	-- calculate CG in % of MAC
	local result_CG = MID_CG - b * (MID_CG - MIN_CG) / MIN_CG_LOW_POS

	return result_CG

end

--[[
local CG_added = false
local CG_removed = false
--]]



function update()
	

	

	-- get entered and calculated values
	crew_num = get(crew_num_pr)
	zone_1 = get(zone_1_pr)
	zone_2 = get(zone_2_pr)
	cabin_num = get(cabin_num_pr)
	zone_4 = get(zone_4_pr)
	zone_5 = get(zone_5_pr)
	zone_6 = get(zone_6_pr)

	cargo_1 = get(cargo_1_pr)
	cargo_2 = get(cargo_2_pr)

	kitchens = get(kitchens_pr)
	various = get(various_pr)

	main_dist = get(main_dist_pr)
	alt_dist = get(alt_dist_pr)

	main_fl = get(main_fl_pr) -- minimum - 140
	alt_fl = get(alt_fl_pr) -- minimum - 140

	nav_fuel = get(nav_fuel_pr)
	taxi_fuel = get(taxi_fuel_pr)

	tank_1 = get(tank_1_pr)
	tank_2L = get(tank_2L_pr)
	tank_2R = get(tank_2R_pr)
	tank_3L = get(tank_3L_pr)
	tank_3R = get(tank_3R_pr)
	tank_4 = get(tank_4_pr)


	
	
	
	-- calculate final load
	local pax_num = zone_1 + zone_2 + zone_4 + zone_5 + zone_6
	local pax_weight = pax_num * 75 -- weight of passengers
	
	cargo_load = cargo_1 + cargo_2
	
	traffic_load = pax_weight + cargo_load
	
	dry_op_weight = 54865 + crew_num * 80 + cabin_num * 75 + kitchens + various
	
	zero_fuel_weight = dry_op_weight + traffic_load

	-- calculate main fuel
	local dist_fl_M = main_dist + main_fl
	local dist_fl_A = alt_dist + alt_fl
	
	if dist_fl_M ~= dist_fl_M_last then 
		main_fuel = calc_fuel(main_dist, main_fl) 
		nav_fuel = math.ceil((main_fuel + alt_fuel) * 0.05)
		set(nav_fuel_pr, nav_fuel)
	end
	if dist_fl_A ~= dist_fl_A_last then 
		alt_fuel = calc_fuel(alt_dist, alt_fl) 
		nav_fuel = math.ceil((main_fuel + alt_fuel) * 0.05)
		set(nav_fuel_pr, nav_fuel)
	end
	
	main_fuel = math.ceil(main_fuel)
	alt_fuel = math.ceil(alt_fuel)
	
	
	dist_fl_M_last = get(main_dist_pr) + get(main_fl_pr)
	dist_fl_A_last = get(alt_dist_pr) + get(alt_fl_pr)	
	
	
	
	total_fuel = main_fuel + alt_fuel + nav_fuel + taxi_fuel
	
	total_fuel_actual = tank_1 + tank_4 + tank_2L + tank_2R + tank_3L + tank_3R
	
	--takeoff_fuel = total_fuel_actual - taxi_fuel
	
	takeoff_weight = zero_fuel_weight + total_fuel_actual-- + takeoff_fuel
	
	trip_fuel = main_fuel + nav_fuel
	
	landing_weight = takeoff_weight - trip_fuel
	
	-- CG calculations
	local index = {
		["initial_index"] = 72.03,
		["cockpit_crew_idx"] = -0.84,
		["cabin_crew_idx"] = -0.413,
		["zone_1_idx"] = -0.63,
		["zone_2_idx"] = -0.49,
		["zone_4_idx"] = -0.17,
		["zone_5_idx"] = 0.04,
		["zone_6_idx"] = 0.18,
		
		["kitchen_idx"] = -0.0059,
		["tools_tdx"] = -0.0053,
		
		["cargo_1_idx"] = -0.0050667,
		["cargo_2_idx"] = 0.0014933,
		
		["tank_1_idx"] = -0.0011993,
		["tank_2_idx"] = -0.0000509,
		["tank_3_idx"] = 0.0014161,
		["tank_4_idx"] = -0.00194
	}
	
	--[[
	local initial_index = 72.03
	
	local cockpit_crew_idx = -0.84 -- per one crew man
	local cabin_crew_idx = -0.413 -- per one crew man
	local zone_1_idx = -0.63 -- per pax
	local zone_2_idx = -0.49 -- per pax
	local zone_4_idx = -0.17 -- per pax
	local zone_5_idx = 0.04 -- per pax
	local zone_6_idx = 0.18 -- per pax
	
	local kitchen_idx = -0.0059 -- per kg
	local tools_tdx = -0.0053 -- per kg
	
	local cargo_1_idx = -0.0050667 -- per kg -- (33 + 25 + 18)/ (5000 + 5000 + 5000)
	local cargo_2_idx = 0.0014933 -- per kg -- (8.4 + 14) / (10000 + 5000)

	
	local tank_1_idx = -0.0011993 -- per kg
	local tank_2_idx = -0.0000509 -- per kg
	local tank_3_idx = 0.0014161 -- per kg
	local tank_4_idx = -0.00194 -- per kg 
--]]	
	--[[ 
		бак 4 расположен на расстоянии -2.75 м от ЦТ. полный индекс равен -14.744 на 6595кг (-1.94 на 1000кг)
		на 1000кг шаг бака 4 равен -0.4166667. индекс равен -1.94 на 1000кг
		
		бак 1 расположен -0.85 м от ЦТ на вес 3300. это -0.257576м на 1000кг. индекс -1.1992726 на 1000кг
		
		бак 2 расположен -1.0 от ЦТ. на вес I3850. это -0.0722м на 1000кг. -0.336163 на 1000кг
		
		бак 3 расположен +3.30 от ЦТ на вес 10850 это 0.3041475 на 1000кг индекс 1.4161106 на 1000кг
	--]]
	
	local ZFW_idx = index["initial_index"] + index["cockpit_crew_idx"] * crew_num + index["cabin_crew_idx"] * cabin_num + index["zone_1_idx"] * zone_1 + index["zone_2_idx"] * zone_2
	ZFW_idx = ZFW_idx + index["zone_4_idx"] * zone_4 + index["zone_5_idx"] * zone_5 + index["zone_6_idx"] * zone_6
	ZFW_idx = ZFW_idx + index["cargo_1_idx"] * cargo_1 + index["cargo_2_idx"] * cargo_2 + index["kitchen_idx"] * kitchens + index["tools_tdx"] * various
	
	local TOW_idx = ZFW_idx + index["tank_1_idx"] * tank_1 + index["tank_2_idx"] * (tank_2L + tank_2R) + index["tank_3_idx"] * (tank_3L + tank_3R) + index["tank_4_idx"] * tank_4
	

	-- calculate landing fuel amount
	local tank2_land = tank_2L + tank_2R
	local tank3_land = tank_3L + tank_3R
	local tank4_land = tank_4
	local tank1_land = tank_1
	--take fuel from tanks
	tank2_land = tank2_land - trip_fuel
	if tank2_land < 100 then 
		tank2_land = 100
		tank3_land = tank3_land - (trip_fuel - (tank_2L + tank_2R))
		if tank3_land < 100 then 
			tank3_land = 100
			tank4_land = tank4_land - (trip_fuel - (tank_2L + tank_2R + tank_3L + tank_3R))
			if tank4_land < 50 then
				tank4_land = 50
				tank1_land = tank1_land - (trip_fuel - (tank_2L + tank_2R + tank_3L + tank_3R + tank4_land))
				if tank1_land < 50 then tank1_land = 50 end
			end
		end
	end
	
	local LFW_idx = ZFW_idx + index["tank_1_idx"] * tank1_land + index["tank_2_idx"] * tank2_land + index["tank_3_idx"] * tank3_land + index["tank_4_idx"] * tank4_land
	
	
	
	zfw_cg = calc_CG(zero_fuel_weight, ZFW_idx)
	to_cg = calc_CG(takeoff_weight, TOW_idx)
	land_cg = calc_CG(landing_weight, LFW_idx)


	cargo_1_fill = cargo_1 / 12900
	cargo_2_fill = cargo_2 / 10400

	tank_1_fill = tank_1 / 3300
	tank_4_fill = tank_4 / 6595
	tank_2L_fill = tank_2L / 9500
	tank_2R_fill = tank_2R / 9500
	tank_3L_fill = tank_3L / 5405
	tank_3R_fill = tank_3R / 5405
	
	local opt_M_main = interpolate(optimal_mach_tbl, main_fl)
	local opt_M_altn = interpolate(optimal_mach_tbl, alt_fl)
	
	opt_M_main = math.floor(opt_M_main * 100 + 0.5) / 100
	opt_M_altn = math.floor(opt_M_altn * 100 + 0.5) / 100
	
	optimal_mach = opt_M_main.." / "..opt_M_altn
	
	
	-- stab set calcs
	local to_stab = "FWD"
	if to_cg > 32 then to_stab = "AFT"
	elseif to_cg >= 24 and to_cg <=32 then to_stab = "CTR" end
	
	local ld_stab = "FWD"
	if land_cg > 32 then ld_stab = "AFT"
	elseif land_cg >= 24 and land_cg <=32 then ld_stab = "CTR" end
	
	local zfw_stab = "FWD"
	if zfw_cg > 32 then zfw_stab = "AFT"
	elseif zfw_cg >= 24 and zfw_cg <=32 then zfw_stab = "CTR" end

	stab_set = zfw_stab.."/"..to_stab.."/"..ld_stab

	zfw_overweight = zero_fuel_weight > 74000
	to_overweight = takeoff_weight > 100000
	land_overweight = landing_weight > 80000
	
	
	
	--if to_overweight then takeoff_weight = takeoff_weight.." OVER!" end
	--if land_overweight then landing_weight = landing_weight.." OVER!" end
	--if zfw_overweight then zero_fuel_weight = zero_fuel_weight.." OVER!" end
	
	
	
	-- prepare values to show as text
	if zone_1 < 10 then zone_1 = " "..zone_1 end
	
	if zone_2 < 10 then zone_2 = " "..zone_2 end
	
	if zone_4 < 10 then zone_4 = " "..zone_4 end

	if zone_5 < 10 then zone_5 = " "..zone_5 end
	
	if zone_6 < 10 then zone_6 = " "..zone_6 end
	
	if cargo_1 < 1000 then cargo_1 = "  "..cargo_1
	elseif cargo_1 < 10000 then cargo_1 = " "..cargo_1 end
	
	cargo_1 = cargo_1.." kg"
	
	if cargo_2 < 1000 then cargo_2 = "  "..cargo_2
	elseif cargo_2 < 10000 then cargo_2 = " "..cargo_2 end
	
	cargo_2 = cargo_2.." kg"
	
	if kitchens < 100 then kitchens = " "..kitchens end
	
	if various < 100 then various = " "..various end
	
	
	
	total_pax_load = pax_num.." / "..pax_weight
	
	if main_dist < 1000 then main_dist = " "..main_dist end
	if alt_dist < 1000 then alt_dist = " "..alt_dist end
	
	main_fuel_show = main_fuel
	
	if main_fuel < 1000 then main_fuel_show = "  "..main_fuel_show
	elseif main_fuel < 10000 then main_fuel_show = " "..main_fuel_show end
	
	alt_fuel_show = alt_fuel
	
	if alt_fuel < 1000 then alt_fuel_show = "  "..alt_fuel_show
	elseif alt_fuel < 10000 then alt_fuel_show = " "..alt_fuel_show end
	
	if nav_fuel < 1000 then nav_fuel = " "..nav_fuel end
	
	if taxi_fuel < 1000 then taxi_fuel = " "..taxi_fuel end
	
	total_fuel_show = total_fuel
	
	if total_fuel < 1000 then total_fuel_show = "  "..total_fuel_show
	elseif total_fuel < 10000 then total_fuel_show = " "..total_fuel_show end
	
	if total_fuel > 39750 or total_fuel < 12750 then total_fuel_show = total_fuel_show.." !" end
	
	if total_fuel < 12750 then fuel_over_limits = -1 
	elseif total_fuel > 39750 then fuel_over_limits = 1 
	else fuel_over_limits = 0 end
	
	zfw_cg = math.floor(zfw_cg * 100 + 0.5)/ 100
	to_cg = math.floor(to_cg * 100 + 0.5)/ 100
	land_cg = math.floor(land_cg * 100 + 0.5)/ 100
	
	
	
	if tank_1 < 1000 then tank_1 = " "..tank_1 end
	if tank_4 < 1000 then tank_4 = " "..tank_4 end
	if tank_2L < 1000 then tank_2L = " "..tank_2L end
	if tank_2R < 1000 then tank_2R = " "..tank_2R end
	if tank_3L < 1000 then tank_3L = " "..tank_3L end
	if tank_3R < 1000 then tank_3R = " "..tank_3R end
	
	
	--print(takeoff_weight, "  ", to_cg, "  ", land_cg)
	
	-- load results
	
	
	if get(load_fuel_btn) == 1 then

		if total_fuel < 12750 then
			set(tank_1_pr, 3300)
			set(tank_4_pr, 0)
			set(tank_2L_pr, 1500)
			set(tank_2R_pr, 1500)
			set(tank_3L_pr, 3225)
			set(tank_3R_pr, 3225)
		elseif total_fuel > 39750 then
			set(tank_1_pr, 3300)
			set(tank_4_pr, 6595)
			set(tank_2L_pr, 9500)
			set(tank_2R_pr, 9500)
			set(tank_3L_pr, 5405)
			set(tank_3R_pr, 5405)
		else
			set(tank_1_pr, 3300)
			
			if total_fuel < 21550 then
				local tank32 = total_fuel - 6750 
				set(tank_2L_pr, math.ceil((tank32 / 4)/25)*25)
				set(tank_2R_pr, math.ceil((tank32 / 4)/25)*25)
				set(tank_3L_pr, math.ceil((tank32 / 4)/25)*25 + 1725)
				set(tank_3R_pr, math.ceil((tank32 / 4)/25)*25 + 1725)
				set(tank_4_pr, 0)
			elseif total_fuel < 33150 then
				local tank2 = total_fuel - 14150
				set(tank_2L_pr, math.ceil((tank2 / 2)/25)*25)
				set(tank_2R_pr, math.ceil((tank2 / 2)/25)*25)
				set(tank_3L_pr, 5405)
				set(tank_3R_pr, 5405)
				set(tank_4_pr, 0)
			else	
				set(tank_2L_pr, 9500)
				set(tank_2R_pr, 9500)
				set(tank_3L_pr, 5405)
				set(tank_3R_pr, 5405)
				set(tank_4_pr, math.ceil((total_fuel - 33150)/25)*25)
			end
			
		end	
	
	end
	
	--[[
	local gear_press = get(gear1_deflect) > 0
	
	if gear_press and not CG_removed then
		set(CG_load, (zfw_cg - 25) * 5.28 / 100) 
		CG_removed = true
		CG_added = false
		print("CG ground")
	elseif not gear_press and not CG_added then
		set(CG_load, (zfw_cg - 25) * 5.28 / 100 - 0.3)
		CG_removed = false
		CG_added = true
		print("CG flight")
	end
	--]]
	
	
	-- fast load
	if get(load_fast_btn) == 1 then
		
		set(payload, zero_fuel_weight - 54865)
		set(CG_load, (zfw_cg - 25) * 5.28 / 100 - 0.2)
		
		if get(gear1_deflect) > 0 then 
			set(CG_load, (zfw_cg - 25) * 5.28 / 100) 
		else
			set(CG_load, (zfw_cg - 25) * 5.28 / 100 - 0.2)
		end
		--]]
		set(fuel_q_1, get(tank_1_pr))
		set(fuel_q_4, get(tank_4_pr))
		set(fuel_q_2L, get(tank_2L_pr))
		set(fuel_q_2R, get(tank_2R_pr))
		set(fuel_q_3L, get(tank_3L_pr))
		set(fuel_q_3R, get(tank_3R_pr))
				
		--set(show_load_panel, 0)	

		
	end
	
	
	-- slow load
	if get(load_slow_btn) == 1 then
		set(paylod_set, zero_fuel_weight - 54865)
		--set(cg_set, (zfw_cg - 25) * 5.28 / 100 - 0.3)
		if get(gear1_deflect) > 0 then 
			set(cg_set, (zfw_cg - 25) * 5.28 / 100) 
		else
			set(cg_set, (zfw_cg - 25) * 5.28 / 100 - 0.2)
		end
		--]]
		--set(show_load_panel, 0)	
	end
	
	
	
	
	
	
	
	
	
end




--init_load()

components = {

	-- white background
	rectangle {
		position = {0, 0, size[1], size[2]},
		color = {0.7, 1, 0.7, 1},
	
	},
	
	-- cargo background
	rectangle {
		position = {185, 527, 600, 60},
		color = {0.8, 0.8, 0.8, 1},
	
	},	


	-- cargo_1 fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 200,
		position_y = 532,
		width = 200,
		height = function()
			return 32 * cargo_1_fill
		end,
	},	
	
	-- cargo_2 fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 569,
		position_y = 532,
		width = 200,
		height = function()
			return 32 * cargo_2_fill
		end,
	},		

	
	-- tank_1_fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 245,
		position_y = 93,
		width = 91,
		height = function()
			return 59 * tank_1_fill
		end,
	},		
	
	-- tank_4_fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 245,
		position_y = 161,
		width = 91,
		height = function()
			return 59 * tank_4_fill
		end,
	},		
	
	-- tank_2L_fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 138,
		position_y = 93,
		width = 102,
		height = function()
			return 123 * tank_2L_fill
		end,
	},		
	
	-- tank_2R_fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 342,
		position_y = 93,
		width = 102,
		height = function()
			return 123 * tank_2R_fill
		end,
	},		
	
	-- tank_3L_fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 31,
		position_y = 93,
		width = 102,
		height = function()
			return 89 * tank_3L_fill
		end,
	},	
	
	-- tank_3R_fill
	rectangle_ctr_fuel {
		R = 0.5,
		G = 0.5,
		B = 1.0,
		A = 1,
		position_x = 450,
		position_y = 93,
		width = 102,
		height = function()
			return 89 * tank_3R_fill
		end,
	},		
	
	-- zero fuel indicator
	rectangle {
		position = {820, 278, 170, 30},
		color = {0.9, 0.3, 0.3, 1},
		visible = function()
			return zfw_overweight
		end,
	},	
	
	-- takeoff indicator
	rectangle {
		position = {820, 210, 170, 30},
		color = {0.9, 0.3, 0.3, 1},
		visible = function()
			return to_overweight
		end,
	},		
	
	-- landing indicator
	rectangle {
		position = {820, 143, 170, 30},
		color = {0.9, 0.3, 0.3, 1},
		visible = function()
			return land_overweight
		end,
	},	

	-- fuel maximum indicator
	rectangle {
		position = {469, 245, 110, 32},
		color = {0.9, 0.3, 0.3, 1},
		visible = function()
			return fuel_over_limits == 1
		end,
	},

	-- fuel miтimum indicator
	rectangle {
		position = {469, 245, 110, 32},
		color = {1, 0.7, 0.1, 1},
		visible = function()
			return fuel_over_limits == -1
		end,
	},

	
	-- zero fuel CG indicator
	rectangle {
		position = {820, 110, 170, 30},
		color = {0.9, 0.7, 0.3, 1},
		visible = function()
			return zfw_cg > 32 and takeoff_weight < 80000
		end,
	},	

	-- take off CG indicator
	rectangle {
		position = {820, 77, 170, 30},
		color = {0.9, 0.7, 0.3, 1},
		visible = function()
			return to_cg > 32 and takeoff_weight < 80000
		end,
	},	
	
	-- landing CG indicator
	rectangle {
		position = {820, 43, 170, 30},
		color = {0.9, 0.7, 0.3, 1},
		visible = function()
			return land_cg > 32 and takeoff_weight < 80000
		end,
	},
	
	
	
	

	-- zero fuel CG indicator
	rectangle {
		position = {820, 110, 170, 30},
		color = {0.9, 0.3, 0.3, 1},
		visible = function()
			return zfw_cg > 40 or (zfw_cg > 32 and takeoff_weight >= 80000) or zfw_cg < 18
		end,
	},	

	-- take off CG indicator
	rectangle {
		position = {820, 77, 170, 30},
		color = {0.9, 0.3, 0.3, 1},
		visible = function()
			return to_cg > 40 or (to_cg > 32 and takeoff_weight >= 80000) or to_cg < 18
		end,
	},	
	
	-- landing CG indicator
	rectangle {
		position = {820, 43, 170, 30},
		color = {0.9, 0.3, 0.3, 1},
		visible = function()
			return land_cg > 40 or (land_cg > 32 and takeoff_weight >= 80000) or land_cg < 18
		end,
	},		
	
	
	
	-------------------------------
	-- background
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(bg_img),
		visible = function()
			return get(hide_eng_objects) == 0
		end,
	},

	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(bg_img_rus),
		visible = function()
			return get(hide_eng_objects) == 1
		end,
	},
	
	
	

	
	
	
	
	
	
	
	------------------------
	-- values --
	------------------------
	
	-- crew number
	text_draw {
		position = {150, 580, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return crew_num
		end,
	},
	
	-- zone 1 number
	text_draw {
		position = {216, 580, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return zone_1
		end,
	},	
	
	-- zone 2 number
	text_draw {
		position = {310, 580, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return zone_2
		end,
	},		
	
	-- cabin crew number
	text_draw {
		position = {416, 580, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return cabin_num
		end,
	},		
	
	-- zone 4 number
	text_draw {
		position = {513, 580, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return zone_4
		end,
	},		
	
	-- zone 5 number
	text_draw {
		position = {638, 580, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return zone_5
		end,
	},		
	
	-- zone 6 number
	text_draw {
		position = {728, 580, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return zone_6
		end,
	},	

	-- cargo 1 load
	text_draw {
		position = {255, 540, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return cargo_1
		end,
	},

	-- cargo 2 load
	text_draw {
		position = {605, 540, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return cargo_2
		end,
	},	
	
	-- kitchens load
	text_draw {
		position = {662, 494, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return kitchens
		end,
	},

	-- kitchens load
	text_draw {
		position = {930, 494, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return various
		end,
	},
	
	---------------------------
	-- fuel values --
	-----------------------
	
	-- main distance
	text_draw {
		position = {213, 405, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return main_dist
		end,
	},	
	
	-- alternate distance
	text_draw {
		position = {500, 405, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return alt_dist
		end,
	},		

	-- main flight level
	text_draw {
		position = {220, 372, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return main_fl
		end,
	},	
	
	-- alternate flight level
	text_draw {
		position = {505, 372, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return alt_fl
		end,
	},		
	

	-- main fuel
	text_draw {
		position = {207, 338, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return main_fuel_show
		end,
	},	
	
	-- alternate fuel
	text_draw {
		position = {492, 338, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return alt_fuel_show
		end,
	},	

	-- nav fuel
	text_draw {
		position = {213, 288, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return nav_fuel
		end,
	},	
	
	-- alternate distance
	text_draw {
		position = {500, 288, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return taxi_fuel
		end,
	},	

	-- total fuel
	text_draw {
		position = {495, 255, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return total_fuel_show
		end,
	},	
	

	-- fuel tank 1
	text_draw {
		position = {265, 100, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return tank_1
		end,
	},	

	-- fuel tank 4
	text_draw {
		position = {265, 168, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return tank_4
		end,
	},

	-- fuel tank 2L
	text_draw {
		position = {164, 100, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return tank_2L
		end,
	},	

	-- fuel tank 2R
	text_draw {
		position = {368, 100, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return tank_2R
		end,
	},	

	-- fuel tank 3L
	text_draw {
		position = {56, 100, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return tank_3L
		end,
	},	

	-- fuel tank 3R
	text_draw {
		position = {475, 100, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return tank_3R
		end,
	},

	-- optimal mach
	text_draw {
		position = {160, 255, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return optimal_mach
		end,
	},

	
	--------------------------
	-- result values --
	-------------------------
	
	-- tottal pax load number
	text_draw {
		position = {840, 419, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return total_pax_load
		end,
	},		
	
	-- total cargo load
	text_draw {
		position = {840, 385, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return cargo_load
		end,
	},	
	
	-- total traffic load
	text_draw {
		position = {840, 351, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return traffic_load
		end,
	},	
	
	-- dry operating weight
	text_draw {
		position = {840, 318, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return dry_op_weight
		end,
	},
	
	-- dry operating weight
	text_draw {
		position = {840, 284, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			
			if zfw_overweight then return zero_fuel_weight.." OVER!"
			else return zero_fuel_weight
			end
			
		end,
	},

	-- takeoff fuel
	text_draw {
		position = {840, 251, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return total_fuel_actual
		end,
	},
	
	-- takeoff weight
	text_draw {
		position = {840, 219, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			if to_overweight then return takeoff_weight.." OVER!"
			else return takeoff_weight
			end
		end,
	},

	-- trip fuel
	text_draw {
		position = {840, 184, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			return trip_fuel
		end,
	},

	-- landing weight
	text_draw {
		position = {840, 151, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			if land_overweight then return landing_weight.." OVER!"
			else return landing_weight
			end
		end,
	},
	
	-- ZFW CG
	text_draw {
		position = {840, 118, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			if zfw_cg < 18 then return zfw_cg.."  FWD!"
			elseif zfw_cg > 32 then return zfw_cg.."  AFT!" 
			else return zfw_cg
			end
		end,
	},
	
	-- TO CG
	text_draw {
		position = {840, 85, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			if to_cg < 18 then return to_cg.."  FWD!"
			elseif to_cg > 32 then return to_cg.."  AFT!" 
			else return to_cg
			end
		end,
	},
	
	-- Landing CG
	text_draw {
		position = {840, 51, 60, 60},
		color = {0, 0, 0, 1},
		text = function()
			if land_cg < 18 then return land_cg.."  FWD!"
			elseif land_cg > 32 then return land_cg.."  AFT!" 
			else return land_cg
			end
		end,
	},
	
	-- stab settings
	text_draw {
		position = {840, 18, 57, 60},
		color = {0, 0, 0, 1},
		text = function()
			return stab_set
		end,
	},	
	
	
	
	------------------
	-- clickables --
	------------------
	
	-- cockpit crew	
	clickable {
		position = {121, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(crew_num_pr) - 1
			if a < 3 then a = 3 end
			set(crew_num_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {163, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(crew_num_pr) + 1
			if a > 5 then a = 5 end
			set(crew_num_pr, a)
			
			return true
		end,
	}, 	
	
	-- ZONE 1
	clickable {
		position = {194, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_1_pr) - 1
			if a < 0 then a = 0 end
			set(zone_1_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {237, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_1_pr) + 1
			if a > 18 then a = 18 end
			set(zone_1_pr, a)
			
			return true
		end,
	}, 	
	
	-- ZONE 2
	clickable {
		position = {278, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_2_pr) - 1
			if a < 0 then a = 0 end
			set(zone_2_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {338, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_2_pr) + 1
			if a > 44 then a = 44 end
			set(zone_2_pr, a)
			
			return true
		end,
	}, 	
	
	-- Cabin crew
	clickable {
		position = {378, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(cabin_num_pr) - 1
			if a < 0 then a = 0 end
			set(cabin_num_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {431, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(cabin_num_pr) + 1
			if a > 7 then a = 7 end
			set(cabin_num_pr, a)
			
			return true
		end,
	}, 	

	-- Zone 4
	clickable {
		position = {481, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_4_pr) - 1
			if a < 0 then a = 0 end
			set(zone_4_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {540, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_4_pr) + 1
			if a > 48 then a = 48 end
			set(zone_4_pr, a)
			
			return true
		end,
	}, 

	-- Zone 5
	clickable {
		position = {606, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_5_pr) - 1
			if a < 0 then a = 0 end
			set(zone_5_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {665, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_5_pr) + 1
			if a > 42 then a = 42 end
			set(zone_5_pr, a)
			
			return true
		end,
	}, 
	
	-- Zone 6
	clickable {
		position = {703, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_6_pr) - 1
			if a < 0 then a = 0 end
			set(zone_6_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {748, 572, 30, 30 },
      
		onMouseDown = function() 
			local a = get(zone_6_pr) + 1
			if a > 14 then a = 14 end
			set(zone_6_pr, a)
			
			return true
		end,
	}, 


	-- Cargo 1
	clickable {
		position = {211, 533, 30, 30 },
      
		onMouseDown = function() 
			local a = get(cargo_1_pr) - 100
			if a < 0 then a = 0 end
			set(cargo_1_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {362, 533, 30, 30 },
      
		onMouseDown = function() 
			local a = get(cargo_1_pr) + 100
			if a > 12900 then a = 12900 end
			set(cargo_1_pr, a)
			
			return true
		end,
	}, 
	
	-- Cargo 2
	clickable {
		position = {572, 533, 30, 30 },
      
		onMouseDown = function() 
			local a = get(cargo_2_pr) - 100
			if a < 0 then a = 0 end
			set(cargo_2_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {706, 533, 30, 30 },
      
		onMouseDown = function() 
			local a = get(cargo_2_pr) + 100
			if a > 10400 then a = 10400 end
			set(cargo_2_pr, a)
			
			return true
		end,
	},	
	

	-- Kitchens
	clickable {
		position = {631, 488, 30, 30 },
      
		onMouseDown = function() 
			local a = get(kitchens_pr) - 10
			if a < 0 then a = 0 end
			set(kitchens_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {705, 488, 30, 30 },
      
		onMouseDown = function() 
			local a = get(kitchens_pr) + 10
			if a > 500 then a = 500 end
			set(kitchens_pr, a)
			
			return true
		end,
	},	

	-- Equipment
	clickable {
		position = {896, 488, 30, 30 },
      
		onMouseDown = function() 
			local a = get(various_pr) - 10
			if a < 50 then a = 50 end
			set(various_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {971, 488, 30, 30 },
      
		onMouseDown = function() 
			local a = get(various_pr) + 10
			if a > 500 then a = 500 end
			set(various_pr, a)
			
			return true
		end,
	},	
	

	-- 0% load
	clickable {
		position = {185, 486, 45, 35 },
      
		onMouseDown = function() 
			set(zone_1_pr, 0)
			set(zone_2_pr, 0)
			set(zone_4_pr, 0)
			set(zone_5_pr, 0)
			set(zone_6_pr, 0)
			set(cabin_num_pr, 0)
			
			return true
		end,
	}, 

	-- 25% load
	clickable {
		position = {233, 486, 53, 35 },
      
		onMouseDown = function() 
			set(zone_1_pr, math.random(3, 6))
			set(zone_2_pr, math.random(8, 14))
			set(zone_4_pr, math.random(9, 15))
			set(zone_5_pr, math.random(7, 13))
			set(zone_6_pr, math.random(2, 6))
			set(cabin_num_pr, 3)
			
			return true
		end,
	}, 	
	
	-- 50% load
	clickable {
		position = {290, 486, 53, 35 },
      
		onMouseDown = function() 
			set(zone_1_pr, math.random(7, 11))
			set(zone_2_pr, math.random(19, 25))
			set(zone_4_pr, math.random(21, 27))
			set(zone_5_pr, math.random(18, 24))
			set(zone_6_pr, math.random(5, 9))
			set(cabin_num_pr, 4)
			
			return true
		end,
	}, 
	
	-- 75% load
	clickable {
		position = {346, 486, 53, 35 },
      
		onMouseDown = function() 
			set(zone_1_pr, math.random(12, 16))
			set(zone_2_pr, math.random(30, 36))
			set(zone_4_pr, math.random(33, 39))
			set(zone_5_pr, math.random(29, 35))
			set(zone_6_pr, math.random(8, 12))
			set(cabin_num_pr, 5)
			
			return true
		end,
	}, 	
	
	-- 100% load
	clickable {
		position = {402, 486, 61, 35 },
      
		onMouseDown = function() 
			set(zone_1_pr, 18)
			set(zone_2_pr, 44)
			set(zone_4_pr, 48)
			set(zone_5_pr, 42)
			set(zone_6_pr, 14)
			set(cabin_num_pr, 6)
			
			return true
		end,
	}, 	
	
	-- Main distance
	clickable {
		position = {186, 398, 30, 30 },
      
		onMouseDown = function() 
			local a = get(main_dist_pr) - 100
			if a < 0 then a = 0 end
			set(main_dist_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {263, 398, 30, 30 },
      
		onMouseDown = function() 
			local a = get(main_dist_pr) + 100
			if a > 5000 then a = 5000 end
			set(main_dist_pr, a)
			
			return true
		end,
	},		
	
	-- Alternate distance
	clickable {
		position = {471, 398, 30, 30 },
      
		onMouseDown = function() 
			local a = get(alt_dist_pr) - 100
			if a < 0 then a = 0 end
			set(alt_dist_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {549, 398, 30, 30 },
      
		onMouseDown = function() 
			local a = get(alt_dist_pr) + 100
			if a > 5000 then a = 5000 end
			set(alt_dist_pr, a)
			
			return true
		end,
	},		
	
	
	-- Main FL
	clickable {
		position = {186, 366, 30, 30 },
      
		onMouseDown = function() 
			local a = get(main_fl_pr) - 10
			if a < 200 then a = 200 end
			set(main_fl_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {263, 366, 30, 30 },
      
		onMouseDown = function() 
			local a = get(main_fl_pr) + 10
			if a > 390 then a = 390 end
			set(main_fl_pr, a)
			
			return true
		end,
	},		
	
	-- Alternate FL
	clickable {
		position = {471, 366, 30, 30 },
      
		onMouseDown = function() 
			local a = get(alt_fl_pr) - 10
			if a < 200 then a = 200 end
			set(alt_fl_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {549, 366, 30, 30 },
      
		onMouseDown = function() 
			local a = get(alt_fl_pr) + 10
			if a > 390 then a = 390 end
			set(alt_fl_pr, a)
			
			return true
		end,
	},	
	

	-- Optimal main FL
	clickable {
		position = {133, 362, 50, 35 },
      
		onMouseDown = function() 
			local fl = calc_opt_fl(get(main_dist_pr))
			set(main_fl_pr, fl)
			return true
		end,
	},


	-- Optimal alt FL
	clickable {
		position = {419, 362, 50, 35 },
      
		onMouseDown = function() 
			local fl = calc_opt_fl(get(alt_dist_pr))
			set(alt_fl_pr, fl)
			return true
		end,
	},


	-- Navigation fuel
	clickable {
		position = {186, 282, 30, 30 },
      
		onMouseDown = function() 
			local a = get(nav_fuel_pr) - 100
			if a < 0 then a = 0 end
			set(nav_fuel_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {263, 282, 30, 30 },
      
		onMouseDown = function() 
			local a = get(nav_fuel_pr) + 100
			if a > 5000 then a = 5000 end
			set(nav_fuel_pr, a)
			
			return true
		end,
	},		
	
	-- Taxi fuel
	clickable {
		position = {471, 282, 30, 30 },
      
		onMouseDown = function() 
			local a = get(taxi_fuel_pr) - 100
			if a < 0 then a = 0 end
			set(taxi_fuel_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {549, 282, 30, 30 },
      
		onMouseDown = function() 
			local a = get(taxi_fuel_pr) + 100
			if a > 1000 then a = 1000 end
			set(taxi_fuel_pr, a)
			
			return true
		end,
	},

	-- minimum fuel load
	clickable {
		position = {20, 202, 56, 37 },
      
		onMouseDown = function() 
			set(tank_1_pr, 3300)
			set(tank_4_pr, 0)
			set(tank_2L_pr, 1500)
			set(tank_2R_pr, 1500)
			set(tank_3L_pr, 3225)
			set(tank_3R_pr, 3225)
			
			return true
		end,
	},

	-- maximum fuel load
	clickable {
		position = {84, 202, 56, 37 },
      
		onMouseDown = function() 
			set(tank_1_pr, 3300)
			set(tank_4_pr, 6595)
			set(tank_2L_pr, 9500)
			set(tank_2R_pr, 9500)
			set(tank_3L_pr, 5405)
			set(tank_3R_pr, 5405)
			
			return true
		end,
	},


	-- Tank 4
	clickable {
		position = {242, 161, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_4_pr) - 25
			if a < 0 then a = 0 end
			set(tank_4_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {310, 161, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_4_pr) + 25
			if a > 6595 then a = 6595 end
			set(tank_4_pr, a)
			
			return true
		end,
	},	

	-- Tank 1
	clickable {
		position = {242, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_1_pr) - 25
			if a < 0 then a = 0 end
			set(tank_1_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {310, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_1_pr) + 25
			if a > 3300 then a = 3300 end
			set(tank_1_pr, a)
			
			return true
		end,
	},

	
	-- Tank 3L
	clickable {
		position = {29, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_3L_pr) - 25
			if a < 0 then a = 0 end
			set(tank_3L_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {102, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_3L_pr) + 25
			if a > 5405 then a = 5405 end
			set(tank_3L_pr, a)
			
			return true
		end,
	},

	-- Tank 2L
	clickable {
		position = {137, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_2L_pr) - 25
			if a < 0 then a = 0 end
			set(tank_2L_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {211, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_2L_pr) + 25
			if a > 9500 then a = 9500 end
			set(tank_2L_pr, a)
			
			return true
		end,
	},	

	-- Tank 2R
	clickable {
		position = {341, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_2R_pr) - 25
			if a < 0 then a = 0 end
			set(tank_2R_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {416, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_2R_pr) + 25
			if a > 9500 then a = 9500 end
			set(tank_2R_pr, a)
			
			return true
		end,
	},		

	
	-- Tank 3R
	clickable {
		position = {448, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_3R_pr) - 25
			if a < 0 then a = 0 end
			set(tank_3R_pr, a)
			
			return true
		end,
	}, 

	clickable {
		position = {523, 93, 30, 30 },
      
		onMouseDown = function() 
			local a = get(tank_3R_pr) + 25
			if a > 5405 then a = 5405 end
			set(tank_3R_pr, a)
			
			return true
		end,
	},		
	
	-- load fuel button
	clickable {
		position = {467, 202, 106, 37 },
      
		onMouseDown = function() 
			set(load_fuel_btn, 1)
			return true
		end,
		onMouseUp = function() 
			set(load_fuel_btn, 0)
			return true
		end,
	},		
	
	
	-- fast load
	clickable {
		position = {20, 17, 160, 45 },
      
		onMouseDown = function() 
			set(load_fast_btn, 1)
			set(save_state, 1)
			return true
		end,
		onMouseUp = function() 
			set(load_fast_btn, 0)
			set(show_load_panel, 0)
			return true
		end,
	},

	--[[
	-- slow load
		clickable {
		position = {200, 17, 210, 45 },
      
		onMouseDown = function() 
			set(load_slow_btn, 1)
			return true
		end,
		onMouseUp = function() 
			set(load_slow_btn, 0)
			return true
		end,
	},
--]]
	
	-- close button
	clickable {
		position = {429, 17, 130, 45 },
      
		onMouseDown = function() 
			set(show_load_panel, 0)
			return true
		end,
	},	
	
	clickable {
		position = {size[1]-15, size[2]-15, 15, 15 },
      
		onMouseDown = function() 
			set(show_load_panel, 0)
			return true
		end,
	},		
	
	
	
}

