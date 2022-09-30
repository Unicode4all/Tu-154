-- this is an airfoil manipulator script
size = {1000, 500}


local afl_tab = {}


local prefile = ""
local endfile = ""


local afl_file = sasl.getAircraftPath().."/airfoils/wing.afl"
local afl2 = sasl.getAircraftPath().."/airfoils/wing_test.afl"



local prefile_passed = false
local endfile_passed = false

local function read_file()
	
	local file = io.open(afl_file, "r") -- open file for reading
	
	if file then
		--local text = file:read("*a")
		
		while true do
			local line = file:read("*line")
			if line == nil then break end
			
			-- prefile
			if not prefile_passed then
				prefile = prefile..line.."\n"
				
			end
			
			
			
			if string.find(line, "-0.25000") then endfile_passed = true end
			
			--if line == "-0.25000  0.00000" then endfile_passed = true end
			
			-- endfile
			if endfile_passed then
				endfile = endfile..line.."\n"
			end
			
			
					
			if prefile_passed and not endfile_passed then
				--print(line)
				
				local a = 1
				
				--print("_"..string.sub(line, a, a).."_")
				
				while string.sub(line, a, a) == " " do -- find first symbol, that is not a space
					a = a + 1
				end
				
				local b = string.find(line, " ", a+1) -- find next space
				
				if b > 1 then
					local dg = tonumber(string.sub(line, a, b))
					
					--print(dg)
					
					if dg ~= nil then
						a = b
						b = string.find(line, " ", a+3)
						local cl = tonumber(string.sub(line, a, b))
						
						a = b
						b = string.find(line, " ", a+3)
						local cd = tonumber(string.sub(line, a, b))
						
						a = b
						b = string.find(line, " ", a+3)
						local cm = tonumber(string.sub(line, a, b))
						
						--local i = (dg+360) * 10
						
						afl_tab[tostring(dg)] = {cl, cd, cm}
						
					end
										
				end
							
			end
			
			if line == "alpha cl cd cm:" then prefile_passed = true end
			
		end	

	
		file:close()
		print("AFL reading: OK")
	else
		print("error reading AFL file")
	end
	
	
	
	return true
	
	
end


read_file()

local function write_file()

	local file = io.open(afl2, "w") -- open file for rewriting
	
	if file then

		file:write(prefile)
		
		for i = -180, -21, 1 do
			
			local x = tostring(i)
			
			local dg = i
			local cl = afl_tab[x][1]
			local cd = afl_tab[x][2]
			local cm = afl_tab[x][3]
			
			file:write(dg.."  "..cl.."  "..cd.."  "..cm.."\n")
			
		end
	
		local num = -200

		while num <= 200 do
			
			local x = num/10
			
			num = num + 1
			
			--print(x)
			
			x = tostring(x)
			
			--print(x)
			
			local dg = x
			local cl = afl_tab[x][1]
			local cd = afl_tab[x][2]
			local cm = afl_tab[x][3]
			file:write(dg.."  "..cl.."  "..cd.."  "..cm.."\n")

		end

		for i = 21, 180, 1 do
			
			local x = tostring(i)
			
			local dg = i
			local cl = afl_tab[x][1]
			local cd = afl_tab[x][2]
			local cm = afl_tab[x][3]
			
			file:write(dg.."  "..cl.."  "..cd.."  "..cm.."\n")
			
		end
		
		

		file:write(endfile)
		
		file:close()
		
		print("AFL write OK")
	else
		print("AFL write state fail")
	end

	return true

end

--write_file()



function draw()
	
		

		
		
		
		
		-- draw angle mesh
		for i = -180, 180, 10 do
			local dg = i*2 + 500
			
			drawRectangle(dg, 0, 1, 500, 1, 0.5, 0.5, 0.5)
			
			if i == 0 then
				drawRectangle(dg, 0, 1, 500, 1, 0, 1, 1)
			end
			
			
		end
		
		-- draw graphs
		for i = -180, -21, 1 do
			
			local dg = i*2 + 500
			local cl = afl_tab[tostring(i)][1] * 150 + 250
			local cd = afl_tab[tostring(i)][2] * 100 + 250
			local cm = afl_tab[tostring(i)][3] * 200 + 250
			
			drawRectangle(dg, cl, 2, 2, 1, 0, 0, 1)
			drawRectangle(dg, cd, 2, 2, 0, 1, 0, 1)
			drawRectangle(dg, cm, 2, 2, 0, 0, 1, 1)
		end

		local num = -200

		while num <= 200 do
			
			local x = num/10
			
			num = num + 2
			
			local dg = x*2 + 500
			local cl = afl_tab[tostring(x)][1] * 150 + 250
			local cd = afl_tab[tostring(x)][2] * 100 + 250
			local cm = afl_tab[tostring(x)][3] * 200 + 250
			
			drawRectangle(dg, cl, 2, 2, 1, 0, 0, 1)
			drawRectangle(dg, cd, 2, 2, 0, 1, 0, 1)
			drawRectangle(dg, cm, 2, 2, 0, 0, 1, 1)			

		end
		
		for i = 21, 180, 1 do
			
			local dg = i*2 + 500
			local cl = afl_tab[tostring(i)][1] * 150 + 250
			local cd = afl_tab[tostring(i)][2] * 100 + 250
			local cm = afl_tab[tostring(i)][3] * 200 + 250
			
			drawRectangle(dg, cl, 2, 2, 1, 0, 0, 1)
			drawRectangle(dg, cd, 2, 2, 0, 1, 0, 1)
			drawRectangle(dg, cm, 2, 2, 0, 0, 1, 1)
		end
		
		
		

end