class_name Camera
extends Camera2D

@export var duration_shake: float 
@export var shake_intensity: float  

var is_shaking := false
var time_start_shaking := 0

func _ready() -> void:
	DamageManager.heavy_blow_recieved.connect(on_heavy_blow_recieved)

func on_heavy_blow_recieved() -> void:
	if OptionsManager.is_screenshake_enebled:
		is_shaking = true
		time_start_shaking = Time.get_ticks_msec()

func _process(_delta: float) -> void:
	if is_shaking:
		var time_elapsed := Time.get_ticks_msec() - time_start_shaking
		var duration_ms := duration_shake 
		if time_elapsed < duration_ms:
			var damping := 0.5 - (time_elapsed / duration_ms)
			var current_intensity := shake_intensity * damping
			offset = Vector2(
				randf_range(-current_intensity, current_intensity), 
				randf_range(-current_intensity, current_intensity)
			)
		else:
			is_shaking = false
			offset = Vector2.ZERO
