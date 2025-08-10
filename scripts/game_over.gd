extends Control

signal loaded()

@export_file("*.tscn") var start_scene: String = "res://scenes/level0.tscn"

func _ready() -> void:
	loaded.emit()
	for node in get_tree().get_root().get_children():
		if "DialogicLayout_VisualNovelStyle" in node.name:
			node.queue_free()
	
func _on_restart_pressed() -> void:
	Sfx.play_sfx("click")
	TransitionController.transition_to(start_scene)

func _on_quit_pressed() -> void:
	Sfx.play_sfx("click")
	await get_tree().create_timer(0.3).timeout
	get_tree().quit()
