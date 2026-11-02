extends Node

const grain = preload("res://scenes/grain.tscn")
const frenzy = preload("res://scenes/frenzy.tscn")
const evilgrain = preload("res://scenes/evilgrain.tscn")
const 

@onready var graintimer = $graintimer
@onready var frenzytimer = $frenzytimer
@onready var evilgraintimer = $evilgraintimer
@onready var dblecltntimer = $doublecollectiontimer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var backButton = $backbutton
	# ----------------starting timer---------------------
	backButton.pressed.connect(back_button_pressed)
	graintimer.timeout.connect(onTimeout)
	graintimer.start()
	frenzytimer.timeout.connect(frenzytimeout)
	frenzytimer.start()
	evilgraintimer.timeout.connect(evilgraintimeout)
	evilgraintimer.start()

#----------------spawn functions-------------------------

func onTimeout() -> void:
	var grainclone: Node = grain.instantiate()
	add_child(grainclone)
	grainclone.position.x = randi_range(0,1152)

func frenzytimeout() -> void:
	var frenzyclone: Node = frenzy.instantiate()
	add_child(frenzyclone)
	frenzyclone.position.x = randi_range(0,1152)

func evilgraintimeout() -> void:
	var evilgrainclone: Node = evilgrain.instantiate()
	add_child(evilgrainclone)
	evilgrainclone.position.x = randi_range(0,1152)

#----------------random event timers + effects-------------------------

#connects w frenzy code and runs this
func start_frenzy() -> void:
	graintimer.wait_time = 0.05
	get_tree().create_timer(5.0).timeout.connect(func(): graintimer.wait_time = 0.2)

#--------------------button---------------------------------
func back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")
