-- this is the example of how to build a Bezier Curve


size = {100, 100}


-- pint 1
defineProperty("x_1", 0)
defineProperty("y_1", 0)
-- point 2
defineProperty("x_2", 100)
defineProperty("y_2", 0)
-- handle
defineProperty("x_p", 50)
defineProperty("y_p", 100)
-- aux params
defineProperty("quality", 100)
defineProperty("thickness", 1)
-- colour
defineProperty("color_r", 1)
defineProperty("color_g", 0)
defineProperty("color_b", 1)
defineProperty("color_a", 1)

function draw()
		-- draw bezier curve
		
		local x1, y1 = get(x_1), get(y_1) -- first point
		local x2, y2 = get(x_2), get(y_2) -- second point
		
		local xp, yp = get(x_p), get(y_p) -- bezier handle

		local Q = get(quality)
		local TH = get(thickness)
		
		local r, g, b, a = get(color_r), get(color_g), get(color_b), get(color_a)
		
		-- draw bezier
		for i = 0, Q, 1 do
			
			-- calculate intermediate points on handle lines
			local xp1 = (xp - x1) * i / Q + x1
			local yp1 = (yp - y1) * i / Q + y1
			
			local xp2 = (x2 - xp) * i / Q + xp
			local yp2 = (y2 - yp) * i / Q + yp
			
			local bx = (xp2 - xp1) * i / Q + xp1
			local by = (yp2 - yp1) * i / Q + yp1
			
			
			-- handle lines
			--drawRectangle(xp1, yp1, 2, 2, 1, 0.5, 0, 1)
			--drawRectangle(xp2, yp2, 2, 2, 1, 0.5, 0, 1)
			
			-- result bezier curve
			drawRectangle(bx-TH/2, by-TH/2, TH, TH, r, g, b, a)
			
		end
		
end