extends Node2D

@export var space_time : Vector2i = Vector2i(0,0)
@export var isActive : bool = true

enum power_name {AUSTRIA, ENGLAND, FRANCE, GERMANY, ITALY, RUSSIA, TURKEY, NONE}
var powers = {}

class Power:
	var name : power_name
	var color : Color
	var controlled_provinces = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func get_province(province_name : String):
	return $Provinces.get_node(province_name)
