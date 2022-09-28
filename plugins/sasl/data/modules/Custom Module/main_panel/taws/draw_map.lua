-- try to draw map
size = {100, 80}


defineProperty("image_table") -- table of heights
defineProperty("colors") -- table of colors
defineProperty("size_x") -- size of the screen
defineProperty("size_y") -- size of the screen

function draw()
	
	local drawTable = get(image_table)
	local colorTable = get(colors)
	local x_sz = get(size_x)
	local y_sz = get(size_y)
	local cor_x = 100 / x_sz
	local cor_y = 80 / y_sz
	
	for x = 1, x_sz, 1 do
		for y = 1, y_sz, 1 do
			local r = colorTable[drawTable[x][y]][1]
			local g = colorTable[drawTable[x][y]][2]
			local b = colorTable[drawTable[x][y]][3]
			drawRectangle((x-1) * cor_x, (y-1) * cor_y, cor_x, cor_y, r, g, b, 1)
		end
	end

end