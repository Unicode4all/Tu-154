-- this is the crew voices logic
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- time of frame
defineProperty("hide_rus_objects", globalPropertyi("tu154ce/lang/hide_rus_objects")) -- спрятать русские объекты кабины

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master



defineProperty("replay_mode", globalPropertyi("sim/operation/prefs/replay_mode"))
defineProperty("enable_crew_vo", globalPropertyi("tu154ce/sounds/enable_crew_vo")) -- включены фразы екипажа



include("voice_tables.lua")
include("voice_func.lua")
include("voice_talk.lua")
include("chk_before_start.lua")
include("chk_before_taxi.lua")
include("chk_on_taxi.lua")
include("chk_before_lineup.lua")
include("chk_before_takeoff.lua")
include("chk_before_descend.lua")
include("chk_after_press_set.lua")
include("chk_before_base.lua")
include("chk_before_land.lua")




--[[
local n10000, n1000, n100, n10, n1 = dep_number(12345)

print(n10000, n1000, n100, n10, n1)
--]]


local talk_timeout = 3

function update()
	
	passed_time = get(frame_time)
	
	lang = get(hide_rus_objects) + 1 -- language
	
	-- read phrases
	talk_timeout = talk_timeout - passed_time
	
	if talk_timeout <= 0 then
		talk_timeout = read_phrase() -- read phrase and set new timeout
	end
	
	
	-- here will be logic of adding phrases into the table

	if get(ismaster) == 0 and get(replay_mode) == 0 then	-- talk only in singleplayer mode and not in replay mode
	
		regular_talk() 
		
		checklist_1()
		checklist_2()
		checklist_3()
		checklist_4()
		checklist_5()
		checklist_6()
		checklist_7()
		checklist_8()
		checklist_9()
	
	end	
	
	
end









