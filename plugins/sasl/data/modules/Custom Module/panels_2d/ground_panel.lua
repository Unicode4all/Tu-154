-- this is ground service panel
size = { 655, 880 }

defineProperty("save_state", globalPropertyi("tu154ce/save_state")) -- принудительное сохранение состояния самолета
-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

defineProperty("show_ground_panel", globalPropertyi("tu154ce/panels/show_ground_panel")) -- показать панель наземного обслуживания

defineProperty("reset_crew", globalPropertyi("tu154ce/sound/reset_crew")) -- сброс фраз команды

defineProperty("failures_enabled", globalPropertyi("tu154ce/failures/failures_enabled"))

defineProperty("have_pedals", globalPropertyi("tu154ce/have_pedals"))

--defineProperty("save_state_enabled",globalPropertyi("tu154ce/save_state_enabled")) -- включено ли сохранение состояния самолета
defineProperty("reset_state", globalPropertyi("tu154ce/reset_state")) -- сброс состояния самолета

-- datarefs
defineProperty("hide_rus_objects", globalPropertyi("tu154ce/lang/hide_rus_objects")) -- спрятать русские объекты кабины
defineProperty("hide_eng_objects", globalPropertyi("tu154ce/lang/hide_eng_objects")) -- спрятать английские объекты кабины

defineProperty("sounds_volume", globalPropertyi("tu154ce/sounds_voulme")) -- общая громкость звуков


defineProperty("slider_1", globalProperty("sim/cockpit2/switches/custom_slider_on[0]")) -- window L
defineProperty("slider_2", globalProperty("sim/cockpit2/switches/custom_slider_on[1]")) -- window R
defineProperty("slider_3", globalProperty("sim/cockpit2/switches/custom_slider_on[2]")) -- cargo 1
defineProperty("slider_4", globalProperty("sim/cockpit2/switches/custom_slider_on[3]")) -- cargo 2
defineProperty("slider_5", globalProperty("sim/cockpit2/switches/custom_slider_on[4]")) -- pax door 1
defineProperty("slider_6", globalProperty("sim/cockpit2/switches/custom_slider_on[5]")) -- pax door 2
defineProperty("slider_7", globalProperty("sim/cockpit2/switches/custom_slider_on[6]")) -- kitchen door
defineProperty("slider_8", globalProperty("sim/cockpit2/switches/custom_slider_on[7]")) --
defineProperty("slider_9", globalProperty("sim/cockpit2/switches/custom_slider_on[8]")) -- yokes
defineProperty("slider_10", globalProperty("sim/cockpit2/switches/custom_slider_on[9]")) --
defineProperty("slider_11", globalProperty("sim/cockpit2/switches/custom_slider_on[10]")) --
defineProperty("slider_12", globalProperty("sim/cockpit2/switches/custom_slider_on[11]")) --


defineProperty("gear_blocks", globalPropertyi("tu154ce/anim/gear_blocks")) -- установка блоков шасси
defineProperty("sensors_caps", globalPropertyi("tu154ce/anim/sensors_caps")) -- установка крышек датчиков
defineProperty("engine_caps", globalPropertyi("tu154ce/anim/engine_caps")) -- установка крышек двигателей

defineProperty("gpu_present", globalPropertyi("tu154ce/anim/gpu_present")) --

defineProperty("ladder_1_call", globalPropertyi("tu154ce/anim/ladder_1_call")) -- трап. 100 - скрыт. +50..0 - подъезжает, 0 - стоит возле замолета, 0..-50 - уезжает
defineProperty("ladder_2_call", globalPropertyi("tu154ce/anim/ladder_2_call")) --
defineProperty("catering_call", globalPropertyi("tu154ce/anim/catering_call")) --
defineProperty("fuel_tanker_call", globalPropertyi("tu154ce/anim/fuel_tanker_call")) --


defineProperty("ladder_1", globalPropertyf("tu154ce/anim/ladder_1")) -- - скрыт. +50..0 - подъезжает, 0 - стоит возле замолета, 0..-50 - уезжает	100
defineProperty("ladder_2", globalPropertyf("tu154ce/anim/ladder_2")) --
defineProperty("catering", globalPropertyf("tu154ce/anim/catering")) --
defineProperty("fuel_tanker", globalPropertyf("tu154ce/anim/fuel_tanker")) --

defineProperty("GS", globalPropertyf("sim/flightmodel/position/groundspeed")) -- ground speed

defineProperty("eng_rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))
defineProperty("eng_rpm2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("eng_rpm3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))

defineProperty("zone_1_pr", globalPropertyi("tu154ce/payload/zone_1"))
defineProperty("zone_2_pr", globalPropertyi("tu154ce/payload/zone_2"))
defineProperty("zone_4_pr", globalPropertyi("tu154ce/payload/zone_4"))
defineProperty("zone_5_pr", globalPropertyi("tu154ce/payload/zone_5"))
defineProperty("zone_6_pr", globalPropertyi("tu154ce/payload/zone_6"))

defineProperty("cargo_1_pr", globalPropertyi("tu154ce/payload/cargo_1"))
defineProperty("cargo_2_pr", globalPropertyi("tu154ce/payload/cargo_2"))

defineProperty("kitchens_pr", globalPropertyi("tu154ce/payload/kitchens"))


defineProperty("static_fail_L", globalPropertyi("sim/operation/failures/rel_static")) -- static fail
defineProperty("static_fail_R", globalPropertyi("sim/operation/failures/rel_static2")) -- static fail
defineProperty("rel_pitot", globalPropertyi("sim/operation/failures/rel_pitot")) -- Pitot 1 - Blockage
defineProperty("rel_pitot2", globalPropertyi("sim/operation/failures/rel_pitot2")) -- Pitot 2 - Blockage
defineProperty("alpha_fail", globalPropertyi("sim/operation/failures/rel_AOA")) -- angle of attack fail

--defineProperty("parkbrake", globalPropertyf("sim/flightmodel/controls/parkbrake")) -- Parking Brake
--defineProperty("parkbrake", globalPropertyf("tu154ce/SC/controls/parkbrake"))

defineProperty("deflection_mtr_1", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")) --
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) --
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) --


defineProperty("enable_crew_vo", globalPropertyi("tu154ce/sounds/enable_crew_vo")) -- включены фразы екипажа
defineProperty("show_fail_panel", globalPropertyi("tu154ce/panels/show_fail_panel")) -- показать панель отказов
defineProperty("show_gns", globalPropertyi("tu154ce/anim/show_gns"))
defineProperty("show_RXP", globalPropertyi("tu154ce/anim/RXP"))
--defineProperty("RXP_ID",globalPropertyi("RXP/radios/indicators/gps_nav_id"))

defineProperty("starter_torq", globalPropertyf("sim/aircraft/engine/acf_starter_torque_ratio")) -- мощность стартера. 0.18 для нормального запуска

-- custom fails
defineProperty("pitot_fail1", globalPropertyi("tu154ce/failures/pitot1")) -- Pitot 1 - Blockage
defineProperty("pitot_fail2", globalPropertyi("tu154ce/failures/pitot2")) -- Pitot 2 - Blockage
defineProperty("static_fail_L", globalPropertyi("tu154ce/failures/static1")) -- static fail
defineProperty("static_fail_R", globalPropertyi("tu154ce/failures/static2")) -- static fail
defineProperty("uap_fail", globalPropertyi("tu154ce/failures/AOA")) -- fail


local text_font = loadFont('Verdana.ttf')


-- load images

defineProperty("bg_img", loadImage("ground_tex.png")) -- ENG
defineProperty("bg_img_rus", loadImage("ground_tex_RUS.png")) -- ENG

defineProperty("green_lamp", loadImage("overhead_tex.png", 1825, 706, 19, 19))
defineProperty("yellow_lamp", loadImage("overhead_tex.png", 1825, 673, 19, 19))

defineProperty("lev_img", loadImage("absu_ess.png", 432, 324, 30, 29))

asu_work = globalPropertyf("tu154ce/asu/work")


-- sim/operation/toggle_yoke

yokes_cmd = findCommand("sim/operation/toggle_yoke")


function yokes_hnd(phase)
	if 0 == phase then
		set(slider_9, 1 - get(slider_9))
	end
	return 0
end

registerCommandHandler(yokes_cmd, 0, yokes_hnd)









local ladder_1_pos = get(ladder_1)
local ladder_2_pos = get(ladder_2)
local catering_pos = get(catering)
local fuel_tanker_pos = get(fuel_tanker)
local notLoaded = true

local failPanelShow = false

local reset_click = false

local function coldDarkReset()
	if get(eng_rpm1) < 10 and get(eng_rpm2) < 10 and get(eng_rpm3) < 10 then
		-- cover acf
		set(gear_blocks, 1)
		set(sensors_caps, 1)
		set(engine_caps, 1)

		-- make acf empty
		set(zone_1_pr, 0)
		set(zone_2_pr, 0)
		set(zone_4_pr, 0)
		set(zone_5_pr, 0)
		set(zone_6_pr, 0)

		set(cargo_1_pr, 0)
		set(cargo_2_pr, 0)

		set(kitchens_pr, 20)
	end

	notLoaded = false
	return true
end




local load_counter = 0

function update()
	local passed = get(frame_time)
	--local groundspeed = get(GS)

	load_counter = load_counter + passed

	if notLoaded and load_counter > 3 then
		coldDarkReset()
	end

	-- main sound volume
	setMasterGain(get(sounds_volume))



	ladder_1_pos = get(ladder_1)
	ladder_2_pos = get(ladder_2)
	catering_pos = get(catering)
	fuel_tanker_pos = get(fuel_tanker)

	-- -100..0 - to acf
	-- 0..+100 - from acf

	-- ladder 1
	if get(ladder_1_call) == 1 then -- call to acf
		if ladder_1_pos == 500 then -- make it appear
			ladder_1_pos = -50
		elseif ladder_1_pos >= -50 and ladder_1_pos < 0 then -- move to the aircraft
			ladder_1_pos = ladder_1_pos + passed * 2.7
			if ladder_1_pos > 0 then ladder_1_pos = 0 end
		elseif ladder_1_pos > 0 then -- call it back from moved away position
			ladder_1_pos = ladder_1_pos - passed * 2.7
			if ladder_1_pos < 0 then ladder_1_pos = 0 end
		end
	else -- cal from acf
		if ladder_1_pos < 0 and ladder_1_pos > -50 then -- send back, if cancelled
			ladder_1_pos = ladder_1_pos - passed * 2.7
			if ladder_1_pos < -50 then ladder_1_pos = -50 end
		elseif ladder_1_pos >= 0 and ladder_1_pos < 50 then -- move from the aircraft
			ladder_1_pos = ladder_1_pos + passed * 2.7
			if ladder_1_pos > 50 then ladder_1_pos = 50 end
		end
	end

	-- ladder 2
	if get(ladder_2_call) == 1 then -- call to acf
		if ladder_2_pos == 500 then -- make it appear
			ladder_2_pos = -50
		elseif ladder_2_pos >= -50 and ladder_2_pos < 0 then -- move to the aircraft
			ladder_2_pos = ladder_2_pos + passed * 2.7
			if ladder_2_pos > 0 then ladder_2_pos = 0 end
		elseif ladder_2_pos > 0 then -- call it back from moved away position
			ladder_2_pos = ladder_2_pos - passed * 2.7
			if ladder_2_pos < 0 then ladder_2_pos = 0 end
		end
	else -- cal from acf
		if ladder_2_pos < 0 and ladder_2_pos > -50 then -- send back, if cancelled
			ladder_2_pos = ladder_2_pos - passed * 2.7
			if ladder_2_pos < -50 then ladder_2_pos = -50 end
		elseif ladder_2_pos >= 0 and ladder_2_pos < 50 then -- move from the aircraft
			ladder_2_pos = ladder_2_pos + passed * 2.7
			if ladder_2_pos > 50 then ladder_2_pos = 50 end
		end
	end


	-- catering
	if get(catering_call) == 1 then -- call to acf
		if catering_pos == 500 then -- make it appear
			catering_pos = -50
		elseif catering_pos >= -50 and catering_pos < 0 then -- move to the aircraft
			catering_pos = catering_pos + passed * 2.7
			if catering_pos > 0 then catering_pos = 0 end
		elseif catering_pos > 0 then -- call it back from moved away position
			catering_pos = catering_pos - passed * 2.7
			if catering_pos < 0 then catering_pos = 0 end
		end
	else -- cal from acf
		if catering_pos < 0 and catering_pos > -50 then -- send back, if cancelled
			catering_pos = catering_pos - passed * 2.7
			if catering_pos < -50 then catering_pos = -50 end
		elseif catering_pos >= 0 and catering_pos < 50 then -- move from the aircraft
			catering_pos = catering_pos + passed * 2.7
			if catering_pos > 50 then catering_pos = 50 end
		end
	end

	-- fuel tanker
	if get(fuel_tanker_call) == 1 then -- call to acf
		if fuel_tanker_pos == 500 then -- make it appear
			fuel_tanker_pos = -50
		elseif fuel_tanker_pos >= -50 and fuel_tanker_pos < 0 then -- move to the aircraft
			fuel_tanker_pos = fuel_tanker_pos + passed * 2.7
			if fuel_tanker_pos > 0 then fuel_tanker_pos = 0 end
		elseif fuel_tanker_pos > 0 then -- call it back from moved away position
			fuel_tanker_pos = fuel_tanker_pos - passed * 2.7
			if fuel_tanker_pos < 0 then fuel_tanker_pos = 0 end
		end
	else -- cal from acf
		if fuel_tanker_pos < 0 and fuel_tanker_pos > -50 then -- send back, if cancelled
			fuel_tanker_pos = fuel_tanker_pos - passed * 2.7
			if fuel_tanker_pos < -50 then fuel_tanker_pos = -50 end
		elseif fuel_tanker_pos >= 0 and fuel_tanker_pos < 50 then -- move from the aircraft
			fuel_tanker_pos = fuel_tanker_pos + passed * 2.7
			if fuel_tanker_pos > 50 then fuel_tanker_pos = 50 end
		end
	end


	-- make all stuff disappear when acf moves
	if math.abs(get(GS)) > 1 or get(gear_blocks) < 1 or get(deflection_mtr_1) < 0.001 or get(deflection_mtr_2) < 0.001 or get(deflection_mtr_3) < 0.001 then --
		ladder_1_pos = 500
		ladder_2_pos = 500
		catering_pos = 500
		fuel_tanker_pos = 500

		set(ladder_1_call, 0)
		set(ladder_2_call, 0)
		set(catering_call, 0)
		set(fuel_tanker_call, 0)


		--set(gear_blocks, 0)

		--print(get(GS), "  ", get(gear_blocks), "  ", get(deflection_mtr_1), "  ", get(deflection_mtr_2), "  ", get(deflection_mtr_3))
	end

	-- make block disappear
	if math.abs(get(GS)) > 2 or get(deflection_mtr_1) < 0.001 or get(deflection_mtr_2) < 0.001 or get(deflection_mtr_3) < 0.001 then --
		set(gear_blocks, 0)
	end

	set(ladder_1, ladder_1_pos)
	set(ladder_2, ladder_2_pos)
	set(catering, catering_pos)
	set(fuel_tanker, fuel_tanker_pos)



	-- set failures for Pitot tubes if blocked
	if get(sensors_caps) == 1 then
		set(static_fail_L, 6)
		set(static_fail_R, 6)
		set(rel_pitot, 6)
		set(rel_pitot2, 6)
		set(alpha_fail, 6)
	else -- set custom failures into sim
		set(static_fail_L, get(static_fail_L) * 6)
		set(static_fail_R, get(static_fail_R) * 6)
		set(rel_pitot, get(pitot_fail1) * 6)
		set(rel_pitot2, get(pitot_fail2) * 6)
		set(alpha_fail, get(uap_fail) * 6)
	end


	-- hide repair panel if not on ground
	--if get(gear_blocks) == 0 then set(show_fail_panel, 0) end
	if math.abs(get(GS)) > 1 or get(deflection_mtr_1) < 0.001 or get(deflection_mtr_2) < 0.001 or get(deflection_mtr_3) < 0.001 then --
		failPanelShow = false
		set(show_fail_panel, 0)
	else
		failPanelShow = true
	end
end

components = {


	-- background
	textureLit {
		position = { 0, 0, size[1], size[2] },
		image = get(bg_img),
		visible = function()
			return get(hide_eng_objects) == 0
		end,
	},
	textureLit {
		position = { 0, 0, size[1], size[2] },
		image = get(bg_img_rus),
		visible = function()
			return get(hide_eng_objects) == 1
		end,
	},


	------------------
	-- state lamps --
	------------------

	-- left window
	textureLit {
		position = { 232, 787, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(slider_1) == 0
		end,
	},

	-- pax door 1
	textureLit {
		position = { 232, 744, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(slider_5) == 0
		end,
	},

	-- sensors caps
	textureLit {
		position = { 232, 658, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(sensors_caps) == 0
		end,
	},

	-- pax door 2
	textureLit {
		position = { 232, 613, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(slider_6) == 0
		end,
	},

	-- gear blocks
	textureLit {
		position = { 232, 392, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(gear_blocks) == 0
		end,
	},

	-- engine covers
	textureLit {
		position = { 232, 333, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(engine_caps) == 0
		end,
	},

	-- right window
	textureLit {
		position = { 396, 788, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(slider_2) == 0
		end,
	},

	-- GPU
	textureLit {
		position = { 396, 720, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(gpu_present) == 0
		end,
	},

	textureLit {
		position = { 396, 720, 22, 22 },
		image = get(yellow_lamp),
		visible = function()
			return get(gpu_present) == 1
		end,
	},


	-- cargo 1
	textureLit {
		position = { 396, 665, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(slider_3) == 0
		end,
	},

	-- kitchen door
	textureLit {
		position = { 396, 619, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(slider_7) == 0
		end,
	},

	--  cargo 2
	textureLit {
		position = { 396, 392, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(slider_4) == 0
		end,
	},


	-- ladder 1
	textureLit {
		position = { 232, 702, 22, 22 },
		image = get(yellow_lamp),
		visible = function()
			return get(ladder_1_call) == 1
		end,
	},

	textureLit {
		position = { 232, 702, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(ladder_1_call) == 0
		end,
	},

	-- ladder 2
	textureLit {
		position = { 232, 571, 22, 22 },
		image = get(yellow_lamp),
		visible = function()
			return get(ladder_2_call) == 1
		end,
	},

	textureLit {
		position = { 232, 571, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(ladder_2_call) == 0
		end,
	},

	textureLit {
		position = { 232, 528, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(asu_work) == 0
		end,
	},
	textureLit {
		position = { 232, 528, 22, 22 },
		image = get(yellow_lamp),
		visible = function()
			return get(asu_work) == 1
		end,
	},

	-- catering
	textureLit {
		position = { 396, 576, 22, 22 },
		image = get(yellow_lamp),
		visible = function()
			return get(catering_call) == 1
		end,
	},

	textureLit {
		position = { 396, 576, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(catering_call) == 0
		end,
	},

	-- tanker
	textureLit {
		position = { 396, 531, 22, 22 },
		image = get(yellow_lamp),
		visible = function()
			return get(fuel_tanker_call) == 1
		end,
	},

	textureLit {
		position = { 396, 531, 22, 22 },
		image = get(green_lamp),
		visible = function()
			return get(fuel_tanker_call) == 0
		end,
	},







	---------------------
	-- clickables --
	---------------------


	-- change language
	clickable {
		position = { 6, 824, 275, 45 },

		onMouseDown = function()
			set(hide_rus_objects, 1 - get(hide_rus_objects))
			set(hide_eng_objects, 1 - get(hide_rus_objects))
			set(save_state, 1)
			return true
		end,
	},


	-- HIDE/SHOW YOKES
	clickable {
		position = { 366, 824, 275, 45 },

		onMouseDown = function()
			set(slider_9, 1 - get(slider_9))
			return true
		end,
	},


	--------------------------
	-- windows and doors --
	--------------------------


	-- left window
	clickable {
		position = { 23, 782, 200, 35 },

		onMouseDown = function()
			set(slider_1, 1 - get(slider_1))
			return true
		end,
	},

	-- pax door 1
	clickable {
		position = { 23, 737, 200, 35 },

		onMouseDown = function()
			set(slider_5, 1 - get(slider_5))
			return true
		end,
	},

	-- sensors caps
	clickable {
		position = { 23, 650, 200, 35 },

		onMouseDown = function()
			if get(GS) <= 0.1 then set(sensors_caps, 1 - get(sensors_caps)) end
			return true
		end,
	},

	-- pax door 2
	clickable {
		position = { 23, 607, 200, 35 },

		onMouseDown = function()
			set(slider_6, 1 - get(slider_6))
			return true
		end,
	},

	-- gear blocks
	clickable {
		position = { 23, 385, 200, 35 },

		onMouseDown = function()
			if get(gear_blocks) ~= 1 and get(GS) < 0.1 then set(gear_blocks, 1) else set(gear_blocks, 0) end
			return true
		end,
	},

	-- engine covers
	clickable {
		position = { 23, 325, 200, 35 },

		onMouseDown = function()
			set(engine_caps, 1 - get(engine_caps))
			if get(eng_rpm1) > 5 or get(eng_rpm2) > 5 or get(eng_rpm3) > 5 then set(engine_caps, 0) end
			return true
		end,
	},

	-- right window
	clickable {
		position = { 424, 782, 200, 35 },

		onMouseDown = function()
			set(slider_2, 1 - get(slider_2))
			return true
		end,
	},


	-- GPU
	clickable {
		position = { 424, 715, 200, 35 },

		onMouseDown = function()
			set(gpu_present, 1 - get(gpu_present))
			return true
		end,
	},

	-- cargo 1
	clickable {
		position = { 424, 660, 200, 35 },

		onMouseDown = function()
			set(slider_3, 1 - get(slider_3))
			return true
		end,
	},

	-- kitchen door
	clickable {
		position = { 424, 613, 200, 35 },

		onMouseDown = function()
			set(slider_7, 1 - get(slider_7))
			return true
		end,
	},

	-- cargo 2
	clickable {
		position = { 424, 386, 200, 35 },

		onMouseDown = function()
			set(slider_4, 1 - get(slider_4))
			return true
		end,
	},


	-----------------------------
	-- ground stuff --
	-----------------------------

	-- ladder 1
	clickable {
		position = { 23, 695, 200, 35 },

		onMouseDown = function()
			set(ladder_1_call, 1 - get(ladder_1_call))
			return true
		end,
	},

	-- ladder 2
	clickable {
		position = { 23, 565, 200, 35 },

		onMouseDown = function()
			set(ladder_2_call, 1 - get(ladder_2_call))
			return true
		end,
	},

	-- ASU
	clickable {
		position = { 23, 523, 200, 35 },

		onMouseDown = function()
			set(asu_work, 1 - get(asu_work))
			return true
		end,
	},

	-- catering
	clickable {
		position = { 424, 570, 200, 35 },

		onMouseDown = function()
			set(catering_call, 1 - get(catering_call))
			return true
		end,
	},

	-- tanker
	clickable {
		position = { 424, 526, 200, 35 },

		onMouseDown = function()
			set(fuel_tanker_call, 1 - get(fuel_tanker_call))
			return true
		end,
	},

	---------------------------
	-- service button --
	---------------------------
	clickable {
		position = { 424, 230, 200, 35 },

		onMouseDown = function()
			if failPanelShow then
				set(show_fail_panel, 1 - get(show_fail_panel))
			else
				set(show_fail_panel, 0)
			end

			return true
		end,

	},


	-- reset crew button
	clickable {
		position = { 23, 230, 200, 35 },

		onMouseDown = function()
			if reset_click then
				set(reset_crew, 0)
			end

			if not reset_click then
				set(reset_crew, 1)
				reset_click = true
			end

			return true
		end,
		onMouseUp = function()
			reset_click = false
			set(reset_crew, 0)
			return true
		end,

	},


	-- sounds volume
	lever_hor {
		position = { 456, 125, 139, 29 },
		value = sounds_volume,
		lever_img = get(lev_img),
		minimum = 0,
		maximum = 1000,
		addFunc = function()
			set(save_state, 1)
			return true
		end,
	},

	clickable {
		position = { 426, 125, 30, 29 },

		onMouseDown = function()
			local a = get(sounds_volume) - 100
			if a < 0 then a = 0 end
			set(sounds_volume, a)
			set(save_state, 1)
			return true
		end,
	},

	clickable {
		position = { 595, 125, 30, 29 },

		onMouseDown = function()
			local a = get(sounds_volume) + 100
			if a > 1000 then a = 1000 end
			set(sounds_volume, a)
			set(save_state, 1)
			return true
		end,
	},



	-- enable crew voices
	text_draw {
		position = { 32, 200, 55, 60 },
		text = function()
			if get(enable_crew_vo) == 1 then
				return "CREW VO ENABLED"
			else
				return "CREW VO DISABLED"
			end
		end,
		font = text_font,
		color = { 0, 0, 0, 1 },
		visible = true,
	},

	clickable {
		position = { 23, 190, 200, 35 },

		onMouseDown = function()
			set(enable_crew_vo, 1 - get(enable_crew_vo))
			set(save_state, 1)
			return true
		end,
	},



	-- Enable failures
	text_draw {
		position = { 32, 158, 55, 60 },
		text = function()
			if get(failures_enabled) == 0 then
				return "FAILURES OFF"
			elseif get(failures_enabled) == 1 then
				return "FAILURES LOW"
			elseif get(failures_enabled) == 2 then
				return "FAILURES MEDIUM"
			elseif get(failures_enabled) == 3 then
				return "FAILURES HIGH"
			end
			--if get(failures_enabled) == 1 then return "FAILURES ENABLED"
			--else return	"FAILURES DISABLED" end
		end,
		font = text_font,
		color = { 0, 0, 0, 1 },
		visible = true,
	},

	clickable {
		position = { 23, 148, 200, 35 },

		onMouseDown = function()
			local a = get(failures_enabled) + 1
			if a > 3 then a = 0 end
			set(failures_enabled, a)
			set(save_state, 1)
			return true
		end,
	},


	-- reset all axies
	text_draw {
		position = { 32, 78, 55, 60 },
		text = "NW uses YAW",
		font = text_font,
		color = { 0, 0, 0, 1 },
		visible = function()
			return get(have_pedals) == 0
		end,
	},

	text_draw {
		position = { 32, 78, 55, 60 },
		text = "NW uses Tiller",
		font = text_font,
		color = { 0, 0, 0, 1 },
		visible = function()
			return get(have_pedals) == 1
		end,
	},

	--[[
	
	text_draw {
		position = {32, 50, 55, 60},
		text = "WARNING, HOLD FOR 5 SEC",
		font = text_font,
		color = {0,0,0,1},
		visible = true,
	},
	text_draw {
		position = {32, 30, 55, 60},
		text = "TO RESET ALL JOYSTICKS",
		font = text_font,
		color = {0,0,0,1},
		visible = true,
	},

--]]

	clickable {
		position = { 23, 70, 200, 35 },

		onMouseDown = function()
			set(have_pedals, 1 - get(have_pedals))
			set(save_state, 1)
			return true
		end,
		onMouseUp = function()
			--set(have_pedals, 0)
			--set(save_state, 1)
			return true
		end,
	},

	-- Select GNS or KLN or RXP
	text_draw {
		position = { 32, 120, 55, 60 },
		text = function()
			if get(show_gns) == 1 and get(show_RXP) == 0 then
				return "GNS430 INSTALLED"
			elseif get(show_gns) == 1 and get(show_RXP) == 1 then
				return "RXP INSTALLED"
			else
				return "KLN90 INSTALLED"
			end
		end,
		font = text_font,
		color = { 0, 0, 0, 1 },
		visible = true,
	},

	clickable {
		position = { 23, 110, 200, 35 },

		onMouseDown = function()
			local a = get(show_gns) + get(show_RXP) + 1
			if a > 2 then a = 0 end

			if a == 0 then
				set(show_gns, 0)
				set(show_RXP, 0)
			elseif a == 1 then
				set(show_gns, 1)
				set(show_RXP, 0)
			elseif a == 2 then
				set(show_gns, 1)
				set(show_RXP, 1)
			end



			set(save_state, 1)
			return true
		end,
	},

	-- set starter torque

	text_draw {
		position = { 507, 52, 55, 60 },
		text = function()
			return math.floor(get(starter_torq) * 100 + 0.5) / 100
		end,
		font = text_font,
		color = { 0, 0, 0, 1 },
		visible = true,
	},

	clickable {
		position = { 426, 47, 30, 29 },

		onMouseDown = function()
			local a = get(starter_torq) - 0.01
			if a < 0.1 then a = 0.1 end
			set(starter_torq, a)
			set(save_state, 1)
			return true
		end,
	},

	clickable {
		position = { 595, 47, 30, 29 },

		onMouseDown = function()
			local a = get(starter_torq) + 0.01
			if a > 1 then a = 1 end
			set(starter_torq, a)
			set(save_state, 1)
			return true
		end,
	},

	clickable {
		position = { 476, 12, 100, 29 },

		onMouseDown = function()
			set(starter_torq, 0.2)
			set(save_state, 1)
			return true
		end,
	},

















	--------------------------------

	-- close button
	clickable {
		position = { size[1] - 15, size[2] - 15, 15, 15 },

		onMouseDown = function()
			set(show_ground_panel, 0)

			return true
		end,
	},


}
