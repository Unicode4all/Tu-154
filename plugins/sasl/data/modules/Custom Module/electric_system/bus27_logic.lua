-- this is the logic of 27v buses

-- each bus has several sources. 2 batteries, VU, VU aux and other bus, if it has its own sources


-- controll
defineProperty("bus27_connect", globalPropertyi("tu154ce/switchers/eng/bus27_connect")) -- соединение сетей 27в
defineProperty("bus27_vu1", globalPropertyi("tu154ce/switchers/eng/bus27_vu1")) -- ВУ1. -1 - резерв, 0 - выкл, +1 - вкл.
defineProperty("bus27_vu2", globalPropertyi("tu154ce/switchers/eng/bus27_vu2")) -- ВУ2. -1 - резерв, 0 - выкл, +1 - вкл.
defineProperty("bat1_on", globalPropertyi("tu154ce/switchers/eng/bat1_on")) -- батарея 1
defineProperty("bat2_on", globalPropertyi("tu154ce/switchers/eng/bat2_on")) -- батарея 2
defineProperty("bat3_on", globalPropertyi("tu154ce/switchers/eng/bat3_on")) -- батарея 3
defineProperty("bat4_on", globalPropertyi("tu154ce/switchers/eng/bat4_on")) -- батарея 4
defineProperty("bat_connected", globalPropertyi("tu154ce/elec/bat_connected")) -- is any battery connected
-- sources
defineProperty("bat_volt_1", globalPropertyf("tu154ce/elec/bat_volt_1")) -- напряжение батареи
defineProperty("bat_volt_2", globalPropertyf("tu154ce/elec/bat_volt_2")) -- напряжение батареи
defineProperty("bat_volt_3", globalPropertyf("tu154ce/elec/bat_volt_3")) -- напряжение батареи
defineProperty("bat_volt_4", globalPropertyf("tu154ce/elec/bat_volt_4")) -- напряжение батареи

defineProperty("bat_amp_1", globalPropertyf("tu154ce/elec/bat_amp_1")) -- ток батареи
defineProperty("bat_amp_2", globalPropertyf("tu154ce/elec/bat_amp_2")) -- ток батареи
defineProperty("bat_amp_3", globalPropertyf("tu154ce/elec/bat_amp_3")) -- ток батареи
defineProperty("bat_amp_4", globalPropertyf("tu154ce/elec/bat_amp_4")) -- ток батареи

defineProperty("bat_1_kz", globalPropertyi("tu154ce/failures/bat_1_kz")) -- тепловой разгон
defineProperty("bat_2_kz", globalPropertyi("tu154ce/failures/bat_2_kz")) -- тепловой разгон
defineProperty("bat_3_kz", globalPropertyi("tu154ce/failures/bat_3_kz")) -- тепловой разгон
defineProperty("bat_4_kz", globalPropertyi("tu154ce/failures/bat_4_kz")) -- тепловой разгон

defineProperty("bat_fail_1", globalPropertyi("tu154ce/failures/bat_1_fail")) -- отказ батареи
defineProperty("bat_fail_2", globalPropertyi("tu154ce/failures/bat_2_fail")) -- отказ батареи
defineProperty("bat_fail_3", globalPropertyi("tu154ce/failures/bat_3_fail")) -- отказ батареи
defineProperty("bat_fail_4", globalPropertyi("tu154ce/failures/bat_4_fail")) -- отказ батареи

defineProperty("bat_source_1", globalPropertyi("tu154ce/elec/bat_is_source_1")) -- батарея является источником
defineProperty("bat_source_2", globalPropertyi("tu154ce/elec/bat_is_source_2")) -- батарея является источником
defineProperty("bat_source_3", globalPropertyi("tu154ce/elec/bat_is_source_3")) -- батарея является источником
defineProperty("bat_source_4", globalPropertyi("tu154ce/elec/bat_is_source_4")) -- батарея является источником

defineProperty("apu_system_on", globalPropertyi("tu154ce/eng/apu_system_on"))
defineProperty("apu_start_seq", globalPropertyi("tu154ce/elec/apu_start_seq")) -- идет процесс запуска ВСУ

defineProperty("vu1_volt", globalPropertyf("tu154ce/elec/vu1_volt")) -- работа ВУ
defineProperty("vu2_volt", globalPropertyf("tu154ce/elec/vu2_volt")) -- работа ВУ
defineProperty("vu_res_volt", globalPropertyf("tu154ce/elec/vu_res_volt")) -- работа ВУ

defineProperty("vu1_amp", globalPropertyf("tu154ce/elec/vu1_amp")) -- работа ВУ
defineProperty("vu2_amp", globalPropertyf("tu154ce/elec/vu2_amp")) -- работа ВУ
defineProperty("vu3_amp", globalPropertyf("tu154ce/elec/vu_res_amp")) -- работа ВУ

defineProperty("vu1_fail", globalPropertyi("tu154ce/failures/vu1_fail")) -- отказ ВУ
defineProperty("vu2_fail", globalPropertyi("tu154ce/failures/vu2_fail")) -- отказ ВУ
defineProperty("vu3_fail", globalPropertyi("tu154ce/failures/vu3_fail")) -- отказ ВУ

-- aux source
defineProperty("bus115_1_volt", globalPropertyf("tu154ce/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154ce/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("apu_start_bus", globalPropertyf("tu154ce/elec/apu_start_bus")) -- напряжение в сети ВСУ
defineProperty("apu_start_cc", globalPropertyf("tu154ce/elec/apu_start_cc")) -- потребление тока стартером ВСУ

defineProperty("apu_main_switch", globalPropertyi("tu154ce/switchers/eng/apu_main_switch")) -- выключатель ВСУ

defineProperty("gear_defl", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- проседание стойки шасси

-- results
defineProperty("bus27_volt_left", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus27_amp_left", globalPropertyf("tu154ce/elec/bus27_amp_left")) -- ток сети 27
defineProperty("bus27_amp_right", globalPropertyf("tu154ce/elec/bus27_amp_right")) -- ток сети 27

defineProperty("bus27_source_left", globalPropertyf("tu154ce/elec/bus27_source_left")) -- источник сети. 0 - ничего. 1 - ВУ1, 2 - ВУрезерв, 3 - батареи 1 и 3, 6 - соседняя сеть
defineProperty("bus27_source_right", globalPropertyf("tu154ce/elec/bus27_source_right")) -- источник сети. 0 - ничего. 1 - ВУ2, 2 - ВУрезерв, 3 - батареи 2 и 4, 6 - соседняя сеть

defineProperty("buses_connected", globalPropertyi("tu154ce/elec/bus_connected"))

defineProperty("vu_res_to_L", globalPropertyi("tu154ce/elec/vu_res_to_L")) -- резервное ВУ подключено на лев сеть
defineProperty("vu_res_to_R", globalPropertyi("tu154ce/elec/vu_res_to_R")) -- резервное ВУ подключено на прав сеть
-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local source_L = 0 -- lets calculate the source first and then divide the loads between sources
local source_R = 0

-- во время запуска ВСУ, сети объединятся. при этом 3 и 4 батареи переключаются на запуск, а 1 и 2 продолжают питать сети 27в. 
-- в случае, если имеется напряжение на шинах 115/200 - автоматически включаются все три ВУ.

function bool2int(var)
	if var then return 1
	else return 0 end
end

local function int2bool(var)
	if math.abs(var) ~= 0 then return true
	else return false end
end

local vu_overload_1 = false
local vu_overload_2 = false
local vu_overload_3 = false


function update()
	
	if get(frame_time) > 0 then
	
		local vu1_sw = get(bus27_vu1)
		local vu2_sw = get(bus27_vu2)
		
		local bus_volt_L = 0
		local bus_volt_R = 0
		
		local bat1 = get(bat1_on)
		local bat2 = get(bat2_on)
		local bat3 = get(bat3_on)
		local bat4 = get(bat4_on)
		
		local bat_works_1 = bat1 * (1 - get(bat_1_kz)) * (1 - get(bat_fail_1))
		local bat_works_2 = bat2 * (1 - get(bat_2_kz)) * (1 - get(bat_fail_2))
		local bat_works_3 = bat3 * (1 - get(bat_3_kz)) * (1 - get(bat_fail_3))
		local bat_works_4 = bat4 * (1 - get(bat_4_kz)) * (1 - get(bat_fail_4))
		
		-- check if VU can produce power
		local vu1_work = get(bus115_1_volt) >= 115 and get(vu1_fail) == 0 and not vu_overload_1
		local vu2_work = get(bus115_3_volt) >= 115 and get(vu2_fail) == 0 and not vu_overload_2
		local vu3_work = (get(bus115_1_volt) >= 115 or get(bus115_3_volt) >= 115) and get(vu3_fail) == 0 and not vu_overload_3
		
		if vu1_work then set(vu1_volt, 28.5) else set(vu1_volt, 0) end
		if vu2_work then set(vu2_volt, 28.5) else set(vu2_volt, 0) end
		if vu3_work then set(vu_res_volt, 28.5) else set(vu_res_volt, 0) end
		
		local vu1 = bool2int(vu1_work)
		local vu2 = bool2int(vu2_work)
		local vu3 = bool2int(vu3_work)

		if bat1 == 0 and bat2 == 0 and bat3 == 0 and bat4 == 0 then
			set(bat_connected, 0)
		else
			set(bat_connected, 1)
		end
		
		local vu1_conn = 0
		if vu1_work and vu1_sw == 1 then vu1_conn = 1 end
		
		local vu2_conn = 0
		if vu2_work and vu2_sw == 1 then vu2_conn = 1 end
		
		local vu3_connL = 0
		if vu3_work and vu1_sw == -1 then vu3_connL = 1 end
		
		local vu3_connR = 0
		if vu3_work and vu2_sw == -1 then vu3_connR = 1 end
		
		-- check load on VU and set overloading flag
		if get(vu1_amp) > 450 then vu_overload_1 = true
		elseif vu1_sw < 1 then vu_overload_1 = false 
		end

		if get(vu2_amp) > 450 then vu_overload_2 = true
		elseif vu2_sw < 1 then vu_overload_2 = false 
		end	
		
		if get(vu3_amp) > 450 then vu_overload_3 = true
		elseif vu1_sw > -1 and vu2_sw > -1 then vu_overload_3 = false 
		end
		
		local bus_amp_L = get(bus27_amp_left)
		local bus_amp_R = get(bus27_amp_right)
		local apu_amp = get(apu_start_cc)
		local apu_volt = get(apu_start_bus)
		
		--if get(apu_system_on) == 1 then -- APU start mode
		if get(apu_start_seq) == 1 then -- APU starter work
			set(buses_connected, 1)
			if vu1_conn == 1 or vu2_conn == 1 or vu3_work then -- generator source
				source_L = 1
				source_R = 1
				bus_volt_L = 28.5
				bus_volt_R = 28.5
				apu_volt = 28.5
				set(bat_source_1, 0)
				set(bat_source_2, 0)
				set(bat_source_3, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu1_amp, (bus_amp_L + bus_amp_R + apu_amp) * vu1_conn / (vu1_conn + vu2_conn + vu3))
				set(vu2_amp, (bus_amp_L + bus_amp_R + apu_amp) * vu2_conn / (vu1_conn + vu2_conn + vu3))
				set(vu3_amp, (bus_amp_L + bus_amp_R + apu_amp) * vu3 / (vu1_conn + vu2_conn + vu3))
				set(bat_amp_1, 0)
				set(bat_amp_2, 0)
				set(bat_amp_3, 0)
				set(bat_amp_4, 0)
				
				if vu3_work then 
					vu3_connL = 1
					vu3_connR = 1
				end
			
			elseif get(gear_defl) > 0.05 then -- battery source for starting APU on ground 
				if (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4) > 0 then
						source_L = 3
						source_R = 3
						bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3 + get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4)
						bus_volt_R = bus_volt_L
						apu_volt = bus_volt_L
						set(bat_source_1, bat_works_1)
						set(bat_source_2, bat_works_2)
						set(bat_source_3, bat_works_3)
						set(bat_source_4, bat_works_4)
						-- set currents
						set(vu1_amp, 0)
						set(vu2_amp, 0)
						set(vu3_amp, 0)
						set(bat_amp_1, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_1 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
						set(bat_amp_2, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_2 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
						set(bat_amp_3, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_3 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
						set(bat_amp_4, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_4 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					else 
						source_L = 0
						source_R = 0
						bus_volt_L = 0
						bus_volt_R = 0
						apu_volt = 0
						set(bat_source_1, bat_works_1)
						set(bat_source_2, bat_works_2)
						set(bat_source_3, bat_works_3)
						set(bat_source_4, bat_works_4)
					end
			else -- battery source in flight for starting APU
				source_L = 3
				source_R = 3
				if bat_works_1 + bat_works_2 > 0 then -- only bat 1 and bat 2 gives power to buses. bat 3 and bat 4 gives power for APU starter
					bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_2) * bat_works_2) / (bat_works_1 + bat_works_2)
					bus_volt_R = bus_volt_L
					set(bat_amp_1, (bus_amp_L + bus_amp_R) * bat_works_1 / (bat_works_1 + bat_works_2))
					set(bat_amp_2, (bus_amp_L + bus_amp_R) * bat_works_2 / (bat_works_1 + bat_works_2))
				else 
					bus_volt_L = 0 
					bus_volt_R = 0
					set(vu1_amp, 0)
					set(vu2_amp, 0)
					set(vu3_amp, 0)
					set(bat_amp_1, 0)
					set(bat_amp_2, 0)				
				end
				set(bat_source_1, bat_works_1)
				set(bat_source_2, bat_works_2)
				set(bat_source_3, bat_works_3)
				set(bat_source_4, bat_works_4)	
				-- set currents for APU
				if bat_works_3 + bat_works_4 > 0 then
					apu_volt = (get(bat_volt_3) * bat_works_3 + get(bat_volt_4) * bat_works_4) / (bat_works_3 + bat_works_4)
					set(bat_amp_3, (apu_amp * bat_works_3 / (bat_works_3 + bat_works_4)))
					set(bat_amp_4, (apu_amp * bat_works_4 / (bat_works_3 + bat_works_4)))
				else
					apu_volt = 0
					set(bat_amp_3, 0)
					set(bat_amp_4, 0)
				end
			end
		elseif get(bus27_connect) == 1 or get(apu_system_on) == 1 then -- if busses connected or APU main switcher is ON
			set(buses_connected, 1)
			if ((vu1_work and vu1_conn == 1) or (vu2_work and vu2_conn == 1) or (vu3_work and vu3_connL + vu3_connR > 0)) and (vu1_sw ~=0 or vu2_sw ~= 0) then
				source_L = 1
				source_R = 1
				bus_volt_L = 28.5
				bus_volt_R = 28.5
				apu_volt = 28.5
				set(bat_source_1, 0)
				set(bat_source_2, 0)
				set(bat_source_3, 0)
				set(bat_source_4, 0)
				-- set currents
				
				set(vu1_amp, (bus_amp_L + bus_amp_R) * vu1_conn / (vu1_conn + vu2_conn + vu3_connL + vu3_connR))
				set(vu2_amp, (bus_amp_L + bus_amp_R) * vu2_conn / (vu1_conn + vu2_conn + vu3_connL + vu3_connR))
				set(vu3_amp, (bus_amp_L + bus_amp_R) * (vu3_connL + vu3_connR) / (vu1_conn + vu2_conn + vu3_connL + vu3_connR))
				set(bat_amp_1, 0)
				set(bat_amp_2, 0)
				set(bat_amp_3, 0)
				set(bat_amp_4, 0)
			else
				if (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4) > 0 then
					source_L = 3
					source_R = 3
					bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3 + get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4)
					bus_volt_R = bus_volt_L
					apu_volt = bus_volt_L
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
					-- set currents
					set(vu1_amp, 0)
					set(vu2_amp, 0)
					set(vu3_amp, 0)
					set(bat_amp_1, (bus_amp_L + bus_amp_R) * bat_works_1 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_2, (bus_amp_L + bus_amp_R) * bat_works_2 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_3, (bus_amp_L + bus_amp_R) * bat_works_3 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_4, (bus_amp_L + bus_amp_R) * bat_works_4 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
				else 
					source_L = 0
					source_R = 0
					bus_volt_L = 0
					bus_volt_R = 0
					apu_volt = 0
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
				end
				
			end
		
		else -- normal work
		set(buses_connected, 0)
		apu_volt = 0
		-- left bus calc. check sources, cals voltage
			if vu1_work and vu1_sw == 1 then -- VU1 works. connect doesn't matter
				--print(get(bus27_volt_left))
				source_L = 1
				bus_volt_L =  28.5
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, bus_amp_L)
				set(vu3_amp, 0)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
			elseif vu3_work and vu1_sw == -1 then -- VU res works. connect doesn't matter
				source_L = 2
				bus_volt_L = 28.5
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, bus_amp_L)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
			elseif bat_works_1 + bat_works_3 > 0 then
				bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3) / (bat_works_1 + bat_works_3)
				source_L = 3
				set(bat_source_1, bat_works_1)
				set(bat_source_3, bat_works_3)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, 0)
				set(bat_amp_1, bus_amp_L * bat_works_1 / (bat_works_1 + bat_works_3))
				set(bat_amp_3, bus_amp_L * bat_works_3 / (bat_works_1 + bat_works_3))
			else
				source_L = 0
				bus_volt_L = 0
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, 0)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
			end
			

			-- right bus calc. check sources, cals voltage
			if vu2_work and vu2_sw == 1 then -- VU2 works. connect doesn't matter
				source_R = 1
				bus_volt_R =  28.5
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, bus_amp_R)
				--set(vu3_amp, 0)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			elseif vu3_work and vu2_sw == -1 then -- VU res works. connect doesn't matter
				source_R = 2
				bus_volt_R = 28.5
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, 0)
				set(vu3_amp, get(vu3_amp) + bus_amp_R)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			elseif bat_works_2 + bat_works_4 > 0 then
				bus_volt_R = (get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_2 + bat_works_4)
				source_R = 3
				set(bat_source_2, bat_works_2)
				set(bat_source_4, bat_works_4)
				-- set currents
				set(vu2_amp, 0)
				--set(vu3_amp, 0)
				set(bat_amp_2, bus_amp_R * bat_works_2 / (bat_works_2 + bat_works_4))
				set(bat_amp_4, bus_amp_R * bat_works_4 / (bat_works_2 + bat_works_4))
			else
				source_R = 0
				bus_volt_R = 0
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, 0)
				--set(vu3_amp, 0)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			end
			
		end

		--print(get(bat_amp_2))
		
		-- set results 
		set(bus27_volt_left, bus_volt_L)
		set(bus27_volt_right, bus_volt_R)

		set(bus27_source_left, source_L)
		set(bus27_source_right, source_R)
		
		set(vu_res_to_L, vu3_connL)
		set(vu_res_to_R, vu3_connR)
		
		set(apu_start_bus, apu_volt)
	
	end

end

