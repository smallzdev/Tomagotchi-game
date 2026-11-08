extends Node

const grain = preload("res://scenes/grain.tscn")
const frenzy = preload("res://scenes/frenzy.tscn")
const evilgrain = preload("res://scenes/evilgrain.tscn")
const doublecollection = preload("res://scenes/doublecollection.tscn")
const freeze = preload("res://scenes/freeze.tscn")

@onready var graintimer = $graintimer
@onready var frenzytimer = $frenzytimer
@onready var evilgraintimer = $evilgraintimer
@onready var dblecltntimer = $doublecollectiontimer
@onready var freezetimer = $freezetimer

@onready var player = $CharacterBody2D

@onready var frenzytext = $frenzytween
@onready var freezetween = $floatytext
@onready var doubletween = $floatytext2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var backButton = $backbutton
	#this makes it spawn above the grain layer
	frenzytext.z_index = 10
	# ----------------starting timer---------------------
	backButton.pressed.connect(back_button_pressed)
	graintimer.timeout.connect(onTimeout)
	graintimer.start()
	frenzytimer.timeout.connect(frenzytimeout)
	frenzytimer.start()
	evilgraintimer.timeout.connect(evilgraintimeout)
	evilgraintimer.start()
	dblecltntimer.timeout.connect(dblecltntimeout)
	dblecltntimer.start()
	freezetimer.timeout.connect(freezetimeout)
	freezetimer.start()
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

func dblecltntimeout() -> void:
	var doublecollectionclone: Node = doublecollection.instantiate()
	add_child(doublecollectionclone)
	doublecollectionclone.position.x = randi_range(0,1152)

func freezetimeout() -> void:
	var freezeclone: Node = freeze.instantiate()
	add_child(freezeclone)
	freezeclone.position.x = randi_range(0,1152)

#----------------random event timers + effects-------------------------

#connects w frenzy code and runs this
func start_frenzy() -> void:
	graintimer.wait_time = 0.05
	
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_ELASTIC)
	tween.set_ease(Tween.EASE_OUT)
	frenzytext.text = "[wave amp=120 freq=7][rainbow freq=.6 sat=0.7 val=0.9]frenzy[/rainbow][/wave]"
	tween.tween_property(frenzytext, "position", Vector2(350.0,46.0), 5.0)
	tween.tween_property(frenzytext, "position", Vector2(350,-405.0), 5.0)
	get_tree().create_timer(5.0).timeout.connect(func(): 
		graintimer.wait_time = 0.2
		)

func start_doublecol() -> void:
	get_tree().current_scene.add_child(doubletween)
	doubletween.floating_label("2x Grain Collection", player.global_position)
	
	get_tree().create_timer(5.0).timeout.connect(func(): Global.doublecollection = false)

func start_freeze() -> void:
	get_tree().current_scene.add_child(freezetween)
	freezetween.floating_label("freeze", player.global_position)
	
	player.set_process_input(false)
	player.set_physics_process(false)
	player.set_process_unhandled_input(false)
	
	get_tree().create_timer(1.5).timeout.connect(func():
		player.set_process_input(true)
		player.set_physics_process(true)
		player.set_process_unhandled_input(true))

#--------------------button---------------------------------
func back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")
