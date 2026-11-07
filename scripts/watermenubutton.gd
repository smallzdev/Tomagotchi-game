extends Button


# Called when the node enters the scene tree for the first time.
# detects button presses
func _ready() -> void:
	%easyButton.pressed.connect(easy_button_pressed)
	%mediumButton.pressed.connect(medium_button_pressed)
	%hardButton.pressed.connect(hard_button_pressed)
	
# runs the button script thing
func easy_button_pressed():
	Global.waterDifficulty = 1
	get_tree().change_scene_to_file("res://scenes/menus/water_minigame.tscn")
func medium_button_pressed():
	Global.waterDifficulty = 2
	get_tree().change_scene_to_file("res://scenes/menus/water_minigame.tscn")
func hard_button_pressed():
	Global.waterDifficulty = 3
	get_tree().change_scene_to_file("res://scenes/menus/water_minigame.tscn")
