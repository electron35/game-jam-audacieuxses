extends Control

@onready var ui_winning: Sprite2D = $UiWinning
@onready var ui_game_over: Sprite2D = $UiGameOver
@onready var option_good_end_3: Sprite2D = $OptionGoodEnd3


func _ready() -> void:
	var text = "Incroyable ton score est de " + str(Global.Score) 
	var maxScore:float = Global.MaxScore if Global.MaxScore!=0 else 1
	var curScore:float = Global.Score
	
	if curScore/maxScore*100 < 30:
		ui_winning.visible = false
		option_good_end_3.visible = false
		ui_game_over.visible = true
	else:
		ui_game_over.visible = false
		option_good_end_3.visible = true
		ui_winning.visible = true
	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(Global.MAIN_MENU)
