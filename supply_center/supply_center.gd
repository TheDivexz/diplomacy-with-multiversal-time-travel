extends Polygon2D

enum power_name {AUSTRIA, ENGLAND, FRANCE, GERMANY, ITALY, RUSSIA, TURKEY, NONE}
@export var controller : power_name
# Called when the node enters the scene tree for the first time.
func _ready():
	$Line2D.points = polygon


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
