extends Control

@onready var label: Label = $Label

func _ready() -> void:
	var text = "Incroyable ton score est de " + str(Global.Score) 
	label.text = text


func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(Global.MAIN_MENU)
