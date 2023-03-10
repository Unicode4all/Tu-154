-- this is TCAS main screen
size = {170, 45}

defineProperty("text")

font = loadFont("digital7.ttf")

function draw()
	local f = get(font)
	drawText(f, 0, 0, get(text), 52, false, false, TEXT_ALIGN_LEFT, {1, 0.8, 0.7})

end

