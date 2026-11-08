extends Node2D

const normaleggcost = 250

@onready var buybutton1 = $buybutton1
@onready var backbutton = $backbutton
@onready var errorpanel = $errorpanel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buybutton1.pressed.connect(buybutton1_button_pressed)
	backbutton.pressed.connect(backbutton_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func buybutton1_button_pressed():
	if Global.grains >= normaleggcost:
		Global.remove_grains(normaleggcost)
		print("bought")
		Global.hatched = false
		randomize()
		var gacha = randi_range(1, 100)
		if gacha >= 90:
			print("legendary")
			Global.pet = [5, 7, 9]
			var legendaryrandom = Global.pet.pick_random()
			Global.pet = legendaryrandom
		elif gacha >= 61:
			print("rare")
			Global.pet = [10]
			var rarerandom = Global.pet.pick_random()
			Global.pet = rarerandom
		else:
			print("common")
			Global.pet = [1, 2, 3, 4, 6]
			var commonrandom = Global.pet.pick_random()
			Global.pet = commonrandom
		print(gacha)
		print(Global.pet)
		Global.set("pet" + str(Global.pet) + "owned", true)
		get_tree().change_scene_to_file("res://scenes/gacha.tscn")
	else: 
		errorpanel.visible = true

func backbutton_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")

func _on_errorbutton_pressed() -> void:
	errorpanel.visible = false
