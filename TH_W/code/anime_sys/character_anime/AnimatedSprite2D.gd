extends AnimatedSprite2D
var is_jumping = false


func _ready():
	self.animation = "stand"

func _process(delta):
	#print("animation:",self.animation,"    ","frame:",self.frame)
	if is_jumping:
		return # 如果正在跳跃，忽略其他输入
	var animation = "stand" # 默认动画
	if Input.is_action_just_pressed("move_up"):
		animation = "jump"
		is_jumping = true
	elif Input.is_action_pressed("move_right"):
		animation = "walk"
		scale.x = 1
	elif Input.is_action_pressed("move_left"):
		animation = "walk"
		scale.x = -1
	play(animation)

func _on_animation_finished():
	print("animation_finish")
	if animation == "jump":
		play("stand")
		is_jumping = false
