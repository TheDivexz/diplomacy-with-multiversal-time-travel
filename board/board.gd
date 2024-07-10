extends Node2D
class_name Board

@export var space_time : Vector2i = Vector2i(0,0)
@export var isActive : bool = true

@onready var game_manager = %game_manager

var powers = {}
var army_node = preload("res://Units/Army/army.tscn")
var fleet_node = preload("res://Units/Fleet/fleet.tscn")

var province_ownership = {}

func _ready():
	province_ownership = {
		game_manager.power_name.AUSTRIA : [],
		game_manager.power_name.ENGLAND : [],
		game_manager.power_name.FRANCE : [],
		game_manager.power_name.GERMANY : [],
		game_manager.power_name.ITALY : [],
		game_manager.power_name.RUSSIA : [],
		game_manager.power_name.TURKEY : [],
	}

func set_province_ownership(power : game_manager.power_name, province : String):
	province_ownership[power].append(get_province(province))
	get_province(province).color = Color(game_manager.setup[power]['color'])


func get_province(province_name : String):
	return $Provinces.get_node(province_name)
