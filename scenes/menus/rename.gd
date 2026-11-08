extends LineEdit

func _on_text_changed(new_text: String) -> void:
	Global.renameTextDraft = new_text
