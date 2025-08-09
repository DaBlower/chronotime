extends Area2D

@onready var artifact_bar: CanvasLayer = $"../../ArtifactBar"
@onready var player: CharacterBody2D = $"../../Player"

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("DEBUG: you collected an artifact!")
		
		var sfx_scene = load("res://music/sfx.tscn" )
		var sfx_instance = sfx_scene.instantiate()
		sfx_instance.global_position = global_position
		get_tree().current_scene.add_child(sfx_instance)
		
		Globals.add_artifact(timePeriod)
		Globals.print_artifacts(timePeriod)
		queue_free()
