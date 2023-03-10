-- this is logic for GPU Hobart 60kVA - 150A


-- GPU
defineProperty("gpu_present", globalPropertyi("tu154ce/anim/gpu_present")) --
defineProperty("gpu_work_anim", globalPropertyf("tu154ce/anim/gpu_work"))  --
defineProperty("gpu_volt", globalPropertyf("tu154ce/elec/gpu_volt"))
defineProperty("gpu_amp", globalPropertyf("tu154ce/elec/gpu_amp"))
defineProperty("gpu_overload", globalPropertyi("tu154ce/elec/gpu_overload"))
defineProperty("gpu_on", globalPropertyi("tu154ce/switchers/eng/gpu_on")) -- выключатель РАП

defineProperty("gpu_work_bus", globalPropertyi("tu154ce/elec/gpu_work"))

-- bus 27v
defineProperty("DC_27_volt1", globalPropertyf("tu154ce/elec/bus27_volt_left"))  -- 27 volt
defineProperty("DC_27_volt2", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- 27 volt

-- sim
defineProperty("GS", globalPropertyf("sim/flightmodel/position/groundspeed")) -- ground speed
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time"))      -- flight time

-- enviroment
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))

-- coordinates of airplane and camera
defineProperty("local_x", globalPropertyf("sim/flightmodel/position/local_x")) -- position X
defineProperty("local_y", globalPropertyf("sim/flightmodel/position/local_y")) -- position Y
defineProperty("local_z", globalPropertyf("sim/flightmodel/position/local_z")) -- position Z

defineProperty("view_x", globalPropertyf("sim/graphics/view/view_x"))          -- camera position X
defineProperty("view_y", globalPropertyf("sim/graphics/view/view_y"))          -- camera position Y
defineProperty("view_z", globalPropertyf("sim/graphics/view/view_z"))          -- camera position Z


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster"))         -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local gpu_start_out = loadSample('Custom Sounds/gpu_start_out.wav')
local gpu_run_out = loadSample('Custom Sounds/gpu_run_out.wav')
local gpu_stop_out = loadSample('Custom Sounds/gpu_stop_out.wav')

local gpu_start_inn = loadSample('Custom Sounds/gpu_start_inn.wav')
local gpu_run_inn = loadSample('Custom Sounds/gpu_run_inn.wav')
local gpu_stop_inn = loadSample('Custom Sounds/gpu_stop_inn.wav')

local work_timer = 0
local last_dist = 0


local gpu_connect_timer = 0

local gpuSoundsLoaded = true

local gpu_eject_timer = 0


local function loadSounds()
	gpu_start_out = loadSample('Custom Sounds/gpu_start_out.wav')
	gpu_run_out = loadSample('Custom Sounds/gpu_run_out.wav')
	gpu_stop_out = loadSample('Custom Sounds/gpu_stop_out.wav')

	gpu_start_inn = loadSample('Custom Sounds/gpu_start_inn.wav')
	gpu_run_inn = loadSample('Custom Sounds/gpu_run_inn.wav')
	gpu_stop_inn = loadSample('Custom Sounds/gpu_stop_inn.wav')

	gpuSoundsLoaded = true
end

local function unloadSounds()
	unloadSample(gpu_start_out)
	unloadSample(gpu_run_out)
	unloadSample(gpu_stop_out)

	unloadSample(gpu_start_inn)
	unloadSample(gpu_run_inn)
	unloadSample(gpu_stop_inn)

	gpuSoundsLoaded = false
end

function update()
	local passed = get(frame_time)
	local external = get(external_view) -- 0 = inside, 1 = external

	-- check if GPU can be conected
	local present = get(gpu_present)
	if math.abs(get(GS)) > 0.1 then
		gpu_eject_timer = gpu_eject_timer + passed
	else
		gpu_eject_timer = 0
	end


	if gpu_eject_timer < 1 then
		if present == 1 then
			work_timer = work_timer + passed * 0.25 -- 3 sec for start
		else
			work_timer = work_timer - passed * 0.1 -- 10 sec for stop
			set(gpu_overload, 0)           -- reset overload flag
		end
		-- set limits and working parameters
		if work_timer > 1 then
			work_timer = 1
			if get(DC_27_volt1) > 13 or get(DC_27_volt2) > 13 then
				set(gpu_volt, 115 * (1 - get(gpu_overload)))
			else
				set(gpu_volt, 0)
			end
		elseif work_timer < 0 then
			work_timer = 0
			set(gpu_volt, 0)
		elseif work_timer < 0.9 then
			set(gpu_volt, 0)
		end
		set(gpu_work_anim, work_timer) -- set animation

		-- connect GPU to the bus
		if get(gpu_on) == 1 then
			gpu_connect_timer = gpu_connect_timer + passed
			if gpu_connect_timer >= 1 then
				if work_timer == 1 and get(gpu_overload) ~= 1 then
					set(gpu_work_bus, 1)
				else
					set(gpu_work_bus, 0)
				end
				gpu_connect_timer = 1
			else
				set(gpu_work_bus, 0)
			end
		else
			set(gpu_work_bus, 0)
			gpu_connect_timer = 0
		end




		-- set overload flag and reset it when GPU is disconnected
		if get(gpu_amp) > 500 then
			set(gpu_overload, 1)
		elseif get(gpu_on) == 0 then
			set(gpu_overload, 0)
		end

		if get(xplane_version) < 120000 then
			-- set sounds
			if work_timer > 0 and work_timer < 1 and not isSamplePlaying(gpu_start_out) and present == 1 then
				if get(xplane_version) < 120000 then playSample(gpu_start_out, false) end
				if get(xplane_version) < 120000 then playSample(gpu_start_inn, false) end
				if get(xplane_version) < 120000 then stopSample(gpu_run_out) end
				if get(xplane_version) < 120000 then stopSample(gpu_run_inn) end
			elseif work_timer == 1 and not isSamplePlaying(gpu_run_out) then
				if get(xplane_version) < 120000 then playSample(gpu_run_out, true) end
				if get(xplane_version) < 120000 then playSample(gpu_run_inn, true) end
			elseif work_timer > 0 and work_timer < 1 and not isSamplePlaying(gpu_stop_out) and present == 0 then
				if get(xplane_version) < 120000 then playSample(gpu_stop_out, false) end
				if get(xplane_version) < 120000 then playSample(gpu_stop_inn, false) end
				if get(xplane_version) < 120000 then stopSample(gpu_start_out) end
				if get(xplane_version) < 120000 then stopSample(gpu_run_out) end
				if get(xplane_version) < 120000 then stopSample(gpu_start_inn) end
				if get(xplane_version) < 120000 then stopSample(gpu_run_inn) end
			elseif work_timer == 0 then
				if get(xplane_version) < 120000 then stopSample(gpu_start_out) end
				if get(xplane_version) < 120000 then stopSample(gpu_start_inn) end
				if get(xplane_version) < 120000 then stopSample(gpu_run_out) end
				if get(xplane_version) < 120000 then stopSample(gpu_run_inn) end
			end

			-- set effects to external GPU sound
			local camera_distance = math.sqrt(((get(view_x) - get(local_x)) ^ 2) + ((get(view_y) - get(local_y)) ^ 2) +
			((get(view_z) - get(local_z)) ^ 2))                                                                                  -- in meters
			if camera_distance < 1 then camera_distance = 1 end                                                                  -- limit minimum distance

			local dist_coef = 300 / camera_distance ^ 1.7
			if dist_coef > 1 then dist_coef = 1 end
			-- calculate camera/aircraft speed
			local spd_time = math.min(0.0001, passed)
			local camera_spd = -(camera_distance - last_dist) / spd_time

			last_dist = camera_distance

			local dopp_coef = camera_spd * 0.02
			if dopp_coef > 400 then
				dopp_coef = 300
			elseif dopp_coef < -300 then
				dopp_coef = -300
			end

			local window_open = 0 -- temp

			-- set sound volume
			setSampleGain(gpu_start_out, 1000 * (external + window_open * (1 - external)) * dist_coef)
			setSampleGain(gpu_run_out, 1000 * (external + window_open * (1 - external)) * dist_coef)
			setSampleGain(gpu_stop_out, 1000 * (external + window_open * (1 - external)) * dist_coef)

			setSampleGain(gpu_start_inn, 2000 * (1 - external))
			setSampleGain(gpu_run_inn, 2000 * (1 - external))
			setSampleGain(gpu_stop_inn, 2000 * (1 - external))
			--setSampleGain(prop_out_1, prop_loud_1 * (external + window_open * (1 - external)) * N1 * dist_coef) -- example
		end
	else
		work_timer = 0

		set(gpu_work_anim, 0)
		set(gpu_present, 0)
		set(gpu_volt, 0)
		set(gpu_overload, 0)
		set(gpu_work_bus, 0)

		if get(xplane_version) < 120000 then
			if get(xplane_version) < 120000 then stopSample(gpu_run_out) end
			if get(xplane_version) < 120000 then stopSample(gpu_start_out) end
			if get(xplane_version) < 120000 then stopSample(gpu_stop_out) end
		end
		-- unload sounds


		--if gpuSoundsLoaded then unloadSounds() end
	end



end
