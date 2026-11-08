extends TextureButton
# this script is for the rename menu to become visable
# and open.

# the panel that the script turns to visible
@onready var renamePannel = %renamePannel

func _on_renamemenubutton_pressed() -> void:
	renamePannel.visible = true
