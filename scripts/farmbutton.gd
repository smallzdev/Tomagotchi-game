extends Button

func _ready() -> void:
	var farmButton = %farmbutton
	farmButton.pressed.connect(farm_button_pressed)

func farm_button_pressed():
	get_tree().change_scene_to_file("res://scenes/farm.tscn")
