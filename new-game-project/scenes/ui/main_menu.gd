extends Control

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_how_to_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ui/how_to_play_menu.tscn")
