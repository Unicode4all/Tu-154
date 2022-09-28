size = {100, 100}

local count = 0

defineProperty("digitsImage", loadImage("white-digits.png", 3, 0, 10, 196)) 

function update()

	count = count + 1
	
	if count >= 100 then count = 0 end

end



components = {

	rectangle {
		position = {0, 0, 100, 100},
		color = {0, 1, 0, 0.1},
	
	},
	
	
	rectangle {
		position = {0, 49, 100, 2},
		color = {0, 1, 0, 1},
	
	},

	rectangle {
		position = {49, 0, 2, 100},
		color = {0, 1, 0, 1},
	
	},

	digitstape {
		position = {0, 0, 50, 50},
		digits = 2,
		image = get(digitsImage),
		value = function()
			return count
		end,
		
	
	},








}