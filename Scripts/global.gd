extends Node

const DIALOG_LIST:DialogList = preload("uid://d0xy1i31wmho0")

func GetRandomDialog(): #Get a random dialog in the Dialog_list resources
	return DIALOG_LIST.list[randi_range(0,DIALOG_LIST.list.size()-1)]
