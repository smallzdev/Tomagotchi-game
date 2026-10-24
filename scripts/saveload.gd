extends Node

#holds location of save file
# make sure it has .tres
const save_location = "user://SaveFile.tres"

var SaveFileData: SaveDataResource = SaveDataResource.new()
#^grabs variables in savedata

func _ready() -> void:
	_load()

func _save():
	ResourceSaver.save(SaveFileData, save_location)

func _load():
	if FileAccess.file_exists(save_location):
		SaveFileData = ResourceLoader.load(save_location).duplicate(true)
