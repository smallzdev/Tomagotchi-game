extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	waterMinigameCore()

# all the water sprites.
@onready var waterSprite1 = %WaterSprite1
@onready var waterSprite2 = %WaterSprite2
@onready var waterSprite3 = %WaterSprite3
@onready var waterSprite4 = %WaterSprite4

var collisionShapeRNG = null
func waterMinigameCore():
	# this is for chosing the good water
	var randomSelection = [waterSprite1, waterSprite2, waterSprite3, waterSprite4]
	# picks the random numbers above
	collisionShapeRNG = randomSelection.pick_random()
	waterSprite1.animation = "good"

# Sprites and input clicks
func _on_sprite1_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if collisionShapeRNG == waterSprite1:
			pass
		
func _on_sprite2_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if collisionShapeRNG == waterSprite2:
			pass

func _on_sprite3_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if collisionShapeRNG == waterSprite3:
			pass

func _on_sprite4_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if collisionShapeRNG == waterSprite4:
			pass
