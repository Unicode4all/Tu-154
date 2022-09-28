-- global functions
-- interpolates the table pairs values, like {[in1, out1], {in2, out2}, {in3, out3}}
function interpolate(tbl, value)
    local lastActual = 0
    local lastReference = 0
    for _k, v in pairs(tbl) do
        if value == v[1] then
            return v[2]
        end
        if value < v[1] then
            local a = value - lastActual
            local m = v[2] - lastReference
            return lastReference + a / (v[1] - lastActual) * m
        end
        lastActual = v[1]
        lastReference = v[2]
    end
    return value - lastActual + lastReference
end

-- return the sign of given number as +1 or -1
function sign(x)
	if x >= 0 then return 1 else return -1 end
end

-- return the integer 0 or 1 by give boolean
function bool2int(var)
	if var then return 1
	else return 0 end
end

-- returns Y on the line with two points by given X
function line(x, x1, y1, x2, y2)  
	-- (x - x1)/(x2 - x1) = (y - y1)/(y2 - y1) -- line function 
	
	if x2 - x1 ~= 0 then 
		return (x - x1)*(y2 - y1)/(x2 - x1) + y1
	else return 0 
	end

end

-- simply maps the input value with given range x1 x2 into range y1 y2
function map(value, x1, x2, y1, y2)
	return line (value, x1, y1, x2, y2)
end

-- returns true if current beacon is ILS
function isILS(freq)
    if (10810 > freq) or (11195 < freq) then
        return false
    end
    local v, f = math.modf(freq / 100)
	v = math.floor(f * 10 + 0.001)
    return 1 == (v % 2)
end


-- returns a table of digits for a rolling barrel type digit displays
-- procNum - is a processed number
-- digitsNum - number of digits in result
-- signed - additional digit for sign. -1 - negative, 0 - positive
function rotaryDigits(procNum, digitsNum, signed, negSHift, INT)
	
	if signed == nil then signed = false end
	if negSHift == nil then negSHift = -1 end
	if INT == nil then INT = false end
	local digitTable = {}
	if signed then 
		if procNum < 0 then digitTable[digitsNum+1] = negSHift else digitTable[digitsNum+1] = 0 end
	end
	procNum = math.abs(procNum)
	for i = 1, digitsNum do
		if i == 1 then -- if it's a first number, then just save it
			digitTable[i] = procNum % 10
			digitTable[i] = math.floor(digitTable[i] * 100) / 100
		else
			digitTable[i] = math.floor(procNum % 10^i / (10^(i-1))) -- get the integer number
			if digitTable[i-1] > 9 and digitTable[i-1] < 9.9999999 and not INT then -- add float part, when previous number is between 9 and 10
				digitTable[i] = digitTable[i] + (digitTable[i-1] - 9)
			end
			
		end
	end
	
	return digitTable
	
end


-- fixed rotary animation
function rotaryDigits2(procNum, digitsNum, signed, negSHift, INT)
	
	if signed == nil then signed = false end
	if negSHift == nil then negSHift = -1 end
	if INT == nil then INT = false end
	local digitTable = {}
	if signed then 
		if procNum < 0 then digitTable[digitsNum+1] = negSHift else digitTable[digitsNum+1] = 0 end
		procNum = math.abs(procNum)
	end
	for i = 1, digitsNum do
		if i == 1 then -- if it's a first number, then just save it
			digitTable[i] = procNum
			digitTable[i] = math.floor(digitTable[i] * 100) / 100
		else
			digitTable[i] = math.floor(procNum / (10^(i-1))) -- get the integer number
			if digitTable[i-1] > 9 and digitTable[i-1] < 9.9999999 and not INT then -- add float part, when previous number is between 9 and 10
				digitTable[i] = digitTable[i] + (digitTable[i-1] - 9) 
			end
		end
	end
	
	return digitTable
	
end

-- limit value into range vmin - vmax
-- if limits not set, defaults are 0-1 as most used
function limit(value, vmin, vmax)
	if not vmin then vmin = 0 end
	if not vmax then vmax = 1 end
	
	local lim = value
	if lim < vmin then lim = vmin 
	elseif lim > vmax then lim = vmax end
	
	return lim
end

-- map the value and limit it to given range
function mapLim(value, x1, x2, y1, y2)
	
	-- check range
	local limMin, limMax = y1, y2
	if limMin > limMax then limMin, limMax = limMax, limMin end
	
	return limit(map(value, x1, x2, y1, y2), limMin, limMax)

end

-- find maximum value in table and return it and its index
function tabMax(tab, num)
	if #tab == 0 then return nil, nil end
	
	if num == nil then num = #tab end
	
	local result = tab[1]
	local id = 1
	for i = 1, num do
		if result < tab[i] then result = tab[i] id = i end
	end
	
	return result, id
	
end

-- find minimum value in table and return it and its index
function tabMin(tab, num)
	if #tab == 0 then return nil, nil end
	
	if num == nil then num = #tab end
	
	local result = tab[1]
	local id = 1
	for i = 1, num do
		if result > tab[i] then result = tab[i] id = i end
	end
	
	return result, id
	
end

-- get mean value from the table
function tabMean(tab, num)
	if #tab == 0 then return nil, nil end
	
	if num == nil then num = #tab end
	
	local result = tab[1]
	for i = 2, num do
		result = result + tab[i]
	end
	
	result = result / num
	
	return result
	
end

-- returns summ of all elements in table
function tabSumm(tab)
	if #tab == 0 then return nil end
	
	local summ = 0
	for i, v in pairs(tab) do
		summ = summ + v
	end
	
	return summ 
	
end

-- shuffle the table. Just for fun :)
function tabShuffle(tab)
	if #tab == 0 or tab == nil then return false end
	for i = #tab, 2, -1 do
	  local j = math.random(i)
	  tab[i], tab[j] = tab[j], tab[i]
	end

	return true
end

-- print table
function tabPrint(tab)
	if #tab == 0 or tab == nil then return false end
	for i = 1, #tab do
		print(tab[i])
	end

	return true
end

-- print table as a line
function tabPrintRow(tab)
	if #tab == 0 or tab == nil then return false end
	local output = ""
	
	for i = 1, #tab do
		output = output .. tostring(tab[i]) .. "  "
	end
	print(output)
	return true
end

-- reduce the rotary circle. for example if deg > 360, do a circle back around
function around(value, minVal, maxVal, round)
	if not round then round = maxVal - minVal end
	while value < minVal do
		value = value + round
	end
	while value > maxVal do
		value = value - round
	end
	
	return value
end
