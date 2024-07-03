extends Unit

class_name Fleet

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_col(col : Color):
	$outer_triangle/Inner_Triangle.color = Color(col.r,col.g,col.b,0.75)
