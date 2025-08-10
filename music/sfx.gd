extends Node

const effects = {"collect": "res://music/yay.ogg"}

func play_sfx(effect: String) -> void:
	if effect in effects:
		var player = AudioStreamPlayer.new()
		player.stream = load(effects[effect])
		add_child(player)
		player.play()
		player.connect("finished", Callable(player, "queue_free"))
		print("played sfx")
	else:
		print("Sound effect doesn't exist!")
