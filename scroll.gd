extends Area2D
var triggered = false
	
	
func _on_body_entered(body):
	if body.name == "CharacterBody2D" and not triggered:
		triggered = true
		monitoring = false
		
		$AnimatedSprite2D.play("open_sesame")
		#print_tree_pretty()
		#$Scroll_large.play("open_large_sesame")
