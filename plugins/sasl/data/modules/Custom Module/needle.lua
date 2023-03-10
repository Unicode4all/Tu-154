
-- default angle
defineProperty("angle", 0)

-- no image
defineProperty("image")

function draw(self)
    local w, h = getTextureSize(get(image))
    
    local max = w
    if h > max then
        max = h
    end

    local rw = (w / max) * (get(position)[3] or 100)
    local rh = (h / max) * (get(position)[4] or 100)
    drawRotatedTexture(get(image), get(angle), 
        ((get(position)[3] or 100) - rw) / 2, ((get(position)[4] or 100) - rh) / 2, rw, rh)
end

