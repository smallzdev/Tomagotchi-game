extends Node2D

@onready var frenzylast =$frenzylast

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	frenzylast.timeout.connect(lasting)
	frenzylast.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += 500 * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../graintimer".wait_time = 0.05
		self.queue_free()

func lasting() -> void:
	#back to normal graintimer wait time
	#hard coded for now :cursed_cry:
	$"../graintimer".wait_time = 0.2
	print("back to normal")
