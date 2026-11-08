extends Control

@export var label_settings: LabelSettings
@export var fade_color: Color
var tween: Tween

func floating_label(text: String, spawn_position: Vector2):
	#create + set up label
	var label = Label.new()
	label.text = text 
	label.label_settings = label_settings
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.z_index = 10
	label.top_level = true 
	label.global_position = spawn_position
	label.global_position.x -= label.size.x/2.0
	label.global_position.y -= label.size.y
	add_child(label)
	
	#speed up prev animation 
	if tween and tween.is_running():
		tween.set_speed_scale(2.0)
	
	#creating animation
	tween = create_tween()
	tween.set_parallel(true) #makes it run at the same time 
	
	#move to random side
	var x = randf_range(-50, 50)
	var y = -100.0
	
	tween.tween_property(label, "position:x", x, 1.0).as_relative()
	
	tween.set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN)
	tween.tween_property(label, "position:y", y, 1.0).as_relative()
	
	#change color + fade
	tween.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	#modulate changes color 
	tween.tween_property(label, "modulate", fade_color, 0.5).set_delay(0.5)
	#self modulate a = change opacity (opacity being a) 
	#0.0 = transparent
	tween.tween_property(label, "self_modulate:a", 0.0, 0.2).set_delay(0.8)
	
	tween.chain().tween_callback(label.queue_free)
	
	
	
