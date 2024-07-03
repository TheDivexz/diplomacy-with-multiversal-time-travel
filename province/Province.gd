class_name Province

extends Polygon2D

enum terrain {LAND, SEA, COASTAL, IMPASSABLE }

@export var full_name : String
@export var supply_center : Polygon2D
@export var terrain_type : terrain
@export var neighbors : Array[Polygon2D]

var center : Vector2
var occupying_unit : Unit

const HIGHLIGHT_OFFSET := 0.1
const SEA_COLOR := Color("99ccff")
# Called when the node enters the scene tree for the first time.
var arm = preload("res://Units/Army/army.tscn")
func _ready():
	center = centroid()
	$Line2D.points = polygon
	$Area2D/CollisionPolygon2D.polygon = polygon
	if terrain_type == terrain.SEA:
		color = SEA_COLOR


func set_ownership(control,col):
	if supply_center == null:
		return
	supply_center.controller = control
	supply_center.color = col
	color = col

func cross_product(p1: Vector2, p2 : Vector2):
	return ((p1.x * p2.y) - (p2.x * p1.y))

func centroid():
	#Paul Bourke's Calculating the area and centroid of a polygon
	# First find the area of the polygon
	var area := 0.0
	for i in polygon.size() - 1:
		area += cross_product(polygon[i],polygon[i+1])
	area += cross_product(polygon[polygon.size() - 1],polygon[0])
	area /= 2
	#area = abs(area)
	area = 1 / (6 * area)
	var c := Vector2(0,0)
	for i in polygon.size() - 1:
		var cross = cross_product(polygon[i],polygon[i+1])
		c.x += ((polygon[i].x + polygon[i+1].x) * cross)
		c.y += ((polygon[i].y + polygon[i+1].y) * cross)
	var cross = cross_product(polygon[polygon.size() - 1],polygon[0])
	c.x += ((polygon[polygon.size() - 1].x + polygon[0].x) * cross)
	c.y += ((polygon[polygon.size() - 1].y + polygon[0].y) * cross)
	c.x *= area
	c.y *= area
	return c

func _on_area_2d_mouse_entered():
	# Highlights province on Hover
	color = Color(color.r - HIGHLIGHT_OFFSET,color.g - HIGHLIGHT_OFFSET, color.b - HIGHLIGHT_OFFSET)


func _on_area_2d_mouse_exited():
	# Stops Highlighting when mouse moves away
	color = Color(color.r + HIGHLIGHT_OFFSET,color.g + HIGHLIGHT_OFFSET, color.b + HIGHLIGHT_OFFSET)
