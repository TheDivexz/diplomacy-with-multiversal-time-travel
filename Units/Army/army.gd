extends Unit

class_name Army

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_col(col : Color):
	$outer_circle/Inner_Circle.material.set_shader_parameter("unit_col",Vector3(col.r,col.g,col.b))
