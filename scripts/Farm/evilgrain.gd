extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += 500 * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D: 
		Global.remove_grains(5)
		self.queue_free()
