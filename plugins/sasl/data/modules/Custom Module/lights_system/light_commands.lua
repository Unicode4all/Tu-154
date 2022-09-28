-- this is the lights commands

defineProperty("nav_lights_set", globalPropertyi("tu154ce/lights/nav_lights_set")) -- выключатель нав огней
defineProperty("strobe_set", globalPropertyi("tu154ce/lights/strobe_set")) -- выключатель красных маяков
defineProperty("wing_light_left_set", globalPropertyi("tu154ce/lights/wing_light_left_set")) -- выключатель подсвета порогов и крыла
defineProperty("wing_light_right_set", globalPropertyi("tu154ce/lights/wing_light_right_set")) -- выключатель подсвета порогов и крыла
defineProperty("tail_light_set", globalPropertyi("tu154ce/lights/tail_light_set")) -- выключатель подсвета хвоста
defineProperty("day_night_set", globalPropertyi("tu154ce/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


defineProperty("landing_ext_set_L", globalPropertyi("tu154ce/lights/landing_ext_set_L")) -- выпуск фар лев
defineProperty("landing_ext_set_R", globalPropertyi("tu154ce/lights/landing_ext_set_R")) -- выпуск фар прав
defineProperty("landing_mode_set_L", globalPropertyi("tu154ce/lights/landing_mode_set_L")) -- режим фар лев. -1 - рулежный, 0 - выкл, +1 - посадочный
defineProperty("landing_mode_set_R", globalPropertyi("tu154ce/lights/landing_mode_set_R")) -- режим фар прав


local function setup_hold_command(off_value, on_value, cmd_name, property_ref)

    local function create_handler(off_value, on_value, property_ref)

        return function(phase)                      -- собственно handler, phase == 1 пока кнопка нажата
                                                    -- пишем в property новое значение только если оно изменилось
            if phase == 0 then                      -- phase == 0 в момент нажатия
                set(property_ref, on_value)
            elseif phase == 2 then                  -- phase == 2 в момент отпускания
                set(property_ref, off_value)
            end
            
            return 0                                -- это последний обработчик этой команды
        end
    end
    
    registerCommandHandler(findCommand(cmd_name) or createCommand(cmd_name, 0), 0, create_handler(off_value, on_value, property_ref))
end


local function setup_toggle_command(off_value, on_value, cmd_name, property_ref)

    local function create_handler(off_value, on_value, property_ref)

        return function(phase)                      -- собственно handler, phase == 1 пока кнопка нажата
                                                    -- пишем в property новое значение только если оно изменилось
            if phase == 0 then                      -- phase == 0 в момент нажатия
                if get(property_ref) ~= on_value then
					set(property_ref, on_value)
				else
					set(property_ref, off_value)
				end
            end
            
            return 0                                -- это последний обработчик этой команды
        end
    end
    
    registerCommandHandler(findCommand(cmd_name) or createCommand(cmd_name, 0), 0, create_handler(off_value, on_value, property_ref))
end



-- setup_command(<значение в неактивном состоянии (кнопка отпущена)>, <значение в активном состоянии (кнопка нажата)>, <имя команды>, <датареф>)
setup_toggle_command(0, 1, "sim/lights/nav_lights_toggle",   globalPropertyi("tu154ce/lights/nav_lights_set"))   -- NAV lights
setup_toggle_command(0, 1, "sim/lights/strobe_lights_toggle",   globalPropertyi("tu154ce/lights/strobe_set"))   -- Red becaon lights
setup_toggle_command(0, 1, "sim/lights/spot_lights_toggle",   globalPropertyi("tu154ce/lights/tail_light_set"))   -- tail logo




local landing_light_open = findCommand("sim/lights/landing_lights_toggle")

function landing_light_open_hnd(phase)
	if 0 == phase then
		if get(landing_ext_set_L) ~= 1 then
			set(landing_ext_set_L, 1)
			set(landing_ext_set_R, 1)
		else
			set(landing_ext_set_L, 0)
			set(landing_ext_set_R, 0)
		end
		
	end
	return 0
end

registerCommandHandler(landing_light_open, 0, landing_light_open_hnd)

local landing_light_up = findCommand("sim/lights/landing_lights_on")

function landing_light_up_hnd(phase)
	if 0 == phase then
		local a = get(landing_mode_set_L) + 1
		if a > 1 then a = 1 end
		set(landing_mode_set_L, a)
		set(landing_mode_set_R, a)
	else 
		
	end
	return 0
end

registerCommandHandler(landing_light_up, 0, landing_light_up_hnd)


local landing_light_down = findCommand("sim/lights/landing_lights_off")

function landing_light_down_hnd(phase)
	if 0 == phase then
		local a = get(landing_mode_set_L) - 1
		if a < -1 then a = -1 end
		set(landing_mode_set_L, a)
		set(landing_mode_set_R, a)
	else 
		
	end
	return 0
end

registerCommandHandler(landing_light_down, 0, landing_light_down_hnd)




--setup_toggle_command(0, 1, "sasl/test_command",   globalPropertyi("tu154ce/lights/nav_lights_set"))   -- NAV lights

--[[
sim/lights/nav_lights_toggle                       Nav lights toggle.
sim/lights/strobe_lights_toggle                    Strobe lights toggle.
sim/lights/spot_lights_toggle                      Spot lights toggle.
sim/lights/landing_lights_toggle                   Landing lights toggle.
sim/lights/landing_lights_on                       Landing lights on.
sim/lights/landing_lights_off                      Landing lights off.



--]]





























