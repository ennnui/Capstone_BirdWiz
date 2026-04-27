extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print(body)
	#our character isnt named bird wiz its named characterbody2d
	if body.name == "CharacterBody2D":
		get_tree().change_scene_to_file("res://die_2.tscn")
	else: body.queue_free()
	
