-- taws sound logic

defineProperty("taws_english", globalPropertyi("tu154ce/taws/taws_english")) -- язык системы. 0 - русский, 1 - английский	0

defineProperty("taws_eng_phrase", globalPropertyi("tu154ce/sounds/taws_eng_phrase")) -- номер фразы СРПБЗ на английском
defineProperty("taws_rus_phrase", globalPropertyi("tu154ce/sounds/taws_rus_phrase")) -- номер фразы СРПБЗ на русском

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment

-- sounds

local eng_alt_50 = loadSample('Custom Sounds/taws/eng/alt_50.wav')
local eng_alt_200 = loadSample('Custom Sounds/taws/eng/alt_200.wav')
local eng_alt_500 = loadSample('Custom Sounds/taws/eng/alt_500.wav')
local eng_alt_1000 = loadSample('Custom Sounds/taws/eng/alt_1000.wav')
local eng_check_alt = loadSample('Custom Sounds/taws/eng/check_alt.wav')
local eng_dont_sink = loadSample('Custom Sounds/taws/eng/dont_sink.wav')
local eng_glideslope = loadSample('Custom Sounds/taws/eng/glideslope.wav')
local eng_pull_up = loadSample('Custom Sounds/taws/eng/pull_up.wav')
local eng_sink_rate = loadSample('Custom Sounds/taws/eng/sink_rate.wav')
local eng_terrain = loadSample('Custom Sounds/taws/eng/terrain.wav')
local eng_terrain_ahead = loadSample('Custom Sounds/taws/eng/terrain_ahead.wav')
local eng_too_low_flaps = loadSample('Custom Sounds/taws/eng/too_low_flaps.wav')
local eng_too_low_gear = loadSample('Custom Sounds/taws/eng/too_low_gear.wav')
local eng_too_low_terrain = loadSample('Custom Sounds/taws/eng/too_low_terrain.wav')


local rus_alt_5 = loadSample('Custom Sounds/taws/rus/alt_5.wav')
local rus_alt_10 = loadSample('Custom Sounds/taws/rus/alt_10.wav')
local rus_alt_15 = loadSample('Custom Sounds/taws/rus/alt_15.wav')
local rus_alt_20 = loadSample('Custom Sounds/taws/rus/alt_20.wav')
local rus_alt_25 = loadSample('Custom Sounds/taws/rus/alt_25.wav')
local rus_alt_30 = loadSample('Custom Sounds/taws/rus/alt_30.wav')
local rus_alt_40 = loadSample('Custom Sounds/taws/rus/alt_40.wav')
local rus_alt_50 = loadSample('Custom Sounds/taws/rus/alt_50.wav')
local rus_alt_60 = loadSample('Custom Sounds/taws/rus/alt_60.wav')
local rus_alt_150 = loadSample('Custom Sounds/taws/rus/alt_150.wav')
local rus_check_alt = loadSample('Custom Sounds/taws/rus/check_alt.wav')
local rus_dont_sink = loadSample('Custom Sounds/taws/rus/dont_sink.wav')
local rus_glideslope = loadSample('Custom Sounds/taws/rus/glideslope.wav')
local rus_pull_up = loadSample('Custom Sounds/taws/rus/pull_up.wav')
local rus_sink_rate = loadSample('Custom Sounds/taws/rus/sink_rate.wav')
local rus_terrain = loadSample('Custom Sounds/taws/rus/terrain.wav')
local rus_terrain_ahead = loadSample('Custom Sounds/taws/rus/terrain_ahead.wav')
local rus_too_low_flaps = loadSample('Custom Sounds/taws/rus/too_low_flaps.wav')
local rus_too_low_gear = loadSample('Custom Sounds/taws/rus/too_low_gear.wav')
local rus_too_low_terrain = loadSample('Custom Sounds/taws/rus/too_low_terrain.wav')



function update()
	
	if get(taws_english) == 1 and get(external_view) == 0 then -- english mode
	
		local num = get(taws_eng_phrase)
		
		if num == 0 then
			
		-- play selected sample
		elseif num == 1 then playSample(eng_alt_50, 0)
		elseif num == 2 then playSample(eng_alt_200, 0)
		elseif num == 3 then playSample(eng_alt_500, 0)
		elseif num == 4 then playSample(eng_alt_1000, 0)
		elseif num == 11 then playSample(eng_check_alt, 0)
		elseif num == 12 then playSample(eng_dont_sink, 0)
		elseif num == 13 then playSample(eng_glideslope, 0)
		elseif num == 14 then playSample(eng_pull_up, 0)
		elseif num == 15 then playSample(eng_sink_rate, 0)
		elseif num == 16 then playSample(eng_terrain, 0)
		elseif num == 17 then playSample(eng_terrain_ahead, 0)
		elseif num == 18 then playSample(eng_too_low_flaps, 0)
		elseif num == 19 then playSample(eng_too_low_gear, 0)
		elseif num == 20 then playSample(eng_too_low_terrain, 0)
		
		
		end
		
		set(taws_eng_phrase, 0) -- reset number of sample
		
	
	
	elseif get(external_view) == 0 then -- russian mode
	
		local num = get(taws_rus_phrase)
	
		if num == 0 then 
			
		
		elseif num == 1 then playSample(rus_alt_5, 0)
		elseif num == 2 then playSample(rus_alt_10, 0)
		elseif num == 3 then playSample(rus_alt_15, 0)
		elseif num == 4 then playSample(rus_alt_20, 0)
		elseif num == 5 then playSample(rus_alt_25, 0)
		elseif num == 6 then playSample(rus_alt_30, 0)
		elseif num == 7 then playSample(rus_alt_40, 0)
		elseif num == 8 then playSample(rus_alt_50, 0)
		elseif num == 9 then playSample(rus_alt_60, 0)
		elseif num == 10 then playSample(rus_alt_150, 0)
		elseif num == 11 then playSample(rus_check_alt, 0)
		elseif num == 12 then playSample(rus_dont_sink, 0)
		elseif num == 13 then playSample(rus_glideslope, 0)
		elseif num == 14 then playSample(rus_pull_up, 0)
		elseif num == 15 then playSample(rus_sink_rate, 0)
		elseif num == 16 then playSample(rus_terrain, 0)
		elseif num == 17 then playSample(rus_terrain_ahead, 0)
		elseif num == 18 then playSample(rus_too_low_flaps, 0)
		elseif num == 19 then playSample(rus_too_low_gear, 0)
		elseif num == 20 then playSample(rus_too_low_terrain, 0)	
	
	
		end
	
		set(taws_rus_phrase, 0)  -- reset number of sample
	
	
	end
	
	
	
	




end

