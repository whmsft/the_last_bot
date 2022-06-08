import "dome" for Window
import "input" for Keyboard
import "graphics" for Canvas, Color, Font

class Player {
	x {_x}
	y {_y}
	xvel {_xvel}
	yvel {_yvel}
	construct new() {
		_xvel = 0
		_yvel = 0
		_x = 200
		_y = 200
	}
	update() {
		if (Keyboard.isKeyDown("up")) {_yvel = 5}
		_x = x+xvel
		_y = y-yvel
		if (y != 200) {_yvel = yvel - 1}
		if (y > 200) {
			_y = 200
			_yvel = 0
		}
	}
	draw() {
		Canvas.cls()
		Canvas.print(yvel.toString, 10,10, Color.white)
		Canvas.rectfill(x, y, 20, 20, Color.white)
	}
}

class game {
	construct new() {}
	init() {_sprite = Player.new()}
	update() {_sprite.update()}
	draw(alpha) {_sprite.draw()}
}

var Game = game.new()
