print("Tu154 v2.0.6")

--defineProperty("mem", globalPropertyf("sim/private/stats/lua/total_bytes_alloc_maximum")) -- memory count


--[[
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame

local counter = 0

function update()

	counter = counter + get(frame_time)
	
	if counter > 1 then
		counter = 0
		print(get(mem))
	end


end

--]]