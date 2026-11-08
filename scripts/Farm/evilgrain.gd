extends Node2D

@export var floatytext_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += 500 * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D: 
		
		if floatytext_scene:
			var floatytext = floatytext_scene.instantiate()
			get_tree().current_scene.add_child(floatytext)
			floatytext.floating_label("-5 grains", $Sprite2D.global_position)
		
		Global.remove_grains(5)
		self.queue_free()
