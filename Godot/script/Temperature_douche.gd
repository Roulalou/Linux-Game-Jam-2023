extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	$ProgressBar.value -= 1
	# value not  between x and y : lose hp
	
func _input(event):
	if event.is_action_pressed("doucheUP"):
		$ProgressBar.value +=5
