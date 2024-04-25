extends CharacterBody2D

const SPEED = 700.0

@export var side = "p1"

func _physics_process(_delta):
	

	var direction
	
	if side == "p1":
		direction = _get_axis(KEY_W ,KEY_S)
		
	else :
		direction = _get_axis(KEY_UP ,KEY_DOWN)
	
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y ,0 ,SPEED)
		
	move_and_slide()
	

func _get_axis(up ,down):
	if Input.is_key_pressed(up):
		return -1
	elif Input.is_key_pressed(down):
		return 1



func _on_area_2d_body_entered(body):
	body.direction.x *= -1
	Main.side = side
