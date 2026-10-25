extends Label

@onready var scoreLabel = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scoreLabel.text = "Score: " + str(Global.hardcoreTimer) + "
	High Score: " + str(Global.hardcoreHighScore)
