extends CanvasLayer

@onready var slots := [
	$HBoxContainer/ArtifactSlot1,
	$HBoxContainer/ArtifactSlot2,
	$HBoxContainer/ArtifactSlot3
]


const filled_slot = preload("res://art/artifacts/artifact.png")
const empty_slot = preload("res://art/artifacts/emptyArtifact.png")

func _ready() -> void:
	Health.connect("hide_bars", Callable(self, "_on_hide_bars"))
	self.visible = true
	
func updateArtifacts(count: int) -> void:
	for i in range(slots.size()):
		slots[i].texture = filled_slot if i < count else empty_slot
		
func _on_hide_bars():
	self.visible = false
