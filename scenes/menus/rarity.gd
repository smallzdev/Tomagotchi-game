extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rarityUpdate()

# Label
@onready var rarityLabel = $"../RarityLabel"
# Background cool title thing
@onready var rarityBackground = $"."

# Updates the appearance of the rarity thing
func rarityUpdate():
	if Global.pet in [1, 2, 3, 4, 6]:
		rarityLabel.text = "Common"
		rarityBackground.frame = 0
	elif Global.pet in [5, 7]:
		rarityLabel.text = "Legendary"
		rarityLabel.add_theme_font_size_override("font_size", 34)
		rarityBackground.frame = 2
		
		
# for reference:
	# "common": [
		#"Ginger Cat",
	#	"Goldfish",
		#"Grey Cat",
		#"Pumpkin"
