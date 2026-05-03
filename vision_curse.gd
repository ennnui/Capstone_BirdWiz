extends Area2D

var triggered = false 
@onready var area = $Area2D

func _on_area_entered(area: Area2D) -> void:
	if area.name == "Area2D" and not triggered:
		triggered = true 
		
