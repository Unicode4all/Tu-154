-- this is TCAS main screen
size = {170, 45}

defineProperty("text")

local font = loadFont('segmental.fnt')

function draw()

	drawText(font, 0, 0, get(text), 1, 0.8, 0.7)

end

