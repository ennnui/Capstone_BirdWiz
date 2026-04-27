extends Area2D

func _on_body_entered(body: Node2D) -> void:
	var curse_count = get_tree().get_nodes_in_group("curse").size()
	print(curse_count)
	if body.is_in_group("player") and curse_count == 0:
		get_tree().change_scene_to_file("res://win.tscn")
