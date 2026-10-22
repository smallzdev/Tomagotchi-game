extends Area2D

# The pet name, and character on the side.
@onready var equippedPetName = %PetNameLabel
@onready var equippedPetSprite = %EquippedPetSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	loadEquippedPet()
	showOwned()

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

# The following code is really REALLY messy, ill fix it
# shortly in a code cleaning update. For now, I'm mainly
# focused on gettting it functionable.

# The following function detects if a pet is owned.
# If it's not, it will change the frame to the greyed
# out one.
@onready var petSprite1 = %PetSprite1
@onready var petSprite1Name = %PetLabel1
@onready var petSprite2 = %PetSprite2
@onready var petSprite2Name = %PetLabel2
@onready var petSprite3 = %PetSprite3
@onready var petSprite3Name = %PetLabel3
@onready var petSprite4 = %PetSprite4
@onready var petSprite4Name = %PetLabel4
@onready var petSprite5 = %PetSprite5
@onready var petSprite5Name = %PetLabel5
@onready var petSprite6 = %PetSprite6
@onready var petSprite6Name = %PetLabel6
@onready var petSprite7 = %PetSprite7
@onready var petSprite7Name = %PetLabel7

func showOwned():
	# falses
	if Global.pet1owned == false:
		petSprite1.frame = 1
		petSprite1Name.text = "????"
	if Global.pet2owned == false:
		petSprite2.frame = 1
		petSprite2Name.text = "????"
	if Global.pet3owned == false:
		petSprite3.frame = 1
		petSprite3Name.text = "????"
	if Global.pet4owned == false:
		petSprite4.frame = 1
		petSprite4Name.text == "????"
	if Global.pet5owned == false:
		petSprite5.frame = 1
		petSprite5Name.text = "????"
	if Global.pet6owned == false:
		petSprite6.frame = 1
		petSprite6Name.text = "????"
	if Global.pet7owned == false:
		petSprite7.frame = 1
		petSprite7Name.text = "????"
	
	# trues
	if Global.pet1owned == true:
		petSprite1.frame = 0
		petSprite1Name.text = "Ginger Cat"
	if Global.pet2owned == true:
		petSprite2.frame = 0
		petSprite2Name.text = "Grey Cat"
	if Global.pet3owned == true:
		petSprite3.frame = 0
		petSprite3Name.text = "Cat3"
	if Global.pet4owned == true:
		petSprite4.frame = 0
		petSprite4Name.text = "Goldfish"
	if Global.pet5owned == true:
		petSprite5.frame = 0
		petSprite5Name.text = "Ghost"
	if Global.pet6owned == true:
		petSprite6.frame = 0
		petSprite6Name.text = "Pumpkin"
	if Global.pet7owned == true:
		petSprite7.frame = 0
		petSprite7Name.text = "Penguin"
