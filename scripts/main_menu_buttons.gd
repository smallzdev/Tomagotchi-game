extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var playButton = %playButton
	var creditsButton = %creditsButton
	var settingsButton = %settingsButton
	var hardcoreButton = %hardcoreButton
	playButton.pressed.connect(play_button_pressed)
	creditsButton.pressed.connect(credits_button_pressed)
	settingsButton.pressed.connect(settings_button_pressed)
	hardcoreButton.pressed.connect(hardcore_button_pressed)
	
func play_button_pressed():
	get_tree().call_deferred("change_scene_to_file", "res://scenes/gacha.tscn")

func credits_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/credits.tscn")
	
func settings_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/settings.tscn")
	
func hardcore_button_pressed():
	Global.hardcore = true
	get_tree().call_deferred("change_scene_to_file", "res://scenes/gacha.tscn")
