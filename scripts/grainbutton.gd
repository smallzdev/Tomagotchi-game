extends Button

func _ready() -> void:
	var grainButton = %grainbutton
	grainButton.pressed.connect(grain_button_pressed)

func grain_button_pressed():
	get_tree().change_scene_to_file("res://scenes/collectgrain.tscn")
