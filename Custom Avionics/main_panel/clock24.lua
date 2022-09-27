-- source datarefs
defineProperty("utc_time", globalPropertyf("sim/time/zulu_time_sec"))


--[[
sim/custom/buttons/clock_24_left	int	левая кнопка 24-часовых часов. 0 - отжата, 1 - нажата (касается всех кнопок)
sim/custom/buttons/clock_24_right	int	правая кнопка 24-часовых часов
sim/custom/gauges/clock_24_hours	float	часовая стрелка
sim/custom/gauges/clock_24_mins	float	минутная стрелка
sim/custom/gauges/clock_24_red	float	красная стрелка

--]]

defineProperty("clock_24_hours", globalPropertyf("sim/custom/gauges/clock_24_hours"))
defineProperty("clock_24_mins", globalPropertyf("sim/custom/gauges/clock_24_mins"))
defineProperty("clock_24_red", globalPropertyf("sim/custom/gauges/clock_24_red"))

--math.randomseed( os.time() ) -- randomise random :)
set(clock_24_red, math.random(360))

function update()
	local main_time = get(utc_time) -- seconds
	
	local minutes_angle = main_time * 0.1 -- minutes
	local hour_angle = main_time * 360 / (60*60*24)
	
	set(clock_24_mins, minutes_angle)
	set(clock_24_hours, hour_angle)
	
end