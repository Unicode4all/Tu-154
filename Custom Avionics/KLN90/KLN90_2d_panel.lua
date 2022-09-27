size = {457, 146.5}


---------------------------------------------------------------------------------
-- Smart Copilot section --
---------------------------------------------------------------------------------
-- Aircraft power bus 
defineProperty("kln_power", globalPropertyi("sim/custom/kln_power"));

defineProperty("SC_master", globalPropertyi("scp/api/ismaster")) -- status of SmartCopilot

-- Graph serialized string to show flightplan path
defineProperty("sc_graphNAV5Comp", globalPropertys("sim/custom/xap/KLN90/graphNAV5Comp"))
defineProperty("sc_graphAPT3Comp", globalPropertys("sim/custom/xap/KLN90/graphAPT3Comp"))
-- Text strings for SmartCopilot sync
defineProperty("sc_gline_1", globalPropertys("sim/custom/xap/KLN90/gline_1"))
defineProperty("sc_gline_2", globalPropertys("sim/custom/xap/KLN90/gline_2"))
defineProperty("sc_gline_3", globalPropertys("sim/custom/xap/KLN90/gline_3"))
defineProperty("sc_gline_4", globalPropertys("sim/custom/xap/KLN90/gline_4"))
defineProperty("sc_gline_5", globalPropertys("sim/custom/xap/KLN90/gline_5"))
defineProperty("sc_gline_6", globalPropertys("sim/custom/xap/KLN90/gline_6"))
defineProperty("sc_gline_7", globalPropertys("sim/custom/xap/KLN90/gline_7"))
defineProperty("sc_gline_8", globalPropertys("sim/custom/xap/KLN90/gline_8"))
defineProperty("sc_bline_1", globalPropertys("sim/custom/xap/KLN90/bline_1"))
defineProperty("sc_bline_2", globalPropertys("sim/custom/xap/KLN90/bline_2"))
defineProperty("sc_bline_3", globalPropertys("sim/custom/xap/KLN90/bline_3"))
defineProperty("sc_bline_4", globalPropertys("sim/custom/xap/KLN90/bline_4"))
defineProperty("sc_bline_5", globalPropertys("sim/custom/xap/KLN90/bline_5"))
defineProperty("sc_bline_6", globalPropertys("sim/custom/xap/KLN90/bline_6"))
defineProperty("sc_bline_7", globalPropertys("sim/custom/xap/KLN90/bline_7"))
defineProperty("sc_bline_8", globalPropertys("sim/custom/xap/KLN90/bline_8"))
defineProperty("sc_scaleline", globalPropertys("sim/custom/xap/KLN90/scale_line"))
defineProperty("sc_cage", globalPropertyi("sim/custom/xap/KLN90/cage"))
-- animation
defineProperty("L_Angle_3D", globalPropertyi("sim/custom/rotary/KLN90/3D_L_Angle"))
defineProperty("R_Angle_3D", globalPropertyi("sim/custom/rotary/KLN90/3D_R_Angle"))
defineProperty("power_knob", globalPropertyi("sim/custom/rotary/KLN90/power_knob"))
defineProperty("power_knob_angle", globalPropertyi("sim/custom/rotary/KLN90/power_knob_angle"))
defineProperty("scan_knob", globalPropertyi("sim/custom/rotary/KLN90/scan_knob"))



----------------

defineProperty("bg", loadImage("KLN90.png", 0, 0, 914, 293))
defineProperty("glass", loadImage("KLN90.png", 10, 298, 426, 199))
defineProperty("powerknob", loadImage("KLN90.png", 455, 321, 52, 52))
defineProperty("powerext", loadImage("KLN90.png", 445, 400, 65, 50))
defineProperty("rknobstex", loadImage("KLN90.png", 528, 312, 71, 71))
--defineProperty("arrowtex", loadImage("KLNmap.png", 125, 98, 275, 150))
defineProperty("mapplane", loadImage("KLNmap.png", 2, 2, 5, 4))
defineProperty("mapstar", loadImage("KLNmap.png", 16, 2, 5, 5))
defineProperty("mapdiamond", loadImage("KLNmap.png", 9, 2, 5, 5))
defineProperty("mappixel", loadImage("KLNmap.png", 4, 10, 1, 1))
defineProperty("mapplus", loadImage("KLNmap.png", 43, 3, 3, 3))

--defineProperty("mappixel", loadImage("KLNmap.png", 4, 11, 2, 2))

defineProperty("mapquad", loadImage("KLNmap.png", 9, 9, 3, 3))
defineProperty("mapAPT", loadImage("KLNmap.png", 23, 2, 5, 5))
defineProperty("mapNDB", loadImage("KLNmap.png", 30, 3, 4, 4))
defineProperty("mapVOR", loadImage("KLNmap.png", 36, 2, 5, 5))

defineProperty("Atex", loadImage("KLNmap.png", 1, 36, 5, 7))
defineProperty("Btex", loadImage("KLNmap.png", 7, 36, 5, 7))
defineProperty("Ctex", loadImage("KLNmap.png", 13, 36, 5, 7))
defineProperty("Dtex", loadImage("KLNmap.png", 19, 36, 5, 7))
defineProperty("Etex", loadImage("KLNmap.png", 25, 36, 5, 7))
defineProperty("Ftex", loadImage("KLNmap.png", 31, 36, 5, 7))
defineProperty("Gtex", loadImage("KLNmap.png", 37, 36, 5, 7))
defineProperty("Htex", loadImage("KLNmap.png", 43, 36, 5, 7))
defineProperty("Itex", loadImage("KLNmap.png", 49, 36, 5, 7))
defineProperty("Jtex", loadImage("KLNmap.png", 55, 36, 5, 7))
defineProperty("Ktex", loadImage("KLNmap.png", 61, 36, 5, 7))
defineProperty("Ltex", loadImage("KLNmap.png", 67, 36, 5, 7))
defineProperty("Mtex", loadImage("KLNmap.png", 73, 36, 5, 7))
defineProperty("Ntex", loadImage("KLNmap.png", 79, 36, 5, 7))
defineProperty("Otex", loadImage("KLNmap.png", 85, 36, 5, 7))
defineProperty("Ptex", loadImage("KLNmap.png", 91, 36, 5, 7))
defineProperty("Qtex", loadImage("KLNmap.png", 97, 36, 5, 7))
defineProperty("Rtex", loadImage("KLNmap.png", 103, 36, 5, 7))
defineProperty("Stex", loadImage("KLNmap.png", 109, 36, 5, 7))
defineProperty("Ttex", loadImage("KLNmap.png", 115, 36, 5, 7))
defineProperty("Utex", loadImage("KLNmap.png", 121, 36, 5, 7))
defineProperty("Vtex", loadImage("KLNmap.png", 127, 36, 5, 7))
defineProperty("Wtex", loadImage("KLNmap.png", 133, 36, 5, 7))
defineProperty("Xtex", loadImage("KLNmap.png", 139, 36, 5, 7))
defineProperty("Ytex", loadImage("KLNmap.png", 145, 36, 5, 7))
defineProperty("Ztex", loadImage("KLNmap.png", 151, 36, 5, 7))
defineProperty("ötex", loadImage("KLNmap.png", 157, 36, 5, 7))
defineProperty("ö0tex", loadImage("KLNmap.png", 1, 44, 5, 7))
defineProperty("ö1tex", loadImage("KLNmap.png", 7, 44, 5, 7))
defineProperty("ö2tex", loadImage("KLNmap.png", 13, 44, 5, 7))
defineProperty("ö3tex", loadImage("KLNmap.png", 19, 44, 5, 7))
defineProperty("ö4tex", loadImage("KLNmap.png", 25, 44, 5, 7))
defineProperty("ö5tex", loadImage("KLNmap.png", 31, 44, 5, 7))
defineProperty("ö6tex", loadImage("KLNmap.png", 37, 44, 5, 7))
defineProperty("ö7tex", loadImage("KLNmap.png", 43, 44, 5, 7))
defineProperty("ö8tex", loadImage("KLNmap.png", 49, 44, 5, 7))
defineProperty("ö9tex", loadImage("KLNmap.png", 55, 44, 5, 7))

defineProperty("lknobstex", loadImage("KLN90.png", 528, 392, 71, 71))

defineProperty("cage", loadImage("KLN90.png", 9, 501, 415, 2))


defineProperty("FPlan_tbl")
defineProperty("values_tbl")
defineProperty("controls_tbl")
defineProperty("gline_tbl")
defineProperty("bline_tbl")

defineProperty("Nav5Comp_tbl")
defineProperty("APT3Comp_tbl")


defineProperty("brightness")
defineProperty("power_val")

local font = loadFont('KLN90.fnt')
local fontb = loadFont('KLN90_2.fnt')
local fontl = loadFont('KLN90_3.fnt')

local brt = 1
local power = 1



-- commands
local KLNpowerc_command = findCommand("xap/KLN90/Toggle_Power_Switch")
local KLNincbrtc_command = findCommand("xap/KLN90/Increase_Brightness")
local KLNdecbrtc_command = findCommand("xap/KLN90/Decrease_Brightness")
local KLNLCRSRc_command = findCommand("xap/KLN90/Toggle_Left_Cursor")
local KLNRCRSRc_command = findCommand("xap/KLN90/Toggle_Right_Cursor")
local KLNSCANc_command = findCommand("xap/KLN90/Toggle_Scan_Mode")
local KLNlknoblccc_command = findCommand("xap/KLN90/Turn_Left_Large_Knob_Counterclockwise")
local KLNlknobsccc_command = findCommand("xap/KLN90/Turn_Left_Small_Knob_Counterclockwise")
local KLNlknobscc_command = findCommand("xap/KLN90/Turn_Left_Small_Knob_Clockwise")
local KLNlknoblcc_command = findCommand("xap/KLN90/Turn_Left_Large_Knob_Clockwise")
local KLNMSGc_command = findCommand("xap/KLN90/Toggle_Message_Page")
local KLNALTc_command = findCommand("xap/KLN90/Toggle_Altitude_Page")
local KLNDTOc_command = findCommand("xap/KLN90/Toggle_Direct_To_Page")
local KLNCLRc_command = findCommand("xap/KLN90/Press_CLR")
local KLNENTc_command = findCommand("xap/KLN90/Press_ENT")
local KLNrknoblccc_command = findCommand("xap/KLN90/Turn_Right_Large_Knob_Counterclockwise")
local KLNrknobsccc_command = findCommand("xap/KLN90/Turn_Right_Small_Knob_Counterclockwise")
local KLNrknobscc_command = findCommand("xap/KLN90/Turn_Right_Small_Knob_Clockwise")
local KLNrknoblcc_command = findCommand("xap/KLN90/Turn_Right_Large_Knob_Clockwise")


components = {

	textureLit { -- background
		position = {0, 0, 457, 146.5},
		image = get(bg),
	},


	texture {
		position = {386.5, 96.5, 32.5, 25},
		image = get(powerext),
		visible = function()
			return power == 0
		end,
	},
									
	needleLit {
		position = {389.5, 105, 26, 26},
		image = get(powerknob),
		angle = function()
			return brt * 335
		end,
	},
								
	needleLit {
		position = {39.5, 16, 35.5, 35.5},
		image = get(lknobstex),
		angle = function()
			return get(L_Angle_3D) * 10
		end,
	},
							
							
	needleLit {
		position = {385, 16, 35.5, 35.5},
		image = get(rknobstex),
		angle = function()
			return get(R_Angle_3D) * 10
		end,
	},

	
	
	needleLit {
		position = {386, 15, 35.5, 35.5},
		image = get(rknobstex),
		angle = function()
			return get(R_Angle_3D) * 10
		end,
		visible = function()
			return get(scan_knob) == 1
		end,
	},

					textureLit2 {
					position = {125, 55, 208, 1},
					image = get(cage),
					brt2 = function() 
						return brt
					end,
					visible = function()
						if get(SC_master) == 1 then
							return get(sc_cage) == 1
						else
							return get(sc_cage) == 1 --cagevisible == 1
						end	
					end,
				},
	
	textureLit2 {
		position = {125, 55, 208, 1},
		image = get(cage),
		brt2 = function() 
			return brt
		end,
		visible = function()
			return get(sc_cage) == 1
		end,
	},

	---------------------------------------
	-- clickables --
	------------------------------
--[[	
	rectangle {
		position = {55, 10, 22.5, 47.5 },
		color = {1, 0, 0, 1},
	},
--]]
	clickable {
		position = {43.5, 75.5, 25.5, 15 },
				
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  
			
		onMouseClick = function()
			commandOnce(KLNLCRSRc_command)
			return true
		end  
	},	
		
		
		
	clickable {
		position = {388, 75.5, 25.5, 15 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  
		
		onMouseClick = function()
			commandOnce(KLNRCRSRc_command)
			return true
		end  
	},	

	clickable {
	position = {392, 108, 20, 20 },

	cursor = { 
		x = 16, 
		y = 32,  
		width = 16, 
		height = 16, 
		shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
			commandOnce(KLNpowerc_command)
			
			return true
		end  
	},	
	
	
	clickable {
		position = {368, 107.5, 20, 20 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateleft.png")
		},  

		onMouseClick = function()
			commandOnce(KLNdecbrtc_command)
			return true
		end  
	},	
	
	
	clickable {
		position = {418, 107.5, 20, 20 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateright.png")
		},  

		onMouseClick = function()
			commandOnce(KLNincbrtc_command)
			return true
		end  
	},		
	
	
	clickable {
		position = {116, 9, 26.5, 15.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
			commandOnce(KLNMSGc_command)
			return true
		end  
	},		
	
	

	
	clickable {
		position = {165.5, 9, 26.5, 15.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
			commandOnce(KLNALTc_command)
			return true
		end  
	},		
	
	
	
	
	clickable {
		position = {215, 9, 26.5, 15.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
			commandOnce(KLNDTOc_command)
			return true
		end  
	},		
	

	
	
	clickable {
		position = {264.5, 9, 26.5, 15.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
			commandOnce(KLNCLRc_command)
			return true
		end  
	},		
	

	
	clickable {
		position = {314, 9, 26.5, 15.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  

		onMouseClick = function()
			commandOnce(KLNENTc_command)
			return true
		end  
	},	
	
	
	
	
	clickable {
		position = {33, 10, 22.5, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateleft2.png")
		},  

		onMouseClick = function()
			commandOnce(KLNlknobsccc_command)
			return true
		end  
	},	
	
	
	clickable {
		position = {58, 10, 22.5, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateright2.png")
		},  

		onMouseClick = function()
			commandOnce(KLNlknobscc_command)
			return true
		end  
	},	
	
	
	
	clickable {
		position = {5, 10, 25, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateleft.png")
		},  

		onMouseClick = function()
			commandOnce(KLNlknoblccc_command)
			return true
		end  
	},	
	

	clickable {
		position = {85, 10, 22.5, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateright.png")
		},  

		onMouseClick = function()
			commandOnce(KLNlknoblcc_command)
			return true
		end  
	},	

	
	clickable {
		position = {388, 60, 25.5, 12.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable2.png")
		},  

		onMouseClick = function()
			commandOnce(KLNSCANc_command)
			
			return true
		end  
	},	
	
	
	clickable {
		position = {378, 10, 22.5, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateleft2.png")
		},  

		onMouseClick = function()
			commandOnce(KLNrknobsccc_command)
			return true
		end  
	},	
	
	
	clickable {
		position = {403, 10, 22.5, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateright2.png")
		},  

		onMouseClick = function()
			commandOnce(KLNrknobscc_command)
			return true
		end  
	},	
	

	
	clickable {
		position = {350, 10, 25, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateleft.png")
		},  

		onMouseClick = function()
			commandOnce(KLNrknoblccc_command)
			return true
		end  
	},	
	
	
	clickable {
		position = {430, 10, 25, 47.5 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("rotateright.png")
		},  

		onMouseClick = function()
			commandOnce(KLNrknoblcc_command)
			return true
		end  
	},	
	
	
	
	
	
	clickable { -- close button
		position = {size[1] - 10, size[2] - 10, 10, 10},
		
		cursor = { 
		x = 16, 
		y = 32,  
		width = 16, 
		height = 16, 
		shape = loadImage("clickable.png")
	},  

		onMouseClick = function()
			set(KLN90visible, 0)
			return true
		end
	},		

}


components2 = {
	rectangle2 {
		position = {122, 33, 213, 100},
		color = {0,0.85,0.05},
		brt2 = function() 
			if power == 0 then
				return 0
			else
				return brt / 10
			end
		end,
	},

	texture {

		position = {122, 33, 213, 100},
		image = get(glass),
	},
}


Nav5Comp = {}
APT3Comp = {}


function draw()
	
	local FPlan = get(FPlan_tbl)
	local values = get(values_tbl)
	local controls = get(controls_tbl)
	local gline = get(gline_tbl)
	local bline = get(bline_tbl)
	
	
	Nav5Comp = get(Nav5Comp_tbl)
	APT3Comp = get(APT3Comp_tbl)
	
	
	power = get(power_val)	
	brt = get(brightness)
	
	
	drawAll(components)

	if get(SC_master) == 1 then
	
		drawAll(Nav5Comp)
		drawAll(APT3Comp)
		
		drawText(font, 125, 98, get(sc_gline_1), brt, brt, brt)
		drawText(font, 125, 87, get(sc_gline_2), brt, brt, brt)
		drawText(font, 125, 76, get(sc_gline_3), brt, brt, brt)
		drawText(font, 125, 65, get(sc_gline_4), brt, brt, brt)
		drawText(font, 125, 54, get(sc_gline_5), brt, brt, brt)
		drawText(font, 125, 43, get(sc_gline_6), brt, brt, brt)
		drawText(font, 125, 29, get(sc_gline_7), brt, brt, brt)
	
		drawText(fontb, 125, 98, get(sc_bline_1), brt, brt, brt)
		drawText(fontb, 125, 87, get(sc_bline_2), brt, brt, brt)
		drawText(fontb, 125, 76, get(sc_bline_3), brt, brt, brt)
		drawText(fontb, 125, 65, get(sc_bline_4), brt, brt, brt)
		drawText(fontb, 125, 54, get(sc_bline_5), brt, brt, brt)
		drawText(fontb, 125, 43, get(sc_bline_6), brt, brt, brt)
		drawText(fontb, 125, 29, get(sc_bline_7), brt, brt, brt)
		
		drawText(fontl, 129.5, 87, get(sc_scaleline), brt, brt, brt)
	else
		

		drawText(font, 125, 98, gline[1], brt, brt, brt)
		drawText(font, 125, 87, gline[2], brt, brt, brt)
		drawText(font, 125, 76, gline[3], brt, brt, brt)
		drawText(font, 125, 65, gline[4], brt, brt, brt)
		drawText(font, 125, 54, gline[5], brt, brt, brt)
		drawText(font, 125, 43, gline[6], brt, brt, brt)
		drawText(font, 125, 29, gline[7], brt, brt, brt)
	
		drawText(fontb, 125, 98, bline[1], brt, brt, brt)
		drawText(fontb, 125, 87, bline[2], brt, brt, brt)
		drawText(fontb, 125, 76, bline[3], brt, brt, brt)
		drawText(fontb, 125, 65, bline[4], brt, brt, brt)
		drawText(fontb, 125, 54, bline[5], brt, brt, brt)
		drawText(fontb, 125, 43, bline[6], brt, brt, brt)
		drawText(fontb, 125, 29, bline[7], brt, brt, brt)
		
		drawText(fontl, 129.5, 87, values["scaleline"], brt, brt, brt) 
	end
	--]]
	drawAll(Nav5Comp)
	drawAll(APT3Comp)
	
	drawAll(components2)
	
end
