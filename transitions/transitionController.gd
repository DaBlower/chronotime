extends CanvasLayer

signal transitioned_in()
signal transitioned_out()

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var overlay: ColorRect = $Overlay

func _ready() -> void:
	overlay.visible = false
	

func transition_in():
	animation_player.play("fade_in")
	overlay.visible = true
	
func transition_out():
	animation_player.play("fade_out")
	
func transition_to(scene: String):
	Dialogic.clear()
	transition_in()
	await transitioned_in # Wait for fade-in to complete before removing current scene
	
	var new_scene = load(scene).instantiate()
	var root: Window = get_tree().get_root()
	
	# remove current scene **reliably** bc the old logic deleted the dialogic scene instead of the current scene for some reason
	if get_tree().current_scene:
		get_tree().current_scene.free()
	
	root.add_child(new_scene) # add new scene
	
	await get_tree().create_timer(0.5).timeout # wait a bit for everything to load
	
	transition_out()
	get_tree().current_scene = new_scene
	await transitioned_out
	


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_in":
		transitioned_in.emit()
	elif anim_name == "fade_out":
		transitioned_out.emit()
		overlay.visible = false
