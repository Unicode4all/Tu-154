addSearchPath(moduleDirectory .. "/Custom Module/panels_2d/controls")

absu_contr_pitch = globalPropertyf("tu154ce/absu/contr_pitch") -- отклонение штока РА56 по тангажу
absu_contr_roll = globalPropertyf("tu154ce/absu/contr_roll")   -- отклонение штока РА56 по крену
absu_contr_yaw = globalPropertyf("tu154ce/absu/contr_yaw")     -- отклонение штока РА56 по направлению

background = loadImage("absu_debug.png", 0, 0, 1738, 512)
yaw_needle = loadImage("absu_debug.png", 27, 742, 28, 266)
roll_needle = loadImage("absu_debug.png", 332, 875, 266, 28)
pitch_needle = loadImage("absu_debug.png", 332, 875, 266, 28)

absu_contr_pitch_ind = 0
absu_contr_roll_ind = 0
absu_contr_yaw_ind = 0


function update()
    absu_contr_pitch_ind = get(absu_contr_pitch) / 0.4 * 154
    absu_contr_roll_ind  = get(absu_contr_roll) * 100 
    absu_contr_yaw_ind   = get(absu_contr_yaw) / 0.4 * 201
end

function draw()
    drawTexture(background, 0, 0, 1738, 512, { 1, 1, 1, 1 })
    drawTexture(yaw_needle, 279 + absu_contr_yaw_ind, 152, 28, 266, { 1, 1, 1, 1 })
    drawRotatedTextureCenter(roll_needle, absu_contr_roll_ind, 930, 256, 797, 242, 266, 28, { 1, 1, 1, 1 })
    drawTexture(pitch_needle, 1345, 242 + absu_contr_pitch_ind, 266, 28, { 1, 1, 1, 1 })
end
