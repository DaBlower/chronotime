extends Area2D

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

@export_file("*.tscn") var nextScene: String
@export var duration: float = 1.0 # the duration of the transition between levels
@export var checkQuotas: bool


func _on_body_entered(body: Node2D) -> void:
	if checkQuotas:
		if Globals.check_quotas(timePeriod):
			Health.hide_bars.emit()
			TransitionController.transition_to(nextScene)
		else:
			print("DEBUG: Not enough artifacts! (next_scene.gd)")
	else:
		Health.hide_bars.emit()
		TransitionController.transition_to(nextScene)
