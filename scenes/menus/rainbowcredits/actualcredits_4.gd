extends RichTextLabel

var normaltext = "Icons: Pixel Adventure by Pixel Frog"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	self.text = "[rainbow freq=.6 sat=0.7 val=0.9]Icons: Pixel Adventure by Pixel Frog[/rainbow]"


func _on_mouse_exited() -> void:
	text = normaltext
