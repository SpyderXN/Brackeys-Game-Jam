extends Node2D
class_name Main

var laser_scene = preload("res://scenes/Laser/laser.tscn")

func _on_player_laser(laser_position, player_direction):
	var laser = laser_scene.instantiate() as Area2D
	laser.position = laser_position
	laser.direction = player_direction
	laser.rotation_degrees = rad_to_deg(player_direction.angle()) + 90
	$Projectiles.add_child(laser)
