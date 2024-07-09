extends Node2D
class_name Units

@onready var game_manager = %game_manager
@onready var units = {}
@onready var boards = $"../Boards"
var army_node = preload("res://Units/Army/army.tscn")
var fleet_node = preload("res://Units/Fleet/fleet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# returns a string to identity the unit such as BUD 0 0
func generate_location_string(location : Vector2i, province : String):
	var output = province + ' '
	output += str(location.x) + ' '
	output += str(location.y)
	return output

func generate_unit(location : Vector2i, province : String, unit_type : game_manager.unit_types, owner : game_manager.power_name):
	var location_string = generate_location_string(location,province)
	var new_unit
	if unit_type == game_manager.unit_types.ARMY:
		new_unit = army_node.instantiate()
	else:
		new_unit = fleet_node.instantiate()
	new_unit.position = boards.get_province(location,province).center
	new_unit.controller = owner
	new_unit.set_col(Color(game_manager.setup[owner]['color']))
	add_child(new_unit)
	units[location_string] = new_unit
