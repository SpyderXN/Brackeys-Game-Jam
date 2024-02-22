extends CanvasLayer


func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Outside/outside_scene.tscn")


func _on_exit_pressed():
	get_tree().quit()


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/Credits/credits.tscn")
