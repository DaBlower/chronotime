extends Node2D

@export var timeline: DialogicTimeline

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		Dialogic.start(timeline)
		queue_free()
