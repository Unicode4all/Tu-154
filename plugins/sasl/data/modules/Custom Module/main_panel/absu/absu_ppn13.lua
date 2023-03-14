include("smooth_light.lua")
include("smooth_anim.lua")
local passed = get(frame_time)
local notLoaded = true
local start_timer = 0
operating_mode = 0

ppn_modes      = {
    failure = 0,
    test_svk = 1,
    test_absu = 2,
}

ppn_states     = {
    servo_pitch_bit = 0,
    servo_roll_bit = 1,
    servo_yaw_bit = 2,
    bdg_pitch_bit = 3,
    bdg_roll_bit = 4,
    bdg_yaw_bit = 5,
    cws1_bit = 6,
    cws2_bit = 7,
    bns_p_bit = 8,
    bap_p_bit = 9,
    bap_r_bit = 10,
    vkv_bit = 11,
    vu_bit = 12,
    ute_bit = 13,
    stu_p_bit = 14,
    stu_r_bit = 15,
    at_bit = 16,
    bsn_bit = 17,
}

ppn            = {
    debug = true,
    debug_printed = false,
    debug_current_lt = 0,
    active = false,
    absu_ready = false,
    mode = ppn_modes.failure,
    state = ppn_states.servo_pitch_bit,
    await_rel = false,
    passed = false,
    timer = nil,
    timer_started = false,
    next_state = function(self)
        if self.state == ppn_states.bsn_bit then return end
        sasl.resetTimer(self.timer)
        sasl.startTimer(self.timer)
        self.state = self.state + 1
        self.debug_printed = false
        self.ack_pressed = false
        self:flush_lights()
    end,
    reset_state = function(self)
        self.state = 0
        self:stop_timer()
        sasl.resetTimer(self.timer)
        self:start_timer()
        self.debug_printed = false
        self:flush_lights()
    end,
    start_timer = function(self)
        if self.timer_started == false then
            sasl.startTimer(self.timer)
            self.timer_started = true
        end
    end,
    stop_timer = function(self)
        if self.timer_started == false then return end
        sasl.stopTimer(self.timer)
        --sasl.resetTimer(self.timer)
        self.timer_started = false
    end,
    get_elapsed_seconds = function(self)
        if self.timer_started == false then return 0 end
        return sasl.getElapsedSeconds(self.timer)
    end,
    debug_print = function(self, light)
        if self.debug_printed == false then
            print("STATE: " .. self.state)
            print("Current Light: " .. light)
            print("Channels:")
            print("1: " .. self.lights.ch1_lt_brt)
            print("2: " .. self.lights.ch2_lt_brt)
            print("3: " .. self.lights.ch3_lt_brt)
        end
        self.debug_printed = true
    end,
    flush_lights = function(self)
        self.lights.servo_pitch_lt_brt = 0
        self.lights.servo_roll_lt_brt  = 0
        self.lights.servo_yaw_lt_brt   = 0
        self.lights.bdg_pitch_lt_brt   = 0
        self.lights.bdg_roll_lt_brt    = 0
        self.lights.bdg_yaw_lt_brt     = 0
        self.lights.cws1_lt_brt        = 0
        self.lights.cws2_lt_brt        = 0
        self.lights.bns_p_lt_brt       = 0
        self.lights.bap_p_lt_brt       = 0
        self.lights.bap_r_lt_brt       = 0
        self.lights.vkv_lt_brt         = 0
        self.lights.vu_lt_brt          = 0
        self.lights.ute_lt_brt         = 0
        self.lights.stu_p_lt_brt       = 0
        self.lights.stu_r_lt_brt       = 0
        self.lights.at_lt_brt          = 0
        self.lights.bsn_lt_brt         = 0
        self.lights.mgv_p_stu_lt_brt   = 0
        self.lights.mgv_r_stu_lt_brt   = 0
        self.lights.mgv_p_sau_lt_brt   = 0
        self.lights.mgv_r_sau_lt_brt   = 0
        self.lights.ks_lt_brt          = 0
        self.lights.bns_r_lt_brt       = 0
        self.lights.ch1_lt_brt         = 0
        self.lights.ch2_lt_brt         = 0
        self.lights.ch3_lt_brt         = 0
        self.lights.ch4_lt_brt         = 0
        --self.lights.absu_ready_lt_brt  = 0
    end,
    lights = {
        servo_pitch_lt_brt = 0,
        servo_roll_lt_brt  = 0,
        servo_yaw_lt_brt   = 0,
        bdg_pitch_lt_brt   = 0,
        bdg_roll_lt_brt    = 0,
        bdg_yaw_lt_brt     = 0,
        cws1_lt_brt        = 0,
        cws2_lt_brt        = 0,
        bns_p_lt_brt       = 0,
        bap_p_lt_brt       = 0,
        bap_r_lt_brt       = 0,
        vkv_lt_brt         = 0,
        vu_lt_brt          = 0,
        ute_lt_brt         = 0,
        stu_p_lt_brt       = 0,
        stu_r_lt_brt       = 0,
        at_lt_brt          = 0,
        bsn_lt_brt         = 0,
        mgv_p_stu_lt_brt   = 0,
        mgv_r_stu_lt_brt   = 0,
        mgv_p_sau_lt_brt   = 0,
        mgv_r_sau_lt_brt   = 0,
        ks_lt_brt          = 0,
        bns_r_lt_brt       = 0,
        ch1_lt_brt         = 0,
        ch2_lt_brt         = 0,
        ch3_lt_brt         = 0,
        ch4_lt_brt         = 0,
        absu_ready_lt_brt  = 0,
    }
}

if get(ppn).timer == nil then
    ppn.timer = sasl.createTimer()
end

chan_1_work = 0
chan_2_work = 0
chan_3_work = 0
ra56_rud_on = 0
ra56_ail_on = 0
ra56_elev_on = 0

check_hyd = false

function switches()
    set(ack_anim, smooth_anim(get(ack), get(ack_anim)))
    set(flt_anim, smooth_anim(get(flt), get(flt_anim)))
    set(lookup_anim, smooth_anim(get(lookup), get(lookup_anim)))
    set(poweroff_anim, smooth_anim(get(poweroff), get(poweroff_anim)))
    set(snp_anim, smooth_anim(get(snp), get(snp_anim)))
    set(t1_anim, smooth_anim(get(t1), get(t1_anim)))
    set(t2_anim, smooth_anim(get(t2), get(t2_anim)))
    set(t3_anim, smooth_anim(get(t3), get(t3_anim)))
    set(test_absu_anim, smooth_anim(get(test_absu), get(test_absu_anim)))
    set(test_svk_anim, smooth_anim(get(test_svk), get(test_svk_anim)))
    set(lid_anim, smooth_anim(get(lid), get(lid_anim)))

    if get(lid_anim) < 0.5 and get(test_svk) == 1 then
        set(test_svk, 0)
    end

    if get(lid_anim) < 0.5 and get(test_absu) == 1 then
        set(test_absu, 0)
    end
end

function bit_mode()
    if get(lookup) == 1 and bit == false then
        ppn.active = true
    end

    if ppn.active == true then
        if ppn.sequence == 0 then

        end
    end
end

function failure_mode()
    if get(lookup) == 1 then ppn.active = true else ppn.active = false end

    if ppn.active == true then
        if ppn.state == ppn_states.servo_pitch_bit then
            ppn:start_timer()
            -- TODO: Proper servo power simulation
            local chan_1 = get(hydro_ra56_elev_1) == 0 or not check_hyd
            local chan_2 = get(hydro_ra56_elev_2) == 0 or not check_hyd
            local chan_3 = get(hydro_ra56_elev_3) == 0 or not check_hyd
            ppn.lights.servo_pitch_lt_brt = bool2int(ra56_elev_on == false or not check_hyd)


            ppn.lights.ch1_lt_brt = bool2int(chan_1)
            ppn.lights.ch2_lt_brt = bool2int(chan_2)
            ppn.lights.ch3_lt_brt = bool2int(chan_3)

            ppn:debug_print(ppn.lights.servo_pitch_lt_brt)
            if ppn:get_elapsed_seconds() > 0.3 then
                if get(ack) == 1 and (chan_1 or chan_2 or chan_3) then ppn:next_state() end
            end
            if ppn:get_elapsed_seconds() > 1 then
                if get(ack) == 1 and (chan_1 or chan_2 or chan_3) then ppn:next_state() end
            end
        end
        if ppn.state == ppn_states.servo_roll_bit then
            local chan_1 = get(hydro_ra56_ail_1) * bool2int(get(absu_ra56_roll_fail) ~= 3) == 0 or not check_hyd
            local chan_2 = get(hydro_ra56_ail_2) * bool2int(get(absu_ra56_roll_fail) ~= 3) == 0 or not check_hyd
            local chan_3 = get(hydro_ra56_ail_3) * bool2int(get(absu_ra56_roll_fail) ~= 3) == 0 or not check_hyd
            ppn.lights.servo_roll_lt_brt = bool2int(ra56_ail_on == false or not check_hyd)
            ppn.lights.ch1_lt_brt = bool2int(chan_1)
            ppn.lights.ch2_lt_brt = bool2int(chan_2)
            ppn.lights.ch3_lt_brt = bool2int(chan_3)
            ppn:debug_print(ppn.lights.servo_roll_lt_brt)
            if ppn:get_elapsed_seconds() > 0.3 then
                if get(ack) == 1 and (chan_1 or chan_2 or chan_3) then ppn:next_state() end
            end
            if ppn:get_elapsed_seconds() > 1 then
                if get(ack) == 1 and (chan_1 or chan_2 or chan_3) then ppn:next_state() end
            end
        end
        if ppn.state == ppn_states.servo_yaw_bit then
            local chan_1 = get(hydro_ra56_rud_1) * bool2int(get(absu_ra56_yaw_fail) ~= 3) == 0 or not check_hyd
            local chan_2 = get(hydro_ra56_rud_2) * bool2int(get(absu_ra56_yaw_fail) ~= 3) == 0 or not check_hyd
            local chan_3 = get(hydro_ra56_rud_3) * bool2int(get(absu_ra56_yaw_fail) ~= 3) == 0 or not check_hyd

            ppn.lights.servo_yaw_lt_brt = bool2int(ra56_rud_on == false or not check_hyd)
            ppn.lights.ch1_lt_brt = bool2int(chan_1)
            ppn.lights.ch2_lt_brt = bool2int(chan_2)
            ppn.lights.ch3_lt_brt = bool2int(chan_3)
            ppn:debug_print(ppn.lights.servo_yaw_lt_brt)
            if ppn:get_elapsed_seconds() > 0.3 then
                if get(ack) == 1 and (chan_1 or chan_2 or chan_3) then ppn:next_state() end
            end
            if ppn:get_elapsed_seconds() > 1 then
                if get(ack) == 1 and (chan_1 or chan_2 or chan_3) then ppn:next_state() end
            end
        end
        if ppn.state == ppn_states.bdg_pitch_bit then
            ppn.lights.bdg_pitch_lt_brt = get(absu_damp_pitch_fail)
            if ppn.lights.bdg_pitch_lt_brt == 1 then
                if ppn:get_elapsed_seconds() > 1 then
                    ppn:next_state()
                end
            else
                ppn:next_state()
            end
        end
        if ppn.state == ppn_states.bdg_roll_bit then
            ppn.lights.bdg_roll_lt_brt = get(absu_damp_roll_fail)
            if ppn.lights.bdg_roll_lt_brt == 1 then
                if ppn:get_elapsed_seconds() > 1 then
                    ppn:next_state()
                end
            else
                ppn:next_state()
            end
        end
        if ppn.state == ppn_states.bdg_yaw_bit then
            ppn.lights.bdg_yaw_lt_brt = get(absu_damp_yaw_fail)
            if ppn.lights.bdg_yaw_lt_brt == 1 then
                if ppn:get_elapsed_seconds() > 1 then
                    ppn:next_state()
                end
            else
                ppn:next_state()
            end
        end
        if ppn.state == ppn_states.cws1_bit then
            ppn.lights.cws1_lt_brt = get(absu_contr_pitch_fail)
            if ppn.lights.cws1_lt_brt == 1 then
                if ppn:get_elapsed_seconds() > 1 then
                    ppn:next_state()
                end
            else
                ppn:next_state()
            end
        end
        if ppn.state == ppn_states.cws2_bit then
            ppn.lights.cws2_lt_brt = get(absu_contr_roll_fail)
            if ppn.lights.cws2_lt_brt == 1 then
                if ppn:get_elapsed_seconds() > 1 then
                    ppn:reset_state()
                end
            else
                ppn:reset_state()
            end
        end
    elseif ppn.active == false then
        ppn:reset_state()
    end
end

function process_vars()
    check_hyd = (bool2int(get(pressure_ind_1) < 100) + bool2int(get(pressure_ind_2) < 100) + bool2int(get(pressure_ind_3) < 100) <
        2)
        local nav_prep = get(absu_nav_on) == 1
        local land_prep = get(absu_landing_on) == 1
        local stu_test_1_cntr = 0
        if get(absu_speed_test_2) == 1 and (nav_prep or land_prep) then
            stu_test_1_cntr = stu_test_1_cntr + passed
        else
            stu_test_1_cntr = 0
        end

    chan_1_work = get(hydro_ra56_rud_1) * bool2int(get(absu_ra56_yaw_fail) ~= 3) +
        get(hydro_ra56_ail_1) * bool2int(get(absu_ra56_roll_fail) == 0) +
        get(hydro_ra56_elev_1) * bool2int(get(absu_ra56_pitch_fail) ~= 3) > 0
    chan_2_work = get(hydro_ra56_rud_2) * bool2int(get(absu_ra56_yaw_fail) == 0) +
        get(hydro_ra56_ail_2) * bool2int(get(absu_ra56_roll_fail) ~= 3) +
        get(hydro_ra56_elev_2) * bool2int(get(absu_ra56_pitch_fail) < 2) > 0
    chan_3_work = get(hydro_ra56_rud_3) * bool2int(get(absu_ra56_yaw_fail) < 2) +
        get(hydro_ra56_ail_3) * bool2int(get(absu_ra56_roll_fail) < 2) +
        get(hydro_ra56_elev_3) * bool2int(get(absu_ra56_pitch_fail) == 0) > 0
    ra56_rud_on = get(hydro_ra56_rud_1) * bool2int(get(absu_ra56_yaw_fail) ~= 3) +
        get(hydro_ra56_rud_2) * bool2int(get(absu_ra56_yaw_fail) == 0) +
        get(hydro_ra56_rud_3) * bool2int(get(absu_ra56_yaw_fail) < 2) > 1

    ra56_ail_on = get(hydro_ra56_ail_1) * bool2int(get(absu_ra56_roll_fail) == 0) +
        get(hydro_ra56_ail_2) * bool2int(get(absu_ra56_roll_fail) ~= 3) +
        get(hydro_ra56_ail_3) * bool2int(get(absu_ra56_roll_fail) < 2) > 1

    ra56_elev_on = get(hydro_ra56_elev_1) * bool2int(get(absu_ra56_pitch_fail) ~= 3) +
        get(hydro_ra56_elev_2) * bool2int(get(absu_ra56_pitch_fail) < 2) +
        get(hydro_ra56_elev_3) * bool2int(get(absu_ra56_pitch_fail) == 0) > 1

    absu_work_logic = get(pkp_fail_left) + get(pkp_fail_right) + get(mgv_contr_fail) < 2
    absu_work_logic = absu_work_logic and
        bool2int(get(pressure_ind_1) < 100) + bool2int(get(pressure_ind_2) < 100) + bool2int(get(pressure_ind_3) < 100) <
        2

    absu_work_logic = absu_work_logic and (ra56_rud_on and ra56_ail_on and ra56_elev_on)
    absu_work_logic = absu_work_logic and chan_1_work and chan_2_work and chan_3_work
    absu_work_logic = absu_work_logic and get(sau_stu_on) == 1 and get(tks_fail_left) + get(tks_fail_right) == 0
    absu_work_logic = absu_work_logic and stu_test_1_cntr < 0.5
    absu_work_logic = absu_work_logic and get(absu_damp_roll_fail) == 0 and get(absu_damp_pitch_fail) == 0 and
        get(absu_damp_yaw_fail) == 0
    absu_work_logic = absu_work_logic and get(absu_contr_roll_fail) == 0 and get(absu_contr_pitch_fail) == 0
end

function absu_ready_light()
    ppn.lights.absu_ready_lt_brt = bool2int(absu_work_logic)
end

function logic()
    process_vars()
    absu_ready_light()
    failure_mode()
    --if not ppn.active then
    --    return
    --end
    --if get(test_absu) == 0 and get(test_svk) == 0 then
    --    operating_mode = 1
    --end
    --if get(test_svk) == 1 and get(test_absu) == 0 then
    --    operating_mode = 2
    --end

    --if operating_mode == 2 then
    --    bit_mode()
    --end
end

function lights()
    local test_btn           = get(test_lights) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
    local lights_brt         = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)

    local servo_pitch_lt_brt = math.max(ppn.lights.servo_pitch_lt_brt * lights_brt, test_btn)
    local servo_roll_lt_brt  = math.max(ppn.lights.servo_roll_lt_brt * lights_brt, test_btn)
    local servo_yaw_lt_brt   = math.max(ppn.lights.servo_yaw_lt_brt * lights_brt, test_btn)
    local bdg_pitch_lt_brt   = math.max(ppn.lights.bdg_pitch_lt_brt * lights_brt, test_btn)
    local bdg_roll_lt_brt    = math.max(ppn.lights.bdg_roll_lt_brt * lights_brt, test_btn)
    local bdg_yaw_lt_brt     = math.max(ppn.lights.bdg_yaw_lt_brt * lights_brt, test_btn)
    local cws1_lt_brt        = math.max(ppn.lights.cws1_lt_brt * lights_brt, test_btn)
    local cws2_lt_brt        = math.max(ppn.lights.cws2_lt_brt * lights_brt, test_btn)
    local bns_p_lt_brt       = math.max(ppn.lights.bns_p_lt_brt * lights_brt, test_btn)
    local bap_p_lt_brt       = math.max(ppn.lights.bap_p_lt_brt * lights_brt, test_btn)
    local bap_r_lt_brt       = math.max(ppn.lights.bap_r_lt_brt * lights_brt, test_btn)
    local vkv_lt_brt         = math.max(ppn.lights.vkv_lt_brt * lights_brt, test_btn)
    local vu_lt_brt          = math.max(ppn.lights.vu_lt_brt * lights_brt, test_btn)
    local ute_lt_brt         = math.max(ppn.lights.ute_lt_brt * lights_brt, test_btn)
    local stu_p_lt_brt       = math.max(ppn.lights.stu_p_lt_brt * lights_brt, test_btn)
    local stu_r_lt_brt       = math.max(ppn.lights.stu_r_lt_brt * lights_brt, test_btn)
    local at_lt_brt          = math.max(ppn.lights.at_lt_brt * lights_brt, test_btn)
    local bsn_lt_brt         = math.max(ppn.lights.bsn_lt_brt * lights_brt, test_btn)
    local mgv_p_stu_lt_brt   = math.max(ppn.lights.mgv_p_stu_lt_brt * lights_brt, test_btn)
    local mgv_r_stu_lt_brt   = math.max(ppn.lights.mgv_r_stu_lt_brt * lights_brt, test_btn)
    local mgv_p_sau_lt_brt   = math.max(ppn.lights.mgv_p_sau_lt_brt * lights_brt, test_btn)
    local mgv_r_sau_lt_brt   = math.max(ppn.lights.mgv_r_sau_lt_brt * lights_brt, test_btn)
    local ks_lt_brt          = math.max(ppn.lights.ks_lt_brt * lights_brt, test_btn)
    local bns_r_lt_brt       = math.max(ppn.lights.bns_r_lt_brt * lights_brt, test_btn)
    local ch1_lt_brt         = math.max(ppn.lights.ch1_lt_brt * lights_brt, test_btn)
    local ch2_lt_brt         = math.max(ppn.lights.ch2_lt_brt * lights_brt, test_btn)
    local ch3_lt_brt         = math.max(ppn.lights.ch3_lt_brt * lights_brt, test_btn)
    local ch4_lt_brt         = math.max(ppn.lights.ch4_lt_brt * lights_brt, test_btn)
    local ch4_lt_brt         = math.max(ppn.lights.ch4_lt_brt * lights_brt, test_btn)
    local absu_ready_lt_brt  = math.max(ppn.lights.absu_ready_lt_brt * lights_brt, test_btn)

    set_smooth(servo_pitch_lt, servo_pitch_lt_brt)
    set_smooth(servo_roll_lt, servo_roll_lt_brt)
    set_smooth(servo_yaw_lt, servo_yaw_lt_brt)
    set_smooth(bdg_pitch_lt, bdg_pitch_lt_brt)
    set_smooth(bdg_roll_lt, bdg_roll_lt_brt)
    set_smooth(bdg_yaw_lt, bdg_yaw_lt_brt)


    set_smooth(cws1_lt, cws1_lt_brt)
    set_smooth(cws2_lt, cws2_lt_brt)
    set_smooth(bns_p_lt, bns_p_lt_brt)
    set_smooth(bap_p_lt, bap_p_lt_brt)
    set_smooth(bap_r_lt, bap_r_lt_brt)
    set_smooth(vkv_lt, vkv_lt_brt)

    set_smooth(vu_lt, vu_lt_brt)
    set_smooth(ute_lt, ute_lt_brt)
    set_smooth(stu_p_lt, stu_p_lt_brt)
    set_smooth(stu_r_lt, stu_r_lt_brt)
    set_smooth(at_lt, at_lt_brt)
    set_smooth(bsn_lt, bsn_lt_brt)

    set_smooth(mgv_p_stu_lt, mgv_p_stu_lt_brt)
    set_smooth(mgv_r_stu_lt, mgv_r_stu_lt_brt)
    set_smooth(mgv_p_sau_lt, mgv_p_sau_lt_brt)
    set_smooth(mgv_r_sau_lt, mgv_r_sau_lt_brt)
    set_smooth(ks_lt, ks_lt_brt)
    set_smooth(bns_r_lt, bns_r_lt_brt)

    set_smooth(ch1_lt, ch1_lt_brt)
    set_smooth(ch2_lt, ch2_lt_brt)
    set_smooth(ch3_lt, ch3_lt_brt)
    set_smooth(ch4_lt, ch4_lt_brt)

    set_smooth(absu_ready_lt, absu_ready_lt_brt)
end

function update()
    passed = get(frame_time)
	start_timer = start_timer + passed

    logic()
    lights()
    switches()
end
