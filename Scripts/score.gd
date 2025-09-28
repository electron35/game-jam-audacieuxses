extends Control

@onready var text_good_end: Label = $TextGoodEnd
@onready var option_good_end_3: Sprite2D = $OptionGoodEnd3
@onready var label: Label = $Label
@onready var text_game_over: Label = $TextGameOver
@onready var music_bad_end: AudioStreamPlayer = $music_bad_end
@onready var music_good_end: AudioStreamPlayer = $music_good_end
@onready var option_bad_end: Sprite2D = $OptionBadEnd


func _ready() -> void:
	var maxScore:float = Global.MaxScore if Global.MaxScore!=0 else 1
	var curScore:float = Global.Score
	var percent:float = curScore/maxScore*100 
	var text = "Vous avez remplis " + str(int(percent)) + "% de la fiole"
	label.text = text
	if percent < 15:
		text_good_end.visible = false
		option_good_end_3.visible = false
		option_bad_end.visible = true
		text_game_over.visible = true
		
		music_bad_end.play()
	else:
		option_good_end_3.visible = true
		option_bad_end.visible = false
		text_game_over.visible = false
		text_good_end.visible = true
		music_good_end.play(	)
	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(Global.MAIN_MENU)
