extends Area2D

@export var Coordinates: Vector2
@onready var player: CharacterBody2D = $"../../Player"

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		player.teleport(Coordinates)
