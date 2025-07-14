extends Node

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

func print_artifacts(time_period: String):
	if artifacts_collected.has(time_period):
		print("%s: %d"%[str(time_period), int(artifacts_collected.get(time_period))])
	else:
		print("time period%s not found" %[str(time_period)])
