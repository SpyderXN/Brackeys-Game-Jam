extends CanvasLayer



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("Next"):
		get_tree().change_scene_to_file("res://scenes/Menu/menu.tscn")
