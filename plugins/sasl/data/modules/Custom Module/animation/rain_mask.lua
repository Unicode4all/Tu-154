-- this is rain logic

-- dataRefs
defineProperty("wiper_angle_left", globalPropertyf("tu154ce/anim/wiper_angle_left"))
defineProperty("wiper_angle_right", globalPropertyf("tu154ce/anim/wiper_angle_right"))

-- enviroment
defineProperty("actual_rain", globalPropertyf("sim/weather/precipitation_on_aircraft_ratio"))

defineProperty("net_rain_ratio", globalPropertyf("tu154ce/anim/net_rain_ratio"))


defineProperty("indicated_airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed"))
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("thermo", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) -- outside temperature

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- create properties for main masks
local mask = {}
for i = 1, 2 do
	mask[i] = globalPropertyf("tu154ce/anim/rain_glass_"..i)
end


-- create properties for sectors. i = mask num, y = sector num
local wiper_mask_L = {}
local wiper_mask_R = {}
for i = 1, 2 do
	table.insert(wiper_mask_L, {})
	table.insert(wiper_mask_R, {})
	for y = 1, 5 do
		table.insert(wiper_mask_L[i], globalPropertyf("tu154ce/anim/rain_glass_"..i.."_w_"..y.."_L"))
		table.insert(wiper_mask_R[i], globalPropertyf("tu154ce/anim/rain_glass_"..i.."_w_"..y.."_R"))
	end
end


-- create tables
local mask_tbl = {}
for i = 1, 2 do
	mask_tbl[i] = 0
end

local wiper_mask_tbl_L = {}
local wiper_mask_tbl_R = {}
for i = 1, 2 do
	table.insert(wiper_mask_tbl_L, {})
	table.insert(wiper_mask_tbl_R, {})
	for y = 1, 5 do
		table.insert(wiper_mask_tbl_L[i], 0)
		table.insert(wiper_mask_tbl_R[i], 0)
	end
end



local appear_spd = {[1] = 0, [2] = 0} -- 1 for rain, 2 for snow



local wiper_L_last = get(wiper_angle_left)
local wiper_R_last = get(wiper_angle_right)


function update()
	
	local passed = get(frame_time)
	
local MASTER = get(ismaster) ~= 1	
	

if MASTER then		
	set(net_rain_ratio, get(actual_rain))
end	
	
	local precip_lvl = get(net_rain_ratio)
	local IAS = get(indicated_airspeed)
	local temperature = get(thermo)

	appear_spd[1] = (precip_lvl - math.min(0.05 + math.abs(IAS) * 0.0005, 0.5)) * 0.3 -- positive to appear, negative to hide
	if temperature < 0 then appear_spd[1] = -math.min(0.01 + math.abs(IAS) * 0.0005, 0.5) end

	appear_spd[2] = (precip_lvl - math.min(0.05 + math.abs(IAS) * 0.0005, 0.5)) * 0.1 -- positive to appear, negative to hide
	if temperature > 0 then appear_spd[2] = -math.min(0.01 + math.abs(IAS) * 0.0005, 0.5) * 0.5 end
	
	
	
	local wiper_L = get(wiper_angle_left)
	local wiper_R = get(wiper_angle_right)

	
	
	-- make drops appear or disappear on glass
	-- mask 1 for rain, mask 2 - for snow
	
	for i = 1, 2 do
		

		mask_tbl[i] = mask_tbl[i] + passed * appear_spd[i]
		if mask_tbl[i] > 1 then mask_tbl[i] = 1
		elseif mask_tbl[i] < 0 then mask_tbl[i] = 0 end
			
		set(mask[i], mask_tbl[i])

		-- added sectors here
		for y = 1, 5 do
			-- make drops appear
			wiper_mask_tbl_L[i][y] = wiper_mask_tbl_L[i][y] + passed * appear_spd[i]
			if wiper_mask_tbl_L[i][y] > 1 then wiper_mask_tbl_L[i][y] = 1
			elseif wiper_mask_tbl_L[i][y] < 0 then wiper_mask_tbl_L[i][y] = 0 end
				
			-- remove drops by wiper
			if wiper_L ~= wiper_L_last then -- wiper moves
				if wiper_L < 12 * y and wiper_L > 2 + (y*12 - 12) then wiper_mask_tbl_L[i][y] = 0 end 
				if wiper_L_last < 12 * y and wiper_L_last > 2 + (y*12 - 12) then wiper_mask_tbl_L[i][y] = 0 end 
			end
				
			if wiper_L > wiper_L_last then -- wiper goes forward
				if wiper_L > 12 * y and wiper_L_last < 2 + (y*12 - 12) then wiper_mask_tbl_L[i][y] = 0 end 
			elseif wiper_L < wiper_L_last then -- wiper goes back
				if wiper_L_last > 12 * y and wiper_L < 2 + (y*12 - 12) then wiper_mask_tbl_L[i][y] = 0 end 
			end
				
			--if wiper_L < 12 * y and wiper_L > 2 + (y*12 - 12) then wiper_mask_tbl_L[i][y] = 0 end
				
				
			set(wiper_mask_L[i][y], wiper_mask_tbl_L[i][y])	
				
				
				
			wiper_mask_tbl_R[i][y] = wiper_mask_tbl_R[i][y] + passed * appear_spd[i]
			if wiper_mask_tbl_R[i][y] > 1 then wiper_mask_tbl_R[i][y] = 1
			elseif wiper_mask_tbl_R[i][y] < 0 then wiper_mask_tbl_R[i][y] = 0 end
				
			-- remove drops by wiper
			if wiper_R ~= wiper_R_last then -- wiper moves
				if wiper_R < 12 * y and wiper_R > 2 + (y*12 - 12) then wiper_mask_tbl_R[i][y] = 0 end 
				if wiper_R_last < 12 * y and wiper_R_last > 2 + (y*12 - 12) then wiper_mask_tbl_R[i][y] = 0 end 
			end
				
			if wiper_R > wiper_R_last then -- wiper goes forward
				if wiper_R > 12 * y and wiper_R_last < 2 + (y*12 - 12) then wiper_mask_tbl_R[i][y] = 0 end 
			elseif wiper_R < wiper_R_last then -- wiper goes back
				if wiper_R_last > 12 * y and wiper_R < 2 + (y*12 - 12) then wiper_mask_tbl_R[i][y] = 0 end 
			end
				
			set(wiper_mask_R[i][y], wiper_mask_tbl_R[i][y])	
				
		end		
		

		
	end
	
	wiper_L_last = wiper_L
	wiper_R_last = wiper_R





end




--[[

tu154ce/anim/rain_glass_1
tu154ce/anim/rain_glass_2



tu154ce/anim/rain_glass_1_w_1_L
tu154ce/anim/rain_glass_1_w_2_L
tu154ce/anim/rain_glass_1_w_3_L
tu154ce/anim/rain_glass_1_w_4_L
tu154ce/anim/rain_glass_1_w_5_L

tu154ce/anim/rain_glass_2_w_1_L
tu154ce/anim/rain_glass_2_w_2_L
tu154ce/anim/rain_glass_2_w_3_L
tu154ce/anim/rain_glass_2_w_4_L
tu154ce/anim/rain_glass_2_w_5_L



tu154ce/anim/rain_glass_1_w_1_R
tu154ce/anim/rain_glass_1_w_2_R
tu154ce/anim/rain_glass_1_w_3_R
tu154ce/anim/rain_glass_1_w_4_R
tu154ce/anim/rain_glass_1_w_5_R

tu154ce/anim/rain_glass_2_w_1_R
tu154ce/anim/rain_glass_2_w_2_R
tu154ce/anim/rain_glass_2_w_3_R
tu154ce/anim/rain_glass_2_w_4_R
tu154ce/anim/rain_glass_2_w_5_R




--]]