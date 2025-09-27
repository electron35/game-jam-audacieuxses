extends StaticBody3D


@export var npc_name:String = "test"
@export var data:NPC_Data


func _on_interaction_area_body_entered(body: Node3D) -> void:
	print(body.name)
	if body is CharacterBody3D:
		body.open_dialog(self)
