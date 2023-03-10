
panel = loadImage(getAircraftPath() .. "/cockpit/-PANELS-/panel.png")


function draw()
    drawTexture(panel, 0, 0, 512, 512, {1,1,1,1})
    drawFrame()
end