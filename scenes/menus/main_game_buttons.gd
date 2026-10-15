extends Button

var petsMenu = preload("res://scenes/menus/pets.tscn")
@onready var statText = %statTextLabel

func _ready() -> void:
	# button variables
	var petsButton = %petsButton
	var foodButton = %foodButton
	var waterButton = %waterButton
	var energyButton = %energyButton
	
	# when clicked it runs the functions
	petsButton.pressed.connect(petsButton_pressed)
	foodButton.pressed.connect(foodButton_pressed)
	waterButton.pressed.connect(waterButton_pressed)
	energyButton.pressed.connect(energyButton_pressed)
	statUpdate()
	
# changes menu to the pet inventory thing
func petsButton_pressed():
	get_tree().change_scene_to_packed(petsMenu)

# Food, water, and energy
# got the if statements written, now just needa fill it
# in next time I feel like it.

# Note: this might be a bit confusing, check
# pet_sprite.gd file for comments on how it all works.
func foodButton_pressed():
	if Global.food <= 90:
		print("Food is less than 100, at " + str(Global.food))
		Global.food += 10
	elif Global.food > 90 and Global.food <= 100:
		Global.food = 100
	elif Global.food >= 100:
		print("food is more than 100")
		Global.food = 100
	statUpdate()
	
func waterButton_pressed():
	if Global.water <= 90:
		Global.water += 10
	elif Global.water > 90 and Global.water < 100:
		Global.water = 100
	elif Global.water >= 100:
		Global.water = 100
	statUpdate()

func energyButton_pressed():
	if Global.energy <= 90:
		Global.energy += 10
	elif Global.energy > 90 and Global.energy < 100:
		Global.energy = 100
	elif Global.water >= 100:
		Global.water = 100
	statUpdate()
		
# when calls, updates the text.
func statUpdate():
	statText.text = "Food: " + str(Global.food) + "
	Water: " + str(Global.water) + "
	Energy: " + str(Global.energy) + "
	Love: " + str(Global.love)
