-- this is engines sounds

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]")) -- engine 3 rpm

defineProperty("apd_working_1", globalPropertyf("tu154ce/start/apd_working_1")) -- работа системы запуска
defineProperty("apd_working_2", globalPropertyf("tu154ce/start/apd_working_2")) -- работа системы запуска
defineProperty("apd_working_3", globalPropertyf("tu154ce/start/apd_working_3")) -- работа системы запуска


defineProperty("eng_working_1", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]"))
defineProperty("eng_working_2", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]"))
defineProperty("eng_working_3", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]"))


defineProperty("apu_n1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ

-- camera position
defineProperty("cam_HDG", globalPropertyf("sim/graphics/view/view_heading")) -- CW from true north
defineProperty("cam_X", globalPropertyf("sim/graphics/view/view_x")) -- The location of the camera, X coordinate (OpenGL)
defineProperty("cam_Y", globalPropertyf("sim/graphics/view/view_y")) -- The location of the camera, Y coordinate (OpenGL)
defineProperty("cam_Z", globalPropertyf("sim/graphics/view/view_z")) -- The location of the camera, Z coordinate (OpenGL)


-- pilot head
defineProperty("pilot_hdg", globalPropertyf("sim/graphics/view/pilots_head_psi")) -- CW from forward in cockpit
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX")) -- Position of pilot's head relative to CG
defineProperty("pilot_Y", globalPropertyf("sim/aircraft/view/acf_peY")) -- Position of pilot's head relative to CG
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG


-- acf position
defineProperty("acf_hdg", globalPropertyf("sim/flightmodel/position/psi")) -- degrees	The true heading of the aircraft in degrees from the Z axis - OpenGL coordinates
defineProperty("acf_X", globalPropertyf("sim/flightmodel/position/local_x")) -- The location of the plane in OpenGL coordinates
defineProperty("acf_Y", globalPropertyf("sim/flightmodel/position/local_y")) -- The location of the plane in OpenGL coordinates
defineProperty("acf_Z", globalPropertyf("sim/flightmodel/position/local_z")) -- The location of the plane in OpenGL coordinates

defineProperty("cockpit_window_left", globalPropertyf("tu154ce/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154ce/anim/cockpit_window_right")) -- открытие форточки

defineProperty("pax_door_1", globalPropertyf("tu154ce/anim/pax_door_1")) -- положение передних пасс дверей
defineProperty("pax_door_2", globalPropertyf("tu154ce/anim/pax_door_2")) -- положение средних пасс дверей
defineProperty("pax_door_3", globalPropertyf("tu154ce/anim/pax_door_3")) -- положение правых аварийных дверей

defineProperty("cockpit_door", globalPropertyf("tu154ce/anim/cockpit_door")) -- положение правых аварийных дверей


defineProperty("eng_main_vol", globalPropertyf("sim/operation/sound/engine_volume_ratio")) -- регулятор громкости для двигателей
defineProperty("main_sound_on", globalPropertyi("sim/operation/sound/sound_on")) -- выключатель звука

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine



-- sounds files
local inn_middle_left_1 = loadSample('Custom Sounds/engines/inn_middle_left.wav')
local inn_middle_right_1 = loadSample('Custom Sounds/engines/inn_middle_right.wav')
local inn_starter_left_1 = loadSample('Custom Sounds/engines/inn_starter_left.wav')
local inn_starter_right_1 = loadSample('Custom Sounds/engines/inn_starter_right.wav')
local out_behind_left_1 = loadSample('Custom Sounds/engines/out_behind_left.wav')
local out_behind_right_1 = loadSample('Custom Sounds/engines/out_behind_right.wav')
local out_idle_left_1 = loadSample('Custom Sounds/engines/out_idle_left.wav')
local out_idle_right_1 = loadSample('Custom Sounds/engines/out_idle_right.wav')
local out_starter_left_1 = loadSample('Custom Sounds/engines/out_starter_left.wav')
local out_starter_right_1 = loadSample('Custom Sounds/engines/out_starter_right.wav')

local inn_middle_left_2 = loadSample('Custom Sounds/engines/inn_middle_left.wav')
local inn_middle_right_2 = loadSample('Custom Sounds/engines/inn_middle_right.wav')
local inn_starter_left_2 = loadSample('Custom Sounds/engines/inn_starter_left.wav')
local inn_starter_right_2 = loadSample('Custom Sounds/engines/inn_starter_right.wav')
local out_behind_left_2 = loadSample('Custom Sounds/engines/out_behind_left.wav')
local out_behind_right_2 = loadSample('Custom Sounds/engines/out_behind_right.wav')
local out_idle_left_2 = loadSample('Custom Sounds/engines/out_idle_left.wav')
local out_idle_right_2 = loadSample('Custom Sounds/engines/out_idle_right.wav')
local out_starter_left_2 = loadSample('Custom Sounds/engines/out_starter_left.wav')
local out_starter_right_2 = loadSample('Custom Sounds/engines/out_starter_right.wav')

local inn_middle_left_3 = loadSample('Custom Sounds/engines/inn_middle_left.wav')
local inn_middle_right_3 = loadSample('Custom Sounds/engines/inn_middle_right.wav')
local inn_starter_left_3 = loadSample('Custom Sounds/engines/inn_starter_left.wav')
local inn_starter_right_3 = loadSample('Custom Sounds/engines/inn_starter_right.wav')
local out_behind_left_3 = loadSample('Custom Sounds/engines/out_behind_left.wav')
local out_behind_right_3 = loadSample('Custom Sounds/engines/out_behind_right.wav')
local out_idle_left_3 = loadSample('Custom Sounds/engines/out_idle_left.wav')
local out_idle_right_3 = loadSample('Custom Sounds/engines/out_idle_right.wav')
local out_starter_left_3 = loadSample('Custom Sounds/engines/out_starter_left.wav')
local out_starter_right_3 = loadSample('Custom Sounds/engines/out_starter_right.wav')

local inn_apu_left = loadSample('Custom Sounds/engines/inn_apu_left.wav')
local inn_apu_right = loadSample('Custom Sounds/engines/inn_apu_right.wav')
local out_apu_left = loadSample('Custom Sounds/engines/out_apu_left.wav')
local out_apu_right = loadSample('Custom Sounds/engines/out_apu_right.wav')

local inn_reverse = loadSample('Custom Sounds/engines/inn_reverse.wav')

-- play all sounds
if get(xplane_version) < 120000 then playSample(inn_middle_left_1, true) end
if get(xplane_version) < 120000 then playSample(inn_middle_right_1, true) end
if get(xplane_version) < 120000 then playSample(out_behind_left_1, true) end
if get(xplane_version) < 120000 then playSample(out_behind_right_1, true) end
if get(xplane_version) < 120000 then playSample(out_idle_left_1, true) end
if get(xplane_version) < 120000 then playSample(out_idle_right_1, true) end

if get(xplane_version) < 120000 then playSample(inn_middle_left_2, true) end
if get(xplane_version) < 120000 then playSample(inn_middle_right_2, true) end
if get(xplane_version) < 120000 then playSample(out_behind_left_2, true) end
if get(xplane_version) < 120000 then playSample(out_behind_right_2, true) end
if get(xplane_version) < 120000 then playSample(out_idle_left_2, true) end
if get(xplane_version) < 120000 then playSample(out_idle_right_2, true) end

if get(xplane_version) < 120000 then playSample(inn_middle_left_3, true) end
if get(xplane_version) < 120000 then playSample(inn_middle_right_3, true) end
if get(xplane_version) < 120000 then playSample(out_behind_left_3, true) end
if get(xplane_version) < 120000 then playSample(out_behind_right_3, true) end
if get(xplane_version) < 120000 then playSample(out_idle_left_3, true) end
if get(xplane_version) < 120000 then playSample(out_idle_right_3, true) end

if get(xplane_version) < 120000 then playSample(inn_apu_left, true) end
if get(xplane_version) < 120000 then playSample(inn_apu_right, true) end
if get(xplane_version) < 120000 then playSample(out_apu_left, true) end
if get(xplane_version) < 120000 then playSample(out_apu_right, true) end

--if get(xplane_version) < 120000 then playSample(inn_reverse, true) end

		
setSampleGain(out_behind_left_1, 0)
setSampleGain(out_behind_right_1, 0)
setSampleGain(out_idle_left_1, 0)
setSampleGain(out_idle_right_1, 0)
setSampleGain(out_starter_left_1, 0)
setSampleGain(out_starter_right_1, 0)
		
setSampleGain(out_behind_left_2, 0)
setSampleGain(out_behind_right_2, 0)
setSampleGain(out_idle_left_2, 0)
setSampleGain(out_idle_right_2, 0)
setSampleGain(out_starter_left_2, 0)
setSampleGain(out_starter_right_2, 0)
		
setSampleGain(out_behind_left_3, 0)
setSampleGain(out_behind_right_3, 0)
setSampleGain(out_idle_left_3, 0)
setSampleGain(out_idle_right_3, 0)
setSampleGain(out_starter_left_3, 0)
setSampleGain(out_starter_right_3, 0)
		
setSampleGain(inn_middle_left_1, 0)
setSampleGain(inn_middle_right_1, 0)
setSampleGain(inn_starter_left_1, 0)
setSampleGain(inn_starter_right_1, 0)
	
setSampleGain(inn_middle_left_2, 0)
setSampleGain(inn_middle_right_2, 0)
setSampleGain(inn_starter_left_2, 0)
setSampleGain(inn_starter_right_2, 0)
		
setSampleGain(inn_middle_left_3, 0)
setSampleGain(inn_middle_right_3, 0)
setSampleGain(inn_starter_left_3, 0)
setSampleGain(inn_starter_right_3, 0)		
		
setSampleGain(inn_apu_left, 0)
setSampleGain(inn_apu_right, 0)
setSampleGain(out_apu_left, 0)
setSampleGain(out_apu_right, 0)

setSampleGain(inn_reverse, 0)

local rpm2gain_tbl = {
{0, 0},
{10, 0.1},
{50, 0.7},
{100, 1},
{10000, 1}
}


local out_pitch_tbl = 
{
{0, 200},
{5, 400},
{71, 1000},
{100, 2000},
{10000, 1}
}

local inn_pitch_tbl = 
{
{0, 200},
{5, 400},
{70, 1000},
{100, 2300},
{10000, 1}
}

local cam_hd = get(cam_HDG)
local acf_hd = get(acf_hdg)

local cam_x = get(cam_X)
local cam_y = get(cam_Y)
local cam_z = get(cam_Z)
	
local acf_x = get(acf_X)
local acf_y = get(acf_Y)
local acf_z = get(acf_Z)


local function out_balance (src_x, src_z, src_hdg, src_cone, fade_deg, fade_dist)


	-- need to calculate the world location of the sound source
	local hdg_rad = math.rad(acf_hd)
	local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	local z_s = acf_z - src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	
	
	local angle2source = cam_hd + math.deg(math.atan2(cam_x - x_s, cam_z - z_s)) -- angle from camera to the source
	
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	
	local angle2cam = math.deg(math.atan2(cam_x - x_s, cam_z - z_s)) + acf_hd + src_hdg - 180 -- angle from source to camera
	
	while angle2cam > 180 do angle2cam = angle2cam - 360 end
	while angle2cam < -180 do angle2cam = angle2cam + 360 end
	
	local dist = math.sqrt(math.pow(x_s - cam_x, 2) + math.pow(z_s - cam_z, 2) + math.pow(cam_y - acf_y, 2))
	
	if dist < 1 then dist = 1 end
	
	local dist_coef = fade_dist / dist ^ 1.6
	if dist_coef > 1.5 then dist_coef = 1.5 end
	
	local cone_angle = math.abs(angle2cam)
	
	while cone_angle > 180 do cone_angle = cone_angle - 360 end
	--while cone_angle < 0 do cone_angle = cone_angle + 180 end
	
	local cone_coef = 1
	
	if cone_angle > src_cone then
		cone_coef = math.max(1 - (cone_angle - src_cone) / (fade_deg), 0)
	end
	
	--print(cone_angle)
	
	
	
	if cone_coef > 1 then cone_coef = 1 end
	
	
	

	local ch_L = (0.05 + (1 + math.sin(math.rad(angle2source))) * 0.7) * dist_coef * cone_coef
	local ch_R = (0.05 + (1 + math.sin(math.rad(-angle2source))) * 0.7) * dist_coef * cone_coef
	
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end
	
	
	
	
	return ch_L, ch_R
end


local function inn_balance (cam_hdg, dist)

	
	local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end


local starter_1_last = get(apd_working_1)
local starter_2_last = get(apd_working_2)
local starter_3_last = get(apd_working_3)



local cam_dist_last = 0



function update()

	local external = get(external_view)
	local passed = get(frame_time)
	
	local main_vol = get(eng_main_vol)
	
	local rpm_1 = get(eng1_N1)
	local rpm_2 = get(eng2_N1)
	local rpm_3 = get(eng3_N1)
	
	local work_1 = get(eng_working_1)
	local work_2 = get(eng_working_2)
	local work_3 = get(eng_working_3)
	
	local apu_rpm = get(apu_n1)
	
	local cpt_door = get(cockpit_door)
	
	-- define localtions
	cam_hd = get(cam_HDG)
	acf_hd = get(acf_hdg)
	
	cam_x = get(cam_X)
	cam_y = get(cam_Y)
	cam_z = get(cam_Z)
	
	acf_x = get(acf_X)
	acf_y = get(acf_Y)
	acf_z = get(acf_Z)
	
	
	
	-- set pitch for engines sounds
	local inn_ptch_1 = interpolate(inn_pitch_tbl, rpm_1)
	local inn_ptch_2 = interpolate(inn_pitch_tbl, rpm_2)
	local inn_ptch_3 = interpolate(inn_pitch_tbl, rpm_3)
	
	local apu_snd_pitch = 1100 * math.abs(apu_rpm * 0.01) ^ 0.2
	
	-- doppler coef
	local cam_dist = math.sqrt(math.pow(acf_x - cam_x, 2) + math.pow(acf_z - cam_z, 2) + math.pow(cam_y - acf_y, 2))
	
	local cam_spd = 0
	if passed > 0 then
		cam_spd = -(cam_dist - cam_dist_last) / passed -- m/s
	end
	
	cam_dist_last = cam_dist
	
	local dopp = cam_spd * 0.8
	if dopp > 300 then dopp = 300
	elseif dopp < -200 then dopp = -200 end
	

	
	setSamplePitch(inn_middle_left_1, inn_ptch_1)
	setSamplePitch(inn_middle_right_1, inn_ptch_1)
	
	setSamplePitch(inn_middle_left_2, inn_ptch_2)
	setSamplePitch(inn_middle_right_2, inn_ptch_2)
	
	setSamplePitch(inn_middle_left_3, inn_ptch_3)
	setSamplePitch(inn_middle_right_3, inn_ptch_3)

	local out_ptch_1 = interpolate(out_pitch_tbl, rpm_1)
	local out_ptch_2 = interpolate(out_pitch_tbl, rpm_2)
	local out_ptch_3 = interpolate(out_pitch_tbl, rpm_3)
	
	setSamplePitch(out_idle_left_1, out_ptch_1 + dopp)
	setSamplePitch(out_idle_right_1, out_ptch_1 + dopp)
	
	setSamplePitch(out_idle_left_2, out_ptch_2 + dopp)
	setSamplePitch(out_idle_right_2, out_ptch_2 + dopp)
	
	setSamplePitch(out_idle_left_3, out_ptch_3 + dopp)
	setSamplePitch(out_idle_right_3, out_ptch_3 + dopp)
	
	setSamplePitch(out_behind_left_1, 1000 + (out_ptch_1 - 1000) * 0.4)
	setSamplePitch(out_behind_right_1, 1000 + (out_ptch_1 - 1000) * 0.4)
	
	setSamplePitch(out_behind_left_2, 1000 + (out_ptch_1 - 1000) * 0.4)
	setSamplePitch(out_behind_right_2, 1000 + (out_ptch_1 - 1000) * 0.4)
	
	setSamplePitch(out_behind_left_3, 1000 + (out_ptch_1 - 1000) * 0.4)
	setSamplePitch(out_behind_right_3, 1000 + (out_ptch_1 - 1000) * 0.4)

	

	setSamplePitch(inn_apu_left, apu_snd_pitch)
	setSamplePitch(inn_apu_right, apu_snd_pitch)
	setSamplePitch(out_apu_left, apu_snd_pitch + dopp)
	setSamplePitch(out_apu_right, apu_snd_pitch + dopp)
	
		
	-- set RPM gain
	local rpm_gain_1 = interpolate(rpm2gain_tbl, rpm_1)
	local rpm_gain_2 = interpolate(rpm2gain_tbl, rpm_2)
	local rpm_gain_3 = interpolate(rpm2gain_tbl, rpm_3)
	local rpm_gain_apu = interpolate(rpm2gain_tbl, apu_rpm)
	
	-- starters logic
	local starter_1 = get(apd_working_1)
	local starter_2 = get(apd_working_2)
	local starter_3 = get(apd_working_3)
	
	if starter_1 ~= starter_1_last and starter_1 == 1 and rpm_1 < 20 then
		if get(xplane_version) < 120000 then playSample(inn_starter_left_1, false) end
		if get(xplane_version) < 120000 then playSample(inn_starter_right_1, false) end
		if get(xplane_version) < 120000 then playSample(out_starter_left_1, false) end
		if get(xplane_version) < 120000 then playSample(out_starter_right_1, false) end
	
	elseif starter_1 ~= starter_1_last and starter_1 == 0 then
		if get(xplane_version) < 120000 then stopSample(inn_starter_left_1) end
		if get(xplane_version) < 120000 then stopSample(inn_starter_right_1) end
		if get(xplane_version) < 120000 then stopSample(out_starter_left_1) end
		if get(xplane_version) < 120000 then stopSample(out_starter_right_1) end
	end
	
	if starter_2 ~= starter_2_last and starter_2 == 1 and rpm_2 < 20 then
		if get(xplane_version) < 120000 then playSample(inn_starter_left_2, false) end
		if get(xplane_version) < 120000 then playSample(inn_starter_right_2, false) end
		if get(xplane_version) < 120000 then playSample(out_starter_left_2, false) end
		if get(xplane_version) < 120000 then playSample(out_starter_right_2, false) end
	
	elseif starter_2 ~= starter_2_last and starter_2 == 0 then
		if get(xplane_version) < 120000 then stopSample(inn_starter_left_2) end
		if get(xplane_version) < 120000 then stopSample(inn_starter_right_2) end
		if get(xplane_version) < 120000 then stopSample(out_starter_left_2) end
		if get(xplane_version) < 120000 then stopSample(out_starter_right_2) end
	end

	if starter_3 ~= starter_3_last and starter_3 == 1 and rpm_3 < 20 then
		if get(xplane_version) < 120000 then playSample(inn_starter_left_3, false) end
		if get(xplane_version) < 120000 then playSample(inn_starter_right_3, false) end
		if get(xplane_version) < 120000 then playSample(out_starter_left_3, false) end
		if get(xplane_version) < 120000 then playSample(out_starter_right_3, false) end
	
	elseif starter_3 ~= starter_3_last and starter_3 == 0 then
		if get(xplane_version) < 120000 then stopSample(inn_starter_left_3) end
		if get(xplane_version) < 120000 then stopSample(inn_starter_right_3) end
		if get(xplane_version) < 120000 then stopSample(out_starter_left_3) end
		if get(xplane_version) < 120000 then stopSample(out_starter_right_3) end
	end	
	
	
	starter_1_last = starter_1
	starter_2_last = starter_2
	starter_3_last = starter_3
	
	
	-- reverse sounds
	local rev_flaps = math.max(get(revers_flap_L) * rpm_1, get(revers_flap_R) * rpm_3)
	
	if rev_flaps > 1 then
		if not isSamplePlaying(inn_reverse) then if get(xplane_version) < 120000 then playSample(inn_reverse, true) end end
	else
		if get(xplane_version) < 120000 then stopSample(inn_reverse) end
	end
	
	if external == 0 then -- internal
		local holes = 400 * math.max(0, math.max(get(cockpit_window_left), get(cockpit_window_right), get(pax_door_1) * cpt_door, get(pax_door_2) * cpt_door, get(pax_door_3) * cpt_door) - 0.05)
		
		
		-- mute external sounds
		local dist = -get(pilot_Z) + 9 
		
		
		setSampleGain(out_behind_left_1, 0)
		setSampleGain(out_behind_right_1, 0)
		setSampleGain(out_idle_left_1, holes * main_vol * rpm_gain_1)
		setSampleGain(out_idle_right_1, holes * main_vol * rpm_gain_1)
		setSampleGain(out_starter_left_1, holes * main_vol)
		setSampleGain(out_starter_right_1, holes * main_vol)
		
		setSampleGain(out_behind_left_2, 0)
		setSampleGain(out_behind_right_2, 0)
		setSampleGain(out_idle_left_2, holes * main_vol * rpm_gain_2)
		setSampleGain(out_idle_right_2, holes * main_vol * rpm_gain_2)
		setSampleGain(out_starter_left_2, holes * main_vol)
		setSampleGain(out_starter_right_2, holes * main_vol)
		
		setSampleGain(out_behind_left_3, 0)
		setSampleGain(out_behind_right_3, 0)
		setSampleGain(out_idle_left_3, holes * main_vol * rpm_gain_3)
		setSampleGain(out_idle_right_3, holes * main_vol * rpm_gain_3)
		setSampleGain(out_starter_left_3, holes * main_vol)
		setSampleGain(out_starter_right_3, holes * main_vol)
		
		setSampleGain(out_apu_left, holes * main_vol * rpm_gain_apu)
		setSampleGain(out_apu_right, holes * main_vol * rpm_gain_apu)
		
		
		
		-- calculate balance
		
		local view_head = acf_hd - cam_hd
		while view_head > 180 do view_head = view_head - 360 end
		while view_head < -180 do view_head = view_head + 360 end
		
		
		
		local bal_L, bal_R = inn_balance (view_head, dist)
		
		
		setSampleGain(inn_middle_left_1, 700 * bal_L * rpm_gain_1 * main_vol)
		setSampleGain(inn_middle_right_1, 700 * bal_R * rpm_gain_1 * main_vol)
		
		setSampleGain(inn_middle_left_2, 700 * bal_L * rpm_gain_2 * main_vol)
		setSampleGain(inn_middle_right_2, 700 * bal_R * rpm_gain_2 * main_vol)
		
		setSampleGain(inn_middle_left_3, 700 * bal_L * rpm_gain_3 * main_vol)
		setSampleGain(inn_middle_right_3, 700 * bal_R * rpm_gain_3 * main_vol)	
		
		setSampleGain(inn_starter_left_1, 700 * bal_L * main_vol)
		setSampleGain(inn_starter_left_2, 700 * bal_L * main_vol)
		setSampleGain(inn_starter_left_3, 700 * bal_L * main_vol)
		
		setSampleGain(inn_starter_right_1, 700 * bal_R * main_vol)
		setSampleGain(inn_starter_right_2, 700 * bal_R * main_vol)
		setSampleGain(inn_starter_right_3, 700 * bal_R * main_vol)
		
		setSampleGain(inn_apu_left, 500 * bal_L * rpm_gain_apu * main_vol)
		setSampleGain(inn_apu_right, 500 * bal_R * rpm_gain_apu * main_vol)
		
		local rev_snd = ((2 + (1 - dist / 20)) + 7 * holes) * rev_flaps * math.max(rpm_gain_1, rpm_gain_3) * main_vol
		local rev_ptch = 1000 + (math.max(rpm_1, rpm_3) - 78) * 10
		setSampleGain(inn_reverse, rev_snd * 7)
		setSamplePitch(inn_reverse, rev_ptch)

	else -- external view
	
		-- mute internal sounds
		setSampleGain(inn_middle_left_1, 0)
		setSampleGain(inn_middle_right_1, 0)
		setSampleGain(inn_starter_left_1, 0)
		setSampleGain(inn_starter_right_1, 0)
	
		setSampleGain(inn_middle_left_2, 0)
		setSampleGain(inn_middle_right_2, 0)
		setSampleGain(inn_starter_left_2, 0)
		setSampleGain(inn_starter_right_2, 0)
		
		setSampleGain(inn_middle_left_3, 0)
		setSampleGain(inn_middle_right_3, 0)
		setSampleGain(inn_starter_left_3, 0)
		setSampleGain(inn_starter_right_3, 0)

		setSampleGain(inn_apu_left, 0)
		setSampleGain(inn_apu_right, 0)
	
		setSampleGain(inn_reverse, 0)
	
		local eng_1_L, eng_1_R = out_balance (-3.24, 9.18, 0, 90, 120, 700)
		local eng_2_L, eng_2_R = out_balance (0, 15, 0, 90, 120, 700)
		local eng_3_L, eng_3_R = out_balance (3.24, 9.18, 0, 90, 120, 700)
		
		local starter_L, starter_R = out_balance (0, 12, 0, 180, 100, 700)
		
		local noise_L, noise_R = out_balance (0, 10, 180, 30 + rev_flaps, 80 + rev_flaps * 0.5, 1500)
		
		local apu_L, apu_R = out_balance (0, 15, 180, 120, 100, 500)
		

		setSampleGain(out_behind_left_1, 1200 * noise_L * rpm_gain_1 ^ 3 * main_vol * (0.5 + 0.5 * work_1))
		setSampleGain(out_behind_right_1, 1200 * noise_R * rpm_gain_1 ^ 3 * main_vol * (0.5 + 0.5 * work_1))
		setSampleGain(out_idle_left_1, 1200 * eng_1_L * rpm_gain_1 * main_vol)
		setSampleGain(out_idle_right_1, 1200 * eng_1_R * rpm_gain_1 * main_vol)
		setSampleGain(out_starter_left_1, 1000 * starter_L * main_vol)
		setSampleGain(out_starter_right_1, 1000 * starter_R * main_vol)

		setSampleGain(out_behind_left_2, 1200 * noise_L * rpm_gain_2 ^ 3 * main_vol * (0.5 + 0.5 * work_2))
		setSampleGain(out_behind_right_2, 1200 * noise_R * rpm_gain_2 ^ 3 * main_vol * (0.5 + 0.5 * work_2))
		setSampleGain(out_idle_left_2, 1200 * eng_2_L * rpm_gain_2 * main_vol)
		setSampleGain(out_idle_right_2, 1200 * eng_2_R * rpm_gain_2 * main_vol)
		setSampleGain(out_starter_left_2, 1000 * starter_L * main_vol)
		setSampleGain(out_starter_right_2, 1000 * starter_R * main_vol)	

		setSampleGain(out_behind_left_3, 1200 * noise_L * rpm_gain_3 ^ 3 * main_vol * (0.5 + 0.5 * work_3))
		setSampleGain(out_behind_right_3, 1200 * noise_R * rpm_gain_3 ^ 3 * main_vol * (0.5 + 0.5 * work_3))
		setSampleGain(out_idle_left_3, 1200 * eng_3_L * rpm_gain_3 * main_vol)
		setSampleGain(out_idle_right_3, 1200 * eng_3_R * rpm_gain_3 * main_vol)
		setSampleGain(out_starter_left_3, 1000 * starter_L * main_vol)
		setSampleGain(out_starter_right_3, 1000 * starter_R * main_vol)	
		
		setSampleGain(out_apu_left, 1000 * apu_L * rpm_gain_apu * main_vol)
		setSampleGain(out_apu_right, 1000 * apu_R * rpm_gain_apu * main_vol)

	
	
	end

	
	
	
	
	-- mute all sounds
	if passed == 0 or get(main_sound_on) == 0 then
		setSampleGain(inn_middle_left_1, 0)
		setSampleGain(inn_middle_right_1, 0)
		setSampleGain(inn_starter_left_1, 0)
		setSampleGain(inn_starter_right_1, 0)
	
		setSampleGain(inn_middle_left_2, 0)
		setSampleGain(inn_middle_right_2, 0)
		setSampleGain(inn_starter_left_2, 0)
		setSampleGain(inn_starter_right_2, 0)
		
		setSampleGain(inn_middle_left_3, 0)
		setSampleGain(inn_middle_right_3, 0)
		setSampleGain(inn_starter_left_3, 0)
		setSampleGain(inn_starter_right_3, 0)

		setSampleGain(inn_apu_left, 0)
		setSampleGain(inn_apu_right, 0)
		
		setSampleGain(out_behind_left_1, 0)
		setSampleGain(out_behind_right_1, 0)
		setSampleGain(out_idle_left_1, 0)
		setSampleGain(out_idle_right_1, 0)
		setSampleGain(out_starter_left_1, 0)
		setSampleGain(out_starter_right_1, 0)
		
		setSampleGain(out_behind_left_2, 0)
		setSampleGain(out_behind_right_2, 0)
		setSampleGain(out_idle_left_2, 0)
		setSampleGain(out_idle_right_2, 0)
		setSampleGain(out_starter_left_2, 0)
		setSampleGain(out_starter_right_2, 0)
		
		setSampleGain(out_behind_left_3, 0)
		setSampleGain(out_behind_right_3, 0)
		setSampleGain(out_idle_left_3, 0)
		setSampleGain(out_idle_right_3, 0)
		setSampleGain(out_starter_left_3, 0)
		setSampleGain(out_starter_right_3, 0)
		
		setSampleGain(out_apu_left, 0)
		setSampleGain(out_apu_right, 0)
	end

end
