extends CharacterBody2D
@export var speed = 50
@export var jump_force = -500
var gravity = 9.8
var time = 0
var yumo_move
func _ready():
	yumo_move = get_node("../yumo/yumo_move")

func _physics_process(delta):
	time += 1
	velocity.x = 0
	
	if yumo_move.animation == "draw(白楼剑)":
		speed = 30
	elif yumo_move.animation == "draw(白楼剑)_reversal":
		speed = 30
	else:
		speed = 50
	
	if is_on_floor():
		time = 0
	if Input.is_action_pressed("move_right"):
		velocity.x = speed
	if Input.is_action_pressed("move_left"):
		velocity.x = -speed
	if Input.is_action_pressed("move_down"):
		pass
	if Input.is_action_just_pressed("move_up") and velocity.y == 0:
		velocity.y = jump_force
	
	
	velocity.y += gravity * time
	move_and_slide()
	
	#print("time:",time)
	#print("velocity:",velocity)
	#print("position:",position)

func _process(delta):
	rotation_degrees = 0
	
		
		
