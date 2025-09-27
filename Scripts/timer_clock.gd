extends Control

@onready var chrono: Sprite2D = $Chrono
@onready var chrono_arrow: Sprite2D = $ChronoArrow
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer



func _ready() -> void:
	timer.start()
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	chrono_arrow.rotate(deg_to_rad(6)*delta)
	
	
