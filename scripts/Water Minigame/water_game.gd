extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	waterMinigameCore()
	updateLitreStat()

# all the water sprites.
@onready var waterSprite1 = %WaterSprite1
@onready var waterSprite2 = %WaterSprite2
@onready var waterSprite3 = %WaterSprite3
@onready var waterSprite4 = %WaterSprite4

var collisionShapeRNG = null
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
func _on_sprite1_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite1.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()
		
func _on_sprite2_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite2.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()

func _on_sprite3_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite3.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()

func _on_sprite4_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if waterSprite4.animation == "good":
			increaseLitres()
		else:
			decreaseLitres()
		updateLitreStat()
		waterMinigameCore()
		
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

func increaseLitres():
	Global.litres += 1
	rewardsIcon.frame = 0
	rewardsLabel.text = "+1L"
	rewardsArea.visible = true
	await get_tree().create_timer(2).timeout
	rewardsArea.visible = false
	

func decreaseLitres():
	Global.litres -= 5
	rewardsIcon.frame = 1
	rewardsLabel.text = "-5L"
	rewardsArea.visible = true
	await get_tree().create_timer(2).timeout
	rewardsArea.visible = false
