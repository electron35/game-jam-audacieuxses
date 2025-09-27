@tool
class_name NPC
extends StaticBody3D


@export var npc_name:String = "test"
@export var data:NPC_Data

@onready var sprite: Sprite3D = $Sprite3D
@onready var speech: Sprite3D = $Sprite3D/Speech
@onready var interaction_area: Area3D = $InteractionArea

func _ready() -> void:
	speech.visible = false
	sprite.texture=data.UnarmedFace

func _on_interaction_area_body_entered(body: Node3D) -> void:
	print(body.name)
	if body is CharacterBody3D:
		body.open_dialog(self)
		
func cry(isStrong:bool): #Fonction qui se déclenche lorsqu'on a répondu à l'interaction
	var textData = data.strongResponse if isStrong else data.weakResponse
	sprite.texture=data.HurtedFace
	speech.display_text = textData
	speech.visible = true
	interaction_area.monitoring = false
