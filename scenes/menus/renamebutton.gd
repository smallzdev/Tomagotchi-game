extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


@onready var petNameLabel = %petSpriteTitle
@onready var renamePannel = %renamePannel

# the submit button to lock in the name. it changes the
# nickname, updates the text label, and then hides the
# pannel
func _on_renamebutton_pressed() -> void:
	Global.nickname = Global.renameTextDraft
	petNameLabel.text = str(Global.nickname)
	renamePannel.visible = false
