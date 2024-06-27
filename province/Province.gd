class_name Province

extends Polygon2D

enum terrain {LAND, SEA, COASTAL, IMPASSABLE }

@export var full_name : String
@export var supply_center : Polygon2D
@export var terrain_type : terrain
@export var neighbors : Array[Polygon2D]
var center : Vector2
const HIGHLIGHT_OFFSET := 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	$Line2D.points = polygon
	$Area2D/CollisionPolygon2D.polygon = polygon
	if terrain_type == terrain.SEA:
		color = Color("99ccff")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_ownership(control,col):
	if supply_center == null:
		return
	supply_center.controller = control
	supply_center.color = col
	color = col


func _on_area_2d_mouse_entered():
	# Highlights province on Hover
	color = Color(color.r - HIGHLIGHT_OFFSET,color.g - HIGHLIGHT_OFFSET, color.b - HIGHLIGHT_OFFSET)


func _on_area_2d_mouse_exited():
	# Stops Highlighting when mouse moves away
	color = Color(color.r + HIGHLIGHT_OFFSET,color.g + HIGHLIGHT_OFFSET, color.b + HIGHLIGHT_OFFSET)
