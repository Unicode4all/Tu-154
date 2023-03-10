-- this is text drawing component

defineProperty("text")
defineProperty("color", { 0, 0, 0, 1 })
defineProperty("monospace", false)
defineProperty("font_size", 24)
defineProperty("font", loadFont("AVIA.ttf"))
defineProperty("italic", false)

--s = get(size) or 12

if get(monospace) == true then
	setFontRenderMode(get(font), TEXT_RENDER_FORCED_MONO)
end

if get(italic) == true then
	setFontItalic(get(font), true)
end

function draw()
	local c = get(color)
	drawText(get(font), 0, 0, get(text), get(font_size), false, false, TEXT_ALIGN_LEFT, { c[1], c[2], c[3], c[4] })
end
