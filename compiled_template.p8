pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
	mode = "startscreen"
	init_startscreen()
	init_game()
	init_gameover()
end

function _draw()
	cls()
	if (mode == "startscreen") draw_startscreen()
	if (mode == "game") draw_game()
	if (mode == "gameover") draw_gameover()
end

function _update()
	if (mode == "startscreen") update_startscreen()
	if (mode == "game") update_game()
	if (mode == "gameover") update_gameover()
end

-->8
--------libs/game/init.lua--------
function init_game()
    player = {
        health = 100,
        speed = 2,
        x = 10,
        y = 10
    }
end
-->8
--------libs/game/draw.lua--------
function draw_game()
    
end
-->8
--------libs/game/update.lua--------
function update_game()
end

-->8
--------libs/startscreen/init.lua--------
function init_startscreen()
    
end
-->8
--------libs/startscreen/draw.lua--------
function draw_startscreen()
    cls()
    print("hello world!", 10, 10, 2)
end
-->8
--------libs/startscreen/update.lua--------
function update_startscreen()
end

-->8
--------libs/gameover/init.lua--------
function init_gameover()
    
end
-->8
--------libs/gameover/draw.lua--------
function draw_gameover()
    
end
-->8
--------libs/gameover/update.lua--------
function update_gameover()
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
