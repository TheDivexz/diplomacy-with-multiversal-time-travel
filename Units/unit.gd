extends Node2D
class_name Unit

enum power_name {AUSTRIA, ENGLAND, FRANCE, GERMANY, ITALY, RUSSIA, TURKEY, NONE}
@export var controller : power_name = power_name.NONE
enum orders {HOLD, MOVE, CONVOY, SUPPORT}

@export var current_order : orders

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
