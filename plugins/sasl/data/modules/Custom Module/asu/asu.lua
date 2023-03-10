rpm = globalPropertyf("tu154ce/asu/rpm") -- обороты ТА-6А
air_press = globalPropertyf("tu154ce/asu/press")
work = globalPropertyi("tu154ce/asu/work")
sim_period = globalPropertyf("sim/operation/misc/frame_rate_period")
GS = globalPropertyf("sim/flightmodel/position/groundspeed") -- ground speed
show = globalPropertyf("tu154ce/anim/asu_show")

bleed_valve = false
components = {

}

stopped = true

function update()
    local fps_factor = math.min(0.2, 0.1 * get(sim_period))
    if get(work) == 1 and get(GS) < 0.1 then
        set(show, 1)
        stopped = false
        if get(rpm) < 100 then
            set(rpm, get(rpm) + (100 - get(rpm)) * fps_factor)
        end

        bleed_valve = bool2int(get(rpm) > 90)

        set(air_press, bleed_valve * (get(air_press) + ((3.8 - get(air_press)) * 0.1 * get(sim_period))))
    else    
        if get(GS) > 0.1 then stopped = true end
        if not stopped then
            set(rpm, get(rpm) - (100 - get(rpm)) * 1 * get(sim_period))
            bleed_valve = bool2int(get(rpm) > 90)
            if get(rpm) < 0.1 then stopped = true end
            return
        end

        set(rpm, 0)
        set(show, 0)
        set(air_press, 0)
        set(work, 0)
    end
end
