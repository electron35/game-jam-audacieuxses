extends Control

@onready var tuto: Panel = $Tuto

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tuto.visible = false


func _on_play_pressed() -> void:
	Global.StartGame()

func _on_help_pressed() -> void:
	tuto.visible = true

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_quit_tuto_pressed() -> void:
	tuto.visible = false
