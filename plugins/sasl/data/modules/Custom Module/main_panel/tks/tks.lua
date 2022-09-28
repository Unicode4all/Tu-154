-- this is main Course System - TKS


components = {

	km5 {}, -- mag-corr gauge 1
	
	km5 { -- mag-corr gauge 2
		-- power
		bus27_volt = globalPropertyf("tu154ce/elec/bus27_volt_right"),  -- напряжение сети 27
		bus36_volt = globalPropertyf("tu154ce/elec/bus36_volt_right"), -- напряжение сети 36
		-- controls
		km5_knob = globalPropertyf("tu154ce/gauges/eng/km5_knob_2"), -- крутилка на КМ5
		-- fail
		fail = globalPropertyf("tu154ce/failures/tks_km2_fail"), -- отказ
		-- results
		km5_scale = globalPropertyf("tu154ce/gauges/eng/km5_scale_2"), -- поворот шкалы на КМ5
		km5_needle = globalPropertyf("tu154ce/gauges/eng/km5_needle_2"), -- стрелка КМ5

		course_mk = globalPropertyf("tu154ce/tks/course_mk_2"), -- курс на MK5
		
		km5_cc = globalPropertyf("tu154ce/tks/km5_2_cc"), -- потребление тока КМ5
	},
	
	gyro {}, -- both gyros
	ush3 {}, -- big compas gauge
	bgmk {}, -- gyro-magnetic unit
	tks_panel {}, -- panel
	tks_fails {},
	
}