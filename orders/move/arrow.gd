extends Node2D
class_name Arrow

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func set_tail(distance):
	$tail.add_point(Vector2(0,distance))
