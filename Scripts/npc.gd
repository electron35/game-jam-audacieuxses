@tool
class_name NPC
extends StaticBody3D

@export var data:NPC_Data

var crying:bool

@onready var sprite: Sprite3D = $Sprite3D
@onready var speech: Sprite3D = $Sprite3D/Speech
@onready var interaction_area: Area3D = $InteractionArea
@onready var look_at_me: Node3D = $CollisionShape3D/LookAtMe
@onready var male_crying: AudioStreamPlayer = $male_crying
@onready var male_laugh: AudioStreamPlayer = $male_laugh
@onready var male_tears_filling: AudioStreamPlayer = $male_tears_filling

func _ready() -> void:
	var dialog = Global.GetRandomDialog()
	
	data.weakChoice = dialog.sentence
	data.weakResponse = dialog.answer
	
	speech.visible = false
	sprite.texture=data.UnarmedFace
	Global.MaxScore += 2

func _process(delta) -> void:
	if !crying:
		sprite.texture=data.UnarmedFace

func _on_interaction_area_body_entered(body: Node3D) -> void:
	print(body.name)
	if body is CharacterBody3D:
		body.open_dialog(self)
		male_laugh.play()
		
func cry(isStrong:bool): #Fonction qui se déclenche lorsqu'on a répondu à l'interaction
	var textData = data.strongResponse if isStrong else data.weakResponse
	Global.Score += 1 + (1 if isStrong else 0)
	male_tears_filling.play()
	crying = true
	sprite.texture=data.HurtedFace
	speech.display_text = textData
	speech.visible = true
	interaction_area.monitoring = false
	male_crying.play()
