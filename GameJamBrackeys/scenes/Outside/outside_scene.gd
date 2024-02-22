extends Main


func _on_gate_player_entered(_body):
	var tween = get_tree().create_tween()
	tween.tween_property($Player, "speed", 0, 1)
	TransitionLayer.change_scene("res://scenes/Inside/inside.tscn")
