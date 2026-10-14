extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var backButton = %backButton
	backButton.pressed.connect(back_button_pressed)
	
func back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")
