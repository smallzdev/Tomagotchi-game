extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var buybutton1 = $buybutton1
	buybutton1.pressed.connect(buybutton1_button_pressed)
	
	var backbutton = $backbutton
	backbutton.pressed.connect(backbutton_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func buybutton1_button_pressed():
	### remove hardcode later
	if Global.grains >= 5:
		Global.remove_grains(5)
		print("bought")
	else: 
		#use panel but print for now
		print("not enough")

func backbutton_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")
