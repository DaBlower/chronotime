extends Node

signal hide_bars

@export_file("*.tscn") var end_screen = "res://scenes/components/gameOver.tscn"

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
		hide_bars.emit()
		Dialogic.clear()
		TransitionController.transition_to(end_screen)
