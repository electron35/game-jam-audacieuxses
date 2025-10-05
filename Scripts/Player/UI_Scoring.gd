extends Sprite2D

@onready var progress_bar: TextureProgressBar = $ProgressBar

func _process(delta: float) -> void:
	var maxScore:float = Global.MaxScore
	var curScore:float = Global.Score
	if (maxScore!=0):
		progress_bar.value = (curScore/maxScore)*100
		
	else:
		progress_bar.value = 0
