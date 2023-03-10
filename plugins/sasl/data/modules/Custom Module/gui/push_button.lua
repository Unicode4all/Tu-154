defineProperty("click", nil)
defineProperty("label", "")

defineProperty("color", { 0, 0.4, 0.6, 1 })
defineProperty("frame_color", { 0, 0.3, 0.5, 1 })
defineProperty("hover_color", { 0.6, 0.1, 0.1, 1 })

state = {
    hover = false
}

function onMouseDown(component, x, y, button, parentX, parentY)
    if button == MB_LEFT then
        print(" Handled ! ")
    end
    return true
end

function update()

end

function onMouseMove(comp, x, y, button, parentX, parentY)
    state.hover = true
    return true
end

function onMouseLeave()
    state.hover = false
end

function draw()
    if state.hover then
        drawRectangle(0, 0, get(position)[3], get(position)[4], get(hover_color))
    else
        drawRectangle(0, 0, get(position)[3], get(position)[4], get(color))
    end
    drawFrame(0, 0, get(position)[3], get(position)[4], get(frame_color))
    drawText(font, get(position)[3] / 2, (get(position)[4] - 10) / 2, get(label), 12, false, false, TEXT_ALIGN_CENTER,
    { 1, 1, 1, 1 })
end
