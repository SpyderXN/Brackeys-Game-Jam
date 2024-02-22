extends Area2D

@export var speed: int = 500
var direction = Vector2.UP

func _ready():
	$LaserVisibileTimer.start()
	$AudioStreamPlayer2D.play()

func _process(delta):
	position += direction * speed * delta


func _on_body_entered(body):
	if "hit" in body:
		body.hit()
	queue_free()


func _on_laser_visibile_timer_timeout():
	queue_free()
