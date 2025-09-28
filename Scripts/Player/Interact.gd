extends RayCast3D
@onready var wand: AnimatedSprite2D = $"../UIControl/Wand"
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


func _input(event):
	if event.is_action_pressed("Shoot"):
		wand.play("default")
		audio_stream_player.play()
		
		var item:Node3D
		if (get_collider()!=null):
			item = get_collider()
			item.spell()
		
			
