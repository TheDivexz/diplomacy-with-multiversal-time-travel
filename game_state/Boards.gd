extends Node2D
class_name Boards

@onready var game_manager = %game_manager

@onready var boards = {
	Vector2i(0,0) : $Start
}

# Which boards are active. only needs to track which one is the furtherst along since all the others
# happened in the past.
var active_boards = {
	0 : 0
}

# keeps track of the highest universe in both directions
var active_above = 0
var active_below = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func set_province_ownership(location : Vector2i, power : game_manager.power_name, province : String):
	boards[location].set_province_ownership(power,province)
	
func get_province(location : Vector2i, province: String):
	return boards[location].get_province(province)
