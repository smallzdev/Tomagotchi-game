extends Area2D
# Smallz says minigame. Basically simon says but with
# me (Smallz).

var smallzSaysTime = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	disableOldAreas()
	smallzSaysSprite()
	smallzSays()

# All the different Area2D's holding the collisionshapes
# and sprites.
@onready var catArea = %catArea
@onready var goldfishArea = %goldfishArea
@onready var pumpkinArea = %pumpkinArea
@onready var penguinArea = %penguinArea
@onready var babyChickenArea = %babychickenArea
@onready var spiderArea = %spiderArea
@onready var ghostArea = %ghostArea

# labels
@onready var smallzsaysText = %smallzsaysLabel
@onready var smallzsaysTimerLabel = %smallzsaysTimerLabel

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
		ghostArea.visible = true
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
	ghostArea.visible = false
	

# UHGHGHGHGHGH SOOO MUCH IF STATEMENTSSSS ;-;
# holds the random smallz says stuff
func smallzSays():
	var randomSelection = [1, 2, 3, 4, 5]
	var smallzSays = [1, 2, 3, 4, 5]
	# picks the random numbers above
	var collisionShapeRNG = randomSelection.pick_random()
	var smallzSaysRNG = smallzSays.pick_random()
# ^^ thanks vic for introducing this to me, this is wayyy better - smallz
# if rolled 1:
	if collisionShapeRNG == 1:
		if catArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Small Says: Pet the feet."
			else:
				smallzsaysText.text = "Smallz Says: Pet the feet"
		if goldfishArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Vic Says: Pet the mouth."
			else:
				smallzsaysText.text = "Smallz Says: Pet the mouth."
		if pumpkinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Said: Pet the bottum of the pumpkin."
			else:
				smallzsaysText.text = "Smallz Says: Pet the bottom of the pumpkin."
		if penguinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Click the skip button."
			else:
				smallzsaysText.text = "Smallz Says: Pet the head."
		if babyChickenArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Simon says: Pet the head."
			else:
				smallzsaysText.text = "Smallz says: Pet the head."
		if spiderArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Pet the had."
			else:
				smallzsaysText.text = "Smallz Says: Pet the head."
		if ghostArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smsallhgzhbc: Pet the head."
			else:
				smallzsaysText.text = "Smallz Says: Pet the head."
	
# -----------------------------------------------------
# if rolled 2:
	elif collisionShapeRNG == 2:
		if catArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallj Says: Pet the tail."
			else:
				smallzsaysText.text = "Smallz Says: Pet the tail."
		if goldfishArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Vic Says: Pet the tail."
			else:
				smallzsaysText.text = "Smallz Says: Pet the tail."
		if pumpkinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Said: Pet the meowth of the pumpkin."
			else:
				smallzsaysText.text = "Smallz Says: Pet the mouth of the pumpkin."
		if penguinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Click the skip button."
			else:
				smallzsaysText.text = "Smallz Says: Pet the beak."
		if babyChickenArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Simon says: Pet the beak."
			else:
				smallzsaysText.text = "Smallz says: Pet the beak."
		if spiderArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Pet the moth."
			else:
				smallzsaysText.text = "Smallz Says: Pet the mouth."
		if ghostArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smsallhgzhbc: Pet the mouth."
			else:
				smallzsaysText.text = "Smallz Says: Pet the mouth."

# -----------------------------------------------------		
# if rolled 3:
	elif collisionShapeRNG == 3:
		if catArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Small Says: Pet the mouth."
			else:
				smallzsaysText.text = "Smallz Says: Pet the mouth."
		if goldfishArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Vic Says: Pet the center of the body."
			else:
				smallzsaysText.text = "Smallz Says: Pet the center of the body."
		if pumpkinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Said: Pet the steamn of the pumpkin."
			else:
				smallzsaysText.text = "Smallz Says: Pet the stem of the pumpkin."
		if penguinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Click the skip button."
			else:
				smallzsaysText.text = "Smallz Says: Pet the belly."
		if babyChickenArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Simon says: Pet the feet."
			else:
				smallzsaysText.text = "Smallz says: Pet the feet."
		if spiderArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Pet the bottum of fa body."
			else:
				smallzsaysText.text = "Smallz Says: Pet the bottom of the body."
		if ghostArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smsallhgzhbc: Pet the very bututm of the body."
			else:
				smallzsaysText.text = "Smallz Says: Pet the very bottom of the body."
				
# -----------------------------------------------------
# if rolled 4:
	elif collisionShapeRNG == 4:
		if catArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Small Says: Pet the ears."
			else:
				smallzsaysText.text = "Smallz Says: Pet the ears"
		if goldfishArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Vic Says: Pet the very bottom of the body."
			else:
				smallzsaysText.text = "Smallz Says: Pet the very bottom of the body."
		if pumpkinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Said: Pet the aiys of the pumpkin."
			else:
				smallzsaysText.text = "Smallz Says: Pet the eyes of the pumpkin."
		if penguinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: anwfjwkgekkigo."
			else:
				smallzsaysText.text = "Smallz Says: Pet the feet."
		if babyChickenArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Simon says: Pet the bottom."
			else:
				smallzsaysText.text = "Smallz says: Pet the bottom."
		if spiderArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Pet the fft."
			else:
				smallzsaysText.text = "Smallz Says: Pet the feet."
		if ghostArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smsallhgzhbc: Pet just under the mouth."
			else:
				smallzsaysText.text = "Smallz Says: Pet just under the mouth."
				
# -----------------------------------------------------			

# if rolled 5:
	elif collisionShapeRNG == 5:
		if catArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Small Says: Pet the whiskers."
			else:
				smallzsaysText.text = "Smallz Says: Pet the whiskers"
		if goldfishArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Vic Says: Pet the very top of the body."
			else:
				smallzsaysText.text = "Smallz Says: Pet the very top of the body."
		if pumpkinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Said: Pet the sidz of the pumpkin."
			else:
				smallzsaysText.text = "Smallz Says: Pet the sides of the pumpkin."
		if penguinArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: jnbgvfgcdsfadsdcfgv."
			else:
				smallzsaysText.text = "Smallz Says: Pet the flippers."
		if babyChickenArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Simon says: Pet the cheeks."
			else:
				smallzsaysText.text = "Smallz says: Pet the cheeks."
		if spiderArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smallz Says: Pet the cheks."
			else:
				smallzsaysText.text = "Smallz Says: Pet the cheeks."
		if ghostArea.visible == true:
			if smallzSaysRNG == 1:
				smallzsaysText.text = "Smsallhgzhbc: Pet the cheeks."
			else:
				smallzsaysText.text = "Smallz Says: Pet the cheeks."
				
# -----------------------------------------------------
	else:
		# only really for debugging. shouldnt print.
		print("Error, RNG picked a collisionshape number that doesn't exist")

# 1s timer, autostarts:
func _on_timer_timeout() -> void:
	if smallzSaysTime == 0:
		smallzSaysTime = 6
		smallzSays()
		# ^^ 6 because it will instantly deduct 1
	smallzSaysTime -= 1
	smallzsaysTimerLabel.text = str(smallzSaysTime)
	

func _on_cat_smallzsays_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var collision_shape = null #(i still needa figure this part out)
		if collision_shape:
			match collision_shape.name:
				"Collision1":
					pass
				"Collision2":
					pass
				"Collision3":
					pass

func _on_goldfish_smallzsays_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		pass

func _on_pumpkin_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		pass

func _on_penguin_smallzsays_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		pass

func _on_babychicken_smallzsays_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		pass

func _on_spider_smallzsays_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		pass

func _on_ghost_smallzsays_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		pass
