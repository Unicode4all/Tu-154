sim_period = globalPropertyf("sim/operation/misc/frame_rate_period") 


function smooth_light(target, current_value, factor)

    factor = factor or 11
    local fps_factor = math.min(1.0, factor*get(sim_period))

    if target >= (1 - 0.001) and current_value >= (1 - 0.01) then
        return 1
    elseif target <= (0 + 0.001) and current_value <= (0 + 0.01) then
       return 0
    else
        return current_value + ((target - current_value) * fps_factor)
    end

end

function set_smooth(dref, target, factor)
    factor = factor or 11
    set(dref, smooth_light(target, get(dref)), factor)
end