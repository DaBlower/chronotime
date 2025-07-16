extends Node2D

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

func _ready() -> void:
	var scene = get_tree().get_current_scene().get_name()
	$ArtifactBar.updateArtifacts(0)
	Globals.set_artifacts(timePeriod, 0)
	$HealthBar.updateHealth()
