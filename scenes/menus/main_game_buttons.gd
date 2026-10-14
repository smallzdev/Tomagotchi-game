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

# Food, water, and energy
# got the if statements written, now just needa fill it
# in next time I feel like it.

func foodButton_pressed():
	if Global.food <= 100:
		print("Food is less than 100, at " + str(Global.food))
		Global.food += 10
	elif Global.food >= 100:
		print("food is more than 100")
		Global.food = 100
	
func waterButton_pressed():
	if Global.water <= 100:
		pass
	elif Global.water >= 100:
		pass

func energyButton_pressed():
	if Global.energy <= 100:
		pass
	elif Global.water >= 100:
		pass
