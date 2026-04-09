extends Node2D

var speed = 600

func _physics_process(delta): 
	#look_at(get_global_mouse_position())
	position += speed * transform.x* delta


	


func _on_timer_timeout() -> void:
	queue_free()
