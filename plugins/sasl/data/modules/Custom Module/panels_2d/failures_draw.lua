-- this script draws table of failures

size = {100, 100}


local text_font = loadFont('Verdana.ttf')



defineProperty("drawTable") -- table of failures
defineProperty("maxDraw") -- table of failures

function draw()
	
	local tbl = get(drawTable)

	local pos = 0
	
	local count = get(maxDraw)
	
	for k, v in ipairs(tbl) do
		
		if pos < count / 2 then
			drawText(text_font, 0, -pos * 30, v, 32, false, false, 0, 0, 0, 1)
		elseif pos < get(maxDraw) then
			drawText(text_font, 500, -(pos - count / 2) * 30, v, 32, false, false, 0, 0, 0, 1)
		end
		
		pos = pos + 1
	
	end
	

end
