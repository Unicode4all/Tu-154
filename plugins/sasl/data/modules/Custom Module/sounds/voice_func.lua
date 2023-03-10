


-- move phrases one step up from given position
function move_phr(num)
	phrases_tbl[phrases_max] = {0, 0} -- reset last phrase
	for i = num, phrases_max - 1 do
		phrases_tbl[i] = phrases_tbl[i+1] 
	end
	return true
end

-- add some important phrase, that should be spoken next
-- if few phrases should be spoken - they must be added in reverse order
function add_important(phr) -- receives phrase as this: "{table_name["phrase_name"][lang], timeout}"
	
	-- move all phrases back one step
	
	for i = phrases_max - 1, 2, -1 do
		phrases_tbl[i] = phrases_tbl[i-1]
	end
	
	phrases_tbl[1] = phr
	
	return true
end

-- find empty slot in table
function find_empty()
	for i = 1, phrases_max - 1 do
		if phrases_tbl[i][1] == 0 then 
			return i
		end
	end	

	return phrases_max
end

-- find and remove one phrase
function find_remove(id)
	
	-- find id in phrases table
	local num = phrases_max
	for i = 1, phrases_max - 1 do
		if phrases_tbl[i][1] == id then 
			num = i
			move_phr(num)
		end
	end	
	
	return true
end


-- play first phrase from the table and move next ones up one step
function read_phrase()
	local timeout = phrases_tbl[1][2]
	if phrases_tbl[1][1] ~= 0 and get(enable_crew_vo) == 1 then if get(xplane_version) < 120000 then playSample(phrases_tbl[1][true], false) end end
	
	move_phr(1)
	
	return timeout -- return time to wait until next phrase
end

-- break the number into digits
function dep_number(number) -- maximum 5
	
	local d1 = math.floor(number / 10000)
    number = number - d1 * 10000
    local d2 = math.floor(number / 1000)
    number = number - d2 * 1000
    local d3 = math.floor(number / 100)
    number = number - d3 * 100
    local d4 = math.floor(number / 10)
    local d5 = number - d4 * 10
    
	return d1, d2, d3, d4, d5

end


function capt_say_num(number, length, lang)

	local num_table = {}
	
	num_table[1], num_table[2], num_table[3], num_table[4], num_table[5] = dep_number(number)
	
	for i = 6 - length, 5, 1 do
		local num = find_empty()
		
		local pause = 0
		if i == 5 then pause = 0.5 end
		
		if     num_table[i] == 0 then phrases_tbl[num] = {cpt_tbl["0"][lang], 0.5 + pause}
		elseif num_table[i] == 1 then phrases_tbl[num] = {cpt_tbl["1"][lang], 0.5 + pause}
		elseif num_table[i] == 2 then phrases_tbl[num] = {cpt_tbl["2"][lang], 0.5 + pause}
		elseif num_table[i] == 3 then phrases_tbl[num] = {cpt_tbl["3"][lang], 0.5 + pause}
		elseif num_table[i] == 4 then phrases_tbl[num] = {cpt_tbl["4"][lang], 0.5 + pause}
		elseif num_table[i] == 5 then phrases_tbl[num] = {cpt_tbl["5"][lang], 0.5 + pause}
		elseif num_table[i] == 6 then phrases_tbl[num] = {cpt_tbl["6"][lang], 0.5 + pause}
		elseif num_table[i] == 7 then phrases_tbl[num] = {cpt_tbl["7"][lang], 0.5 + pause}
		elseif num_table[i] == 8 then phrases_tbl[num] = {cpt_tbl["8"][lang], 0.5 + pause}
		elseif num_table[i] == 9 then phrases_tbl[num] = {cpt_tbl["9"][lang], 0.5 + pause}
		end
		
	end
	
	return true

end


function cop_say_num(number, length, lang)

	local num_table = {}
	
	num_table[1], num_table[2], num_table[3], num_table[4], num_table[5] = dep_number(number)
	
	for i = 6 - length, 5, 1 do
		local num = find_empty()
		
		local pause = 0
		if i == 5 then pause = 0.5 end
		
		if     num_table[i] == 0 then phrases_tbl[num] = {cop_tbl["0"][lang], 0.5 + pause}
		elseif num_table[i] == 1 then phrases_tbl[num] = {cop_tbl["1"][lang], 0.5 + pause}
		elseif num_table[i] == 2 then phrases_tbl[num] = {cop_tbl["2"][lang], 0.5 + pause}
		elseif num_table[i] == 3 then phrases_tbl[num] = {cop_tbl["3"][lang], 0.5 + pause}
		elseif num_table[i] == 4 then phrases_tbl[num] = {cop_tbl["4"][lang], 0.5 + pause}
		elseif num_table[i] == 5 then phrases_tbl[num] = {cop_tbl["5"][lang], 0.5 + pause}
		elseif num_table[i] == 6 then phrases_tbl[num] = {cop_tbl["6"][lang], 0.5 + pause}
		elseif num_table[i] == 7 then phrases_tbl[num] = {cop_tbl["7"][lang], 0.5 + pause}
		elseif num_table[i] == 8 then phrases_tbl[num] = {cop_tbl["8"][lang], 0.5 + pause}
		elseif num_table[i] == 9 then phrases_tbl[num] = {cop_tbl["9"][lang], 0.5 + pause}
		end
	end
	
	return true

end


function nav_say_num(number, length, lang)

	local num_table = {}
	
	num_table[1], num_table[2], num_table[3], num_table[4], num_table[5] = dep_number(number)
	
	for i = 6 - length, 5, 1 do
		local num = find_empty()
		
		local pause = 0
		if i == 5 then pause = 0.5 end
		
		if     num_table[i] == 0 then phrases_tbl[num] = {nav_tbl["0"][lang], 0.5 + pause}
		elseif num_table[i] == 1 then phrases_tbl[num] = {nav_tbl["1"][lang], 0.5 + pause}
		elseif num_table[i] == 2 then phrases_tbl[num] = {nav_tbl["2"][lang], 0.5 + pause}
		elseif num_table[i] == 3 then phrases_tbl[num] = {nav_tbl["3"][lang], 0.5 + pause}
		elseif num_table[i] == 4 then phrases_tbl[num] = {nav_tbl["4"][lang], 0.5 + pause}
		elseif num_table[i] == 5 then phrases_tbl[num] = {nav_tbl["5"][lang], 0.5 + pause}
		elseif num_table[i] == 6 then phrases_tbl[num] = {nav_tbl["6"][lang], 0.5 + pause}
		elseif num_table[i] == 7 then phrases_tbl[num] = {nav_tbl["7"][lang], 0.5 + pause}
		elseif num_table[i] == 8 then phrases_tbl[num] = {nav_tbl["8"][lang], 0.5 + pause}
		elseif num_table[i] == 9 then phrases_tbl[num] = {nav_tbl["9"][lang], 0.5 + pause}
		end
	end
	
	return true

end


function eng_say_num(number, length, lang)

	local num_table = {}
	
	num_table[1], num_table[2], num_table[3], num_table[4], num_table[5] = dep_number(number)
	
	for i = 6 - length, 5, 1 do
		local num = find_empty()
		
		local pause = 0
		if i == 5 then pause = 0.5 end
		
		if     num_table[i] == 0 then phrases_tbl[num] = {eng_tbl["0"][lang], 0.5 + pause}
		elseif num_table[i] == 1 then phrases_tbl[num] = {eng_tbl["1"][lang], 0.5 + pause}
		elseif num_table[i] == 2 then phrases_tbl[num] = {eng_tbl["2"][lang], 0.5 + pause}
		elseif num_table[i] == 3 then phrases_tbl[num] = {eng_tbl["3"][lang], 0.5 + pause}
		elseif num_table[i] == 4 then phrases_tbl[num] = {eng_tbl["4"][lang], 0.5 + pause}
		elseif num_table[i] == 5 then phrases_tbl[num] = {eng_tbl["5"][lang], 0.5 + pause}
		elseif num_table[i] == 6 then phrases_tbl[num] = {eng_tbl["6"][lang], 0.5 + pause}
		elseif num_table[i] == 7 then phrases_tbl[num] = {eng_tbl["7"][lang], 0.5 + pause}
		elseif num_table[i] == 8 then phrases_tbl[num] = {eng_tbl["8"][lang], 0.5 + pause}
		elseif num_table[i] == 9 then phrases_tbl[num] = {eng_tbl["9"][lang], 0.5 + pause}
		end
	end
	
	return true

end

















