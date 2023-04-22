extends Node2D
var df = 1
var wait = false

func _ready():
	var actTime = randf_range(2,(5/df))
	$Temps.wait_time = actTime
	$Temps.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
	
func _on_timer_timeout():
	$Espace2.modulate = Color(255,255,255,255)
	$Délai.start()
	wait = true


func _on_dlai_timeout():
	wait = false
	$Femme.rotate(3) # Replace with function body.
	
func _input(event):
	if wait and event.is_action_pressed("Space"):
		$Homme.rotate(3)
		$"Délai".stop()
		wait = false
