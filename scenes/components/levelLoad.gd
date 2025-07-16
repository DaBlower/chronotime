# This script loads the artifact bar and should be added to the root node of each level (see base.tscn for reference)
extends Node2D

@onready var artifact_bar: CanvasLayer = $ArtifactBar
@onready var health_bar: CanvasLayer = $HealthBar

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

func  _ready() -> void:
	artifact_bar.updateArtifacts(0)
	health_bar.updateHealth()
	Globals.set_artifacts(timePeriod, 0)
	
