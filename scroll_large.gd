extends Area2D

var triggered = false

func _ready():
	#print_tree_pretty()
	$"../scroll_large".visible = false  # hidden on load
	$"../scroll_large/instructions".visible = false

func _on_body_entered(body):
	if body.name == "CharacterBody2D" and not triggered:
		triggered = true
		$"../scroll_large".visible = true
		$AnimatedSprite2D.play("open_sesame_large")
		await get_tree().create_timer(1.0).timeout
		$"../scroll_large/instructions".visible = true
		
		
		#print_tree_pretty()
		#$Scroll_large.play("open_large_sesame")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
