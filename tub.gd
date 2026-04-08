extends Area2D
var triggered = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
		
func _on_AnimatedSprite2D_animation_finished():
	$AnimatedSprite2D.stop()
	
func _on_body_entered(body):
	if body.name == "CharacterBody2D" and not triggered:
		triggered = true
		monitoring = false
		$AnimatedSprite2D.play("water_play_anim")
		$AudioStreamPlayer2D.play()
