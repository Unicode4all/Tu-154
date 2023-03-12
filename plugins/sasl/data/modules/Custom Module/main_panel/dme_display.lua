
defineProperty("color", {1,1,1,1})
defineProperty("text", "")

font = loadFont("digital7.ttf")
chrs = {} 

local function split(str)
    if #str>0 then return str:sub(1,1),split(str:sub(2)) end
  end

function draw()
    local t
    if type(get(text)) ~= "string" then
        t = tostring(get(text))
    else
        t = get(text)
    end
    
    local chars = {split(t)}
    drawText(font, 0, 0, chars[1] or "", 65, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 42, 0, chars[2] or "", 65, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 94, 0, chars[3] or "", 65, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 135, 0, chars[4] or "", 66, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 148, 0, chars[5] or "", 65, true, true, TEXT_ALIGN_LEFT, get(color))
end