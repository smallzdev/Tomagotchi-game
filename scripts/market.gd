extends Node2D

const normaleggcost = 250
const commoneggcost = 300
const rareeggcost = 500
const legendaryeggcost = 999

@onready var buybutton1 = $buybutton1
@onready var backbutton = $backbutton

@onready var errorpanel = $errorpanel

@onready var pricelabel = $priceboard/price
@onready var pricelabel2 = $priceboard2/price
@onready var pricelabel3 = $priceboard3/price
@onready var pricelabel4 = $priceboard4/price


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buybutton1.pressed.connect(buybutton1_button_pressed)
	backbutton.pressed.connect(backbutton_button_pressed)
	
	pricelabel.text = str(normaleggcost)
	pricelabel2.text = str(commoneggcost)
	pricelabel4.text = str(rareeggcost)
	pricelabel3.text = str(legendaryeggcost)

func buybutton1_button_pressed():
	if Global.grains >= normaleggcost:
		Global.remove_grains(normaleggcost)
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

func _on_buybutton_2_pressed() -> void:
	if Global.grains >= commoneggcost:
		Global.remove_grains(commoneggcost)
		Global.hatched = false
		Global.pet = [1, 2, 3, 4, 6]
		var commonrandom = Global.pet.pick_random()
		Global.pet = commonrandom
		print(Global.pet)
		Global.set("pet" + str(Global.pet) + "owned", true)
		get_tree().change_scene_to_file("res://scenes/commongacha.tscn")
		
	else:
		errorpanel.visible = true

func _on_buybutton_3_pressed() -> void:
	if Global.grains >= legendaryeggcost:
		Global.remove_grains(legendaryeggcost)
		Global.hatched = false
		Global.pet = [5, 7, 9]
		var legendaryrandom = Global.pet.pick_random()
		Global.pet = legendaryrandom
		print(Global.pet)
		Global.set("pet" + str(Global.pet) + "owned", true)
		get_tree().change_scene_to_file("res://scenes/legendarygacha.tscn")
	else:
		errorpanel.visible = true

func _on_buybutton_4_pressed() -> void:
	if Global.grains >= rareeggcost:
		Global.remove_grains(rareeggcost)
		Global.hatched = false
		Global.pet = [10]
		var rarerandom = Global.pet.pick_random()
		Global.pet = rarerandom
		print(Global.pet)
		Global.set("pet" + str(Global.pet) + "owned", true)
		get_tree().change_scene_to_file("res://scenes/raregacha.tscn")
	else:
		errorpanel.visible = true


func backbutton_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")

func _on_errorbutton_pressed() -> void:
	errorpanel.visible = false
