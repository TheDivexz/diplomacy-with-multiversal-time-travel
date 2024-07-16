extends Node2D
class_name Orders

@onready var boards : Boards = $"../Boards"
var move = preload("res://orders/move/arrow.tscn")
var hold = preload("res://orders/hold/hold.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func calc_distance(p1 : Vector2, p2 : Vector2):
	return sqrt(pow(p1.x - p2.x,2) + pow(p1.y - p2.y,2))

func new_move_order(starting_board : Vector2i, ending_board : Vector2i, starting_province: String, ending_province : String):
	var center_1 : Vector2 = boards.get_province(starting_board,starting_province).center
	var center_2 : Vector2 = boards.get_province(ending_board,ending_province).center
	var new_move : Arrow = move.instantiate()
	new_move.position = center_1
	new_move.draw_arrow(Vector2(center_2.x-center_1.x,center_2.y-center_1.y))
	add_child(new_move)

func new_hold_order(board : Vector2i, province: String):
	var center : Vector2 = boards.get_province(board,province).center
	var new_hold = hold.instantiate()
	new_hold.position = center
	add_child(new_hold)
