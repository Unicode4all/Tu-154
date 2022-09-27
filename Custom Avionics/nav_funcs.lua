-- this is a set of functions for navigational systems


-- distance by coords in degrees
function calc_range(lat1, lon1, lat2, lon2)
	
	lat1 = math.rad(lat1)
	lon1 = math.rad(lon1)
	lat2 = math.rad(lat2)
	lon2 = math.rad(lon2)
	
	
	local d = math.acos(math.sin(lat1) * math.sin(lat2) + math.cos(lat1) * math.cos(lat2) * math.cos(lon1-lon2))
	return math.abs(math.deg(d) * 60), math.abs(d) -- in nm and radians
end

-- true course by coords in deg
function calc_true_course(lat1, lon1, lat2, lon2, dist)
	-- dist must be in miles
	local tc = 0
	local foo, d = 0, 1

	if dist == nil then 
		foo, d = calc_range(lat1, lon1, lat2, lon2) 
	else d = math.rad(dist / 60) 
	end
	
	d = math.abs(d)
	
	if d < 0.00001 then return 0 end
	
	--if d <= 0.00001 and d >= -0.00001 then return 0 end
	
	if lat1 > 89.9 then tc = math.pi
	elseif lat1 < -89.9 then tc = 0
	elseif math.sin(math.rad(lon2-lon1)) > 0 then
		tc = math.acos((math.sin(math.rad(lat2)) - math.sin(math.rad(lat1)) * math.cos(d)) / (math.sin(d) * math.cos(math.rad(lat1))))
	else
		tc = 2 * math.pi - math.acos((math.sin(math.rad(lat2)) - math.sin(math.rad(lat1)) * math.cos(d)) / (math.sin(d) * math.cos(math.rad(lat1))))  
	end
	
	tc = math.deg(tc)
	
	while tc > 180 do tc = tc - 360 end
	while tc < -180 do tc = tc + 360 end
	
	return tc -- return degrees
	
end


function dist_new(speed, passed_time)
	
	return speed * passed_time / 3600	-- distane in miles
	
end

function deg2deg_min_sec(dd)
	
	dd = math.abs(dd)
	
	local d = math.floor(dd)
	local m = math.floor((dd - d) * 60)
	local s = math.floor((dd - d - m/60) * 3600)
	
	return d, m, s

end


local R = 6378.145 / 1.852 -- NM

-- calculate distance in nautical miles.   cords in radians
function calcDistanceRad(lat1, lon1, lat2, lon2)
    local d = math.acos(math.sin(lat1) * math.sin(lat2) + 
                  math.cos(lat1) * math.cos(lat2) *
                  math.cos(lon2 - lon1)) * R
    return d
end

-- calculate distance in nautical miles.   cords in degreese
function calcDistance(lat1, lon1, lat2, lon2)
    lat1 = math.rad(lat1)
    lon1 = math.rad(lon1)
    lat2 = math.rad(lat2)
    lon2 = math.rad(lon2)

    return calcDistanceRad(lat1, lon1, lat2, lon2)
end

-- calculate bearing from first point to second in radians
function calcBearingRad(lat1, lon1, lat2, lon2)
    if (lat1 == lat2) and (lon1 == lon2) then
        return 0
    end

    local dLon = lon2 - lon1

    local y = math.sin(dLon) * math.cos(lat2)
    local x = math.cos(lat1) * math.sin(lat2) -
		  math.sin(lat1) * math.cos(lat2) * math.cos(dLon)
    return math.atan2(y, x)
end

-- calculate bearing from first point to second
function calcBearing(lat1, lon1, lat2, lon2)
    lat1 = math.rad(lat1)
    lon1 = math.rad(lon1)
    lat2 = math.rad(lat2)
    lon2 = math.rad(lon2)

    return math.deg(calcBearingRad(lat1, lon1, lat2, lon2))
end

-- calculate midpoint
function calcMidpoint(lat1, lon1, lat2, lon2)
    lat1 = math.rad(lat1)
    lon1 = math.rad(lon1)
    lat2 = math.rad(lat2)
    lon2 = math.rad(lon2)

    local dLon = lon2 - lon1
    local Bx = math.cos(lat2) * math.cos(dLon)
    local By = math.cos(lat2) * math.sin(dLon)
    local lat3 = math.atan2(math.sin(lat1) + math.sin(lat2),
          math.sqrt((math.cos(lat1) + Bx) * (math.cos(lat1) + Bx) + By * By))
    local lon3 = lon1 + math.atan2(By, math.cos(lat1) + Bx)

    return math.deg(lat3), math.deg(lon3)
end


-- calculate cross track error
-- positive value means right of course, negative means left
-- returns cross track error and along track distance
function calcCrossTrackError(lat1, lon1, lat2, lon2, lat, lon)
    if (lat1 == lat2) and (lon1 == lon2) then
        return 0, 0
    end
    
    if (lat1 == lat) and (lon1 == lon) then
        return 0, 0
    end

    if (lat2 == lat) and (lon2 == lon) then
        return 0, 0
    end

    lat1 = math.rad(lat1)
    lon1 = math.rad(lon1)

    lat2 = math.rad(lat2)
    lon2 = math.rad(lon2)

    lat = math.rad(lat)
    lon = math.rad(lon)

    local distAD = (math.pi / (180.0 * 60.0)) * 
        calcDistanceRad(lat1, lon1, lat, lon)
    local crsAB = calcBearingRad(lat1, lon1, lat2, lon2)
    local crsAD = calcBearingRad(lat1, lon1, lat, lon)

    local xtd
    
    local deg90 = math.pi / 2.0
    if (0.00001 >= math.abs(lat1 - deg90)) then -- assuming north pole
        xtd = math.asin(math.sin(distAD) * math.sin(lon - lon2))
    elseif (0.00001 >= math.abs(lat1 + deg90)) then -- assuming south pole
        xtd = math.asin(math.sin(distAD) * math.sin(lon2 - lon))
    else
        xtd = math.asin(math.sin(distAD) * math.sin(crsAD - crsAB))
    end

    local sd2 = math.sin(distAD)
    local sx2 = math.sin(xtd)
    local atd = math.asin(math.sqrt(sd2 * sd2 - sx2 * sx2) / math.cos(xtd))

    return ((180.0 * 60.0) / math.pi) * xtd, 
        ((180.0 * 60.0) / math.pi) * atd
end


-- calculate destination from point
-- returns new point lat and lon
-- disttance in NM
function calcDest(lat, lon, bearing, distance)
    local lat1 = math.rad(lat)
    local lon1 = math.rad(lon)
    local d = distance
    local brng = math.rad(bearing)

    local lat2 = math.asin(math.sin(lat1)*math.cos(d/R) + 
                      math.cos(lat1)*math.sin(d/R)*math.cos(brng))
    local lon2 = lon1 + math.atan2(math.sin(brng)*math.sin(d/R)*math.cos(lat1), 
                      math.cos(d/R)-math.sin(lat1)*math.sin(lat2))
    return math.deg(lat2), math.deg(lon2)
end