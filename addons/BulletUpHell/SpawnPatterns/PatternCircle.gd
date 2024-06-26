@tool
@icon("res://addons/BulletUpHell/Sprites/NodeIcons6.png")
extends Pattern
class_name PatternCircle

@export_group("Circle")
@export var radius = 0
@export_range(0, 360, 0.001, "suffix:°", "radians_as_degrees") var angle_total:float = 2*PI
@export_range(0, 360, 0.001, "suffix:°", "radians_as_degrees") var angle_decal:float = 0
@export var symmetric:bool = false
@export var center:int = 0
@export var symmetry_type = 0


func _init():
	resource_name = "PatternCircle"
