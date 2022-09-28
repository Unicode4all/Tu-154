-- this is a test logic for INS calculations..

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- world DataRefs
defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed")) -- groundspeed

defineProperty("latitude", globalPropertyd("sim/flightmodel/position/latitude")) -- real latitude position
defineProperty("longitude", globalPropertyd("sim/flightmodel/position/longitude")) -- The longitude of the aircraft
defineProperty("elevation", globalPropertyd("sim/flightmodel/position/elevation")) -- The longitude of the aircraft

defineProperty("true_course", globalPropertyf("sim/flightmodel/position/hpath")) -- true course, that aircraft moves to
	



include("nav_funcs.lua")




local lat_start = get(latitude)
local lon_start = get(longitude)

local lat_last = get(latitude)
local lon_last = get(longitude)

local counter = 0

local spd_last = get(groundspeed) * 1.943844492441
local crs_last = get(true_course)


function update()
	
	local passed = get(frame_time)
	
	--local lat_now = get(latitude)
	--local lon_now = get(longitude)

	
	if counter > 1 then
		
		-- speed
		local speed_now = get(groundspeed) * 1.943844492441
		local speed = (speed_now + spd_last) / 2
		spd_last = speed_now
		
		-- course
		local crs_now = get(true_course)
		local crs = (crs_now + crs_last) / 2
		crs_last = crs_now
		
		local de_dest = dist_new(speed, counter)
		
		--print(speed, "  ", crs, "  ", de_dest)
		
		-- try to calculate coordinates by using speed, course and last coords.
		
		local lat_new, lon_new = calcDest(lat_last, lon_last, crs, de_dest)
		
		--print(lat_new, "  ", lon_new)
		
		lat_last = lat_new
		lon_last = lon_new
		
		counter = 0
		
	end
	
	counter = counter + passed
	



end