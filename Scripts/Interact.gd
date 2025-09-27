extends RayCast3D


func _input(event):
	if event.is_action_pressed("Shoot"):
		print("shoot")
		var testing:Node3D
		if (get_collider()!=null):
			testing = get_collider()
			print(testing.name)
