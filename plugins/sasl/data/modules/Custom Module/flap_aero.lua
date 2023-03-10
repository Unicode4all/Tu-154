defineProperty("cl", globalPropertyf("sim/aircraft/controls/acf_flap_cl"))
defineProperty("cd", globalPropertyf("sim/aircraft/controls/acf_flap_cd"))
defineProperty("cm", globalPropertyf("sim/aircraft/controls/acf_flap_cm"))

defineProperty("cl2", globalPropertyf("sim/aircraft/controls/acf_flap2_cl"))
defineProperty("cd2", globalPropertyf("sim/aircraft/controls/acf_flap2_cd"))
defineProperty("cm2", globalPropertyf("sim/aircraft/controls/acf_flap2_cm"))

--[[
sim/aircraft/controls/acf_flap_cl	float	y
sim/aircraft/controls/acf_flap_cd	float	y
sim/aircraft/controls/acf_flap_cm	float	y
sim/aircraft/controls/acf_flap2_cl	float	y
sim/aircraft/controls/acf_flap2_cd	float	y
sim/aircraft/controls/acf_flap2_cm	float	y
--]]
defineProperty("flap", globalPropertyf("sim/flightmodel/controls/flaprat"))
defineProperty("alt", globalPropertyf("sim/flightmodel/position/y_agl"))
--defineProperty("yd", globalPropertyf("sim/cockpit2/switches/yaw_damper_on"))

defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

defineProperty("flap_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_fla2def")) -- middle flaps left
defineProperty("flap_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_fla2def")) -- middle flaps right


-- sim/version/xplane_internal_version
defineProperty("xp_version", globalPropertyi("sim/version/xplane_internal_version"))

--print("new flaps")


local flap1_cl_tbl = {
{-10, 1.029},
{0, 1.0},
{15, 1.0}, -- 1.4
{28, 1.1},
{36, 1.25},
{45, 1.35},
{100, 1.2}
}

local flap2_cl_tbl = {
{-10, 1.189},
{0, 1.1},
{13, 1.1}, -- 1.5
{25, 1.3},
{32, 1.45},
{40, 1.55},
{100, 1.4}
}



-- XP 11
local XP11 = get(xp_version) > 11000 and get(xp_version) < 12000

if XP11 then

	flap1_cl_tbl = {
	{-10, 1.029},
	{0, 1.0},
	{15, 1.0}, -- 1.4
	{28, 1.1},
	{36, 1.15},
	{45, 1.25},
	{100, 1.2}
	}

	flap2_cl_tbl = {
	{-10, 1.189},
	{0, 1.1},
	{13, 1.1}, -- 1.5
	{25, 1.3},
	{32, 1.35},
	{40, 1.45},
	{100, 1.4}
	}

end






local flap1_cd_tbl = {
{-10, 0.064},
{0, 0.064},
{15, 0.064},
--{28, 1.1},
{36, 0.085},
{45, 0.07},
{100, 0.06}
}

local flap2_cd_tbl = {
{-10, 0.074},
{0, 0.074},
{13, 0.074},
--{25, 1.3},
{32, 0.1},
{40, 0.08},
{100, 0.07}
}



local flap1_cm_tbl = {
{-10, 0},
{0, -0.15},
{15, -0.2}, -- -0.13
{28, -0.17},
--{36, -0.2},
{45, -0.2},
{100, -0.2}
}

local flap2_cm_tbl = {
{-10, -0.2},
{0, -0.1}, -- 0
{13, -0.3}, -- 15
{25, -0.25}, -- 28,
--{32, -0.3}, -- 36
{40, -0.3}, -- 45
{100, -0.3}
}


function update()
	
	local flap_inn = get(flap_inn_L)
	local flap_out = get(flap_mid_L)
	
	local flap1_cl = interpolate(flap1_cl_tbl, flap_inn)
	local flap2_cl = interpolate(flap2_cl_tbl, flap_out)

	local flap1_cd = interpolate(flap1_cd_tbl, flap_inn)
	local flap2_cd = interpolate(flap2_cd_tbl, flap_out)
	
	local flap1_cm = interpolate(flap1_cm_tbl, flap_inn)
	local flap2_cm = interpolate(flap2_cm_tbl, flap_out)
	
	local agl = get(alt)
	if agl < 5 and XP11 then
		flap1_cl = flap1_cl * (1 - (5 - agl) * 0.04)
		flap2_cl = flap2_cl * (1 - (5 - agl) * 0.04)
	end
	
	
	
	
	set(cl, flap1_cl)
	set(cl2, flap2_cl)
	
	set(cd, flap1_cd)
	set(cd2, flap2_cd)
	
	
	set(cm, flap1_cm)
	set(cm2, flap2_cm)
	

end
