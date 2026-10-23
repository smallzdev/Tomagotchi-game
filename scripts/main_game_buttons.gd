extends Button

# stat bars and text
@onready var statText = %statTextLabel
@onready var waterStatText = %waterStatText
@onready var waterStatBar = %waterStatBar
@onready var energyStatText = %energyStatText
@onready var energyStatBar = %energyStatBar
@onready var foodStatText = %foodStatText
@onready var foodStatBar = %foodStatBar
@onready var loveStatText = %loveStatText
@onready var loveStatBar = %loveStatBar

# Pet sprite and title
@onready var petSprite = %PetSprite
@onready var petSpriteNameText = %petSpriteTitle

func petsButton_pressed():
	get_tree().call_deferred("change_scene_to_file", "res://scenes/menus/pets.tscn")

func catadexButton_pressed():
	get_tree().call_deferred("change_scene_to_file", "res://scenes/menus/catadex.tscn")

func _ready():
	# button variables
	
	# menu buttons
	var petsButton = %petsButton
	var catadexButton = %catadexButton
	
	# food, water, energy
	var foodButton = %foodButton
	var waterButton = %waterButton
	var energyButton = %energyButton
	
	# when clicked it runs the functions
	petsButton.pressed.connect(petsButton_pressed)
	catadexButton.pressed.connect(catadexButton_pressed)
	foodButton.pressed.connect(foodButton_pressed)
	waterButton.pressed.connect(waterButton_pressed)
	energyButton.pressed.connect(energyButton_pressed)
	print(petSpriteNameText)
	statUpdate()
	petDetection()
	spriteAnimation()

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
		
	# ill update to look cleaner later.
	## if Global.pet == 4:
		## petSprite.frame = 2
		## await get_tree().create_timer(2).timeout
		## petSprite.frame = 4
		## await get_tree().create_timer(1).timeout
		## petSprite.frame = 0
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
		

# Pet detecting thing.
# hopefully gonna make this cleaner soon
func petDetection():
	if Global.pet == 1:
		petSpriteNameText.text = "Ginger Cat"
		petSprite.animation = "ginger cat"
	elif Global.pet == 2:
		petSpriteNameText.text = "Grey Cat"
		petSprite.animation = "grey cat"
	elif Global.pet == 3:
		petSprite.animation = "cat3"
		petSpriteNameText.text = "I forget the breed cat"
	elif Global.pet == 4:
		petSprite.animation = "goldfish"
		petSpriteNameText.text = "Goldfish"
	elif Global.pet == 5:
		petSprite.animation = "ghost"
		petSpriteNameText.text = "ghost"
	elif Global.pet == 6:
		petSprite.animation = "pumpkin"
		petSpriteNameText.text = "Pumpkin"
	elif Global.pet == 7:
		petSprite.animation = "penguin"
		petSpriteNameText.text = "Penguin"
	elif Global.pet == 8:
		petSprite.animation = "baby chicken"
		petSpriteNameText.text = "Baby Chicken"

# when updating, make sure to also update pet_sprite.gd
# as it uses this same function
func statUpdate():
	statText.text = "Food: " + str(Global.food) + "
	Water: " + str(Global.water) + "
	Energy: " + str(Global.energy) + "
	Love: " + str(Global.love)
	waterStatText.text = str(Global.water)
	energyStatText.text = str(Global.energy)
	foodStatText.text = str(Global.food)
	loveStatText.text = str(Global.love)
	
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
		
# ughghghg im mathed out. If you edit make sure to test
# because the slightest mistake breaks it.


func _on_5s_timer_timeout() -> void:
	# decrease variables
	if Global.water > 0: 
		Global.water -= 5
	if Global.food > 0:
		Global.food -= 5
	if Global.love > 0:
		Global.love -= 5
	if Global.energy > 0:
		Global.energy -= 5
	statUpdate()
	spriteAnimation()
	
func spriteAnimation():
	# sprite animations for anger
	if Global.water < 20 or Global.love < 20 or Global.energy < 20:
		petSprite.frame = 3
		
	# only if that specific pet has that animation.
	if Global.pet == 9:
		if Global.water == 0 or Global.love == 0 or Global.energy == 0:
			petSprite.frame = 5
