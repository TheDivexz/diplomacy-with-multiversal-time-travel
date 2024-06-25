extends Polygon2D

enum terrain {LAND, SEA, COASTAL, IMPASSABLE }

@export var supply_center : bool
@export var terrain_type : terrain
var center : Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	center = centroid(polygon)
	var border : Line2D = Line2D.new()
	border.points = polygon
	border.default_color = Color.BLACK
	border.closed = true
	border.width = 1
	add_child(border)
	if terrain_type == terrain.SEA:
		color = Color("99ccff")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Finds the centroid of the polygon
func centroid(points : PackedVector2Array) -> Vector2:
	var x_sum = 0
	var y_sum = 0
	var count = 0
	for point in points:
		x_sum += point.x
		y_sum += point.y
		count += 1
	return Vector2((x_sum/count),(y_sum/count))
