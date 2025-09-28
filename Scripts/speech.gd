@tool
extends Sprite3D

@export var display_text:String = "default"
@onready var vp: SubViewport = $SubViewport
@onready var label: Label = $SubViewport/Label


func _process(delta: float) -> void:
	if (label!=null):
		label.text = display_text
		#vp.size = label.size
