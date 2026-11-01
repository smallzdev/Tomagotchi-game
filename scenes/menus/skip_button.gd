extends Button

@onready var rewardsDisplayArea = %rewards_display_area
@onready var rewardsLabel = %rewardsLabel
@onready var rewardsTickSprite = %Tick_x
func _ready() -> void:
	var skipButton = %skipButton
	skipButton.pressed.connect(skip_button_pressed)
	
func skip_button_pressed():
	if Global.smallzSaysRNGtemp == 1:
		increaseLove()
	else:
		decreaseLove()
	
# decreases love by 5, displays it on screen.
func decreaseLove():
	Global.love -= 5
	rewardsDisplayArea.visible = true
	rewardsLabel.text = "-5 Love"
	rewardsTickSprite.frame = 1
	await get_tree().create_timer(2).timeout
	
# increases love by 5, displays it on screen
func increaseLove():
	Global.love += 5
	rewardsDisplayArea.visible = true
	rewardsLabel.text = "+5 Love"
	rewardsTickSprite.frame = 0
	await get_tree().create_timer(2).timeout
	rewardsDisplayArea.visible = false
