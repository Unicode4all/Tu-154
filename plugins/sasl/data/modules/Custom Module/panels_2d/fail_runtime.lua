-- this script draws table of runtimes

size = {100, 100}


local text_font = loadFont('basic_font.fnt')


defineProperty("drawTable") -- table of heights
defineProperty("value") -- table of heights

function draw()
	
	local runtime = get(drawTable)
	val = get(value)
	
	local runPos = 0
	
	for k,v in ipairs(runtime) do
		
		drawText(text_font, 0, -runPos * 30, v[1].." : "..v[2].." "..val, 0, 0, 0, 1)
		runPos = runPos + 1
	end
	
	
	
	--[[
	for i = 1, #runtime do
		
		drawText(text_font, 0, i * 10, runtime[i], 1, 0, 0, 1)
	
	end
	--]]
	

end


