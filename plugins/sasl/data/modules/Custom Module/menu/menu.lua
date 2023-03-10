addSearchPath(moduleDirectory .. "/Custom Module/menu/uicomponents")
mainMenuShow = false

openLoadloutWindow = createCommand("tu154ce/ui/openLoadout", "Open loadout window")
openLoadloutWindow = createCommand("tu154ce/ui/openLoadout", "Open loadout window")

iconSize = { 4, 4, 24, 24 }

loadoutItem = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "Fuel/Load")
SettingsItem = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "Settings")
GroundItem = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "Ground Services")
MaintItem = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "Maintenance")
PerformanceItem = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "Performance")
sasl.appendMenuSeparator(AIRCRAFT_MENU_ID)
AboutItem = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "About")

mainMenu = contextWindow {
    name = "Main Menu";
    position = { 0, 400, 200, 200 };
    noBackground = true;
    gravity = { 0, 1, 0, 1 };
    noDecore = true,
    noClose = true;
    noResize = true;
    noMove = true;
    visible = false;
    proportional = true;

    components = {
        button {
            position = { 0, 0, 32, 32 },
            image = loadImage("settings.png"),
            imagepos = iconSize,
        },
        button {
            position = { 0, 32, 32, 32 },
            image = loadImage("external.png"),
            imagepos = iconSize,
        },
        button {
            position = { 0, 32 * 2, 32, 32 },
            image = loadImage("loadout.png"),
            imagepos = iconSize,
        },
        button {
            position = { 0, 32 * 3, 32, 32 },
            image = loadImage("failures.png"),
            imagepos = iconSize,
        },
        button {
            position = { 0, 32 * 4, 32, 32 },
            image = loadImage("totable.png"),
            imagepos = iconSize,
        },
    };
}

testWindow = contextWindow {
    name = "Window";
    position = { 200, 400, 200, 200 };
    noBackground = true;
    gravity = { 0, 1, 0, 1 };
    noDecore = false,
    noClose = false;
    noResize = true;
    noMove = false;
    vrAuto = true;
    visible = true;
    customDecore = false;
    components = {
        button {
            position = { 12, 12, 50, 32 },
            title = "Button",
            action = function()
                print("hello")
            end
        },
    };
}

function draw()

end

function update()
    local menuPosX, menuPosY, menuPosW, menuPosH = getScreenBoundsGlobal()
    -- mouse within box
    if (sasl.getCSMouseXPos() < 40) then
        mainMenuShow = true
    else
        mainMenuShow = false
    end

    mainMenu:setIsVisible(mainMenuShow)
end
