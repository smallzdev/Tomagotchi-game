extends Area2D

# stat label
@onready var statText = %statTextLabel

# when this function updates the stat text.
func statUpdate():
	statText.text = "Food: " + str(Global.food) + "
	Water: " + str(Global.water) + "
	Energy: " + str(Global.energy) + "
	Love: " + str(Global.love)


# petting function, so when you click on the cat this runs
# you may need to expand the collisionshape since it
# only fits the cat rn :D
func petting_love(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:

# if less than or equals 90, it adds the default love ammount.
		if Global.love <= 90:
			Global.love += 10
			statUpdate()
			
# If Global.love is  more than 100, it just sets to 100.
		elif Global.love > 100:
			Global.love = 100
			statUpdate()
			
# if the love is more than 90, it just goes to 100 which
# is the max. If it added 10, itd be over 100.
		elif Global.love > 90 and Global.love <= 100:
			Global.love = 100
			statUpdate()
