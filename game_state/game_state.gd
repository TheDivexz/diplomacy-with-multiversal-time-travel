extends Node2D

class_name GameState

@onready var game_manager = %game_manager
@onready var boards : Boards = $Boards

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(7):
		var provs : Array = game_manager.setup[i]['home_provinces']
		for prov in provs:
			boards.set_province_ownership(Vector2i(0,0),i,prov)
