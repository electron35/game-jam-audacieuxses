extends Sprite2D

@onready var progress_bar: TextureProgressBar = $ProgressBar

func _process(delta: float) -> void:
	var max:float = Global.MaxScore
	var cur:float = Global.Score
	if (max!=0):
		progress_bar.value = (Global.Score/max)*100
	else:
		progress_bar.value = 0
