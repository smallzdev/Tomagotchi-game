extends Button

@onready var gacha = preload("res://scenes/gacha.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var playButton = %playButton
	var creditsButton = %creditsButton
	var settingsButton = %settingsButton
	playButton.pressed.connect(play_button_pressed)
	creditsButton.pressed.connect(credits_button_pressed)
	settingsButton.pressed.connect(settings_button_pressed)
	
func play_button_pressed():
	get_tree().change_scene_to_packed(gacha)

func credits_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/credits.tscn")
	
func settings_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/settings.tscn")
