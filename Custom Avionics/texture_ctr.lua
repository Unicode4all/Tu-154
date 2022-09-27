-- draw texture

-- no default texture
defineProperty("image")
defineProperty("lapha")

function draw(self) 
	local a = get(alpha)
    drawTexture(get(image), 0, 0, 100, 100, a, a, a) 
end

