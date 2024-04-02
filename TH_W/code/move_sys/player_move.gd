extends CharacterBody2D
@export var speed = 50
@export var jump_force = -500
var gravity = 9.8
var time = 0
func _ready():
	pass

func _physics_process(delta):
	time += 1
	velocity.x = 0
	
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
	print("position:",position)
	
	
func _process(delta):
	rotation_degrees = 0
		
		
