extends Node

var switch:bool = false

@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var audio_stream_player_2: AudioStreamPlayer = $AudioStreamPlayer2

func _ready():
	switch = false
	
func _process(delta: float) -> void:
	if (!switch && Global.Hurry):
		switch = true
		audio_stream_player.stop()
		audio_stream_player_2.play(0.0)
		
