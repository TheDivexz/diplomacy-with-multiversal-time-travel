extends Node2D
class_name Boards

@onready var game_manager = %game_manager

@onready var boards = {
	Vector2i(0,0) : $Start
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func set_province_ownership(location : Vector2i, power : game_manager.power_name, province : String):
	boards[location].set_province_ownership(power,province)
