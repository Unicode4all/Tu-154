defineProperty("config", "/paperwork/papers.json")

update_interval = createGlobalPropertyd("tu154ce/paperwork/update_interval", 1)

--config = sasl.readConfig(sasl.getAircraftPath() .. get(config), "json")

timer = sasl.createTimer()

sasl.startTimer(timer)
addSearchPath(sasl.getAircraftPath() .. "/paperwork/assets")


font = loadFont("segoepr.ttf")


--if config == nil then
--    sasl.logError("Can't read config file 'papers.json' or it's malformed")
--end







types = {
    text = 0,
    image = 1,
    custom = 2
}

sets = {}
current_set = 1
updated = false
idx = 2
draw_queue = {}
drefs_queue = {}




function update_drefs()
    if sasl.getElapsedSeconds(timer) > 1 then
        sasl.resetTimer(timer)
        sasl.startTimer(timer)
    else
        return
    end

    for index, value in ipairs(drefs_queue) do
        value.text = math.floor(get(value.dref))
    end
end

function load_set(set)
    draw_queue = {}
    drefs_queue = {}

    if not set.regions then return end

    for k, v in pairs(set.regions) do
        local rx, ry, rw, rh = v.region.x, v.region.y, v.region.w, v.region.h
        if v.widgets == nil then
            sasl.logWarning("No widgets found for region " .. k)
            goto continue
        end
        for ck, cv in pairs(v.widgets) do
            if cv.type == "image" then
                local id = sasl.gl.loadImage(cv.image)
                local w, h = sasl.gl.getTextureSize(id)
                local s = cv.scale or 1
                w = w * s
                h = h * s
                table.insert(draw_queue, {
                    type = types.image,
                    tex_id = id,
                    rotation = cv.rotation or 0,
                    x = (rx + cv.pos.x) or 0,
                    y = (ry + cv.pos.y) or 0,
                    w = cv.pos.w or w,
                    h = cv.pos.h or h,
                })
            end
            if cv.type == "text" then
                --[[
                local font_it = 0
                if cv.font then
                    print(cv.font)
                   font_it = loadFont(cv.font)
                    if not font_it == nil then
                        sasl.logWarning("Couldn't load font '%s'", cv.font)
                        font_it = 0
                    end
                end
                ]]
                table.insert(draw_queue, {
                    type = types.text,
                    x = (rx + cv.pos.x) or 0,
                    y = (ry + cv.pos.y) or 0,
                    text = cv.text,
                    size = cv.size or 12,
                    --font = font_it,
                    rotation = cv.rotation or 0,
                    bold = cv.bold or false,
                    italic = cv.italic or false,
                    align = cv.align or TEXT_ALIGN_LEFT,
                    color = cv.color or { 0, 0, 0, 1 }
                })
            end
            if cv.type == "customPaper" then
                table.insert(draw_queue, {
                    type = types.custom,
                    x = (rx + cv.pos.x) or 0,
                    y = (ry + cv.pos.y) or 0,
                    w = cv.pos.w,
                    h = cv.pos.h,
                    text = cv.text,
                    size = cv.size or 12,
                    rotation = cv.rotation or 0,
                    bold = cv.bold or false,
                    italic = cv.italic or false,
                    align = cv.align or TEXT_ALIGN_LEFT,
                    color = cv.color or { 1, 1, 1, 0.3 },
                    padding_x = cv.padding_x or 5,
                    padding_y = cv.padding_y or 5,
                })
            end
        end
        if not v.drefs then goto continue end
        for key, value in pairs(v.drefs) do
            table.insert(drefs_queue, {
                dref = globalProperty(value.dref),
                x = rx + value.x,
                y = ry + value.y,
                text = "",
                size = value.size or 12
            })
        end
        ::continue::
    end

    if status_item ~= 0 then
        sasl.removeMenuItem(paperwork_menu, status_item)
    end
    status_item = sasl.appendMenuItem(paperwork_menu, "Current Set: " .. set.name)
end

function update()
    update_drefs()
end

function draw()
    if isNonLitStage() then
        if config == nil then return end
        if #draw_queue == 0 then return end

        for idx, value in ipairs(draw_queue) do
            if draw_queue[idx].type == types.image then
                if draw_queue[idx].rotation == 0 then
                    sasl.gl.drawTexture(draw_queue[idx].tex_id, draw_queue[idx].x,
                        draw_queue[idx].y, draw_queue[idx].w, draw_queue[idx].h,
                        { 1, 1, 1, 1 })
                else
                    sasl.gl.drawRotatedTexture(draw_queue[idx].tex_id, draw_queue[idx].rotation, draw_queue[idx].x,
                        draw_queue[idx].y, draw_queue[idx].w, draw_queue[idx].h,
                        { 1, 1, 1, 1 })
                end
            elseif draw_queue[idx].type == types.text then
                if draw_queue[idx].rotation == 0 then
                    sasl.gl.drawText(font, draw_queue[idx].x, draw_queue[idx].y,
                        draw_queue[idx].text,
                        draw_queue[idx].size,
                        draw_queue[idx].bold, draw_queue[idx].italic,
                        draw_queue[idx].align,
                        draw_queue[idx].color)
                else
                    sasl.gl.drawRotatedText(font, draw_queue[idx].x, draw_queue[idx].y, draw_queue[idx].x,
                        draw_queue[idx].y,
                        draw_queue[idx].rotation,
                        draw_queue[idx].text,
                        draw_queue[idx].size,
                        draw_queue[idx].bold, draw_queue[idx].italic,
                        draw_queue[idx].align,
                        draw_queue[idx].color)
                end
            elseif draw_queue[idx].type == types.custom then
                sasl.gl.drawRectangle(draw_queue[idx].x, draw_queue[idx].y, draw_queue[idx].w, draw_queue[idx].h,
                    { 0.8, 0.8, 0.8, 1 })
                sasl.gl.drawText(font, draw_queue[idx].x + draw_queue[idx].padding_x,
                    draw_queue[idx].y + draw_queue[idx].h - draw_queue[idx].padding_y, draw_queue[idx].text,
                    draw_queue[idx].size,
                    draw_queue[idx].bold,
                    draw_queue[idx].italic,
                    draw_queue[idx].align,
                    { 0, 0, 0, 1 })
            end
        end

        for di, dv in ipairs(drefs_queue) do
            sasl.gl.drawText(font, dv.x, dv.y, dv.text, dv.size, false, false, TEXT_ALIGN_LEFT, { 0, 0, 0,
                1 })
        end

        --idx = idx + 1
    end
end

-------------------- INIT CODE ----------------
paperwork_item = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "Paperwork")
paperwork_menu = sasl.createMenu("Paperwork", AIRCRAFT_MENU_ID, paperwork_item)
set_menu_item = 0
set_menu = 0
status_item = 0

function update_paperwork()
    if set_menu ~= 0 then
        sasl.destroyMenu(set_menu)
        sasl.removeMenuItem(paperwork_menu, set_menu_item)
    end

    files = sasl.listFiles(sasl.getAircraftPath() .. "/paperwork/sets")

    if #files > 0 then
        sets = {}
        set_menu_item = sasl.appendMenuItem(paperwork_menu, "Sets")
        set_menu = sasl.createMenu("Sets", paperwork_menu, set_menu_item)
        for _, f in ipairs(files) do
            if f.type == "file" then
                local c = sasl.readConfig(sasl.getAircraftPath() .. "/paperwork/sets/" .. f.name, "json")
                if c == nil then
                    sasl.logWarning("Unable to load set: " .. f.name)
                else
                    table.insert(sets, c)
                    --sasl.appendMenuItem(set_menu, c.name, load_set(c))
                end
            end
        end
        load_set(sets[current_set])
    end
end

function next_set(phase)
    if phase == SASL_COMMAND_END then
        current_set = current_set + 1
        if current_set > #sets then
            current_set = 1
        end

        load_set(sets[current_set])
    end
end

function previous_set(phase)
    if phase == SASL_COMMAND_END then
        current_set = current_set - 1
        if current_set < 1 then
            current_set = #sets
        end

        load_set(sets[current_set])
    end
end

components = {
   -- editor {
   --     
   -- }
}

update_command = sasl.createCommand("tu154ce/paperwork/update", "Update papers in cockpit")
next_set_command = sasl.createCommand("tu154ce/paperwork/next_set", "Next set")
previous_set_command = sasl.createCommand("tu154ce/paperwork/previous_set", "Previous set")
sasl.registerCommandHandler(update_command, 0, update_paperwork)
sasl.registerCommandHandler(next_set_command, 0, next_set)
sasl.registerCommandHandler(previous_set_command, 0, previous_set)
sasl.appendMenuItemWithCommand(paperwork_menu, "Update paperwork", update_command)
sasl.appendMenuItemWithCommand(paperwork_menu, "Next set", next_set_command)
sasl.appendMenuItemWithCommand(paperwork_menu, "Previous set", previous_set_command)
sasl.appendMenuSeparator(paperwork_menu)
update_paperwork()
if #sets ~= 0 then
    load_set(sets[current_set])
end
