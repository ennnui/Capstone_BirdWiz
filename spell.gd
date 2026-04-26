extends Node2D

var speed = 600
@onready var area = $Area2D
var has_cleaned = false

func _physics_process(delta): 
	#look_at(get_global_mouse_position())
	position += speed * transform.x * delta
	#if area.has_overlapping_areas():
		#queue_free()
	$AnimationPlayer.play("spell_animation")

func _on_timer_timeout() -> void:
	queue_free()


func _on_area_2d_area_entered(area: Area2D) -> void:
	print(area)
	if area.is_in_group("curse"):
		area.queue_free()
		queue_free()
