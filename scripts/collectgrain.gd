extends Node

const grain = preload("res://scenes/grain.tscn")
const frenzy = preload("res://scenes/frenzy.tscn")

@onready var graintimer = $graintimer
@onready var frenzytimer = $frenzytimer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var backButton = $backbutton
	backButton.pressed.connect(back_button_pressed)
	graintimer.timeout.connect(onTimeout)
	graintimer.start()
	frenzytimer.timeout.connect(frenzytimeout)
	frenzytimer.start()


func onTimeout() -> void:
	var grainclone: Node = grain.instantiate()
	add_child(grainclone)
	grainclone.position.x = randi_range(0,1152)

func frenzytimeout() -> void:
	var frenzyclone: Node = frenzy.instantiate()
	add_child(frenzyclone)
	frenzyclone.position.x = randi_range(0,1152)

func back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")
