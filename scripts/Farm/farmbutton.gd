extends Button

func _ready() -> void:
	var farmButton = %farmbutton
	var waterMinigameButton = %waterMinigameButton
	
func _on_waterminigamebutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/water.tscn")

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/farm.tscn")
