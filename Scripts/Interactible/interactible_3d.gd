extends StaticBody3D

var broken=false

@export var break_value:int

@onready var particle: GPUParticles3D = $Particle
@onready var clean_state: Node3D = $CleanState
@onready var broken_state: Node3D = $BrokenState

func _ready() -> void:
		clean_state.visible=true
		broken_state.visible=false

func spell():
	if (!broken):
		broken=true
		particle.emitting=true
		clean_state.visible=false
		broken_state.visible=true
		Global.Score+=break_value
