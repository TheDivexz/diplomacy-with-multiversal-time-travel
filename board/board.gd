extends Node2D

@export var space_time : Vector2i = Vector2i(0,0)
@export var isActive : bool = true

enum power_name {AUSTRIA, ENGLAND, FRANCE, GERMANY, ITALY, RUSSIA, TURKEY, NONE}
var powers = {}
var army_node = preload("res://Units/Army/army.tscn")
var fleet_node = preload("res://Units/Fleet/fleet.tscn")

class Power:
	var name : power_name
	var color : Color
	var controlled_provinces = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func get_province(province_name : String):
	return $Provinces.get_node(province_name)

func create_army(controlled_power : power_name, location : String):
	var new_arm = army_node.instantiate()
	new_arm.position = get_province(location).center
	new_arm.controller = controlled_power
	new_arm.set_col(powers[controlled_power].color)
	$Units.add_child(new_arm)

func create_fleet(controlled_power : power_name, location : String):
	var new_fleet = fleet_node.instantiate()
	new_fleet.position = get_province(location).center
	new_fleet.controller = controlled_power
	new_fleet.set_col(powers[controlled_power].color)
	$Units.add_child(new_fleet)
