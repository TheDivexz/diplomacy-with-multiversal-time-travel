extends Polygon2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var border : Line2D = Line2D.new()
	border.points = polygon
	border.default_color = Color.BLACK
	border.closed = true
	border.width = 0.11
	add_child(border)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
