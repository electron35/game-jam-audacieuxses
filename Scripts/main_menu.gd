extends Control

@onready var tuto: Panel = $Tuto
@onready var intro: Control = $Intro
@onready var intro_button: Button = $Intro/IntroButton
@onready var narration_clean_1: Sprite2D = $Intro/NarrationClean1
@onready var narration_clean_2: Sprite2D = $Intro/NarrationClean2
@onready var animation_player: AnimationPlayer = $Intro/AnimationPlayer

var intro_click = 0

func _ready() -> void:
	tuto.visible = false
	intro.visible = false


func _on_play_pressed() -> void:
	intro.visible = true
	narration_clean_1.visible = true
	narration_clean_2.visible = false
	animation_player.play("FirstFadeIn")
	

func _on_help_pressed() -> void:
	tuto.visible = true

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_quit_tuto_pressed() -> void:
	tuto.visible = false
	


func _on_intro_button_pressed() -> void:
	if intro_click == 0:
		intro_click+=1
		animation_player.play("FirstFadeOut")
		narration_clean_1.visible = false
		animation_player.play("SecondFadeIn")
		narration_clean_2.visible = true
	else:
		intro_click=0
		Global.StartGame()
