size = {205, 305}

defineProperty("bg", loadImage("UConvert.png", 0, 0, 205, 305))
defineProperty("selection", loadImage("UConvert.png", 5, 315, 48, 20))
defineProperty("digitsImage", loadImage("UPhone.png", 493, 0, 14, 280))
defineProperty("kg", loadImage("UConvert.png", 6, 94, 31, 18))
defineProperty("lb", loadImage("UConvert.png", 6, 124, 31, 18))
defineProperty("km", loadImage("UConvert.png", 49, 94, 31, 18))
defineProperty("nm", loadImage("UConvert.png", 49, 124, 31, 18))
defineProperty("mps", loadImage("UConvert.png", 97, 94, 46, 18))
defineProperty("fpm", loadImage("UConvert.png", 97, 124, 46, 18))

defineProperty("hpa", loadImage("UConvert.png", 152, 95, 37, 18))
defineProperty("inhg", loadImage("UConvert.png", 153, 125, 44, 22))
defineProperty("mmhg", loadImage("UConvert.png", 134, 153, 62, 22))

local input = 0
local output = 0
local unit = 0
local output2 = 0


function update()
	if input < 0 then
		input = 0
	else
		if unit < 6 then
			if input > 999900 then input = 999900 end
		elseif unit == 6 then
			if input < 787 then input = 787 
			elseif input > 1075 then input = 1075 
			end
		elseif unit == 8 then
			if input < 600 then input = 600 
			elseif input > 800 then input = 800 
			end
		elseif unit == 7 then
			if input < 23 then input = 23 
			elseif input > 32 then input = 32 
			end
		end
	
	end

	if unit == 0 then
		output = input * 2.2046 -- LB
	elseif unit == 1 then
		output = input * 0.4536 -- KG
	elseif unit == 2 then
		output = input * 0.54 -- MN
	elseif unit == 3 then
		output = input * 1.852 -- KM
	elseif unit == 4 then
		output = input * 196.850 -- FPM
	elseif unit == 5 then
		output = input * 0.00508 -- MPS
	elseif unit == 6 then -- hPa
		output = input * 0.02953 -- inHg
		output2 = input * 0.750064 -- mmHg
	elseif unit == 7 then -- inHg
		output = input * 33.8638 -- hPa
		output2 = input * 25.4 -- mmHg
	elseif unit == 8 then -- mmHg
		output = input * 0.03937 -- inHg
		output2 = input * 1.33322 -- hPa

	end
end

-- 0:KG 1:LB 2:KM 3:NM 4:MPS 5:FPM 6:hPA 7:inHg 8:mmHg

components = {
	textureLit {
		position = {0, 0, 205, 305},
		image = get(bg),
		visible = true
	},
	
	clickable { -- left 2
		position = {5, 229, 27, 20 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateleft.png")
		},  
		onMouseClick = function()
		if unit == 0 or unit == 1 then
		input = input - 100
		elseif unit == 2 or unit == 3 then
		input = input - 10
		elseif unit == 4 then
		input = input - 1
		elseif unit == 5 then
		input = input - 1000
		elseif unit == 6 then
		input = input - 1
		elseif unit == 7 then
		input = input - 0.1
		elseif unit == 8 then
		input = input - 1
		end
		return true
		end   
	},
	
	clickable { -- left
		position = {45, 229, 20, 20 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateleft.png")
		},  
		onMouseClick = function()
		if unit == 0 or unit == 1 then
		input = input - 10
		elseif unit == 2 or unit == 3 then
		input = input - 1
		elseif unit == 4 then
		input = input - 0.1
		elseif unit == 5 then
		input = input - 100
		elseif unit == 6 then
		input = input - 0.25
		elseif unit == 7 then
		input = input - 0.01
		elseif unit == 8 then
		input = input - 0.1
		end
		return true
		end   
	},
	
	clickable { -- right
		position = {140, 229, 20, 20 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateright.png")
		},  
		onMouseClick = function()
		if unit == 0 or unit == 1 then
		input = input + 10
		elseif unit == 2 or unit == 3 then
		input = input + 1
		elseif unit == 4 then
		input = input + 0.1
		elseif unit == 5 then
		input = input + 100
		elseif unit == 6 then
		input = input + 0.25
		elseif unit == 7 then
		input = input + 0.01
		elseif unit == 8 then
		input = input + 0.1
		end
		return true
		end  
	},
	
	clickable { -- right 2
		position = {173, 229, 27, 20 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateright.png")
		},  
		onMouseClick = function()
		if unit == 0 or unit == 1 then
		input = input + 100
		elseif unit == 2 or unit == 3 then
		input = input + 10
		elseif unit == 4 then
		input = input + 1
		elseif unit == 5 then
		input = input + 1000
		elseif unit == 6 then
		input = input + 1
		elseif unit == 7 then
		input = input + 0.1
		elseif unit == 8 then
		input = input + 1
		end
		return true
		end  
	},
	
	--select unit
	--kg
	clickable {
		position = {3, 191, 38, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  
		onMouseClick = function()
		input = 0
		unit = 0
		return true
		end  
	},
	textureLit {
		position = {3, 191, 38, 21 },
		image = get(selection),
		visible = function()
		return unit == 0
		end,
	},
	--lb
	clickable {
		position = {3, 161, 38, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  
		onMouseClick = function()
		input = 0
		unit = 1
		return true
		end  
	},
	
	textureLit {
		position = {3, 161, 38, 21 },
		image = get(selection),
		visible = function()
		return unit == 1
		end,
	},
	--km
	clickable {
		position = {47, 191, 38, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  
		onMouseClick = function()
		input = 0
		unit = 2
		return true
		end  
	},
	textureLit {
		position = {47, 191, 38, 21 },
		image = get(selection),
		visible = function()
		return unit == 2
		end,
	},
	--nm
	clickable {
		position = {47, 161, 38, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
		input = 0
		unit = 3
		return true
		end  
	},
	textureLit {
		position = {47, 161, 39, 21 },
		image = get(selection),
		visible = function()
		return unit == 3
		end,
	},
	--mps
	clickable {
		position = {95, 191, 49, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  		
		onMouseClick = function()
		input = 0
		unit = 4
		return true
		end  
	},
	textureLit {
		position = {95, 191, 49, 21 },
		image = get(selection),
		visible = function()
		return unit == 4
		end,
	},
	--fpm
	clickable {
		position = {95, 161, 49, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
		input = 0
		unit = 5
		return true
		end  
	},
	textureLit {
		position = {95, 161, 48, 21 },
		image = get(selection),
		visible = function()
		return unit == 5
		end,
	},


	-- hPa
	clickable {
		position = {150, 191, 49, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  		
		onMouseClick = function()
		input = 1013.25
		unit = 6
		return true
		end  
	},
	textureLit {
		position = {150, 191, 49, 21 },
		image = get(selection),
		visible = function()
		return unit == 6
		end,
	},
	-- inHg
	clickable {
		position = {150, 161, 49, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
		input = 29.92
		unit = 7
		return true
		end  
	},
	textureLit {
		position = {150, 161, 49, 21 },
		image = get(selection),
		visible = function()
		return unit == 7
		end,
	},
	-- mmHg
	clickable {
		position = {131, 132, 66, 21 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  		
		onMouseClick = function()
		input = 760
		unit = 8
		return true
		end  
	},
	textureLit {
		position = {131, 132, 66, 21 },
		image = get(selection),
		visible = function()
		return unit == 8
		end,
	},
	
	--input and output
	digitstapeLit {
		position = { 68, 229, 70, 22},
		image = digitsImage;
		digits = 8;
		allowNonRound = true;
		showLeadingZeros = false;
		fractional = 2;
		value = function()
		return input
		end;
	},
	
	
	digitstapeLit {
		position = { 40, 62, 80, 22},
		image = digitsImage;
		digits = 8;
		allowNonRound = true;
		showLeadingZeros = false;
		fractional = 2;
		value = function()
		return output
		end;
	},

	digitstapeLit {
		position = { 40, 30, 80, 22},
		image = digitsImage;
		digits = 8;
		allowNonRound = true;
		showLeadingZeros = false;
		fractional = 2;
		value = function()
			return output2
		end;
		visible = function()
			return unit >= 6
		end;
	},
	
	
	--output unit
	textureLit {
		position = {130, 63, 31, 18 },
		image = get(lb),
		visible = function()
		return unit == 0
		end,
	},
	textureLit {
		position = {130, 63, 31, 18 },
		image = get(kg),
		visible = function()
		return unit == 1
		end,
	},
	textureLit {
		position = {130, 63, 31, 18 },
		image = get(nm),
		visible = function()
		return unit == 2
		end,
	},
	textureLit {
		position = {130, 63, 31, 18 },
		image = get(km),
		visible = function()
		return unit == 3
		end,
	},
	textureLit {
		position = {130, 63, 46, 18 },
		image = get(fpm),
		visible = function()
		return unit == 4
		end,
	},
	textureLit {
		position = {130, 63, 46, 18 },
		image = get(mps),
		visible = function()
		return unit == 5
		end,
	},

	textureLit {
		position = {130, 62, 37, 18 },
		image = get(hpa),
		visible = function()
		return unit == 7
		end,
	},

	textureLit {
		position = {130, 58, 44, 22 },
		image = get(inhg),
		visible = function()
		return unit == 6 or unit == 8
		end,
	},
	
	textureLit {
		position = {130, 30, 37, 18 },
		image = get(hpa),
		visible = function()
		return unit == 8
		end,
	},
	
	textureLit {
		position = {130, 25, 62, 22 },
		image = get(mmhg),
		visible = function()
		return unit == 6 or unit == 7
		end,
	},	
	
	
}
