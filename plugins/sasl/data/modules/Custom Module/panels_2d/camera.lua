-- this is camera panel

size = {512, 512}
defineProperty("show_cam",globalPropertyi("tu154ce/panels/show_cam")) -- показать панель камеры

-- pilot head pos

defineProperty("px", globalPropertyf("sim/graphics/view/pilots_head_x"))
defineProperty("py", globalPropertyf("sim/graphics/view/pilots_head_y"))
defineProperty("pz", globalPropertyf("sim/graphics/view/pilots_head_z"))
defineProperty("az", globalPropertyf("sim/graphics/view/pilots_head_the"))
defineProperty("ax", globalPropertyf("sim/graphics/view/pilots_head_psi"))




cockview2 = findCommand("sim/view/3d_cockpit_cmnd_look") -- command from X-Plane 10


-- images
defineProperty("bg", loadImage("cam_panel.png"))

local a = -10
local a_last = -10

function update()


	if a_last ~= a then
		if a ~= -10 then commandOnce(cockview2) end -- XP10 view workaround
			if a == 0 then set(px , 0.112098) set(py , 0.082449) set(pz , -21.521582) set(az, -2.575267) set(ax, 0)
		elseif a == 1 then set(px , -0.488292) set(py , 0.444840) set(pz , -21.146372) set(az, -2.565663) set(ax, 0)
		elseif a == 2 then set(px , -0.011775) set(py , 0.314453) set(pz , -21.446339) set(az, -87.580978) set(ax, 0)
		elseif a == 3 then set(px , 0.490528) set(py ,0.444775) set(pz , -21.146378) set(az, -2.565663) set(ax, 0)
		elseif a == 4 then set(px , -0.543793) set(py , 0.493571) set(pz , -21.179403) set(az, -35.001316) set(ax, 289.986176)
		elseif a == 5 then set(px , -0.011775) set(py , 0.347740) set(pz , -21.624302) set(az, -65.996056) set(ax, 0)
		elseif a == 6 then set(px , 0.534340) set(py , 0.483987) set(pz , -21.177561) set(az, -34.907909) set(ax, 67.726707)
		elseif a == 7 then set(px , -1.405661) set(py , 0.395657) set(pz , 3.748547) set(az, -7.561006) set(ax, 268.687500)
		elseif a == 8 then set(px , -0.007348) set(py , 0.03384) set(pz , -21.150202) set(az, 73.227646) set(ax, 0)
		elseif a == 9 then set(px , -0.010133) set(py , 0.472911) set(pz , -19.952929) set(az, -0.181548) set(ax, 90)
		end
	end
	a_last = a	


end



components = {


	textureLit {
		position = { 0, 0, 512, 512 };
		image = get(bg);
	},


	
	clickable {
		position = {206, 195, 98, 110},
      
		onMouseDown = function() 
			a = 0
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},	
	
	clickable {
		position = {58, 195, 98, 110},
      
		onMouseDown = function() 
			a = 1
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},	
	
	
	clickable {
		position = {354, 195, 98, 110},
      
		onMouseDown = function() 
			a = 3
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},		
	
	clickable {
		position = {206, 21, 98, 68},
      
		onMouseDown = function() 
			a = 2
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},	
	
	clickable {
		position = {206, 101, 98, 68},
      
		onMouseDown = function() 
			a = 5
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},	
	
	
	clickable {
		position = {11, 60, 98, 110},
      
		onMouseDown = function() 
			a = 4
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},		
	
	
	clickable {
		position = {400, 60, 98, 110},
      
		onMouseDown = function() 
			a = 6
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},		
	
	clickable {
		position = {15, 382, 98, 110},
      
		onMouseDown = function() 
			a = 7
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},		
	
	clickable {
		position = {156, 382, 187, 110},
      
		onMouseDown = function() 
			a = 8
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},		
	
	clickable {
		position = {387, 382, 98, 110},
      
		onMouseDown = function() 
			a = 9
			return true
		end,
		onMouseUp = function() 
			a = -10
			return true
		end,
	},		




	clickable {
		position = {size[1]-15, size[2]-15, 15, 15 },
      
		onMouseClick = function() 
			set(show_cam, 0)
			return true
		end,
	},		
	



}





