extends Node2D
class_name Unit

var controller
enum orders {HOLD, MOVE, CONVOY, SUPPORT}

@export var current_order : orders

func set_col(col : Color):
	pass
