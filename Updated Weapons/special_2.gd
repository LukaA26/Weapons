extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Allbuttons.buttons_enabled == false:
		self.disabled = true
	Allbuttons.connect("state_changed", Callable(self, "on_state_changed"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	SpaceApi.special()
	Allbuttons.buttons_enabled = false
	Allbuttons.change_state(false)

func on_state_changed(value: bool):
	self.disabled = value
