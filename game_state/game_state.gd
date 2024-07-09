extends Node2D

class_name GameState

@onready var game_manager = %game_manager
@onready var boards : Boards = $Boards
@onready var units : Units = $Units

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(7):
		# Generate Province Ownership
		var provs : Array = game_manager.setup[i]['home_provinces']
		for prov in provs:
			boards.set_province_ownership(Vector2i(0,0),i,prov)
		# Creates Armies
		var armies = game_manager.setup[i]['Armies']
		for army in armies:
			units.generate_unit(Vector2i(0,0),army,game_manager.unit_types.ARMY,i)
		# Creates Fleets
		var fleets = game_manager.setup[i]['Fleets']
		for fleet in fleets:
			units.generate_unit(Vector2i(0,0),fleet,game_manager.unit_types.FLEET,i)
