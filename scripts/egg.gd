extends Node2D

var collected = false
var holdsec = 0
#var randomint 
@onready var eggsprite = %eggsprite
@onready var maingame = preload("res://scenes/menus/main_game_scene.tscn")
@onready var camerashake = $"../Camera2D"
@onready var eggtimer = $"../timer"

func _ready() -> void:
	eggsprite.play("default")
	randomize()
	# generates random seed

func _process(delta) -> void:
	if Input.is_action_pressed("interact") and not collected:
		holdsec += delta
		eggtimer.text = str(snapped((5-holdsec), 0.1)) + " seconds left!" 
		camerashake.screen_shake(5, 0.5)
		#delta is seconds measured with frames
		#+=1 doesnt work: 60 fps holdsec increase 60 per second
		if holdsec >= 5:
			collected = true 
			eggsprite.play("cracked")
			await get_tree().create_timer(2.0).timeout
			var randomint = randi_range(1, 100)
			if randomint <= 75: 
				print("2")
				get_tree().change_scene_to_packed(maingame)
			else: 
				print("1")
				get_tree().change_scene_to_packed(maingame)
	else:
		holdsec=0
