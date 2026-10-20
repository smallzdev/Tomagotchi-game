extends Area2D

@onready var equippedPetName = %PetNameLabel
@onready var equippedPetSprite = %EquippedPetSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	loadEquippedPet()

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

# loads and displays the current equipped pet
func loadEquippedPet():
	if Global.pet == 1:
		equippedPetName.text = "Ginger Cat"
		equippedPetSprite.animation = "ginger cat"
	if Global.pet == 2:
		equippedPetName.text = "Grey Cat"
		equippedPetSprite.animation = "grey cat"
	if Global.pet == 3:
		equippedPetName.text = "Cat3"
		equippedPetSprite.animation = "cat3"
	equippedPetSprite.frame = 0
