absu_app = globalPropertyi("tu154ce/buttons/console/absu_app")
absu_az1 = globalPropertyi("tu154ce/buttons/console/absu_az1")
absu_az2 = globalPropertyi("tu154ce/buttons/console/absu_az2")
absu_gs = globalPropertyi("tu154ce/buttons/console/absu_gs")
absu_nvu = globalPropertyi("tu154ce/buttons/console/absu_nvu")
absu_reset = globalPropertyi("tu154ce/buttons/console/absu_reset")
absu_zk = globalPropertyi("tu154ce/buttons/console/absu_zk")

absu_stab = globalPropertyi("tu154ce/buttons/console/absu_stab")
absu_stab_m = globalPropertyi("tu154ce/buttons/console/absu_stab_m")
absu_stab_h = globalPropertyi("tu154ce/buttons/console/absu_stab_h")
absu_stab_v = globalPropertyi("tu154ce/buttons/console/absu_stab_v")
--= globalPropertyi("tu154ce/buttons/console/")
--= globalPropertyi("tu154ce/buttons/console/")
--= globalPropertyi("tu154ce/buttons/console/")

sasl.registerCommandHandler(sasl.createCommand("Tu154/Yoke/ap_disconnect", "Autopilot disconnect"), 1, function(phase)
    if phase == SASL_COMMAND_BEGIN then
        
    end
end)
sasl.registerCommandHandler(sasl.createCommand("Tu154/Yoke/ga", "Go Around mode"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("Tu154/Yoke/trim_up", "Trim up"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("Tu154/Yoke/trim_up", "Trim down"), 1, function(phase)

end)

sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/hdg_sel", "HDG Sel"), 1, function(phase)

end)

sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/hsi_sel", "HSI Sel"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/reset", "Reset/Program"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/nvu", "NVU/GPS mode"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/nav1", "NAV 1 mode"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/nav2", "NAV 2 mode"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/appr", "Localizer capture"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/glideslope", "Glideslope capture"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/nav_arm", "Toggle Navigation mode arm"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/ldg_arm", "Toggle Landing mode arm"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Flight_Director/fdir", "Toggle Flight Director needles"), 1,
function(phase)

end)

sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/cage", "ADI Cage"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/ap_master", "Engage Autopilot"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/mach_stab", "Mach hold pitch mode"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/ias_hold", "Airspeed hold pitch mode"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/alt_hold", "Altitude hold pitch mode"), 1,
function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/pitch_up", "Increase pitch"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/pitch_down", "Decrease pitch"), 1, function(phase)

end)
sasl.registerCommandHandler(sasl.createCommand("tu154ce/AFCS/Autopilot/cage", "ADI Cage"), 1, function(phase)

end)
