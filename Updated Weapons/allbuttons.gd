extends Node

var buttons_enabled = false
signal state_changed

func enable_buttons():
	buttons_enabled = true

func disable_buttons():
	buttons_enabled = false
	
func change_state(value: bool):
	buttons_enabled = value
	emit_signal("state_changed", not value)
