-- this is speed scale

size = {180, 350}

defineProperty("seconds", 0)


local text_font = loadFont("Verdana.ttf")



function draw()
	
	local sec = get(seconds) -- seconds
	--drawRectangle(0, 0, size[1], size[2], 1, 0, 0, 1) -- test
	drawRectangle(18, 0, 10, size[2], 1, 1, 1, 1) -- vertical line
	
	
	for i = math.floor((sec - 15) / 5) * 5, math.floor((sec + 15) / 5) * 5, 5 do
		
		if i % 10 == 0 then  -- big lines
			local line_pos = 168 + (i - sec) * 11
			if line_pos > 0 and line_pos < size[2] - 5 then
				drawRectangle(27, line_pos, 30, 5, 1, 1, 1, 1) -- +100 line
			end
			
			local text_pos = 156 + (i - sec) * 11
			if text_pos > 0 and text_pos < size[2] - 30 then
				local text = i
				if text >= 60 then text = text - 60
				elseif text	< 0 then text = text + 60 end
								
				drawText(text_font, 60, text_pos, text, 32, false, false, TEXT_ALIGN_LEFT, {1,1,1,1})
			end--]]
		else -- small lines
			local line_pos = 168 + (i - sec) * 11
			if line_pos > 0 and line_pos < size[2] - 5 then
				drawRectangle(27, line_pos, 20, 5, 1, 1, 1, 1) -- +100 line
			end
		end
	
	
	end
	
	--]]
	
	
	
	
	
end