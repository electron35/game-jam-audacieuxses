extends Control

@onready var chrono: Sprite2D = $Chrono
@onready var chrono_arrow: Sprite2D = $ChronoArrow
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer 
@onready var chrono_bruning: AudioStreamPlayer = $chrono_bruning 
@onready var chrono_ticking: AudioStreamPlayer = $chrono_ticking

var wait_time:float

func _ready() -> void:
	wait_time = timer.wait_time
	timer.start()
	chrono_bruning.play()
	chrono_ticking.play()

func _process(delta: float) -> void:
	chrono_arrow.rotate(deg_to_rad(360/wait_time)*delta)
	if (timer.time_left <= wait_time/2):
		Global.Hurry = true

func _on_timer_timeout() -> void:
	Global.EndGame()
