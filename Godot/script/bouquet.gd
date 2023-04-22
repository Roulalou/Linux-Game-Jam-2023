extends Node2D
var df = 1
var wait = false

func _ready():
	var actTime = randf_range(2,(15/df))
	$Temps.wait_time = actTime
	$Temps.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
	
func _on_timer_timeout():
	$Espace2.self_modulate = Color(1, 1, 1, 1)
	$Délai.start()
	wait = true


func _on_dlai_timeout():
	wait = false
	$Espace2.self_modulate = Color(1, 1, 1, 0.35)
	$Idle.visible = false
	$Homme.visible = true
	$Homme.play("Fail")
	# Replace with function body.
	
func _input(event):
	if wait and event.is_action_pressed("Space"):
		$"Délai".stop()
		wait = false
		$Idle.visible = false
		$Homme.visible = true
		$Homme.play("Success")
