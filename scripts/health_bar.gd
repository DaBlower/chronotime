extends CanvasLayer

@onready var slots := [
	$HBoxContainer/HealthSlot1,
	$HBoxContainer/HealthSlot2,
	$HBoxContainer/HealthSlot3
]


const filled_slot = preload("res://art/hearts/heart.png")
const empty_slot = preload("res://art/hearts/emptyHeart.png")

func updateHealth() -> void:
	var health = Health.return_health()
	for i in range(slots.size()):
		slots[i].texture = filled_slot if i < health else empty_slot
		
