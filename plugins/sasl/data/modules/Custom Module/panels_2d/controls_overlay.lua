addSearchPath(moduleDirectory .. "/Custom Module/panels_2d/controls")

yoke_pitch = globalPropertyf("tu154ce/controlls/yoke_pitch")
yoke_roll = globalPropertyf("tu154ce/controlls/yoke_roll")
pedals = globalPropertyf("tu154ce/controlls/pedals")
absu_contr_pitch = globalPropertyf("tu154ce/absu/contr_pitch") -- отклонение штока РА56 по тангажу
absu_contr_roll = globalPropertyf("tu154ce/absu/contr_roll")   -- отклонение штока РА56 по крену
absu_contr_yaw = globalPropertyf("tu154ce/absu/contr_yaw")     -- отклонение штока РА56 по направлению

t1 = globalPropertyf("tu154ce/controlls/throttle_1")
t2 = globalPropertyf("tu154ce/controlls/throttle_2")
t3 = globalPropertyf("tu154ce/controlls/throttle_3")

background = loadImage("controls_overlay.png", 0, 0, 616, 560)
yoke_ind = loadImage("controls_overlay.png", 622, 468, 39, 39)
absu_ind = loadImage("controls_overlay.png", 624, 426, 33, 33)
pedals_ind = loadImage("controls_overlay.png", 637, 379, 7, 18)
yaw_damper_ind = loadImage("controls_overlay.png", 637, 353, 7, 18)

throttle_ind = loadImage("controls_overlay.png", 632, 407, 17, 7)

yoke_pos_x = 0
yoke_pos_y = 0
pedals_pos = 0
absu_x = 0
absu_y = 0

function update()
    yoke_pos_y = 256 - 21 - get(yoke_pitch) * 240
    yoke_pos_x = 360 - 19 + get(yoke_roll) * 240
    pedals_pos = 360 - 5 + get(pedals) * 238
    yaw_damper_pos = 360 - 5 + get(absu_contr_yaw)/0.4 * 238
    absu_x = 360 - 17 + get(absu_contr_roll)/0.4 * 240
    absu_y = 256 - 17 + get(absu_contr_pitch)/0.4 * 240

    t1_pos = 18 + get(t1) * 472
    t2_pos = 18 + get(t2) * 472
    t3_pos = 18 + get(t3) * 472
end

function draw()
    drawTexture(background, 0, 0, 616, 560, { 1, 1, 1, 1 })
    drawTexture(absu_ind, absu_x, absu_y, 33, 33, { 1, 1, 1, 1 })
    drawTexture(yoke_ind, yoke_pos_x, yoke_pos_y, 39, 39, { 1, 1, 1, 1 })
    drawTexture(yaw_damper_ind, yaw_damper_pos, 520, 7, 18, { 1, 1, 1, 1 })
    drawTexture(pedals_ind, pedals_pos, 520, 7, 18, { 1, 1, 1, 1 })
    
    drawTexture(throttle_ind, 17,t1_pos, 17, 7, { 1, 1, 1, 1 })
    drawTexture(throttle_ind, 46,t2_pos, 17, 7, { 1, 1, 1, 1 })
    drawTexture(throttle_ind, 74,t3_pos, 17, 7, { 1, 1, 1, 1 })
end
