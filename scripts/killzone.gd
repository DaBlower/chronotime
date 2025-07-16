extends Area2D

@onready var slowdown_time: Timer = $SlowdownTime
@onready var health_bar: CanvasLayer = $"../HealthBar"

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.get_node("CollisionShape2D").queue_free()
		Health.subtract_health(1)
		health_bar.updateHealth()
		Engine.time_scale = 0.25 # slow down the game to 1/4 speed
		slowdown_time.start()

func _on_slowdown_time_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
