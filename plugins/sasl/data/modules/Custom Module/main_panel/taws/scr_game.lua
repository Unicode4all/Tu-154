-- this is the Space Invaders game
size = {500, 385}

defineProperty("mode_set", globalPropertyi("tu154ce/taws/mode_set")) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения, 5 - игра

-- time
defineProperty("frame_time", globalPropertyf("tu154ce/time/frame_time")) -- flight time
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

-- controls
defineProperty("but_view", globalPropertyi("tu154ce/buttons/srpbz/but_view")) -- кнопка ВИД
defineProperty("but_empty", globalPropertyi("tu154ce/buttons/srpbz/but_empty")) -- кнопка -
defineProperty("but_down", globalPropertyi("tu154ce/buttons/srpbz/but_down")) -- кнопка масштаб вниз
defineProperty("but_up", globalPropertyi("tu154ce/buttons/srpbz/but_up")) -- масштаб вверх

local pong_sound = loadSample('Custom Sounds/pong.wav') --
local sqr_sound = loadSample('Custom Sounds/square.wav') --

-- images
local text_font = loadBitmapFont("taws_scr.fnt")

local screen_work = false

-- initialise game
local player = {}
local ball = {}


local level = 0

local barrels = {}

local barrel_x = size[1] / 10 - 3
local barrel_y = 15


local ball_init_pos = (math.random() * 2 - 1)

local game_lost = false
local game_started = false

local score = 0

-- reset player and ball parameters for new start
function next_life()

	-- player parameters
	player.size_x = 100
	player.size_y = 20
	player.x = size[1]/2
	player.y = 0
	
	-- ball parameters
	ball.size = 15
	ball.x = player.x + ball_init_pos * player.size_x / 4
	ball.y = player.size_y + ball.size/2 + 1
	
	ball.vel_x = math.sin((ball.x - player.x) / player.size_x * 2)
	ball.vel_y = math.abs(math.cos((ball.x - player.x) / player.size_x * 2))

	game_started = false

end

function next_level()
	
	ball_init_pos = (math.random() * 2 - 1)
	
	next_life()
	
	level = level + 1
	
	ball.spd = ball.spd + level * 0.5
	
	-- build barrels
	for h = 0, 9 do
		for v = 0, 2 do
			table.insert(barrels, {x = h * (barrel_x + 3), y = size[2] - 70 - (barrel_y + 3) * v - barrel_y })
		end
	end
	
	
end


-- full game reset
function reset()
	
	level = 0
	ball.spd = 1
	
	barrels = {}
	
	next_level()
	
	
	
	-- player parameters
	player.life = 3
	game_lost = false
	
	score = 0
	
end

-- initialize at first start
reset()



local but_last = 0


function update()
	
	
	
	screen_work = get(mode_set) == 6
	local passed = get(frame_time)
	
	-- end game if SmartCopilot is connected
	if screen_work and get(ismaster) ~= 0 then set(mode_set, 1) end
	
	
	-- reset game
	if get(but_empty) == 1 and but_last ~= get(but_empty) then reset() end
	
	but_last = get(but_empty)
	
	if screen_work and not game_lost then
		-- player move
		if get(but_down) == 1 then
			player.x = player.x - passed * 1000
			if player.x <= player.size_x/2 then player.x = player.size_x/2 end
			game_started = true
		end
		
		if get(but_up) == 1 then
			player.x = player.x + passed * 1000
			if player.x >= size[1]-player.size_x/2 then player.x = size[1]-player.size_x/2 end
			game_started = true
		end
		
		-- ball move
		if game_started then
			ball.x = ball.x + ball.vel_x * passed * 100 * ball.spd
			ball.y = ball.y + ball.vel_y * passed * 100 * ball.spd
		end
	
	
	
		-- ball strikes walls
		-- left wall
		if ball.x <= ball.size/2 then 
			ball.x = ball.size/2
			ball.vel_x = math.abs(ball.vel_x) 
			if get(xplane_version) < 120000 then playSample(pong_sound, false) end 
		end 
		-- right wall
		if ball.x >= size[1]-ball.size/2 then 
			ball.x = size[1]-ball.size/2
			ball.vel_x = -math.abs(ball.vel_x) 
			if get(xplane_version) < 120000 then playSample(pong_sound, false) end 
		end 
		-- upper wall
		if ball.y >= size[2]-ball.size/2 - 50 then 
			ball.y = size[2]-ball.size/2 - 50
			ball.vel_y = -math.abs(ball.vel_y) 
			if get(xplane_version) < 120000 then playSample(pong_sound, false) end 
		end 
		
		-- ball hit the floor
		if ball.y <= ball.size/2 then 
		
			player.life = player.life - 1
			
			if player.life > 0 then 
				next_life() 
			else
				game_lost = true
				next_life() 
			end
		

		end
		
		-- ball hit the barrel
		for i, v in pairs(barrels) do
			

			if ball.x + ball.size/2 >= v.x and ball.x - ball.size/2 <= v.x + barrel_x and
			ball.y - ball.size/2 <= v.y + barrel_y and ball.y + ball.size/2 >= v.y then
				
				table.remove(barrels, i)
				
				score = score + 10
				
				if get(xplane_version) < 120000 then playSample(sqr_sound, false) end
				
				if ball.x + ball.size/2 < v.x + barrel_x / 10 or ball.x - ball.size/2 > v.x + barrel_x - barrel_x / 10 then
					ball.vel_x = -ball.vel_x
				else 
					ball.vel_y = -ball.vel_y
				end
				
				break
				
			end

			
		end
		
		-- ball hit player
		if ball.y - ball.size/2 <= player.size_y and 
		ball.x + ball.size/2 > player.x - player.size_x/2 and ball.x - ball.size/2 < player.x + player.size_x/2 then
			
			ball.y = player.size_y + ball.size / 2
			
			ball.vel_x = math.sin((ball.x - player.x) / player.size_x * 2)
			ball.vel_y = math.abs(math.cos((ball.x - player.x) / player.size_x * 2))
			
			if game_started then if get(xplane_version) < 120000 then playSample(pong_sound, false) end end
		
		end
		
		-- game won the level
		if #barrels == 0 then next_level() end
	
	end
	
end



function draw()
	
if screen_work then
	-- draw background
	drawRectangle(0, 0, size[1], size[2]-50, 0.0, 0.1, 0.2, 1) 
	
	
	-- draw player
	drawRectangle(player.x - player.size_x/2, player.y, player.size_x, player.size_y, 0.3, 0.8, 0.5, 1) 
	
	-- draw ball
	drawRectangle(ball.x - ball.size/2, ball.y - ball.size/2, ball.size, ball.size, 0.9, 0.4, 0.1, 1) 
	
	-- draw barrels
	for _, v in pairs(barrels) do
		drawRectangle(v.x, v.y, barrel_x, barrel_y, 0.8, 0.8, 0.5, 1)
	end
	
	drawText(text_font, 10, 350, "P: "..player.life, 12, false, false, 1,1,1,1)
	drawText(text_font, 100, 350, "LVL: "..level, 12, false, false, 1,1,1,1)
	drawText(text_font, 250, 350, "PTS: "..score, 12, false, false, 1,1,1,1)
	
	if game_lost then
		drawText(text_font, 130, 210, "GAME OVER", 12, false, false, 1,1,1,1)
		drawText(text_font, 40, 150, "PRESS MOD TO EXIT", 12, false, false, 1,1,1,1)
		drawText(text_font, 15, 100, "PRESS BUT2 TO RESET", 12, false, false, 1,1,1,1)
	end
	
	if not game_started then
		drawText(text_font, 160, 170, "LEVEL: "..level, 12, false, false, 1,1,1,1)
	end
	
	
end
	
end