extends Camera2D

var speed = 500
var cam_direction = Vector2(0,0)
var button_size := Vector2(70,31)

func _physics_process(delta):
	cam_direction.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	cam_direction.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	cam_direction = cam_direction.normalized()
	position += cam_direction * speed * delta
	zoom()
	
func zoom():
	if Input.is_action_just_released('wheel_down'):
		set_zoom(get_zoom() - Vector2(0.25, 0.25))
	if Input.is_action_just_released('wheel_up'):
		set_zoom(get_zoom() + Vector2(0.25, 0.25))
