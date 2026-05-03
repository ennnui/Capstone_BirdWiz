extends Node2D

@onready var opened_scroll = $"../opened_scroll"


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		opened_scroll.toggle_scroll()
