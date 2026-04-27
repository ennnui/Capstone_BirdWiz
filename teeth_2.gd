extends Node2D

var proximity_player = false
var player_alive = true
var minimum = 15
var maximum = 20
#calling the area2d that's nested as a child of top&bot sprite2d
@onready var area_top = $Teeth2Top/Area2D
@onready var area_bot = $Teeth2Bot/Area2D
#defining bird wiz as the player, retrieving bird wiz(characterbody2d) from the main scene, LVL.
@onready var player = get_node("../bird wiz/CharacterBody2D")

#teeth animation start, random wait time range(?)
func _ready():
	$AnimationPlayer/Timer.wait_time = randf_range(minimum,maximum)
	$AnimationPlayer/Timer.start()


func _process(delta: float) -> void:
	proximity_player = area_top.overlaps_body(player) and area_bot.overlaps_body(player)
	
	if proximity_player and player_alive:
		get_tree().change_scene_to_file("res://die.tscn")
		#print("player_is_dead") 
		player_alive = false


func _on_timer_timeout() -> void:
	$AnimationPlayer.play("open_close_lvl2")

#body exit
func _on_area_2d_body_exited(body: Node2D) -> void:
	proximity_player = false
	
