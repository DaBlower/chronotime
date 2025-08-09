extends Area2D

@onready var artifact_bar: CanvasLayer = $"../../ArtifactBar"
@onready var player: CharacterBody2D = $"../../Player"
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("DEBUG: you collected an artifact!")
		audio_stream_player_2d.play(0.0)
		Globals.add_artifact(timePeriod)
		Globals.print_artifacts(timePeriod)
		artifact_bar.updateArtifacts(Globals.return_artifacts(timePeriod))
		audio_stream_player_2d.play()
		await audio_stream_player_2d.finished
		queue_free()
