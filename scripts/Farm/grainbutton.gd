extends Button

func _ready() -> void:
	var grainbutton = %grainbutton
	var marketbutton = %marketbutton
	var playbutton = %playbutton
	grainbutton.pressed.connect(grain_button_pressed)
	marketbutton.pressed.connect(market_button_pressed)

func grain_button_pressed():
	get_tree().change_scene_to_file("res://scenes/collectgrain.tscn")

func market_button_pressed():
	get_tree().change_scene_to_file("res://scenes/market.tscn")
