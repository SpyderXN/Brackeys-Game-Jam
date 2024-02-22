extends CharacterBody2D

var active: bool = false
@export var speed: int = 400
var player_near: bool = false
var health = 50

func hit():
	print("hit")
	$AudioStreamPlayer2D.play()
	health -= 10

	if health <= 0:
		queue_free()

func _process(_delta):
	var direction = (Globals.player_position - position).normalized()
	velocity = direction * speed
	
	if active: 
		move_and_slide()
		look_at(Globals.player_position)


func _on_notice_area_body_entered(_body):
	active = true


func _on_notice_area_body_exited(_body):
	active = false


func _on_attack_area_body_entered(body):
	player_near = true
	if "damage" in body:
		body.damage()


func _on_attack_area_body_exited(_body):
	player_near = false
