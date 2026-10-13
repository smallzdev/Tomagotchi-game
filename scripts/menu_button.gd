extends Button

func _ready() -> void:
	var menuButton = %menuButton 
	menuButton.pressed.connect(menu_button_pressed)

func menu_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_menu.tscn")
