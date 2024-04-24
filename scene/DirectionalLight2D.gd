extends DirectionalLight2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var pause = false
	#pause.connect("pause",Pause)
	energy = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("esc") and energy == 0:
		energy = 1
		#emit_signal("pause")
		return
	
	if Input.is_action_just_pressed("esc") and energy == 1:
		energy = 0
		
func Pause():
	print("pause")
	pass
