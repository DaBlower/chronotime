extends Area2D

@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String
@export var nextScene: PackedScene
@export var checkQuotas: bool

func _on_body_entered(body: Node2D) -> void:
	if checkQuotas:
		if Globals.check_quotas(timePeriod):
			get_tree().change_scene_to_packed(nextScene)
		else:
			print("DEBUG: Not enough artifacts! (next_scene.gd)")
	else:
		get_tree().change_scene_to_packed(nextScene)
