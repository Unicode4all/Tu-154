-- this is side drawing logic


size = {800, 600}


defineProperty("image_table") -- table of heights
defineProperty("columns") -- table of colors

defineProperty("range", 10)
defineProperty("v_spd", 0)
defineProperty("g_spd", 0)

function draw()
	
	-- draw heights
	local drawTable = get(image_table)
	local x_size = get(columns)
	local x_coef = size[1] / x_size
	
	for x = 1, x_size, 1 do
			
		local height = drawTable[x]		
		
		if height > 900 then height = 900 end
		
		if height > 660 then
			local y = math.min((height - 660) * 0.39, 82)
			drawRectangle((x-1) * x_coef, 520, x_coef, y, 1, 0.3, 0.3, 1) -- red
			drawRectangle((x-1) * x_coef, 390, x_coef, 130,1, 0.6, 0.2, 1) -- orange
			drawRectangle((x-1) * x_coef, 260, x_coef, 130, 1, 0.8, 0.2, 1) -- dark yellow
			drawRectangle((x-1) * x_coef, 130, x_coef, 130, 1, 1, 0.3, 1) -- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 130, 0.3, 1, 0.3, 1) -- green
		elseif height > 330 then
			local y = math.min((height - 330) * 0.39, 130)
			drawRectangle((x-1) * x_coef, 390, x_coef, y, 1, 0.6, 0.2, 1) -- orange
			drawRectangle((x-1) * x_coef, 260, x_coef, 130, 1, 0.8, 0.2, 1) -- dark yellow
			drawRectangle((x-1) * x_coef, 130, x_coef, 130, 1, 1, 0.3, 1) -- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 130, 0.3, 1, 0.3, 1) -- green
		elseif height > 0 then
			local y = height * 0.39
			drawRectangle((x-1) * x_coef, 260, x_coef, y, 1, 0.8, 0.2, 1) -- dark yellow
			drawRectangle((x-1) * x_coef, 130, x_coef, 130, 1, 1, 0.3, 1) -- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 130, 0.3, 1, 0.3, 1) -- green
		elseif height > -330 then
			local y = -(-330 - height) * 0.39
			drawRectangle((x-1) * x_coef, 130, x_coef, y, 1, 1, 0.3, 1)	-- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 130, 0.3, 1, 0.3, 1) -- green
		elseif height > -660 then
			local y = -(-660 - height) * 0.39
			drawRectangle((x-1) * x_coef, 0, x_coef, y, 0.3, 1, 0.3, 1) -- green
		end
			
			
	end

	-- track line
	local vvi = get(v_spd)
	local speed = get(g_spd) -- m/s
	local step = get(range) * 1000 / 80 -- length of one pixel in meters
	local line_length = math.min(80, speed * 60 / step)
	local step_time = step / speed
	local y_step = vvi * step_time * 0.39
	local y_last = 260
	
	
	
	if speed > 0 then
		
		for i = 0, line_length, 1 do
			local current_y = y_last + y_step
			
			if current_y + y_step > 620 or current_y < -20 then break end
			
			if y_step > 0 then drawRectangle(i * 10, current_y - 5, 10, y_step + 5, 1, 0, 1, 1)
			else drawRectangle(i * 10, current_y - 5, 10, -y_step + 5, 1, 0, 1, 1)
			end
		
			y_last = current_y
		end
		
		
	end
	

end
