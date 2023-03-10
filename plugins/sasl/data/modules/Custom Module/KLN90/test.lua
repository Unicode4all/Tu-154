require 'effil'

local f = io.popen([[""D:\Games/XPlane11.5/Aircraft/Laminar Research/Cessna 172SP/plugins/KLN90B/data/modules/luajit-master/luajit" "D:/Games/XPlane11.5/Aircraft/Laminar Research/Cessna 172SP/plugins/KLN90B/data/modules/luajit-master/database_gen.lua""]], "r")

--local f = io.popen(command, "w")

-- local f = io.popen(command, "r")
local o = ""
local count = 0
while o == "" do
count = count + 1
local s = f:read('*line')
if s ~= nil then
o = string.format("%s",s )
end
f:close()
end

print(count, o)