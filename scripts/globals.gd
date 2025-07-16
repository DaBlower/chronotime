extends Node
# this should be artifacts.gd but I didn't want to break anything

var respawn = Vector2(0,0)
var player_pos = Vector2(0,0)


const artifact_quota := 3 # the amount of artifacts needed to move to the next level

var artifacts_collected := {
	"prehistoric": 0,
	"ancient_egypt": 0,
	"ancient_greece": 0,
	"imperial_china": 0,
	"medieval_europe": 0,
	"renaissance": 0,
	"industrial_revolution": 0,
	"prohibition": 0,
	"world_wars": 0,
	"modern_day": 0,
	"near_future": 0,
	"far_future": 0
}

func add_artifact(time_period: String):
	if artifacts_collected.has(time_period):
		artifacts_collected[time_period] += 1

func print_artifacts(time_period: String): # for debugging
	if artifacts_collected.has(time_period):
		print("DEBUG: %s: %d"%[str(time_period), int(artifacts_collected.get(time_period))])
		# debugging
		if check_quotas(time_period):
			print("DEBUG: check_quotas() is true")
		else:
			print("DEBUG: check_quotas() is false")
		# end debugging
		print("\n")
	else:
		print("ERROR: Time period%s doesn't exist! This happened in print_artifacts() in globals.gd" %[str(time_period)])

func return_artifacts(time_period: String):
	if artifacts_collected.has(time_period):
		return artifacts_collected.get(time_period)
	else:
		print("ERROR: Time period doesn't exist! This happened in return_artifacts() in globals.gd")
		return 0

func set_artifacts(time_period: String, count: int):
	if artifacts_collected.has(time_period):
		artifacts_collected[time_period] = count
	else:
		print("ERROR: Time period%s doesn't exist! This happened in set_artifacts() in globals.gd" %[str(time_period)])

func check_quotas(time_period: String):
	if artifacts_collected.has(time_period):
		if artifacts_collected.get(time_period) >= artifact_quota:
			return true
		else:
			return false
	else:
		print("ERROR: Time period%s doesn't exist! This happened in check_quotas() in globals.gd" %[str(time_period)])

func set_player_pos(position: Vector2):
	player_pos = position

func getSpawn():
	print(respawn)
	return respawn
