extends Node

signal health_change

var player_position: Vector2

var player_health: int = 100 :
	set(value):
		player_health = value
		health_change.emit()
