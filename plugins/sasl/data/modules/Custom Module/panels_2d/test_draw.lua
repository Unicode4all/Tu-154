-- test drawing to texture
size = {1024, 1024}

defineProperty("image")

function draw()
	
	setRenderTarget(get(image))
	
	drawTexture(get(image), 0, 0, size[1],size[2])
	
	drawRectangle(0,0,size[1],size[2],1,1,1,1)
	
	restoreRenderTarget()

end