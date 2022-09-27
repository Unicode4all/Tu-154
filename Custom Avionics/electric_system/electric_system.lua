-- this is overall electric system


components = {
	


	battery_logic{}, -- battery 1. reference code
	
	battery_logic{ -- battery 2
		bat_on_bus = globalPropertyi("sim/custom/switchers/eng/bat2_on"), 
		bat_source = globalPropertyi("sim/custom/elec/bat_is_source_2"),  
		bat_amp_bus = globalPropertyf("sim/custom/elec/bat_amp_2"), 
		bat_amp_cc = globalPropertyf("sim/custom/elec/bat_cc_2"),  
		bat_volt_bus = globalPropertyf("sim/custom/elec/bat_volt_2"), 
		bus_volt = globalPropertyf("sim/custom/elec/bus27_volt_right"), 
		bat_fail = globalPropertyi("sim/custom/failures/bat_2_fail"),
		bat_kz = globalPropertyi("sim/custom/failures/bat_2_kz"),
		sim_bat_on = globalPropertyf("sim/cockpit2/electrical/battery_on[1]"),
		bat_thermo = globalPropertyf("sim/custom/elec/bat_therm_2"),
	},
	
	battery_logic{ -- battery 3
		bat_on_bus = globalPropertyi("sim/custom/switchers/eng/bat3_on"), 
		bat_source = globalPropertyi("sim/custom/elec/bat_is_source_3"),  
		bat_amp_bus = globalPropertyf("sim/custom/elec/bat_amp_3"), 
		bat_amp_cc = globalPropertyf("sim/custom/elec/bat_cc_3"),  
		bat_volt_bus = globalPropertyf("sim/custom/elec/bat_volt_3"), 
		bus_volt = globalPropertyf("sim/custom/elec/bus27_volt_left"), 
		bat_fail = globalPropertyi("sim/custom/failures/bat_3_fail"),
		bat_kz = globalPropertyi("sim/custom/failures/bat_3_kz"),
		sim_bat_on = globalPropertyf("sim/cockpit2/electrical/battery_on[2]"),
		bat_thermo = globalPropertyf("sim/custom/elec/bat_therm_3"),	
	},

	battery_logic{ -- battery 4
		bat_on_bus = globalPropertyi("sim/custom/switchers/eng/bat4_on"), 
		bat_source = globalPropertyi("sim/custom/elec/bat_is_source_4"),  
		bat_amp_bus = globalPropertyf("sim/custom/elec/bat_amp_4"), 
		bat_amp_cc = globalPropertyf("sim/custom/elec/bat_cc_4"),  
		bat_volt_bus = globalPropertyf("sim/custom/elec/bat_volt_4"), 
		bus_volt = globalPropertyf("sim/custom/elec/bus27_volt_right"),
		bat_fail = globalPropertyi("sim/custom/failures/bat_4_fail"),
		bat_kz = globalPropertyi("sim/custom/failures/bat_4_kz"),
		sim_bat_on = globalPropertyf("sim/cockpit2/electrical/battery_on[3]"),
		bat_thermo = globalPropertyf("sim/custom/elec/bat_therm_4"),
	},
	
	generators_logic {}, -- logic of main and APU generators
	
	current_counter {}, -- summ of all currents
	
	bus36_logic {},
	bus27_logic {},
	bus115_logic {},
	gpu_logic {},
	electric_fails{},

	electric_panel{},
	
	
}