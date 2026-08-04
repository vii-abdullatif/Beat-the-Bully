extends Control

@onready var restart_button: Button = $RestartButton

func _ready() -> void:
	hide() 


func show_victory() -> void:
	show()
	get_tree().paused = true 
	
func on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_return_button_pressed() -> void:
		get_tree().change_scene_to_file("res://scenes/ui/main_menu.tscn")
