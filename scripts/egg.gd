extends Node2D

var collected = false
var holdsec = 0
#var randomint 
@onready var eggsprite = %eggsprite

func _ready() -> void:
	eggsprite.play("default")
	randomize()
	# generates random seed

func _process(delta) -> void:
	if Input.is_action_pressed("interact") and not collected:
		holdsec += delta
		#delta is seconds measured with frames
		#+=1 doesnt work: 60 fps holdsec increase 60 per second
		if holdsec >= 5:
			collected = true 
			eggsprite.play("cracked")
			await get_tree().create_timer(2.0).timeout
			var randomint = randi_range(1, 100)
			if randomint <= 50: 
				print("2")
			else: 
				print("1")
	else:
		holdsec=0
