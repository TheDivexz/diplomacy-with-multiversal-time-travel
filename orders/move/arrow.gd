extends Node2D
class_name Arrow

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func draw_arrow(point : Vector2):
	$tail.add_point(point)
	$head.position = point
	var theta = -atan(point.x/point.y)
	if point.y < 0:
		theta += PI
	$head.rotation = theta 
