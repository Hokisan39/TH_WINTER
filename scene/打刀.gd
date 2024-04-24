extends Sprite2D

var image_dadao: Texture = preload("res://picture/character/yumo/dadao.png")
var image_dadao_2: Texture = preload("res://picture/character/yumo/dadao_2.png")
var yumo_move
var animation
var mode
var yumo_move_scale
var yumo_move_frame
var rotation_degrees_change

# Called when the node enters the scene tree for the first time.
func _ready():
	yumo_move = get_node("..")
	yumo_move_scale = yumo_move.scale
	rotation_degrees_change = 0.1
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	yumo_move_frame = yumo_move.frame
	animation = yumo_move.animation
	mode = yumo_move.mode
	
	if animation == "draw(白楼剑)":
		set_texture(image_dadao_2)
		position.x = -5
		position.y += 0.05
		rotation_degrees += 0.1
	elif animation == "draw(白楼剑)_reversal":
		set_texture(image_dadao_2)
		position.x = -5
		position.y -= 0.05
		rotation_degrees -= 0.1
	elif mode == "fight(白楼剑)":
		set_texture(image_dadao_2)
	else :
		set_texture(image_dadao)
	if animation == "stand":
		position.y = 4
		position.x = 0
		rotation_degrees = 0
	elif animation == "walk":
		if position.x > -3:
			position.x -= 0.1
		if yumo_move_frame  == 0:
			position.y -= 0.1
			rotation_degrees -= rotation_degrees_change
		elif yumo_move_frame  == 1:
			position.y -= 0
			rotation_degrees -=rotation_degrees_change
		elif yumo_move_frame  == 2:
			position.y -= 0.1
			rotation_degrees -= rotation_degrees_change
		elif yumo_move_frame  == 3:
			position.y += 0
			rotation_degrees += rotation_degrees_change
		elif yumo_move_frame  == 4:
			position.y += 0
			rotation_degrees += rotation_degrees_change
		elif yumo_move_frame  == 5:
			position.y += 0
			rotation_degrees += rotation_degrees_change
		elif yumo_move_frame  == 6:
			position.y += 0.1
			rotation_degrees -= rotation_degrees_change
		elif yumo_move_frame  == 7:
			position.y -= 0
			rotation_degrees -= rotation_degrees_change
		elif yumo_move_frame  == 8:
			position.y -= 0.1
			rotation_degrees -= rotation_degrees_change
		elif yumo_move_frame  == 9:
			position.y += 0.1
			rotation_degrees += rotation_degrees_change
		elif yumo_move_frame  == 10:
			position.y += 0
			rotation_degrees += rotation_degrees_change
		elif yumo_move_frame  == 11:
			position.y += 0.1
			rotation_degrees += rotation_degrees_change
	
	scale = yumo_move_scale
	#print("position:",position)
	#print("yumo_move_frame",yumo_move_frame)
	#print("yumo_move_scale:",yumo_move_scale)
