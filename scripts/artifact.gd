extends Area2D

@onready var artifact_bar: CanvasLayer = $"../../ArtifactBar"
@onready var player: CharacterBody2D = $"../../Player"

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("DEBUG: you collected an artifact!")
		Globals.add_artifact(timePeriod)
		Globals.print_artifacts(timePeriod)
		artifact_bar.updateArtifacts(Globals.return_artifacts(timePeriod))
		Sfx.play_sfx("collect")
		queue_free()
