print("This is KLN90B for Tu-154M, v1.0.0")
size = { 4096, 4096 }
print("Lua version is", _VERSION)


sasl.options.set3DRendering(true)
sasl.options.setAircraftPanelRendering(true)
sasl.options.setInteractivity(true)
sasl.options.setRenderingMode2D(SASL_RENDER_2D_MULTIPASS)

-- 3D panel issue workaround
fixedPanelWidth = 4096
fixedPanelHeight = 4096

math.randomseed(os.time()) -- randomise random :)

createGlobalPropertyi("tu154ce/xap/MD41/test", 0);
createGlobalPropertyi("tu154ce/xap/MD41/OBSreq", 0);
createGlobalPropertyi("tu154ce/xap/MD41/visible", 1);

createGlobalPropertyi("tu154ce/xap/KLN90/OBS", 1);
createGlobalPropertyi("tu154ce/xap/KLN90/APR", 0);
createGlobalPropertyi("tu154ce/xap/KLN90/MSG", 0);
createGlobalPropertyi("tu154ce/xap/KLN90/WPT", 0);
createGlobalPropertyi("tu154ce/xap/KLN90/Flash", 0);
createGlobalPropertyi("tu154ce/xap/KLN90/visible", 0);
createGlobalPropertyi("tu154ce/xap/KLN90pop/visible", 0);

createGlobalPropertyi("tu154ce/xap/KLN90pop/x", 1);
createGlobalPropertyi("tu154ce/xap/KLN90pop/y", 1);

defineProperty("MD41visible", globalPropertyi("tu154ce/xap/MD41/visible"))
defineProperty("KLN90visible", globalPropertyi("tu154ce/xap/KLN90/visible"))
defineProperty("KLN90popupvisible", globalPropertyi("tu154ce/xap/KLN90pop/visible"))

defineProperty("popx", globalPropertyi("tu154ce/xap/KLN90pop/x"))
defineProperty("popy", globalPropertyi("tu154ce/xap/KLN90pop/y"))

-- window size issue for panels
defineProperty("window_height", globalPropertyi("sim/graphics/view/window_height"))
defineProperty("window_width", globalPropertyi("sim/graphics/view/window_width"))
defineProperty("external", globalPropertyi("sim/graphics/view/view_is_external"))
defineProperty("scroll", globalPropertyi("sim/graphics/misc/current_scroll_pos"))


addSearchPath(sasl.getXPlanePath() .. "/Resources/bitmaps/interface")
addSearchPath(sasl.getXPlanePath() .. "/Resources/bitmaps/interface11")


local popout_img = sasl.gl.loadImage("floating_window@1.5x.png", 27, 0, 28, 28)
local close_img = sasl.gl.loadImage("floating_window@1.5x.png", 0, 28, 26, 26)
local hide_ui_kln = true
local hide_ui_md = true
draw3d = true
roll_rate = 8 --autopilot constant in degree per second. Have to find a way to extract it from acf file.
if draw3d == true then
	display = sasl.gl.createTexture(480,227)
else
	display = sasl.gl.createRenderTarget(size[1], size[2])
end


createGlobalPropertyf("tu154ce/elec/bus27_volt_left", 27)
createGlobalPropertyi("tu154ce/switchers/ovhd/kln_on", 0)
createGlobalPropertyf("tu154ce/KLN90/power_draw", 0.0)  
createGlobalPropertyf("tu154ce/kln90/kln_course", 0) -- курс ЛЗП от КЛН
createGlobalPropertyf("tu154ce/kln90/kln_dev", 0) -- отклонение от ЛЗП, мили
createGlobalPropertyi("tu154ce/kln90/kln_flag", 0) -- флаг курса КЛН. 0 = флага нет, 1 = флаг

--[[

local KLNpopupc_command = createCommand("xap/KLN90/Toggle_Popup_Panel", "KLN90popupvisible")
function KLNpopupc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
		if get(KLN90popupvisible) ~= 0 then
			set(KLN90popupvisible, 0)
		else
			set(KLN90popupvisible, 1)
		end
	end
	return 0
end
registerCommandHandler(KLNpopupc_command, 0, KLNpopupc_handler)

--]]
-- return the integer 0 or 1 by give boolean
function bool2int(var)
	if var then
		return 1
	else
		return 0
	end
end

local KLNc_command = createCommand("xap/KLN90/Toggle_KLN_90B_Panel", "KLN90visible")
function KLNc_handler(phase) -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
		if get(KLN90visible) ~= 0 then
			set(KLN90visible, 0)
		else
			set(KLN90visible, 1)
		end
	end
	return 0
end

registerCommandHandler(KLNc_command, 0, KLNc_handler)


--[[
local MD41c_command = createCommand("xap/KLN90/Toggle_MD41_Panel", "MD41visible")
function MD41c_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
		if get(MD41visible) ~= 0 then
			set(MD41visible, 0)
		else
			set(MD41visible, 1)
		end
	end
	return 0
end
registerCommandHandler(MD41c_command, 0, MD41c_handler)

--]]
--[[
local coef = get(window_height) / 1024
if coef > 1 then coef = 1 end  -- set initial coefficient for float panel's size - make 'em smaller, if screen resolution less then 1024 by height.

local popx2 = get(window_width) - 100
local popy2 = get(window_height)- 100

local filename = sasl.getAircraftPath() .. "/KLNconfig.txt"
local file = io.open(filename, "r")
if file then
	while true do
		local line = file:read("*line")
		if line == nil then break end
		if string.find(line, "#popx") then
			popx2 = tonumber(string.sub(line, 6))
		elseif string.find(line, "#popy") then
			popy2 = tonumber(string.sub(line, 6))
		end
	end
	file:close()
end

--]]
--[[

defineProperty("closeImage", loadImage("close.png"))  -- close cross image
KLN90_panel = subpanel {
	-- position = { 50, 50, 1024 * coef, 330 * coef };
	position = { get(window_width)/2-458, get(window_height)/3-146, 917 * coef, 293 * coef };
	noBackground = true;
	noClose = false;
	components = {
		KLN90_2d_panel {
			position = { 0, 0, 917 * coef, 293 * coef },
		};
		textureLit {
			position = {(914 - 16) * coef, (293 - 16) * coef, 16 * coef, 16 * coef},
			image = get(closeImage),
		};
		
	};
}
--]]
--[[
MD41_panel = subpanel {
	position = { get(window_width) - 512, get(window_height)- 330, 512 * coef, 194 * coef };
	noBackground = true;
	noClose = true;
	components = {
		MD41_panel {
			position = { 0, 0, 512 * coef, 194 * coef },
		};
		textureLit {
			position = {(512 - 16) * coef, (194 - 16) * coef, 16 * coef, 16 * coef},
			image = get(closeImage),
		};
	};
}

KLNpopup_panel = subpanel {
	--	position = { popx2, popy2- get(scroll)*1.25, 64 * coef, 64 * coef };
	position = { popx2, popy2, 64 * coef, 64 * coef };
	noBackground = true;
	noClose = true;
	noResize = true;

	components = {
		KLNpopup_panel {
			position = { 0, 0, 64 * coef, 64 * coef },
			visible = function()
				return get(external) == 0
			end,
		};
		textureLit {
			position = {(64 - 13) * coef, (64 - 13) * coef, 16 * coef, 16 * coef},
			visible = function()
				return get(external) == 0
			end,
			image = get(closeImage),
		};
	};
}

--]]
components = {

	KLN90_panel {
		position = { 1295, 582, 480, 227 }

	},

}

KLN90B = contextWindow {
	name         = "KLN90B",
	position     = { 50, 50, 898, 296 },
	minimumSize  = { 898 / 2, 296 / 2 },
	maximumSize  = { 898 * 2, 296 * 2 },
	noDecore     = false,
	customDecore = true,
	resizeMode   = SASL_CW_RESIZE_RIGHT_BOTTOM,
	proportional = true,
	visible      = false,
	savePosition = true,
	saveState    = true,
	components   = {
		KLN90_2D {
			position = { 0, 0, 898, 296 }
		}
	},
	decoration   = {
		headerHeight = 0,
		main = {
			draw = function(w, h) -- draw  window  header...
				if hide_ui_kln == false then
					sasl.gl.drawTexture(popout_img, w - 20, h - 20, 20, 20)
					sasl.gl.drawTexture(close_img, 0, h - 20, 20, 20)
				end
			end,
			onMouseMove = function(x, y, w, h)
				if y > h - 20 and y < h and KLN90B:isPoppedOut() == false then
					hide_ui_kln = false
				else
					hide_ui_kln = true
				end
			end,
			onMouseDown = function(x, y, w, h, button)
				if KLN90B:isPoppedOut() == false and button == MB_LEFT then
					if y > h - 20 then
						if x > w - 20 then
							KLN90B:setMode(SASL_CW_MODE_POPOUT)
						elseif x < 20 then
							KLN90B:setIsVisible(false)
						end
					end
				end
			end,
		}
	}
}
--[[
KLN90B_DISPLAY = contextWindow {
	name         = "KLN90B_DISPLAY",
	position     = { 512, 512, size[1], size[2] },
	minimumSize  = { size[1], size[2] },
	maximumSize  = { size[1] * 4, size[2] * 4 },
	noDecore     = false,
	customDecore = true,
	resizeMode   = SASL_CW_RESIZE_RIGHT_BOTTOM,
	proportional = true,
	visible      = false,
	savePosition = true,
	saveState    = true,
	components   = {
		KLN90_2D_display {
			position = { 0, 0, size[1], size[2] }
		}
	},
	decoration   = {
		headerHeight = 0,
		main = {
			draw = function(w, h) -- draw  window  header...
				if hide_ui_kln == false then
					sasl.gl.drawTexture(popout_img, w - 20, h - 20, 20, 20)
					sasl.gl.drawTexture(close_img, 0, h - 20, 20, 20)
				end
			end,
			onMouseMove = function(x, y, w, h)
				if y > h - 20 and y < h and KLN90B_DISPLAY:isPoppedOut() == false then
					hide_ui_kln = false
				else
					hide_ui_kln = true
				end
			end,
			onMouseDown = function(x, y, w, h, button)
				if KLN90B_DISPLAY:isPoppedOut() == false and button == MB_LEFT then
					if y > h - 20 then
						if x > w - 20 then
							KLN90B_DISPLAY:setMode(SASL_CW_MODE_POPOUT)
						elseif x < 20 then
							KLN90B_DISPLAY:setIsVisible(false)
						end
					end
				end
			end,
		}
	}
}
]]



menu_master = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "KLN90B")
menu_main = sasl.createMenu("", AIRCRAFT_MENU_ID, menu_master)
menu_option = sasl.appendMenuItem(menu_main, "Toggle KLN90B Window", function()
	KLN90B:setIsVisible(not KLN90B:isVisible())
	return false
end)

local KLNpopupc_command = createCommand("xap/KLN90/Toggle_Popup_Panel", "KLN90popupvisible")
function KLNpopupc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
		KLN90B:setIsVisible(not KLN90B:isVisible())
	end
	return 0
end
registerCommandHandler(KLNpopupc_command, 0, KLNpopupc_handler)