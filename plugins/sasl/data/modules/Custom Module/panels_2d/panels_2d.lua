-- this is 2d panels logic
size = {2048, 2048}

-- sim variable
defineProperty("window_height",globalPropertyi("sim/graphics/view/window_height"))
defineProperty("window_width",globalPropertyi("sim/graphics/view/window_width"))
defineProperty("external",globalPropertyi("sim/graphics/view/view_is_external"))

defineProperty("show_gns",globalPropertyi("tu154ce/anim/show_gns"))
defineProperty("show_RXP",globalPropertyi("tu154ce/anim/RXP"))


-- panels variables
defineProperty("show_load_panel",globalPropertyi("tu154ce/panels/show_load_panel")) -- показать панель загрузки
defineProperty("show_absu_panel",globalPropertyi("tu154ce/panels/show_absu_panel")) -- показать панель АБСУ
defineProperty("show_ohvd_panel",globalPropertyi("tu154ce/panels/show_ohvd_panel")) -- показать панель верхней панели
defineProperty("show_nvu_panel",globalPropertyi("tu154ce/panels/show_nvu_panel")) -- показать панель НВУ
defineProperty("show_checklist_panel",globalPropertyi("tu154ce/panels/show_checklist_panel")) -- показать панель НВУ
defineProperty("show_ground_panel",globalPropertyi("tu154ce/panels/show_ground_panel")) -- показать панель наземного обслуживания
defineProperty("show_phone",globalPropertyi("tu154ce/panels/show_phone")) -- показать панель телефона
defineProperty("show_cam",globalPropertyi("tu154ce/panels/show_cam")) -- показать панель камеры
defineProperty("show_palette",globalPropertyi("tu154ce/panels/show_palette")) -- показать панель камеры
defineProperty("show_fail_panel",globalPropertyi("tu154ce/panels/show_fail_panel")) -- показать панель отказов



defineProperty("KLN90visible", globalPropertyi("tu154ce/xap/KLN90/visible"))


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("control_thro_other", globalPropertyf("tu154ce/SC/control_thro_other")) -- другой человек упраляет РУД-ами

addSearchPath(sasl.getXPlanePath() .. "/Resources/bitmaps/interface")
addSearchPath(sasl.getXPlanePath() .. "/Resources/bitmaps/interface11")


popout_img = sasl.gl.loadImage("floating_window@1.5x.png", 27, 0, 28, 28)
close_img = sasl.gl.loadImage("floating_window@1.5x.png", 0, 28, 26, 26)


local coef = (get(window_height) / 1024) * 0.8
if coef > 1 then coef = 1 end  -- set initial coefficient for float panel's size - make 'em smaller, if screen resolution less then 1024 by height.
local cursorOnEdge = false



defineProperty("closeImage", loadImage("close.png"))  -- close cross image


palette = contextWindow {
	position = { 50, 50, 251 * coef, 305 * coef };
	noBackground = true;
	noClose = true;
	noDecore = true;
	resizeProportional = true;
	savePosition = true;
	name = "palette";	
	components = {
		palette_2d {
			position = { 0, 0, 251 * coef, 305 * coef },
			
		};
		
		textureLit {
			position = { 251 * coef - 15, 305 * coef - 15, 15, 15 },
			image = get(closeImage),
		};
		
	};
}




local hide_window_controls_payload = true
payload_panel = contextWindow {
	position = { 50, 50, 1024 * coef, 683 * coef };
	noBackground = true;
	noDecore = false;
	noClose = false;
	resizeProportional = true;
	savePosition = true;
	customDecore = true,
	name = "Load";	
	decoration   = {
		headerHeight = 0,
		main = {
			draw = function(w, h) -- draw  window  header...
				if hide_window_controls_payload == false then
					sasl.gl.drawTexture(popout_img, w - 20, h - 20, 20, 20)
					sasl.gl.drawTexture(close_img, 0, h - 20, 20, 20)
				end
			end,
			onMouseMove = function(x, y, w, h)
				if y > h - 20 and y < h and payload_panel:isPoppedOut() == false then
					hide_window_controls_payload = false
				else
					hide_window_controls_payload = true
				end
			end,
			onMouseDown = function(x, y, w, h, button)
				if payload_panel:isPoppedOut() == false and button == MB_LEFT then
					if y > h - 20 then
						if x > w - 20 then
							payload_panel:setMode(SASL_CW_MODE_POPOUT)
						elseif x < 20 then
							payload_panel:setIsVisible(false)
						end
					end
				end
			end,
		}
	};
	components = {
		load_panel {
			position = { 0, 0, 1024 * coef, 683 * coef },
			
		};
		
		textureLit {
			position = { 1024 * coef - 15, 683 * coef - 15, 15, 15 },
			size_w = 32,
			size_h = 32,
			image = get(closeImage),
		};
		
	};
}

absu_2d_panel = subpanel {
	position = { 50, 50, 917 * coef, 597 * coef };
	noBackground = true;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "absu_2d_panel";	
	components = {
		absu_panel_2d {
			position = { 0, 0, 917 * coef, 597 * coef },
			
		};
		
		textureLit {
			position = { 917 * coef - 15, 597 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};
}


ovhd_2d_panel = subpanel {
	position = { 50, 0, 1458 * coef, 1013 * coef };
	noBackground = true;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "ovhd_2d_panel";	
	components = {
		overhead_2d {
			position = { 0, 0, 1458 * coef, 1013 * coef },
			
		};
		
		textureLit {
			position = { 1458 * coef - 15, 1013 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};
}

nvu_2D_panel = subpanel {
	position = { 50, 0, 636 * coef, 786 * coef };
	noBackground = false;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "nvu_2D_panel";	
	components = {
		nvu_panel_2d {
			position = { 0, 0, 636 * coef, 786 * coef },
			
		};
		
		textureLit {
			position = { 636 * coef - 15, 786 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};

}

checklist_panel = contextWindow {
	position = { 50, 50, 240 * coef, 850 * coef };
	noBackground = true;
	noDecore = true;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "checklist_panel_2d";	
	components = {
		checklist_panel_2d {
			position = { 0, 0, 240 * coef, 850 * coef },
			
		};
		
		textureLit {
			position = { 240 * coef - 15, 850 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};

}

ground_srv_panel = contextWindow {
	position = { 50, 50, 655 * coef, 880 * coef };
	noBackground = true;
	noClose = true;
	noDecore = true;
	resizeProportional = true;
	savePosition = true;
	name = "ground_srv_panel";	
	components = {
		ground_panel {
			position = { 0, 0, 655 * coef, 880 * coef },
			
		};
		
		textureLit {
			position = { 655 * coef - 15, 880 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};

}

--uphone = contextWindow {
--    position = { 40, 20, 241 * coef , 446 * coef };
--    noBackground = true;
--    noClose = true;
--	noDecore = true;
--	movable = true;
--	resizeble = true;
--	resizeProportional = true;
--	savePosition = true;
--	name = "uphone";
--    components = {
--		UPhone {
--         position = { 0, 0, 241 * coef, 446 * coef  },
--         };
--		textureLit {
-- 		 position = {(241 - 16) * coef , (446 - 16) * coef , 16 * coef , 16 * coef },
--		 image = get(closeImage),
--		 };
--	};
--}


camera_panel = subpanel {
	position = { 50, 50, 512 * coef, 512 * coef };
	noBackground = true;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "camera_panel";	
	components = {
		camera {
			position = { 0, 0, 512 * coef, 512 * coef },
			
		};
		
		textureLit {
			position = { 512 * coef - 15, 512 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};

}

fails_panel = contextWindow {
	position = { 50, 100, 512 * coef, 700 * coef };
	noBackground = true;
	noClose = true;
	noDecore = true;
	resizeProportional = true;
	savePosition = false;
	name = "fails_panel";	
	components = {
		failures_2d {
			position = { 0, 0, 512 * coef, 700 * coef },
			
		};
		
		textureLit {
			position = { 512 * coef - 15, 700 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};

}

-- images for main menu
defineProperty("menu_wt", loadImage("menus.png", 0, 136 + (30*3), 31, 30))
defineProperty("menu_gr", loadImage("menus.png", 0, 136 + (30*3), 31, 30))
defineProperty("menu_ex_wt", loadImage("menus.png", 0, 136, 31, 90))

defineProperty("nav_ext_gr", loadImage("menus.png", 30, 136 + 60, 31, 30))
defineProperty("serv_ext_gr", loadImage("menus.png", 30, 136 + 30, 31, 30))
defineProperty("misc_ext_gr", loadImage("menus.png", 30, 136, 31, 30))

defineProperty("nav_menu_wt", loadImage("menus.png", 60, 136 + 60, 121, 31))

defineProperty("serv_menu_wt", loadImage("menus.png", 60, 136 + 30, 61, 31))
defineProperty("misc_menu_wt", loadImage("menus.png", 60, 136, 121, 31))

defineProperty("thro_red", loadImage("menus.png", 90, 0, 31, 30))
defineProperty("thro_grn", loadImage("menus.png", 120, 0, 31, 30))



local main_menu_ext = false
local nav_ext = false
local serv_ext = false
local misc_ext = false



nav_menu = subpanel {
	position = { 30, 570, 121, 31 };
	noBackground = false;
	noClose = true;
	noResize = true;
	noMove = true;

	
	components = {
		textureLit {
			position = { 0, 0, 121, 31 };
			image = get(nav_menu_wt);
		},
		

		clickable { -- KLN
			position = {90, 0, 31, 31 },
		  
			onMouseDown = function() 
				if get(show_gns) == 1 then  -- GNS
					commandOnce(findCommand("sim/GPS/g430n1_popup"))
					set(KLN90visible, 0)
				elseif get(show_gns) == 0 then -- KLN
					set(KLN90visible, 1 - get(KLN90visible))
				else set(KLN90visible, 0) -- RNX
				end
				return true
			end,
		},

		clickable { -- OVHD
			position = {60, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_ohvd_panel, 1 - get(show_ohvd_panel))
				return true
			end,
		},
		
		clickable { -- ABSU
			position = {30, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_absu_panel, 1 - get(show_absu_panel))
				return true
			end,
		},		
		
		clickable { -- NVU
			position = {0, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_nvu_panel, 1 - get(show_nvu_panel))
				return true
			end,
		},		
		
	};
}



serv_menu = subpanel {
	position = { 30, 540, 61, 31 };
	noBackground = false;
	noClose = true;
	noResize = true;
	noMove = true;

	
	components = {
		textureLit {
			position = { 0, 0, 61, 31 };
			image = get(serv_menu_wt);
		},
		

		clickable {
			position = {0, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_load_panel, 1 - get(show_load_panel))
				payload_panel:setIsVisible(not payload_panel:isVisible())
				return true
			end,
		},

		clickable {
			position = {30, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_ground_panel, 1 - get(show_ground_panel))
				return true
			end,
		},		
		
		
	};
}


misc_menu = subpanel {
	position = { 30, 510, 121, 31 };
	noBackground = false;
	noClose = true;
	noResize = true;
	noMove = true;

	
	components = {
		textureLit {
			position = { 0, 0, 121, 31 };
			image = get(misc_menu_wt);
		},
		

		clickable {
			position = {60, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_checklist_panel, 1 - get(show_checklist_panel))
				return true
			end,
		},
		
		clickable {
			position = {30, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_phone, 1 - get(show_phone))
				return true
			end,
		},
		
		clickable {
			position = {0, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_cam, 1 - get(show_cam))
				return true
			end,
		},
		
		clickable {
			position = {90, 0, 31, 31 },
		  
			onMouseDown = function() 
				set(show_palette, 1 - get(show_palette))
				return true
			end,
		},
		
	};
}




ext_menu = subpanel {

	position = { 0, 510, 31, 90 };
	noBackground = false;
	noClose = true;
	noResize = true;
	noMove = true;

	
	components = {
		textureLit {
			position = { 0, 0, 31, 90 };
			image = get(menu_ex_wt);
		},

		textureLit {
			position = { 0, 60, 31, 30 };
			image = get(nav_ext_gr);
			visible = function()
				return nav_ext
			end;
		},		

		textureLit {
			position = { 0, 30, 31, 30 };
			image = get(serv_ext_gr);
			visible = function()
				return serv_ext
			end;
		},		

		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(misc_ext_gr);
			visible = function()
				return misc_ext
			end;
		},	

		clickable {
			position = {0, 60, 31, 30 },
		  
			onMouseDown = function() 
				nav_ext = not nav_ext
				return true
			end,
		},

		clickable {
			position = {0, 30, 31, 30 },
		  
			onMouseDown = function() 
				serv_ext = not serv_ext
				return true
			end,
		},

		clickable {
			position = {0, 0, 31, 30 },
		  
			onMouseDown = function() 
				misc_ext = not misc_ext
				return true
			end,
		},

	};


}


main_menu = contextWindow {
	position = { 0, 600, 31, 30 };
	noBackground = true;
	noDecore = true;
	noClose = true;
	noResize = true;
	noMove = true;

	
	components = {
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(menu_wt);
		},
		
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(menu_gr);
			visible = function()
				return main_menu_ext
			end;
		},	

		clickable {
			position = {0, 0, 31, 30 },
		  
			onMouseDown = function() 
				main_menu_ext = not main_menu_ext
				return true
			end,
		},
		
		
		
	};
}



thro_button = subpanel {
	position = { 0, 640, 31, 30 };
	noBackground = false;
	noClose = true;
	noResize = true;
	noMove = true;

	
	components = {
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(thro_red);
			visible = function()
				return (get(hascontrol_1) == 2 and get(control_thro_other) == 1) or (get(hascontrol_1) == 1 and get(control_thro_other) == 0)
			end;
		},
		
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(thro_grn);
			visible = function()
				return (get(hascontrol_1) == 2 and get(control_thro_other) == 0) or (get(hascontrol_1) == 1 and get(control_thro_other) == 1)
			end;
		},	

		clickable {
			position = {0, 0, 31, 30 },
		  
			onMouseDown = function() 
				set(control_thro_other, 1 - get(control_thro_other))
				return true
			end,
		},
		
		
		
	};
}

local hide_window_controls_absu = false
local hide_window_controls_ctr = false
absu_panel = contextWindow {
	name         = "ABSU",
	-- 1482, 926, 434, 128
	position     = { 50, 50, 1738, 512 },
	minimumSize  = { 1738 / 4, 512 / 4 },
	maximumSize  = { 1738 * 2, 512 * 2 },
	noDecore     = false,
	customDecore = true,
	resizeMode   = SASL_CW_RESIZE_RIGHT_BOTTOM,
	proportional = true,
	visible      = true,
	savePosition = true,
	noBackground = true,
	saveState    = true,
	components   = {
		absu_overlay {}
	},
	decoration   = {
		headerHeight = 0,
		main = {
			draw = function(w, h) -- draw  window  header...
				if hide_window_controls_absu == false then
					sasl.gl.drawTexture(popout_img, w - 20, h - 20, 20, 20, {255,255,255,255})
					sasl.gl.drawTexture(close_img, 0, h - 20, 20, 20, {255,255,255,255})
				end
			end,
			onMouseMove = function(x, y, w, h)
				if y > h - 20 and y < h and absu_panel:isPoppedOut() == false then
					hide_window_controls_absu = false
				else
					hide_window_controls_absu = true
				end
			end,
			onMouseDown = function(x, y, w, h, button)
				if absu_panel:isPoppedOut() == false and button == MB_LEFT then
					if y > h - 20 then
						if x > w - 20 then
							absu_panel:setMode(SASL_CW_MODE_POPOUT)
						elseif x < 20 then
							absu_panel:setIsVisible(false)
						end
					end
				end
			end,
		}
	}
}

controls_panel = contextWindow {
	name         = "Controls",
	-- 9,867,225,206
	position     = { 50, 50, 616, 560 },
	minimumSize  = { 616 / 4, 560 / 4 },
	maximumSize  = { 616 * 2, 560 * 2 },
	noDecore     = false,
	customDecore = true,
	resizeMode   = SASL_CW_RESIZE_RIGHT_BOTTOM,
	proportional = true,
	visible      = true,
	noBackground = true,
	savePosition = true,
	saveState    = true,
	components   = {
		controls_overlay {}
	},
	decoration   = {
		headerHeight = 0,
		main = {
			draw = function(w, h) -- draw  window  header...
				if hide_window_controls_ctr == false then
					sasl.gl.drawTexture(popout_img, w - 20, h - 20, 20, 20)
					sasl.gl.drawTexture(close_img, 0, h - 20, 20, 20)
				end
			end,
			onMouseMove = function(x, y, w, h)
				if y > h - 20 and y < h and controls_panel:isPoppedOut() == false then
					hide_window_controls_ctr = false
				else
					hide_window_controls_ctr = true
				end
			end,
			onMouseDown = function(x, y, w, h, button)
				if controls_panel:isPoppedOut() == false and button == MB_LEFT then
					if y > h - 20 then
						if x > w - 20 then
							controls_panel:setMode(SASL_CW_MODE_POPOUT)
						elseif x < 20 then
							controls_panel:setIsVisible(false)
						end
					end
				end
			end,
		}
	}
}



function update()
	
	-- main menu logic
	if sasl.getCSMouseXPos() < 256 then
		cursorOnEdge = true
	else
		cursorOnEdge = false
	end
	
	main_menu:setIsVisible(true and cursorOnEdge)

	ext_menu.visible = main_menu_ext and cursorOnEdge 
	
	nav_menu.visible = main_menu_ext and nav_ext and cursorOnEdge
	serv_menu.visible = main_menu_ext and serv_ext and cursorOnEdge 
	misc_menu.visible = main_menu_ext and misc_ext and cursorOnEdge
	
	payload_panel:setIsVisible(payload_panel:isVisible())
	absu_2d_panel.visible = get(show_absu_panel) == 1
	ovhd_2d_panel.visible = get(show_ohvd_panel) == 1
	nvu_2D_panel.visible = get(show_nvu_panel) == 1
	checklist_panel:setIsVisible(get(show_checklist_panel) == 1)
	ground_srv_panel:setIsVisible(get(show_ground_panel) == 1)
	--uphone:setIsVisible((show_phone) == 1)
	camera_panel.visible = get(show_cam) == 1
	palette:setIsVisible(get(show_palette) == 1)
	fails_panel:setIsVisible(get(show_fail_panel) == 1)
	
	if get(ismaster) then
		thro_button.visible = get(ismaster) > 0
	end
	
	
	
end

debug_item = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "Debug")
debug_menu = sasl.createMenu("", AIRCRAFT_MENU_ID, debug_item)
sasl.appendMenuItem(debug_menu, "Toggle controls overlay", function ()
	controls_panel:setIsVisible(not controls_panel:isVisible())
end)
sasl.appendMenuItem(debug_menu, "Toggle absu overlay", function ()
	absu_panel:setIsVisible(not absu_panel:isVisible())
end)


function onAvionicsDone()
	savePopupsPositions()

end

--[[
onAvionicsDone = function()
	savePopupsPositions()
end
--]]