extends RayCast3D
@onready var wand: AnimatedSprite2D = $"../UIControl/Wand"


func _input(event):
	if event.is_action_pressed("Shoot"):
		print("shoot")
		var item:Node3D
		if (get_collider()!=null):
			wand.play("default")
			item = get_collider()
			item.spell()
		
			
