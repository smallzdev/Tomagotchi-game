extends Area2D

@onready var petSprite = %PetSprite
@onready var petName = $"../petSpriteTitle"

# stat label
@onready var statText = %statTextLabel
@onready var waterStatText = %waterStatText
@onready var energyStatText = %energyStatText
@onready var foodStatText = %foodStatText
@onready var loveStatText = %loveStatText

# stat bars
@onready var waterStatBar = %waterStatBar
@onready var energyStatBar = %energyStatBar
@onready var foodStatBar = %foodStatBar
@onready var loveStatBar = %loveStatBar

func _ready() -> void:
	randomize()
	if Global.gachadonce == false: 
		var gacha = randi_range(1, 100)
		Global.gachadonce = true
		if gacha <= 75:
			print("common")
			Global.pet = [1, 2, 3, 4, 6]
			var commonrandom = Global.pet.pick_random()
			Global.pet = commonrandom
		else:
			print("legendary")
			Global.pet = [5, 7, 9]
			var legendaryrandom = Global.pet.pick_random()
			Global.pet = legendaryrandom
		loadEquippedPet()
		print(Global.pet)

func loadEquippedPet():
# Pet 1 - Ginger Cat
	if Global.pet == 1:
		petName.text = "Ginger Cat"
		petSprite.animation = "ginger cat"
# Pet 2 - Grey Cat
	if Global.pet == 2:
		petName.text = "Grey Cat"
		petSprite.animation = "grey cat"
# Pet 3 - Cat3
	if Global.pet == 3:
		petName.text = "Cat3"
		petSprite.animation = "cat3"
# pet 4 - Goldfish
	if Global.pet == 4:
		petName.text = "Goldfish"
		petSprite.animation = "goldfish"
# Pet 5 - Ghost
	if Global.pet == 5:
		petName.text = "Ghost"
		petSprite.animation = "ghost"
# Pet 6 - Pumpkin
	if Global.pet == 6:
		petName.text = "Pumpkin"
		petSprite.animation = "pumpkin"
# Pet 7 - Penguin
	if Global.pet == 7:
		petName.text = "Penguin"
		petSprite.animation = "penguin"
# Pet 8 - Baby Chicken
	if Global.pet == 8:
		petName.text = "Baby Chicken"
		petSprite.animation = "baby chicken"
	if Global.pet == 9:
		petName.text = "Spider"
		petSprite.animation = "spider"
	petSprite.frame = 0

# petting function, so when you click on the cat this runs
# you may need to expand the collisionshape since it
# only fits the cat rn :D
func petting_love(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:

# if less than or equals 90, it adds the default love ammount.
		if Global.love <= 90:
			Global.love += 10
			statUpdate()
			petSprite.frame = 1
			await get_tree().create_timer(2).timeout
			spriteAnimation()
			
# If Global.love is  more than 100, it just sets to 100.
		elif Global.love > 100:
			Global.love = 100
			statUpdate()
			petSprite.frame = 1
			await get_tree().create_timer(2).timeout
			spriteAnimation()
			
# if the love is more than 90, it just goes to 100 which
# is the max. If it added 10, itd be over 100.
		elif Global.love > 90 and Global.love <= 100:
			Global.love = 100
			statUpdate()
			petSprite.frame = 1
			await get_tree().create_timer(2).timeout
			petSprite.frame = 0
		
# when editing make sure to also update in main_game_buttons.gd	
func statUpdate():
	statText.text = "Food: " + str(Global.food) + "
	Water: " + str(Global.water) + "
	Energy: " + str(Global.energy) + "
	Love: " + str(Global.love)
	waterStatText.text = str(Global.water)
	energyStatText.text = str(Global.energy)
	foodStatText.text = str(Global.food)
	loveStatText.text = str(Global.love)
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# make sure to also update in pet_sprite.gd
	
	# progress bar things
	# don't worry, ill try and clean it up soon
	
	# water
	if Global.water > 86:
		waterStatBar.frame = 0
	if Global.water > 72 and Global.water < 86:
		waterStatBar.frame = 1
	if Global.water > 58 and Global.water < 72:
		waterStatBar.frame = 2
	if Global.water > 44 and Global.water < 58:
		waterStatBar.frame = 3
	if Global.water > 30 and Global.water < 44:
		waterStatBar.frame = 4
	if Global.water > 1 and Global.water < 30:
		waterStatBar.frame = 5
	if Global.water <= 12:
		waterStatBar.frame = 6
	if Global.water < 6:
		waterStatBar.frame = 7
	
	# energy
	if Global.energy > 86:
		energyStatBar.frame = 0
	if Global.energy > 72 and Global.energy < 86:
		energyStatBar.frame = 1
	if Global.energy > 58 and Global.energy < 72:
		energyStatBar.frame = 2
	if Global.energy > 44 and Global.energy < 58:
		energyStatBar.frame = 3
	if Global.energy > 30 and Global.energy < 44:
		energyStatBar.frame = 4
	if Global.energy > 1 and Global.energy < 30:
		energyStatBar.frame = 5
	if Global.energy <= 12:
		energyStatBar.frame = 6
	if Global.energy < 6:
		energyStatBar.frame = 7
		
	# food
	if Global.food > 86:
		foodStatBar.frame = 0
	if Global.food > 72 and Global.food < 86:
		foodStatBar.frame = 1
	if Global.food > 58 and Global.food < 72:
		foodStatBar.frame = 2
	if Global.food > 44 and Global.food < 58:
		foodStatBar.frame = 3
	if Global.food > 30 and Global.food < 44:
		foodStatBar.frame = 4
	if Global.food > 1 and Global.food < 30:
		foodStatBar.frame = 5
	if Global.food <= 12:
		foodStatBar.frame = 6
	if Global.food < 6:
		foodStatBar.frame = 7
		
	# love
	if Global.love > 86:
		loveStatBar.frame = 0
	if Global.love > 72 and Global.love < 86:
		loveStatBar.frame = 1
	if Global.love > 58 and Global.love < 72:
		loveStatBar.frame = 2
	if Global.love > 44 and Global.love < 58:
		loveStatBar.frame = 3
	if Global.love > 30 and Global.love < 44:
		loveStatBar.frame = 4
	if Global.love > 1 and Global.love < 30:
		loveStatBar.frame = 5
	if Global.love <= 12:
		loveStatBar.frame = 6
	if Global.love < 6:
		loveStatBar.frame = 7
		
# WARNING: This function also appears in main_game_buttons.gd
# if editing this, make sure to also copy this code into
# there too.
func spriteAnimation():
	# sprite animations for angry
	if Global.water == 0 or Global.love == 0 or Global.energy == 0:
		petSprite.frame = 5
	# sprite animations for sad
	elif Global.water < 20 or Global.love < 20 or Global.energy < 20:
		petSprite.frame = 3
	# sprite animations for "meh"
	elif Global.water < 50 or Global.love < 50 or Global.energy < 50:
		petSprite.frame = 4
	# anything else is happy.
	elif Global.water > 50 or Global.love > 50 or Global.energy > 50:
		petSprite.frame = 0
		
# ughghghg im mathed out. If you edit make sure to test
# because the slightest mistake breaks it.
