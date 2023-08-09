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

#include libs/game/init.lua
#include libs/game/draw.lua
#include libs/game/update.lua

#include libs/startscreen/init.lua
#include libs/startscreen/draw.lua
#include libs/startscreen/update.lua

#include libs/gameover/init.lua
#include libs/gameover/draw.lua
#include libs/gameover/update.lua

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
