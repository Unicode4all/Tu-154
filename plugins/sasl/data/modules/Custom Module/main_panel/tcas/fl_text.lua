-- this is TCAS main screen
size = {170, 45}

defineProperty("text")

local font = loadFont('Verdana.ttf')

function draw()

	drawText(font, 0, 0, get(text), 12, false, false, TEXT_ALIGN_LEFT, {1.0, 0.8, 0.7})

end

