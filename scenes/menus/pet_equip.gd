extends Area2D

@onready var equippedPetName = %PetNameLabel
@onready var equippedPetSprite = %EquippedPetSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_petsprite1_equip_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.pet1owned == true:
			equippedPetName.text = "Ginger Cat"
			equippedPetSprite.animation = "ginger cat"
			Global.pet = 1
		else:
			print("Error, pet 1 is not owned")
		print("colison detected")
