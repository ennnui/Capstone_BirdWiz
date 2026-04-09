extends Node2D

@export var mouth_closed = false
var proximity_player = false
var player_alive = true
var minimum = 7
var maximum = 15
#calling the area2d that's nested as a child of top&bot sprite2d
@onready var area_top = $OpenMouthTop/Area2D
@onready var area_bot = $OpenMouthBot/Area2D
#defining bird wiz as the player, retrieving bird wiz(characterbody2d) from the main scene, LVL.
@onready var player = get_node("../bird wiz/CharacterBody2D")

#teeth animation start, random wait time range(?)
func _ready():
	$AnimationPlayer/Timer.wait_time = randf_range(minimum,maximum)
	$AnimationPlayer/Timer.start()


func _process(delta: float) -> void:
	proximity_player = area_top.overlaps_body(player) and area_bot.overlaps_body(player)
	#print("area_bot detection: ", area_bot.overlaps_body(player))
	#print(proximity_player)
	
	if proximity_player and player_alive:
		get_tree().change_scene_to_file("res://die.tscn")
		#print("player_is_dead") 
		player_alive = false


func _on_timer_timeout() -> void:
	$AnimationPlayer.play("open_close")

#body exit
func _on_area_2d_body_exited(body: Node2D) -> void:
	proximity_player = false
	
