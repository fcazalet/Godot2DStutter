extends Node2D

var speed = 120.0

func _process(delta: float) -> void:
	$Sprite2D.position.x += delta * speed
	if $Sprite2D.position.x < 20 or $Sprite2D.position.x > 900:
		speed = -1 * speed
	$Path2D/PathFollow2D.progress_ratio += delta * 0.1


func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.keycode == KEY_UP:
			speed += 10
		if event.keycode == KEY_DOWN:
			speed -= 10
		print(speed)
