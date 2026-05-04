extends Node2D

func _ready():
	$AnimationPlayer.play("vision")
	await get_tree().create_timer(5.0).timeout
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 1.0)
	await tween.finished
	queue_free()
	
#below plays nonstop
#func _physics_process(delta): 
	#$AnimationPlayer.play("vision")
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
