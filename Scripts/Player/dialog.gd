extends Control

@onready var choice_1: Button = $Choice1
@onready var choice_2: Button = $Choice2

var npc:NPC
var strongButton:Button

func _ready() -> void:
	self.visible = false
	
func randomizeChoice():
	var random = randi_range(1,2)
	
	if (random==1):
		strongButton = choice_1
		choice_1.text = npc.data.strongChoice
		choice_2.text = npc.data.weakChoice
	else:
		strongButton = choice_2
		choice_2.text = npc.data.strongChoice
		choice_1.text = npc.data.weakChoice
	
func start_dialog(_npc:NPC) -> void:
	npc = _npc
	
	randomizeChoice()
	
	self.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func end_dialog(btn:Button) -> void:
	npc.cry(btn==strongButton)
	
	self.visible = false

func _on_choice_1_pressed() -> void:
	end_dialog(choice_1)

func _on_choice_2_pressed() -> void:
	end_dialog(choice_2)
