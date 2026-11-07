extends Button

func _ready() -> void:
	var farmButton = %farmbutton
	var waterMinigameButton = %waterMinigameButton
	farmButton.pressed.connect(farm_button_pressed)

func farm_button_pressed():
	get_tree().change_scene_to_file("res://scenes/farm.tscn")
	


func _on_waterminigamebutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/water_minigame.tscn")
