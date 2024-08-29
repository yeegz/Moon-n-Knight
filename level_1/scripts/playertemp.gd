extends CharacterBody2D
class_name player

var speed = 2
var direction = 1
@onready var animation = $AnimatedSprite2D

func _process(delta):
	movement_up()
	movement_side()
	animations()
	update_position()

#------------------Movement-----------------------------
func movement_up():
	if Input.is_action_pressed("ui_up"):
		position.y -= speed
	elif Input.is_action_pressed("ui_down"):
		position.y += speed

func movement_side():
	if Input.is_action_pressed("ui_left"):
		position.x += speed*(-direction)
	elif Input.is_action_pressed("ui_right"):
		position.x += speed*(direction)

#------------------Animation----------------------------
func animations():
	if Input.is_action_just_pressed("ui_left"):
		animation.flip_h = true
	elif Input.is_action_just_pressed("ui_right"):
		animation.flip_h = false
	
	if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_right") or Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_down"):
		animation.play("walking")
	else:
		animation.play("idle")

#---------to update position of camera--------------------
func update_position():
	global.player_position = position
