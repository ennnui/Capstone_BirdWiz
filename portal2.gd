extends Area2D

@export var next_scene_path: String = "res://lvl_2.tscn"

func _on_body_entered(body: Node2D) -> void:
	var curse_count = get_tree().get_nodes_in_group("curse").size()
	print(curse_count)
	if body.is_in_group("player") and curse_count == 0:
		print("next lvl")
		get_tree().change_scene_to_file("res://lvl_2.tscn")
