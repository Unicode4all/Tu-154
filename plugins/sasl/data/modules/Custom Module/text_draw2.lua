-- this is text drawing component

defineProperty("text")
defineProperty("color", { 0, 0, 0, 1 })
defineProperty("bitmap", false)
defineProperty("font", loadFont("AVIA.ttf"))

function draw()
	local c = get(color)
	drawBitmapText(get(font), 0, 0, get(text), TEXT_ALIGN_LEFT, { c[1], c[2], c[3], c[4] })
end
