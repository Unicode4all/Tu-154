-- this is RSBN panel

-- controls
defineProperty("rsbn_control_strobe", globalPropertyi("tu154ce/buttons/ovhd/rsbn_control_strobe")) -- контроль строба РСБН
defineProperty("rsbn_control_azimuth", globalPropertyi("tu154ce/buttons/ovhd/rsbn_control_azimuth")) -- контроль нуля азимут РСБН
defineProperty("rsbn_control_distance", globalPropertyi("tu154ce/buttons/ovhd/rsbn_control_distance")) -- контроль нуля дальность РСБН

defineProperty("rsbn_ch_ten", globalPropertyi("tu154ce/buttons/ovhd/rsbn_ch_ten")) -- установки десятков канала
defineProperty("rsbn_ch_one", globalPropertyi("tu154ce/buttons/ovhd/rsbn_ch_one")) -- установки единиц канала


defineProperty("rsbn_on", globalPropertyi("tu154ce/switchers/ovhd/rsbn_on")) -- питание РСБН
defineProperty("rsbn_recon", globalPropertyi("tu154ce/switchers/ovhd/rsbn_recon")) -- опознавание РСБН

defineProperty("test_lamps", globalPropertyi("tu154ce/buttons/lamp_test_front")) -- кнопка проверки ламп 
defineProperty("day_night_set", globalPropertyf("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


-- gauges
defineProperty("rsbn_azimuth_ind", globalPropertyf("tu154ce/gauges/misc/rsbn_azimuth_ind")) -- азимут РСБН
defineProperty("rsbn_distance_km", globalPropertyf("tu154ce/gauges/misc/rsbn_distance_km")) -- дистанция РСБН
defineProperty("rsbn_km_one", globalPropertyf("tu154ce/gauges/misc/rsbn_km_one")) -- барабанчик единиц км
defineProperty("rsbn_km_ten", globalPropertyf("tu154ce/gauges/misc/rsbn_km_ten")) -- барабанчик десятков км
defineProperty("rsbn_km_hun", globalPropertyf("tu154ce/gauges/misc/rsbn_km_hun")) -- барабанчик сотен км

-- lamps
defineProperty("dist_autonom", globalPropertyf("tu154ce/lights/dist_autonom")) -- дистанция
defineProperty("azimuth_autonom", globalPropertyf("tu154ce/lights/azimuth_autonom")) -- азимут

set(dist_autonom, 1)
set(azimuth_autonom, 1)

-- sources
defineProperty("distance", globalPropertyf("tu154ce/rsbn/distance")) -- геометрическая дистанция от маяка
defineProperty("azimuth", globalPropertyf("tu154ce/rsbn/azimuth")) -- азимут от маяка

defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time

-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27
include("smooth_light.lua")


local button_sound = loadSample('Custom Sounds/plastic_btn.wav')
local rotary_sound = loadSample('Custom Sounds/plastic_switch.wav')


local passed = 0

local but_summ_last = 0

local function buttons()
	local rsbn_control_strobe_sw = get(rsbn_control_strobe)
	local rsbn_control_azimuth_sw = get(rsbn_control_azimuth)
	local rsbn_control_distance_sw = get(rsbn_control_distance)

	local but_summ = rsbn_control_strobe_sw + rsbn_control_azimuth_sw + rsbn_control_distance_sw
	
	if but_summ ~= but_summ_last then  end
	
	but_summ_last = but_summ


end

local rot_summ_last = 0

local function rotary()

	local rsbn_ch_ten_sw = get(rsbn_ch_ten)
	local rsbn_ch_one_sw = get(rsbn_ch_one)
	
	local summ = rsbn_ch_ten_sw + rsbn_ch_one_sw
	
	if summ ~= rot_summ_last then --[[if get(xplane_version) < 120000 then playSample(rotary_sound, false) end]] end
	
	rot_summ_last = summ


end


local azimuth_act = 0
local dist_act = 0

local function gauges()

	local azim = get(azimuth) -- deg
	
	local az_delta = azim - azimuth_act
	if az_delta > 180 then az_delta = az_delta - 360
	elseif az_delta < -180 then az_delta = az_delta + 360 end
	
	
	if az_delta > 1 then azimuth_act = azimuth_act + passed * 30
	elseif az_delta < -1 then azimuth_act = azimuth_act - passed * 30
	else azimuth_act = azimuth_act + az_delta * passed * 30
	end
	
--	azimuth_act = azimuth_act + az_delta * passed * 5
	
	
	
	
	set(rsbn_azimuth_ind, azimuth_act)
	
	
	
	
	
	local dist = get(distance) * 10 -- km
	
	local dist_delta = dist - dist_act
	
	if dist_delta > 10 then dist_act = dist_act + passed * 60
	elseif dist_delta < -10 then dist_act = dist_act - passed * 60
	else dist_act = dist_act + dist_delta * passed * 6
	end
	
	local dist_01 = dist_act % 10
	
	local dist_one = math.floor((dist_act % 100) * 0.1) + math.max(math.max((dist_01  - 8) / 2, 0), 0)
	
	local dist_10 = math.floor((dist_act % 1000) * 0.01) + math.max(math.max((dist_one  - 9), 0), 0)
	
	local dist_100 = math.floor((dist_act % 10000) * 0.001) + math.max(math.max((dist_10 - 9), 0), 0)
	
	
	
	set(rsbn_distance_km, dist_01 * 0.1)
	set(rsbn_km_one, dist_one)
	set(rsbn_km_ten, dist_10)
	set(rsbn_km_hun, dist_100)



end


local function lamps()
	
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night * get(rsbn_on)

	local dist_autonom_brt = math.max(bool2int(get(distance) == 0) * lamps_brt, test_btn)
	set(dist_autonom, smooth_light(dist_autonom_brt, get(dist_autonom)))
	
	local azimuth_autonom_brt = math.max(bool2int(get(azimuth) == 0) * lamps_brt, test_btn)
	set(azimuth_autonom, smooth_light(azimuth_autonom_brt, get(azimuth_autonom)))
	
end




function update()
	passed = get(frame_time)
	
	buttons()
	rotary()
	gauges()
	lamps()

end