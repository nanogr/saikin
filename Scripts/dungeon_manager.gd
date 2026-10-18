extends Node3D

@onready var slime_scene = preload("res://Scenes/slime.tscn")
@export var slimes: Array[SlimeData]

var current_slimes = 0;

func _on_slime_timer_timeout() -> void:
	if (current_slimes >= slimes.size()):
		return
		
	var slime = slime_scene.instantiate()
	var slime_spawn_location = $SlimeSpawnNode
	
	var player_position = $Player.position
	var slimeData = slimes[current_slimes]
	slime.initialize(slime_spawn_location.position, player_position, slimeData)
	add_child(slime)
	current_slimes += 1
