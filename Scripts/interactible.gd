@tool
extends StaticBody3D
class_name Interactible

@export var data:InteractibleData

@onready var sprite: Sprite3D = $Sprite3D
@onready var particle: GPUParticles3D = $Particle

var broken:bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


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
