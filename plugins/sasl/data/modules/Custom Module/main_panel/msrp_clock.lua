-- this is MSRP clock panel

size = {195, 84}

defineProperty("digitsImage", loadImage("green_digit_strip.png", 12, 0, 40, 784))

defineProperty("sim_time", globalPropertyf("sim/time/zulu_time_sec"))  -- zulu time
defineProperty("msrp_power", globalPropertyi("tu154ce/msrp/msrp_power"))  -- MSRP power

	

local show_time = 0
local power = get(msrp_power) == 1

function update()
	local utc = math.floor(get(sim_time) / 60) -- in minutes
	
	local hours = math.floor(utc / 60)
	
	local minutes = utc - hours * 60
	
	
	show_time = hours * 100 + minutes


	power = get(msrp_power) == 1



end



components = {

	
	-- time digits
	digitstapeLit {
        position = { 13, 5, 170, 70},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return show_time
        end,
		visible = function()
			return power
		end,		
    };


}