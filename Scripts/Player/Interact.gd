extends RayCast3D


func _input(event):
	if event.is_action_pressed("Shoot"):
		print("shoot")
		var item:Node3D
		if (get_collider()!=null):
			item = get_collider()
			item.spell()
		
			
