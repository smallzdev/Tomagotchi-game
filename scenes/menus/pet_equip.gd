extends Area2D

# The pet name, and character on the side.
@onready var equippedPetName = %PetNameLabel
@onready var equippedPetSprite = %EquippedPetSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	loadEquippedPet()

# The following functions detect when a pets clicked,
# and equips them:

# Pet 1 - "Ginger Cat"
func _on_petsprite1_equip_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("colison detected")
		if Global.pet1owned == true:
			Global.pet = 1
			loadEquippedPet()
			print("Pet " + str(Global.pet) + " equipped!")
		else:
			print("Error, pet 1 is not owned")

# Pet 2 - "Grey Cat"
func _on_spritepet2_equipped(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.pet2owned == true:
			Global.pet = 2
			loadEquippedPet()
			print("Pet " + str(Global.pet) + " equipped!")
		else:
			print("Error, pet 2 is not owned")

# Pet 3 - "Cat3"
func _on_petsprite3_equipped(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.pet3owned == true:
			Global.pet = 3
			loadEquippedPet()
			print("Pet " + str(Global.pet) + " equipped!")
		else:
			print("Error, pet 3 is not owned.")

# Pet 4 - "Goldfish"
func _on_pet4_equipped(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.pet4owned == true:
			Global.pet = 4
			loadEquippedPet()
			print("Pet " + str(Global.pet) + " equipped!")
		else:
			print("Error, pet 4 is not owned.")

# Pet 5 - "Ghost"
func _on_pet5_equipped(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.pet5owned == true:
			Global.pet = 5
			loadEquippedPet()
			print("Pet " + str(Global.pet) + " equipped!")
		else:
			print("Error, pet 5 is not owned.")
	
# Pet 6 - "Pumpkin"
func _on_pet6_equipped(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.pet6owned == true:
			Global.pet = 6
			loadEquippedPet()
			print("Pet " + str(Global.pet) + " equipped!")
		else:
			print("Error, pet 6 is not owned.")

# Pet 7 - "Penguin"
func _on_pet7_equipped(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.pet7owned == true:
			Global.pet = 7
			loadEquippedPet()
			print("Pet " + str(Global.pet) + " equipped!")
		else:
			print("Error, pet 7 is not owned.")
# end of click to equip pet detection

# loads and displays the current equipped pet
func loadEquippedPet():
# Pet 1 - Ginger Cat
	if Global.pet == 1:
		equippedPetName.text = "Ginger Cat"
		equippedPetSprite.animation = "ginger cat"
# Pet 2 - Grey Cat
	if Global.pet == 2:
		equippedPetName.text = "Grey Cat"
		equippedPetSprite.animation = "grey cat"
# Pet 3 - Cat3
	if Global.pet == 3:
		equippedPetName.text = "Cat3"
		equippedPetSprite.animation = "cat3"
# pet 4 - Goldfish
	if Global.pet == 4:
		equippedPetName.text = "Goldfish"
		equippedPetSprite.animation = "goldfish"
# Pet 5 - Ghost
	if Global.pet == 5:
		equippedPetName.text = "Ghost"
		equippedPetSprite.animation = "ghost"
# Pet 6 - Pumpkin
	if Global.pet == 6:
		equippedPetName.text = "Pumpkin"
		equippedPetSprite.animation = "pumpkin"
# Pet 7 - Penguin
	if Global.pet == 7:
		equippedPetName.text = "Penguin"
		equippedPetSprite.animation = "penguin"
	equippedPetSprite.frame = 0
# when adding more pets, remember to update this code
