-- draws texture independed of cockpit lighting system

-- no default texture
defineProperty("image")
defineProperty("position")
defineProperty("size_w")
defineProperty("size_h")

function draw(self) 
    drawTexture(get(image), 0, 0, get(position)[3] or 100, get(position)[4] or 100, {1, 1, 1}) 
end


