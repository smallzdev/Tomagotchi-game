extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var backButton = %backButton
	backButton.pressed.connect(backButton_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func backButton_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")
