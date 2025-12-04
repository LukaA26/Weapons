extends Control

var pressed_needed = randi_range(10, 30)
var main : String = "res://node_2d.tscn"
var game_finished = false
@onready var press_label = $TextEdit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if pressed_needed == 0 and game_finished == false:
		end_game()
		


func _on_button_pressed() -> void:
	set_count(pressed_needed - 1)
	print(pressed_needed)
	
func set_count(new_need_presses: int) -> void:
	pressed_needed = new_need_presses
	press_label.text = "Presses needed: " + str(pressed_needed)

func end_game() -> void:
	print('Neel')
	var	scene = load(main)
	get_tree().change_scene_to_packed(scene)
	game_finished = true
