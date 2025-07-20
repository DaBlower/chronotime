extends Node2D

@export var start_scene = preload("res://scenes/level0.tscn")

func _on_restart_pressed() -> void:
	get_tree().change_scene_to_packed(start_scene)


func _on_quit_pressed() -> void:
	get_tree().quit()
