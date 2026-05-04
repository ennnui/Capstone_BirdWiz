extends Node2D

const VISION_EFFECT = preload("res://vision_effect_full_screen.tscn")
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
	if area.is_in_group("curse"): 
		area.queue_free()
		queue_free()
	elif area.is_in_group("bad_curse"):
		area.queue_free()
		queue_free()
		#defines path
		#get_tree().root.print_tree_pretty()
		var white_box = get_tree().root.get_node("LVL/CanvasLayer/ColorRect")
		if not white_box:
			white_box = get_tree().root.get_node("LVL_2/CanvasLayer/ColorRect")
		white_box.visible = true
		await get_tree().create_timer(5.0).timeout
		white_box.visible = false
		
