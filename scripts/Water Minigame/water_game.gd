extends Area2D

var timeVar = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	waterMinigameCore()
	updateLitreStat()
	if Global.waterDifficulty == 2:
		timeVar = 3
	elif Global.waterDifficulty == 3:
		timeVar = 1
	timerlabel.text = str(timeVar)

# all the water sprites.
@onready var waterSprite1 = %WaterSprite1
@onready var waterSprite2 = %WaterSprite2
@onready var waterSprite3 = %WaterSprite3
@onready var waterSprite4 = %WaterSprite4

var collisionShapeRNG = null

# the following function is basically the core of
# it all. It randomises everthing, and updates
# the appearances.
func waterMinigameCore():
	# this is for chosing the good water
	var randomSelection = [waterSprite1, waterSprite2, waterSprite3, waterSprite4]
	var spriteAppearances = [0, 1, 2]
	# picks the random numbers above
	collisionShapeRNG = randomSelection.pick_random()
	waterSprite1.animation = "bad"
	waterSprite2.animation = "bad"
	waterSprite3.animation = "bad"
	waterSprite4.animation = "bad"
	collisionShapeRNG.animation = "good"
	var appearanceOfSprite = spriteAppearances.pick_random()
	waterSprite1.frame = appearanceOfSprite
	appearanceOfSprite = spriteAppearances.pick_random()
	waterSprite2.frame = appearanceOfSprite
	appearanceOfSprite = spriteAppearances.pick_random()
	waterSprite3.frame = appearanceOfSprite
	appearanceOfSprite = spriteAppearances.pick_random()
	waterSprite4.frame = appearanceOfSprite

# Sprites and input clicks

# when sprite #1 of the 4 waters is clicked, it checks
# to see what the animation is. if it's good, it runs
# the increase litres func, if not it decreaes.
# it then runs the mingame core code to rerandomise.
func _on_sprite1_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite1.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()
		
# same thing as sprite 1 but for sprite 2
func _on_sprite2_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite2.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()

# same thing as sprite 1 but for sprite 3
func _on_sprite3_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite3.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()

# same thing as sprite 1 but for sprite 4.
func _on_sprite4_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite4.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()

# updates the visual appearance and display of the litre
# stat.
func updateLitreStat():
	if Global.litres > 0:
		%waterStatText.text = "Litres: " + str(Global.litres)
	else:
		Global.litres = 0
		%waterStatText.text = "Litres: " + str(Global.litres)

# increase and decrease stuff
@onready var rewardsArea = %rewards_display_area
@onready var rewardsLabel = %rewardsLabel
@onready var rewardsIcon = %Tick_x
@onready var timerlabel = %TimerLabel

# when called, this function increases the litres
# depending on what difficulty mode the games set to.
func increaseLitres():
	if Global.waterDifficulty == 1:
		Global.litres += 1
		rewardsLabel.text = "+1L"
	elif Global.waterDifficulty == 2:
		Global.litres += 2
		rewardsLabel.text = "+2L"
		timeVar = 3
	elif Global.waterDifficulty == 3:
		Global.litres += 4
		rewardsLabel.text = "+4L"
		timeVar = 1
	rewardsIcon.frame = 0
	rewardsArea.visible = true
	await get_tree().create_timer(2).timeout
	rewardsArea.visible = false
	
# when called, this decreases increases the litres
# depending on what difficulty mode the games set to.
func decreaseLitres():
	if Global.waterDifficulty == 1:
		Global.litres -= 5
		rewardsLabel.text = "-5L"
	elif Global.waterDifficulty == 2:
		Global.litres -= 4
		rewardsLabel.text = "-4L"
		timeVar = 3
	elif Global.waterDifficulty == 3:
		Global.litres -= 3
		rewardsLabel.text = "-3L"
		timeVar = 1
	rewardsIcon.frame = 1
	rewardsArea.visible = true
	await get_tree().create_timer(2).timeout
	rewardsArea.visible = false

# this timer goes out every seccond, then it decreases
# the time variable by one. Once it reaches 0, it runs
# the decrease function and resets the timer.
func _on_hard_timer_timeout() -> void:
	if timeVar > 0:
		timeVar -= 1
	else:
		if Global.waterDifficulty == 2:
			timeVar = 3
		elif Global.waterDifficulty == 3:
			timeVar = 1
		decreaseLitres()
		updateLitreStat()
		waterMinigameCore()
	timerlabel.text = str(timeVar)
	# ^^ updates gui timer label text
	
