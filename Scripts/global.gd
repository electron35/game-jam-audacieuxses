extends Node

const SCORE = preload("uid://cx3wxgqf8c684")
const MAIN_MENU = preload("uid://b4oojk4mqe1nm")
const MAIN_SCENE = preload("uid://rmv8sxhmdkni")
const DIALOG_LIST:DialogList = preload("uid://d0xy1i31wmho0")

var Score:int = 0
var MaxScore:int = 0

var Hurry:bool = false

func GetRandomDialog(): #Get a random dialog in the Dialog_list resources
	return DIALOG_LIST.list[randi_range(0,DIALOG_LIST.list.size()-1)]

func StartGame()->void:
	Score = 0
	MaxScore = 0
	Hurry = false
	get_tree().change_scene_to_packed(MAIN_SCENE)

func EndGame()->void:
	print(Score)
	print("Max: " + str(MaxScore))
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().reload_current_scene()
	get_tree().change_scene_to_packed(SCORE)
	
