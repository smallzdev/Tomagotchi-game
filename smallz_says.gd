extends Area2D
# Smallz says minigame. Basically simon says but with
# me (Smallz).

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	smallzSaysSprite()

@onready var catArea = %catArea

func smallzSaysSprite():
	if Global.pet == 1 or Global.pet == 2 or Global.pet == 3:
		catArea.visible = true
	elif Global.pet == 3:
		pass
		# needa figure out what pet 3 is....
