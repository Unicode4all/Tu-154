-- this is simple logic of generators. calculations for each gen are here.


-- gen parameters
defineProperty("gen1_volt_bus", globalPropertyf("tu154ce/elec/gen1_volt"))  -- generator voltage, initial 115
defineProperty("gen2_volt_bus", globalPropertyf("tu154ce/elec/gen2_volt"))
defineProperty("gen3_volt_bus", globalPropertyf("tu154ce/elec/gen3_volt"))
defineProperty("gen4_volt_bus", globalPropertyf("tu154ce/elec/gen4_volt"))
defineProperty("gpu_volt_bus", globalPropertyf("tu154ce/elec/gpu_volt"))


defineProperty("gen1_amp_bus", globalPropertyf("tu154ce/elec/gen1_amp")) -- generator current load from bus, initial 0A
defineProperty("gen2_amp_bus", globalPropertyf("tu154ce/elec/gen2_amp")) 
defineProperty("gen3_amp_bus", globalPropertyf("tu154ce/elec/gen3_amp"))
defineProperty("gen4_amp_bus", globalPropertyf("tu154ce/elec/gen4_amp"))
defineProperty("gpu_amp", globalPropertyf("tu154ce/elec/gpu_amp"))


defineProperty("gen1_overload", globalPropertyf("tu154ce/elec/gen1_overload")) -- 140A maximum
defineProperty("gen2_overload", globalPropertyf("tu154ce/elec/gen2_overload"))
defineProperty("gen3_overload", globalPropertyf("tu154ce/elec/gen3_overload"))
defineProperty("gen4_overload", globalPropertyf("tu154ce/elec/gen4_overload"))
defineProperty("gpu_overload", globalPropertyi("tu154ce/elec/gpu_overload"))

-- controls
defineProperty("gen_1_on", globalPropertyi("tu154ce/switchers/eng/gen_1_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_2_on", globalPropertyi("tu154ce/switchers/eng/gen_2_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_3_on", globalPropertyi("tu154ce/switchers/eng/gen_3_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("apu_gen_on", globalPropertyi("tu154ce/switchers/eng/apu_gen_on")) -- выключатель ген ВСУ
defineProperty("gpu_on_sw", globalPropertyi("tu154ce/switchers/eng/gpu_on")) -- выключатель РАП

defineProperty("gen1_work", globalPropertyf("tu154ce/elec/gen1_work"))  -- generators connected to the busses and working
defineProperty("gen2_work", globalPropertyf("tu154ce/elec/gen2_work"))
defineProperty("gen3_work", globalPropertyf("tu154ce/elec/gen3_work"))
defineProperty("gen4_work", globalPropertyf("tu154ce/elec/gen4_work"))
defineProperty("gpu_work_bus", globalPropertyi("tu154ce/elec/gpu_work"))


-- bus 27v
defineProperty("DC_27_volt1", globalPropertyf("tu154ce/elec/bus27_volt_left")) -- 27 volt
defineProperty("DC_27_volt2", globalPropertyf("tu154ce/elec/bus27_volt_right")) -- 27 volt

-- all generators work from their engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm
defineProperty("eng4_N1", globalPropertyf("tu154ce/eng/apu_n1")) -- обороты ВСУ

-- default sim variables
defineProperty("sim_gen1_on", globalProperty("sim/cockpit/electrical/generator_on[0]"))
defineProperty("sim_gen2_on", globalProperty("sim/cockpit/electrical/generator_on[1]"))
defineProperty("sim_gen3_on", globalProperty("sim/cockpit/electrical/generator_on[2]"))
defineProperty("sim_gen4_on", globalPropertyi("sim/cockpit2/electrical/APU_generator_on"))

-- sim failures
defineProperty("sim_gen1_fail", globalPropertyi("sim/operation/failures/rel_genera0"))
defineProperty("sim_gen2_fail", globalPropertyi("sim/operation/failures/rel_genera1"))
defineProperty("sim_gen3_fail", globalPropertyi("sim/operation/failures/rel_genera2"))
defineProperty("apu_gen_fail", globalPropertyi("tu154ce/failures/apu_gen_fail"))


defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local apu_gen_counter = 0
local gen_1_counter = 1
local gen_2_counter = 1
local gen_3_counter = 1
local gpu_counter = 0

local gen_on_1_last = get(gen_1_on)
local gen_on_2_last = get(gen_2_on)
local gen_on_3_last = get(gen_3_on)

local ovrld_count_1 = 0
local ovrld_count_2 = 0
local ovrld_count_3 = 0
local ovrld_count_4 = 0

function update() -- every frame calculations are here
	-- pre calculation defifnitions
	
	local passed = get(frame_time)
local MASTER = get(ismaster) ~= 1	



	if passed > 0 and MASTER then
	
		local eng_rpm1 = get(eng1_N1)
		local eng_rpm2 = get(eng2_N1)
		local eng_rpm3 = get(eng3_N1)
		local eng_rpm4 = get(eng4_N1)
		
		local eng1_work = 0
		local eng2_work = 0
		local eng3_work = 0
		local eng4_work = 0
		
		local gen1_amp = get(gen1_amp_bus)
		local gen2_amp = get(gen2_amp_bus)
		local gen3_amp = get(gen3_amp_bus)
		local gen4_amp = get(gen4_amp_bus)
		
		local DC = 0-- generator cannot work, if there is no power for start it.
		if get(DC_27_volt1) > 13 or get(DC_27_volt2) > 13 then
			DC = 1 -- generators on Tu154 requres 27v power to connect on bus
		end

		local gen_on1 = get(gen_1_on)
		local gen_on2 = get(gen_2_on)
		local gen_on3 = get(gen_3_on)
		local gen_on4 = 0
		
		if gen_on1 ~= gen_on_1_last then gen_on1 = 0 end -- check switch through 0
		if gen_on2 ~= gen_on_2_last then gen_on2 = 0 end -- check switch through 0
		if gen_on3 ~= gen_on_3_last then gen_on3 = 0 end -- check switch through 0
		
		gen_on_1_last = get(gen_1_on)
		gen_on_2_last = get(gen_2_on)
		gen_on_3_last = get(gen_3_on)
		
		
		-- check engine work
		if eng_rpm1 > 25 then eng1_work = 1 else eng1_work = 0 end
		if eng_rpm2 > 25 then eng2_work = 1 else eng2_work = 0 end
		if eng_rpm3 > 25 then eng3_work = 1 else eng3_work = 0 end
		if eng_rpm4 > 92 then eng4_work = 1 else eng4_work = 0 end
		
		-- sim generators failures
		local gen1_fail = get(sim_gen1_fail) == 6 or get(gen1_overload) == 1
		local gen2_fail = get(sim_gen2_fail) == 6 or get(gen2_overload) == 1
		local gen3_fail = get(sim_gen3_fail) == 6 or get(gen3_overload) == 1
		local gen4_fail = get(gen4_overload) == 1 or get(apu_gen_fail) == 1

		-- calculations for generator 1
		local gen_work_1 = 0
		if math.abs(gen_on1) * DC * eng1_work == 1 then gen_1_counter = gen_1_counter + passed * 0.5
		else gen_1_counter = 0 end
				
		if gen_1_counter > 1 then 
			gen_1_counter = 1
			gen_work_1 = 1
		end
		
		--print(gen_work_1, gen_on1, DC, eng1_work, gen_1_counter)
		
		local gen1_volt = (119 - gen1_amp / 100) * math.abs(gen_on1) * gen_work_1   -- calculate voltage of generator depending on it's load and engine work
		if gen1_fail then gen1_volt = 0 end -- check failure
		set(gen1_volt_bus, gen1_volt) -- set result
		
		if gen1_volt > 110 and gen_on1 == 1 then set(gen1_work, 1) else set(gen1_work, 0) end

		-- calculations for generator 2
		local gen_work_2 = 0
		if math.abs(gen_on2) * DC * eng2_work == 1 then gen_2_counter = gen_2_counter + passed * 0.5
		else gen_2_counter = 0 end
		
		if gen_2_counter > 1 then 
			gen_2_counter = 1
			gen_work_2 = 1
		end
		
		local gen2_volt = (119 - gen2_amp / 100) * math.abs(gen_on2) * gen_work_2   -- calculate voltage of generator depending on it's load and engine work
		if gen2_fail then gen2_volt = 0 end -- check failure
		set(gen2_volt_bus, gen2_volt) -- set result
		
		if gen2_volt > 110 and gen_on2 == 1 then set(gen2_work, 1) else set(gen2_work, 0) end

		-- calculations for generator 3
		local gen_work_3 = 0
		if math.abs(gen_on3) * DC * eng3_work == 1 then gen_3_counter = gen_3_counter + passed * 0.5
		else gen_3_counter = 0 end
		
		if gen_3_counter > 1 then 
			gen_3_counter = 1
			gen_work_3 = 1
		end
		
		local gen3_volt = (119 - gen3_amp / 100) * math.abs(gen_on3) * gen_work_3   -- calculate voltage of generator depending on it's load and engine work
		if gen3_fail then gen3_volt = 0 end -- check failure
		set(gen3_volt_bus, gen3_volt) -- set resultt	
		
		if gen3_volt > 110 and gen_on3 == 1 then set(gen3_work, 1) else set(gen3_work, 0) end

		-- calculations for generator 4 (APU)
		if get(apu_gen_on) * DC * eng4_work == 1 then apu_gen_counter = apu_gen_counter + passed * 0.5
		else apu_gen_counter = 0 end
		
		if apu_gen_counter > 1 then 
			apu_gen_counter = 1
			gen_on4 = 1
		end
		
		local gen4_volt = (119 - gen4_amp / 100) * gen_on4  -- calculate voltage of generator depending on it's load and engine work
		if gen4_fail then gen4_volt = 0 end -- check failure
		set(gen4_volt_bus, gen4_volt) -- set result		
		
		if gen4_volt > 110 and gen_on4 == 1 then set(gen4_work, 1) else set(gen4_work, 0) end
		

		
		-- check load on generators
		if gen1_amp > 145 then ovrld_count_1 = ovrld_count_1 + passed
		else ovrld_count_1 = 0 end
		
		if ovrld_count_1 > 5 then set(gen1_overload, 1)
		elseif gen_on1 == 0 then set(gen1_overload, 0) end
		
		---
		if gen2_amp > 145 then ovrld_count_2 = ovrld_count_2 + passed
		else ovrld_count_2 = 0 end
		
		if ovrld_count_2 > 5 then set(gen2_overload, 1)
		elseif gen_on2 == 0 then set(gen2_overload, 0) end
		
		--
		if gen3_amp > 145 then ovrld_count_3 = ovrld_count_3 + passed
		else ovrld_count_3 = 0 end
		
		if ovrld_count_3 > 5 then set(gen3_overload, 1)
		elseif gen_on3 == 0 then set(gen3_overload, 0) end
		
		--
		if gen4_amp > 145 then ovrld_count_4 = ovrld_count_4 + passed
		else ovrld_count_4 = 0 end
		
		if ovrld_count_4 > 5 then set(gen4_overload, 1)
		elseif gen_on4 == 0 then set(gen4_overload, 0) end
		
		--print(ovrld_count_1, "  ", ovrld_count_2, "  ", ovrld_count_3)
		
		-- set simulator's generators status
		if gen1_volt * gen_on1 > 0 then 
			set(sim_gen1_on, 1)
		else 
			set(sim_gen1_on, 0)
		end
		
		if gen2_volt * gen_on2 > 0 then 
			set(sim_gen2_on, 1)
		else 
			set(sim_gen2_on, 0)
		end
		
		if gen3_volt * gen_on3 > 0 then 
			set(sim_gen3_on, 1)
		else 
			set(sim_gen3_on, 0)
		end
		
		if gen4_volt * gen_on4 > 0 then 
			set(sim_gen4_on, 1)
		else 
			set(sim_gen4_on, 0)
		end

	end
	
end
