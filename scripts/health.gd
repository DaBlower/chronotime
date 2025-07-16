extends Node

var health = 3 # the starting amount of health

func subtract_health(amount: int):
	health -= amount

func set_health(amount: int):
	health = amount
	
func return_health() -> int:
	return health
	
func check_health():
	if health <= 0:
		pass # load end screen
	else:
		return
