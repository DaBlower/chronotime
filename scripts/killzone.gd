extends Area2D

@onready var slowdown_time: Timer = $SlowdownTime

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.get_node("CollisionShape2D").queue_free()
		Engine.time_scale = 0.25 # slow down the game to 1/4 speed
		slowdown_time.start()
		

func _on_slowdown_time_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
