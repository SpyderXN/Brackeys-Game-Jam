extends CharacterBody2D

@export var speed: int = 100

var can_laser: bool = true

signal laser(laser_position, player_direction)

func damage():
	print("damage")
	Globals.player_health -= 10
	if Globals.player_health <= 0:
		#Game ends
		var tween = get_tree().create_tween()
		tween.tween_property($".", "speed", 0, 0.2)
		TransitionLayer.change_scene("res://scenes/DeathScreen/death_screen.tscn")

func _process(_delta):
	#Player movement
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
	Globals.player_position = global_position
	look_at(get_global_mouse_position())
	
	
	#Player shooting laser
	if Input.is_action_pressed("fire") and can_laser:
		print("shoot")
		can_laser = false
		$LaserTimer.start()
		var laser_marker = $LaserMarker.global_position
		var player_direction = (get_global_mouse_position() - position).normalized()
		laser.emit(laser_marker, player_direction)


func _on_laser_timer_timeout():
	can_laser = true
