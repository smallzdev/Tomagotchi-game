extends Area2D
# Smallz says minigame. Basically simon says but with
# me (Smallz).

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	disableOldAreas()
	smallzSaysSprite()

# All the different Area2D's holding the collisionshapes
# and sprites.
@onready var catArea = %catArea
@onready var goldfishArea = %goldfishArea
@onready var pumpkinArea = %pumpkinArea
@onready var penguinArea = %penguinArea
@onready var babyChickenArea = %babychickenArea
@onready var spiderArea = %spiderArea

# Updates the correct sprite to view.
func smallzSaysSprite():
	if Global.pet == 1 or Global.pet == 2 or Global.pet == 3:
		catArea.visible = true
		var CatPetSprite = %catPetSprite
		if Global.pet == 1:
			CatPetSprite.animation = "ginger cat"
		elif Global.pet == 2:
			CatPetSprite.animation = "grey cat"
		elif Global.pet == 3:
			CatPetSprite.animation = "cat3"
			
		catArea.visible = true
	elif Global.pet == 4:
		goldfishArea.visible = true
	elif Global.pet == 5:
		pass
		# (need to add the ghost sprite still ;-;)
	elif Global.pet == 6:
		pumpkinArea.visible = true
	elif Global.pet == 7:
		penguinArea.visible = true
	elif Global.pet == 8:
		babyChickenArea.visible = true
	elif Global.pet == 9:
		spiderArea.visible = true
		
		# needa figure out what pet 3 is....

# disables every area 2d's visibility.
func disableOldAreas():
	catArea.visible = false
	goldfishArea.visible = false
	pumpkinArea.visible = false
	penguinArea.visible = false
	babyChickenArea.visible = false
	spiderArea.visible = false
