extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Button".pressed.connect(_on_button_pressed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_button_pressed():
	print("按钮触发")
