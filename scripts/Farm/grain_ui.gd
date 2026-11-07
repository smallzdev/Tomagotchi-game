extends Control

@onready var label = %Label

func _ready() -> void:
	Eventcontroller.connect("grain_collected", on_event_grain_collected)
	Eventcontroller.connect("grain_removed", on_event_grain_removed)
	label.text = str(Global.grains)
	# whenever coin collected happens: make sure to run 
	# on event coin collected

func reset_ui() -> void:
	label.text = "20"

func on_event_grain_collected(amount: int) -> void:
	label.text = str(Global.grains)

func on_event_grain_removed(amount: int) -> void:
	label.text = str(Global.grains)
