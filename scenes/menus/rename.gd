extends LineEdit

var renameTextDraft = null

func _ready() -> void:
	var renameButton = %renamebutton
	renameButton.pressed.connect(_on_renamebutton_pressed)

func _on_text_submitted(new_text: String) -> void:
	Global.renameTextDraft = new_text

func _on_renamebutton_pressed() -> void:
	Global.nickname = renameTextDraft
