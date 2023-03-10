-- draw texture

-- no default texture
defineProperty("image")
defineProperty("position")

function draw(self) 
    drawTexture(get(image), 0, 0, get(position)[3] or 100, get(position)[4] or 100) 
end

