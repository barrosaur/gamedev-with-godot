extends Node2D

func _on_yes_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/obstacle.tscn");


func _on_no_pressed() -> void:
	get_tree().quit()
