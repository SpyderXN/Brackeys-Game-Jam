extends Main

func _process(_delta):
	if Input.is_action_pressed("Next"):
		get_tree().change_scene_to_file("res://scenes/Menu/menu.tscn")

func _on_game_end_body_entered(body):
	if(body.name == "Player"):
		var tween = get_tree().create_tween()
		tween.tween_property($Player, "speed", 0, 1)
		TransitionLayer.change_scene("res://scenes/EndScreen/end_screen.tscn")
