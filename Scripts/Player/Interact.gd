extends RayCast3D
@onready var wand: AnimatedSprite2D = $"../UIControl/Wand"
@onready var projectile_throw: AudioStreamPlayer = $projectile_throw
@onready var projectile_impact: AudioStreamPlayer = $projectile_impact


func _input(event):
	if event.is_action_pressed("Shoot"):

		
		projectile_throw.play()
		

		wand.play("Shoot")

		var item:Node3D
		if (get_collider()!=null):
			item = get_collider()
			item.spell()
			projectile_impact.play()
		
			
