extends Sprite2D

var yumo_move
var animation
var mode
var yumo_move_scale
var yumo_move_frame

# Called when the node enters the scene tree for the first time.
func _ready():
	yumo_move = get_node("..")
	yumo_move_scale = yumo_move.scale
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	yumo_move_frame = yumo_move.frame
	animation = yumo_move.animation
	mode = yumo_move.mode
	if animation == "draw(白楼剑)":
		rotation_degrees = -5
		position.y = 1
	elif animation == "draw(白楼剑)_reversal":
		rotation_degrees = 3
		position.y = -0.5
	elif animation == "stand":
		position.y = 0
		position.x = 2
		rotation_degrees = 0
	elif animation == "walk":
		if position.x > -0.5:
			position.x -= 0.1
		if yumo_move_frame  == 0:
			position.y -= 0.1
		elif yumo_move_frame  == 1:
			position.y -= 0.1
		elif yumo_move_frame  == 2:
			position.y -= 0.1
		elif yumo_move_frame  == 3:
			position.y += 0.1
		elif yumo_move_frame  == 4:
			position.y += 0.1
		elif yumo_move_frame  == 5:
			position.y += 0.1
		elif yumo_move_frame  == 6:
			position.y -= 0.1
		elif yumo_move_frame  == 7:
			position.y -= 0.1
		elif yumo_move_frame  == 8:
			position.y -= 0.1
		elif yumo_move_frame  == 9:
			position.y += 0.1
		elif yumo_move_frame  == 10:
			position.y += 0.1
		elif yumo_move_frame  == 11:
			position.y += 0.1
	
	scale = yumo_move_scale
	#print("position:",position)
	#print("yumo_move_frame",yumo_move_frame)
	#print("yumo_move_scale:",yumo_move_scale)
