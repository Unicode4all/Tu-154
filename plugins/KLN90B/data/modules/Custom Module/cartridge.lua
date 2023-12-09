sim_period = globalPropertyf("sim/operation/misc/frame_rate_period")
-- current_value + ((target - current_value) * fps_factor)
font = loadFont("Verdana.ttf")
remove_kln = false

function set_remove_kln()
    remove_kln = true
end

pull_command = sasl.createCommand("tu154ce/kln/pull", "Remove KLN")
sasl.registerCommandHandler(pull_command, 1, set_remove_kln)
next_command = sasl.createCommand("tu154ce/kln/next_cart", "Next Cartridge")
previous_command = sasl.createCommand("tu154ce/prev_cart", "Previous Cartridge")


day = 0
mo = ""
year = 0

exp_day = 0
exp_mo = ""
exp_year = 0
line = ""
dtcs = {}
dtc_count = 0
function refresh()
    dtc_count = 0
    dtcs = sasl.listFiles("Custom Data/KLN90B/Cartridges/")
    for i, d in ipairs(dtcs) do
        
        if d.type == "directory" and d.name ~= "." and d.name ~= ".." then
            dtc_count = dtc_count + 1
        end
    end
end

function update_cartridge_decal()
    file = io.open("Custom Data/KLN90B/Cartridges/" .. get(target_cartridge) .. "/Navdata/airports.txt", "r")

    if file ~= nil then
        line = file:read("*line")
        mo = string.sub(line, 15, 17)
        day = tonumber(string.sub(line, 13, 14))
        year = tonumber(string.sub(line, 19, 20))
        exp_day = day + 28
        exp_mo = mo
        exp_year = year
        if exp_mo == "FEB" and exp_day > 28 then
            exp_day = 1
            exp_mo = "MAR"
        end
    end
    file:close()
end

function update()
    if get(current_cartridge) ~= 0 then
        set(CartridgePresent, 1)
    end
    if get(update_cartridge) == 1 then
        print("Update")
        refresh()
        update_cartridge_decal()
        set(update_cartridge, 0)
    end

    if get(current_cartridge) ~= get(target_cartridge) and get(CartridgePull) == 0 then
        set(current_cartridge, get(target_cartridge))
        set(queue_update, 1)
    else
        set(queue_update, 0)
    end
    
    
end


function next_cart(stage)
    if stage == SASL_COMMAND_BEGIN then
        set(target_cartridge, get(target_cartridge) + 1)
        if get(target_cartridge) > dtc_count then
            set(target_cartridge, 1)
        end
        update_cartridge_decal()
    end
end

function prev_cart(stage)
    if stage == SASL_COMMAND_BEGIN then
        print("prev")
        set(target_cartridge, get(target_cartridge) - 1)
        if get(target_cartridge) < 1 then
            set(target_cartridge, dtc_count)
        end
        update_cartridge_decal()
    end
end

sasl.registerCommandHandler(next_command, 1, next_cart)
sasl.registerCommandHandler(previous_command, 1, prev_cart)

function draw(stage)
    if sasl.gl.isNonLitStage() then
        if get(CartridgePull) ~= 0 then
            drawRectangle(0, 160, 64, 64, { 1, 1, 1, 1 })
        drawText(font, 13, 170, tostring(get(target_cartridge)), 48, false, true, TEXT_ALIGN_LEFT, { 0.2, 0.2, 1, 1 })
        drawText(font, 155, 94, string.format("%d—%s—20%d", day, mo, year), 18, true,
            false, TEXT_ALIGN_LEFT, { 0, 0, 0, 1 })

        --drawText(font, 155, 64, string.format("%d—%s—20%d", exp_day, exp_mo, exp_year), 18, true,
        --    false, TEXT_ALIGN_LEFT, { 0, 0, 0, 1 })
        end

    end
end

refresh()
--update_cartridge_decal()
