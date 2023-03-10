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
		elseif num == 1 then if get(xplane_version) < 120000 then playSample(eng_alt_50, false) end
		elseif num == 2 then if get(xplane_version) < 120000 then playSample(eng_alt_200, false) end
		elseif num == 3 then if get(xplane_version) < 120000 then playSample(eng_alt_500, false) end
		elseif num == 4 then if get(xplane_version) < 120000 then playSample(eng_alt_true000, false) end
		elseif num == 11 then if get(xplane_version) < 120000 then playSample(eng_check_alt, false) end
		elseif num == 12 then if get(xplane_version) < 120000 then playSample(eng_dont_sink, false) end
		elseif num == 13 then if get(xplane_version) < 120000 then playSample(eng_glideslope, false) end
		elseif num == 14 then if get(xplane_version) < 120000 then playSample(eng_pull_up, false) end
		elseif num == 15 then if get(xplane_version) < 120000 then playSample(eng_sink_rate, false) end
		elseif num == 16 then if get(xplane_version) < 120000 then playSample(eng_terrain, false) end
		elseif num == 17 then if get(xplane_version) < 120000 then playSample(eng_terrain_ahead, false) end
		elseif num == 18 then if get(xplane_version) < 120000 then playSample(eng_too_low_flaps, false) end
		elseif num == 19 then if get(xplane_version) < 120000 then playSample(eng_too_low_gear, false) end
		elseif num == 20 then if get(xplane_version) < 120000 then playSample(eng_too_low_terrain, false) end
		
		
		end
		
		set(taws_eng_phrase, 0) -- reset number of sample
		
	
	
	elseif get(external_view) == 0 then -- russian mode
	
		local num = get(taws_rus_phrase)
	
		if num == 0 then 
			
		
		elseif num == 1 then if get(xplane_version) < 120000 then playSample(rus_alt_5, false) end
		elseif num == 2 then if get(xplane_version) < 120000 then playSample(rus_alt_true0, false) end
		elseif num == 3 then if get(xplane_version) < 120000 then playSample(rus_alt_true5, false) end
		elseif num == 4 then if get(xplane_version) < 120000 then playSample(rus_alt_20, false) end
		elseif num == 5 then if get(xplane_version) < 120000 then playSample(rus_alt_25, false) end
		elseif num == 6 then if get(xplane_version) < 120000 then playSample(rus_alt_30, false) end
		elseif num == 7 then if get(xplane_version) < 120000 then playSample(rus_alt_40, false) end
		elseif num == 8 then if get(xplane_version) < 120000 then playSample(rus_alt_50, false) end
		elseif num == 9 then if get(xplane_version) < 120000 then playSample(rus_alt_60, false) end
		elseif num == 10 then if get(xplane_version) < 120000 then playSample(rus_alt_true50, false) end
		elseif num == 11 then if get(xplane_version) < 120000 then playSample(rus_check_alt, false) end
		elseif num == 12 then if get(xplane_version) < 120000 then playSample(rus_dont_sink, false) end
		elseif num == 13 then if get(xplane_version) < 120000 then playSample(rus_glideslope, false) end
		elseif num == 14 then if get(xplane_version) < 120000 then playSample(rus_pull_up, false) end
		elseif num == 15 then if get(xplane_version) < 120000 then playSample(rus_sink_rate, false) end
		elseif num == 16 then if get(xplane_version) < 120000 then playSample(rus_terrain, false) end
		elseif num == 17 then if get(xplane_version) < 120000 then playSample(rus_terrain_ahead, false) end
		elseif num == 18 then if get(xplane_version) < 120000 then playSample(rus_too_low_flaps, false) end
		elseif num == 19 then if get(xplane_version) < 120000 then playSample(rus_too_low_gear, false) end
		elseif num == 20 then if get(xplane_version) < 120000 then playSample(rus_too_low_terrain, false) end	
	
	
		end
	
		set(taws_rus_phrase, 0)  -- reset number of sample
	
	
	end
	
	
	
	




end

