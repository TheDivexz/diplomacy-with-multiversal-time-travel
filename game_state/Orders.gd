extends Node2D
class_name Orders

@onready var boards : Boards = $"../Boards"
var move = preload("res://orders/move/arrow.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func calc_distance(p1 : Vector2, p2 : Vector2):
	return sqrt(pow(p1.x - p2.x,2) + pow(p1.y - p2.y,2))

func new_move_order(starting_board : Vector2i, ending_board : Vector2i, starting_province: String, ending_province : String):
	var center_1 : Vector2 = boards.get_province(starting_board,starting_province).center
	var center_2 : Vector2 = boards.get_province(ending_board,ending_province).center
	var new_move : Arrow = move.instantiate()
	var dist = calc_distance(center_1, center_2)
	var arrow_vector = Vector2(center_2.x-center_1.x,center_2.y-center_1.y)
	var unit_vector = arrow_vector / dist
	center_2 -= unit_vector * 6
	#center_1 += unit_vector
	new_move.position = center_2
	var theta = acos(abs(center_2.x-center_1.x)/dist)
	if center_2.x < center_1.x:
		theta *= -1
	dist = calc_distance(center_1, center_2)
	new_move.set_tail(dist)
	new_move.rotation = theta * 2
	add_child(new_move)
