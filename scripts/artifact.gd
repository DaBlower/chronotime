extends Area2D


@export_enum("prehistoric", "ancient_egypt", "ancient_greece", "imperial_china", "medieval_europe", "renaissance", "industrial_revolution", "prohibition", "world_wars", "modern_day", "near_future", "far_future")
var timePeriod: String

func _on_body_entered(body: Node2D) -> void:
	print("you collected an artifact!")
	Globals.add_artifact(timePeriod)
	Globals.print_artifacts(timePeriod)
	queue_free()
