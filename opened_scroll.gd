extends Node2D

var is_open = false

func _ready():
	visible = false
	process_mode = Node.PROCESS_MODE_ALWAYS  # important!

func toggle_scroll():
	is_open = !is_open
	visible = is_open
	get_tree().paused = is_open
