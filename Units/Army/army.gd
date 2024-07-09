extends Unit

class_name Army

func set_col(col : Color):
	$outer_circle/Inner_Circle.material.set_shader_parameter("unit_col",Vector3(col.r,col.g,col.b))
