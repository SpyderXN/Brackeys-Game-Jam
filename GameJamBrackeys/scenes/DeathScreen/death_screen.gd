extends Node

func _process(_delta):
	if Input.is_action_pressed("Restart"):
		TransitionLayer.change_scene("res://scenes/Outside/outside_scene.tscn")
	
	if Input.is_action_pressed("Next"):
		TransitionLayer.change_scene("res://scenes/Menu/menu.tscn")
