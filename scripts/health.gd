extends Node

@export var end_screen = preload("res://scenes/components/gameOver.tscn")

var health = 3 # the starting amount of health

func subtract_health(amount: int):
	health -= amount
	check_health()

func set_health(amount: int):
	health = amount
	check_health()
	
func return_health() -> int:
	return health
	
func check_health():
	if health < 1:
		health = 3
		get_tree().change_scene_to_packed(end_screen)
