extends Control

@onready var choice_1: Button = $Choice1
@onready var choice_2: Button = $Choice2

func _ready() -> void:
	self.visible = false
	
func start_dialog(data:NPC_Data) -> void:
	print(data.name)
	
	choice_1.set_text(data.choiceOne)
	choice_2.set_text(data.choiceTwo)
	
	self.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
