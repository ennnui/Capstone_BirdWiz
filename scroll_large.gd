extends Area2D

func _ready():
	print_tree_pretty()
	$"../scroll_large".visible = false  # hidden on load

func _on_body_entered(body):
	if body.name == "CharacterBody2D":
		$"../scroll_large".visible = true
		
		
		#print_tree_pretty()
		#$Scroll_large.play("open_large_sesame")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
