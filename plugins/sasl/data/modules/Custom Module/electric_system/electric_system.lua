-- this is overall electric system

xplane_version = globalProperty("sim/version/xplane_internal_version")


components = {
	


	battery_logic{}, -- battery 1. reference code
	
	battery_logic{ -- battery 2
		bat_on_bus = globalPropertyi("tu154ce/switchers/eng/bat2_on"), 
		bat_source = globalPropertyi("tu154ce/elec/bat_is_source_2"),  
		bat_amp_bus = globalPropertyf("tu154ce/elec/bat_amp_2"), 
		bat_amp_cc = globalPropertyf("tu154ce/elec/bat_cc_2"),  
		bat_volt_bus = globalPropertyf("tu154ce/elec/bat_volt_2"), 
		bus_volt = globalPropertyf("tu154ce/elec/bus27_volt_right"), 
		bat_fail = globalPropertyi("tu154ce/failures/bat_2_fail"),
		bat_kz = globalPropertyi("tu154ce/failures/bat_2_kz"),
		sim_bat_on = globalProperty("sim/cockpit2/electrical/battery_on[1]"),
		bat_thermo = globalPropertyf("tu154ce/elec/bat_therm_2"),
	},
	
	battery_logic{ -- battery 3
		bat_on_bus = globalPropertyi("tu154ce/switchers/eng/bat3_on"), 
		bat_source = globalPropertyi("tu154ce/elec/bat_is_source_3"),  
		bat_amp_bus = globalPropertyf("tu154ce/elec/bat_amp_3"), 
		bat_amp_cc = globalPropertyf("tu154ce/elec/bat_cc_3"),  
		bat_volt_bus = globalPropertyf("tu154ce/elec/bat_volt_3"), 
		bus_volt = globalPropertyf("tu154ce/elec/bus27_volt_left"), 
		bat_fail = globalPropertyi("tu154ce/failures/bat_3_fail"),
		bat_kz = globalPropertyi("tu154ce/failures/bat_3_kz"),
		sim_bat_on = globalProperty("sim/cockpit2/electrical/battery_on[2]"),
		bat_thermo = globalPropertyf("tu154ce/elec/bat_therm_3"),	
	},

	battery_logic{ -- battery 4
		bat_on_bus = globalPropertyi("tu154ce/switchers/eng/bat4_on"), 
		bat_source = globalPropertyi("tu154ce/elec/bat_is_source_4"),  
		bat_amp_bus = globalPropertyf("tu154ce/elec/bat_amp_4"), 
		bat_amp_cc = globalPropertyf("tu154ce/elec/bat_cc_4"),  
		bat_volt_bus = globalPropertyf("tu154ce/elec/bat_volt_4"), 
		bus_volt = globalPropertyf("tu154ce/elec/bus27_volt_right"),
		bat_fail = globalPropertyi("tu154ce/failures/bat_4_fail"),
		bat_kz = globalPropertyi("tu154ce/failures/bat_4_kz"),
		sim_bat_on = globalProperty("sim/cockpit2/electrical/battery_on[3]"),
		bat_thermo = globalPropertyf("tu154ce/elec/bat_therm_4"),
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