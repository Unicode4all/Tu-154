-- this is text drawing component


defineProperty("text")
defineProperty("color", { 0, 0, 0, 1 })
defineProperty("font", loadFont('basic_font.fnt'))

function draw()
	
	local c = get(color)
	
	drawText(get(font), 0, 0, get(text), c[1], c[2], c[3], c[4])

end