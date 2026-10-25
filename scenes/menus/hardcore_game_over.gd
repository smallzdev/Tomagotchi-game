extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scoreLabel = $"."
	scoreLabel.text = "Score: " + str(Global.score) + "
	High Score: " + str(Global.hardcoreHighScore)
