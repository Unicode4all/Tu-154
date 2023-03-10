-- this is the ABSU indicators

-- sources


function update()

	set(rudder_pos_ind, get(absu_contr_yaw) / 0.4)
	set(aileron_pos_ind, get(absu_contr_roll) / 0.4)
	set(elevator_pos_ind, get(absu_contr_pitch) / 0.4)

	if get(gear1_deflect) > 0.01 and get(int_pitch_trim) < -0.5 then set(elevator_pos_ind, -get(absu_contr_pitch) / 0.4) end
	
	

end