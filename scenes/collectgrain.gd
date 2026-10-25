extends Node

const grain = preload("res://scenes/grain.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.timeout.connect(onTimeout)
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func onTimeout() -> void:
	var grainclone: Node = grain.instantiate()
	add_child(grainclone)
	grainclone.position.x = randi_range(0,1152)
