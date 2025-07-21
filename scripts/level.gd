extends Node2D

signal loaded() # signal for the transition controller

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

func _ready() -> void:
	loaded.emit()
	$ArtifactBar.updateArtifacts(0)
	Globals.set_artifacts(timePeriod, 0)
	$HealthBar.updateHealth()
