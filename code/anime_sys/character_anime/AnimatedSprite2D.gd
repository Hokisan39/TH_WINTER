extends AnimatedSprite2D
var is_jumping = false
var is_drawing = false
var mode
func _ready():
	mode = "normal"
	animation = "stand"
func _process(delta):
	#print("animation:",self.animation,"    ","frame:",self.frame)
	if is_jumping or is_drawing:
		return # 如果正在跳跃，忽略其他输入
	var animation = "stand" # 默认动画
	if Input.is_action_just_pressed("move_up") and mode == "normal":
		animation = "jump"
		is_jumping = true
	elif Input.is_action_just_pressed("2") and mode == "normal":
		animation = "draw(白楼剑)"
		is_drawing = true
		mode = "fight(白楼剑)"
	elif Input.is_action_pressed("move_right") and mode == "normal":
		animation = "walk"
		scale.x = 1
	elif Input.is_action_pressed("move_left") and mode == "normal":
		animation = "walk"
		scale.x = -1
	elif mode == "normal":
		animation = "stand"
	elif Input.is_action_pressed("1") and mode == "fight(白楼剑)":
		animation = "draw(白楼剑)_reversal"
		is_drawing = true
		mode = "normal"
	elif Input.is_action_pressed("move_right") and mode == "fight(白楼剑)":
		animation = "walk(白楼剑)"
		scale.x = 1
	elif Input.is_action_pressed("move_left") and mode == "fight(白楼剑)":
		animation = "walk(白楼剑)"
		scale.x = -1
	elif mode == "fight(白楼剑)":
		animation = "stand(白楼剑)"
	
	print("mode: ", mode,  "speed_scale: ",speed_scale)
	play(animation)

func _on_animation_finished():
	print("animation_finish")
	if animation == "jump":
		is_jumping = false
	elif animation == "draw(白楼剑)":
		is_drawing = false
	elif animation == "draw(白楼剑)_reversal":
		is_drawing = false
