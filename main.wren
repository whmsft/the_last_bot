import "dome" for Window
import "input" for Keyboard
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
	init() {sprite = Player.new()}
	update() {sprite.update()}
	draw(alpha) {sprite.draw()}
}

var Game = GAME.new()
