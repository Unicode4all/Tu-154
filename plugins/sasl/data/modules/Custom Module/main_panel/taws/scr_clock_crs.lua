-- this is speed scale

size = {480, 94}

defineProperty("course", 0)


local fid = loadFont("Verdana.ttf")



function draw()
	
	local crs = get(course) -- seconds
	--drawRectangle(0, 0, size[1], size[2], 1, 0, 0, 1) -- test
	
	drawRectangle(0, 65, size[1], 10, 1, 1, 1, 1) -- horizontal line
	
	--drawRectangle(245, 45, 5, 20, 1, 1, 1, 1) -- zero line text
	
	for i = math.floor((crs - 40) / 10) * 10, math.floor((crs + 40) / 10) * 10, 10 do
		
		if i % 30 == 0 then  -- big lines
			local line_pos = 240 + (i - crs) * 6
			if line_pos > 0 and line_pos < size[1] - 5 then
				drawRectangle(line_pos, 45, 5, 20, 1, 1, 1, 1) -- digit line
			end
			
			local text_pos = 218 + (i - crs) * 6
			if text_pos > 0 and text_pos < size[1] - 50 then
				local text = i / 10
				if text >= 36 then text = text - 36
				elseif text	< 0 then text = text + 36 end
				
				if text < 10 then text = " "..text end
				
				drawText(fid, text_pos, 10, text, 32, false, false, TEXT_ALIGN_LEFT, {1,1,1,1})
			end --]]
		else -- small lines
			local line_pos = 240 + (i - crs) * 6
			if line_pos > 0 and line_pos < size[1] - 5 then
				drawRectangle(line_pos, 30, 5, 35, 1, 1, 1, 1) -- plain line
			end
		end
	
	
	end
	
	--]]
	
	
	
	
	
end