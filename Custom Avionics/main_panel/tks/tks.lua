-- this is main Course System - TKS


components = {

	km5 {}, -- mag-corr gauge 1
	
	km5 { -- mag-corr gauge 2
		-- power
		bus27_volt = globalPropertyf("sim/custom/elec/bus27_volt_right"),  -- напряжение сети 27
		bus36_volt = globalPropertyf("sim/custom/elec/bus36_volt_right"), -- напряжение сети 36
		-- controls
		km5_knob = globalPropertyf("sim/custom/gauges/eng/km5_knob_2"), -- крутилка на КМ5
		-- fail
		fail = globalPropertyf("sim/custom/failures/tks_km2_fail"), -- отказ
		-- results
		km5_scale = globalPropertyf("sim/custom/gauges/eng/km5_scale_2"), -- поворот шкалы на КМ5
		km5_needle = globalPropertyf("sim/custom/gauges/eng/km5_needle_2"), -- стрелка КМ5

		course_mk = globalPropertyf("sim/custom/tks/course_mk_2"), -- курс на MK5
		
		km5_cc = globalPropertyf("sim/custom/tks/km5_2_cc"), -- потребление тока КМ5
	},
	
	gyro {}, -- both gyros
	ush3 {}, -- big compas gauge
	bgmk {}, -- gyro-magnetic unit
	tks_panel {}, -- panel
	tks_fails {},
	
}