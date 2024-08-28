extends CharacterBody2D

func _process(delta):
	movement()

func movement():
	if Input.is_action_pressed("ui_up"):
		position.y -= 2
	elif Input.is_action_pressed("ui_down"):
		position.y += 2
	elif Input.is_action_pressed("ui_left"):
		position.x -= 2
	elif Input.is_action_pressed("ui_right"):
		position.x += 2
