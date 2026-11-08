extends TextureButton
# this script is for the rename menu to become visable
# and open.

var mouseentered = 0
@onready var pencil = $"../renameMenuOpenButton"

# the panel that the script turns to visible
@onready var renamePannel = %renamePannel

func _on_renamemenubutton_pressed() -> void:
	renamePannel.visible = true

func _on_mouse_entered() -> void:
	mouseentered+=1
	material.set_shader_parameter("is_white", false)

func _on_mouse_exited() -> void:
	if mouseentered > 0: 
		material.set_shader_parameter("is_white", true)
