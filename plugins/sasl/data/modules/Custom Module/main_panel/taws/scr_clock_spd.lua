-- this is speed scale

size = {180, 350}

defineProperty("speed", 0)


local text_font = loadFont("Verdana.ttf")


function draw()
	
	local spd = get(speed) -- current speed km/h
	
	drawRectangle(155, 0, 10, size[2], 1, 1, 1, 1) -- vertical line
	
	for i = math.floor((spd - 150) / 50) * 50, math.floor((spd + 150) / 50) * 50, 50 do
		if i % 100 == 0 then  -- big lines
			local line_pos = 168 + (i - spd) * 1.2
			if line_pos > 0 and line_pos < size[2] - 5 then
				drawRectangle(135, line_pos, 20, 5, 1, 1, 1, 1) -- +100 line
			end
			
			local text_pos = 156 + (i - spd) * 1.2
			if text_pos > 0 and text_pos < size[2] - 30 then
				local text = i
				if text > 0 then text = " "..text
				elseif text == 0 then text = "     0" end
				if i < 1000 then
					drawText(text_font, 50, text_pos, text, 32, false, false, TEXT_ALIGN_LEFT, {1,1,1,1})
				else
					drawText(text_font, 25, text_pos, text, 32, false, false, TEXT_ALIGN_LEFT, {1,1,1,1})
				end
				
			end
		else -- big lines
			local line_pos = 168 + (i - spd) * 1.2
			if line_pos > 0 and line_pos < size[2] - 5 then
				drawRectangle(125, line_pos, 30, 5, 1, 1, 1, 1) -- +50 line
			end
		end
	
	
	end
	
	
	
	
	
	
	
end