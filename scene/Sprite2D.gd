extends Sprite2D

var yumo
# Called when the node enters the scene tree for the first time.
func _ready():
	yumo = get_node("../yumo")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = yumo.position.x/3 + 800
	#print("bg_position:",position)
