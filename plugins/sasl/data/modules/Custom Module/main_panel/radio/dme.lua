-- this is DME indicators
size = {215, 70}

-- DataRefs
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("vor_dme", globalPropertyf("tu154ce/radio/vor_dme_1")) -- distance

defineProperty("sd75_on", globalPropertyi("tu154ce/switchers/ovhd/sd75_1_on")) -- switch on

defineProperty("nav_mile_km", globalPropertyi("tu154ce/switchers/nav_1_mile_km")) -- режим мили - км

-- lamps
defineProperty("dme_mile_lit", globalPropertyf("tu154ce/lights/small/dme_mile_left")) -- mile lamp
defineProperty("dme_km_lit", globalPropertyf("tu154ce/lights/small/dme_km_left")) -- km lamp

-- power
defineProperty("bus27_volt", globalPropertyf("tu154ce/elec/bus27_volt_left"))
defineProperty("bus115_volt", globalPropertyf("tu154ce/elec/bus115_1_volt"))

defineProperty("fail", globalPropertyi("sim/operation/failures/rel_dme")) -- fail
defineProperty("dme_fail", globalPropertyi("tu154ce/failures/dme1_fail")) -- fail

local text_font = loadFont('digital7.ttf')

local dist_text = "888.8"

local power = false

local dist_now = 0
local dist_show = 0

function update()
	
	power = get(sd75_on) == 1 and get(bus27_volt) > 13 and get(bus115_volt) and get(dme_fail) == 0
	
	local passed = get(frame_time)
	
	if power then
		local dist = get(vor_dme)
		
		dist_now = dist
		
	else	
		dist_now = 0
	
	end
	
	dist_show = math.floor((dist_now + 0.03) * 10) / 10
	
	if dist_show == 0 then dist_text = "---.-"
	elseif dist_show < 10 then 
		dist_text = "  "..dist_show
	elseif dist_show < 100 then
		dist_text = " "..dist_show
	else dist_text = dist_show
	end
	
	if dist_show - math.floor(dist_show) == 0 and dist_text ~= "---.-" then dist_text = dist_text..".0" end

	-- lamps
	local mode = get(nav_mile_km)
	
	if power then
		set(dme_mile_lit, bool2int(mode == 0))
		set(dme_km_lit, bool2int(mode == 1))
	else
		set(dme_mile_lit, 0)
		set(dme_km_lit, 0)
	end
	
	
	
	
	
	
	
end





components = {
	--[[
	rectangle {
		position = {0, 0, 215, 70},
		color = {0,0,1,1},
	},
	--]]
	dme_display {
		position = {16, 12, 130, 130},
		color = {1, 0.3, 0.2, 1},
		text = function()
			return dist_text
		end,
		visible = function()
			return power
		end,
	}


}