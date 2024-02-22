extends CanvasLayer

@onready var health_bar: ProgressBar = $MarginContainer/ProgressBar

func _ready():
	health_bar.value = 100
	Globals.connect("health_change", update_health_text)

func update_health_text():
	health_bar.value = Globals.player_health
