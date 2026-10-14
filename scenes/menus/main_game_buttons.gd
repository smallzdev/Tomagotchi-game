extends Button

var petsMenu = preload("res://scenes/menus/pets.tscn")

func _ready() -> void:
	var petsButton = %petsButton
	var foodButton = %foodButton
	var waterButton = %waterButton
	var energyButton = %energyButton
	petsButton.pressed.connect(petsButton_pressed)
	foodButton.pressed.connect(foodButton_pressed)
	waterButton.pressed.connect(waterButton_pressed)
	energyButton.pressed.connect(energyButton_pressed)
	
func petsButton_pressed():
	get_tree().change_scene_to_packed(petsMenu)

func foodButton_pressed():
	pass
	
func waterButton_pressed():
	pass

func energyButton_pressed():
	pass
