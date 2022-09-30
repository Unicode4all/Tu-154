-- this is text drawing component


defineProperty("text")
defineProperty("color", { 0, 0, 0, 1 })
font = loadFont("Verdana.ttf")

function draw()
	
	local c = get(color)
	local f = get(font)
	drawText(f, 0, 0, get(text), 16, false, false, TEXT_ALIGN_LEFT, {c[1], c[2], c[3], c[4]})

end