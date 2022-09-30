-- this is temporary script for generating the code, that will create custom DataRefs

-- escape sybols:
-- "\040" = (
-- "\041" = )
-- " \" " = "
-- ' " ' = "

-- in this example, table must be in following format:
-- dataref name [TAB] dataref type [tab] dataref description [TAB] dataref initial value
-- like this:
-- tu154ce/anim/cargo_1	float	положение багажной двери 1. 0 - закрыта, 1 - открыта	0

-- sasl.getAircraftPath() = path to your aircraft

print("panel dir = ",sasl.getAircraftPath())

local dataref_filename = sasl.getAircraftPath() .. "/Custom Avionics/DataRefsTu154_int.txt" -- path for source file
local save_filename = sasl.getAircraftPath() .. "/Custom Avionics/dataref_creator_2.lua" -- path for output fils

local dataref_file = io.open(dataref_filename, "r") -- read the source file
local save_file = io.open(save_filename, "w") -- save output file

if dataref_file then

	while true do
		local line = dataref_file:read("*line") -- read file line by line
		if line == nil then break end
		
		local a = 0
		local b = string.find(line, "\t", a) -- find next tab
		if b ~= nil and b > 9 then -- if we found an actual line with DataRef
			
			local dataref_name = string.sub(line, a, b-1)
			
			a = b
			b = string.find(line, "\t", a+1) -- find next tab			
			local dataref_type = string.sub(line, a+1, b-1)
			-- convert type to one letter
			if dataref_type == "float" then dataref_type = "f"
			elseif dataref_type == "int" then dataref_type = "i"
			elseif dataref_type == "string" then dataref_type = "s"
			elseif dataref_type == "double" then dataref_type = "d"
			end 
			
			a = b
			b = string.find(line, "\t", a+1) -- find next tab
			dataref_descr = string.sub(line, a+1, b-1)

			dataref_value = string.sub(line, b+1) -- find everything to the end of the line
			if not dataref_value or dataref_value == nil then dataref_value = "0" end
			
			local save_text = "createGlobalProperty"..dataref_type.."\040\""..dataref_name.."\", "..dataref_value.."\041".." -- "..dataref_descr.."\n"

			save_file:write (save_text) -- save text to output file
	
		end
		
	end

end
