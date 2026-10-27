extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.hatched = false
	var scoreLabel = %scoreLabel
	var replay_button = %replayButton
	var menuButton = %menuButton
	scoreLabel.text = "Score: " + str(Global.hardcoreTimer) + "
	High Score: " + str(Global.hardcoreHighScore)
	replay_button.pressed.connect(_replay_button_pressed)
	menuButton.pressed.connect(_menu_button_pressed)
	

func _replay_button_pressed():
	Global.hardcoreTimer = 0
	get_tree().change_scene_to_file("res://scenes/gacha.tscn")

func _menu_button_pressed():
	Global.hardcore = false
	Global.hardcoreTimer = 0
	get_tree().call_deferred("change_scene_to_file", "res://menus/main_menu.tscn")
	
