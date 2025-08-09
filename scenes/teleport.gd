extends Area2D

@export var Coordinates: Vector2
@onready var player: CharacterBody2D = $"../../Player"
@onready var camera: Camera2D = player.get_node("camera")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		camera.position_smoothing_speed = 0.4
		player.teleport(Coordinates)
		await get_tree().create_timer(3)
		camera.position_smoothing_speed = 1.7
		await get_tree().create_timer(3.7).timeout
		camera.position_smoothing_speed = 5.0
