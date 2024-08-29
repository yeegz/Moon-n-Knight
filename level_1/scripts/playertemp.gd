extends CharacterBody2D
class_name player

var speed = 2
var direction = 1

func _process(delta):
	movement_up()
	movement_side()


func movement_up():
	if Input.is_action_pressed("ui_up"):
		position.y -= 2
	elif Input.is_action_pressed("ui_down"):
		position.y += 2
	
	move_and_slide()

func movement_side():
	if Input.is_action_pressed("ui_left"):
		position.x += speed*(-direction)
	elif Input.is_action_pressed("ui_right"):
		position.x += speed*(direction)
