extends Node

var is_screenshake_enebled := true
var music_volume := 5
var sfx_volume := 5

func _ready() -> void:
	_ensure_bus("Music")
	_ensure_bus("SFX")

func _ensure_bus(bus_name: String) -> void:
	if AudioServer.get_bus_index(bus_name) == -1:
		AudioServer.add_bus()
		var new_index := AudioServer.bus_count - 1
		AudioServer.set_bus_name(new_index, bus_name)
		AudioServer.set_bus_send(new_index, "Master")

func set_music_volume(value: int) -> void:
	music_volume = value
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), linear_to_db(value / 10.0))

func set_sfx_volume(value: int) -> void:
	sfx_volume = value
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), linear_to_db(value / 10.0))

func set_screenshake(value: bool) -> void:
	is_screenshake_enebled = value
