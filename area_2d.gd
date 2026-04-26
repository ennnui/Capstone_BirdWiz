extends Area2D
##game win:
#
#@export var next_scene_path: String = "res://win.tscn"
#@export var tub_node: Area2D
#var has_touched_tub: = false
	#
#
#func _ready():
	#self.body_entered.connect(_on_portal_body_entered)
	#
	#
##step 1
#func _on_tub_body_entered(body):
	#if body.is_in_group("player"):
		#has_touched_tub = true
		#print("step 1")
		#
#
##step 2
#func _on_portal_body_entered(body):
	#if body.is_in_group("player") and has_touched_tub:
		#print("game complete")
		#get_tree().change_scene_to_file("res://win.tscn")
