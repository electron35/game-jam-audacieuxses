@tool
extends Sprite3D

@export var display_text:String = "default"
@onready var vp: SubViewport = $SubViewport
@onready var box: NinePatchRect = $SubViewport/Box
@onready var label: Label = $SubViewport/Box/Label


func _process(delta: float) -> void:
	if (label!=null):
		label.text = display_text
	if (box!= null && label!=null):
		box.size = label.size
		vp.size = box.size
