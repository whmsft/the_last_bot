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
		if (Keyboard.isKeyDown("up")) {_yvel = 10}
		_x = x+xvel
		_y = y-yvel
		if (y != 200) {_yvel = yvel - 1}
		if (y > 200) {
			_y = 200
			_yvel = 0
		}
		if (y <= 0) {
			_y = 0
			_yvel = -1
		}
	}
	draw() {
		Canvas.cls()
		Canvas.rectfill(x, y, 20, 20, Color.white)
	}
}

class game {
	construct new() {}
	init() {
		Window.title = "last_bot.wren"
		Canvas.resize(640,360)
		Window.resize(640,360)
		_sprite = Player.new()
	}
	update() {_sprite.update()}
	draw(alpha) {_sprite.draw()}
}

var Game = game.new()
