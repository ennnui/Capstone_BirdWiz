extends Control


#game restart
func _on_button_button_down(): 
	get_tree().change_scene_to_file("res://lvl.tscn")
	
