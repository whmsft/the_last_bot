import "dome" for Window
import "graphics" for Canvas, Color, Font

class Player {
	x {_x}
	y {_y}
	xvel {_xvel}
	yvel {_yvel}
	construct new {
		_xvel = 0
		_yvel = 0
	}
	update() {
		_x = x+xvel
		_y = y+yvel
	}
	draw() {}
}

class GAME {
	construct new {}
	init() {}
	update() {}
	draw(alpha) {}
}

var Game = GAME.new()
