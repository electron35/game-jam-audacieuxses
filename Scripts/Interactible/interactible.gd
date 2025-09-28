@tool
extends StaticBody3D
class_name Interactible

@export var data:InteractibleData
@export var break_value:int = 1

@onready var sprite: Sprite3D = $Sprite3D
@onready var particle: GPUParticles3D = $Particle
@onready var male_tears_filling: AudioStreamPlayer = $male_tears_filling

var broken:bool

func _ready() -> void:
	Global.MaxScore+=break_value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if broken:
		sprite.texture=data.AfterTexture
	else:
		sprite.texture=data.BeforeTexture
	pass

func spell():
	if (!broken):
		broken=true
		particle.emitting=true
		Global.Score+=break_value
		male_tears_filling.play()
		
