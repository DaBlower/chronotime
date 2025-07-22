extends Node2D

signal loaded() # signal for the transition controller

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

func _ready() -> void:
	loaded.emit()
	Globals.connect("collected_artifacts", Callable(self, "_on_artifacts_collected"))
	$ArtifactBar.updateArtifacts(0)
	Globals.set_artifacts(timePeriod, 0)
	$HealthBar.updateHealth()

func _on_artifacts_collected():
	Dialogic.start("artifacts_collected")
