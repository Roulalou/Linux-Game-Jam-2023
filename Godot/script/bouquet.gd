extends Node2D
var wait = false
@onready
var global_vars = get_node("/root/Global")

func _ready():
	var actTime = randf_range(2,((10/global_vars.level)+2))
	$Temps.wait_time = actTime
	$Temps.start()
	$Music.play()
	$Ambiance.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
	
func _on_timer_timeout():
	$Quick.play()
	$Espace2.self_modulate = Color(1, 1, 1, 1)
	$Délai.start()
	wait = true


func _on_dlai_timeout():
	$Ambiance.stop()
	$Music.stop()
	$Fail.play()
	wait = false
	$Espace2.self_modulate = Color(1, 1, 1, 0.35)
	$Idle.visible = false
	$Homme.visible = true
	$Homme.play("Fail")
	global_vars.hp -= 1
	global_vars.lost = true
	# Replace with function body.
	
func _input(event):
	if wait and event.is_action_pressed("Space"):
		$Ambiance.stop()
		$Music.stop()
		$Success.play()
		$"Délai".stop()
		wait = false
		$Idle.visible = false
		$Homme.visible = true
		$Homme.play("Success")
		global_vars.level += 1


func _on_success_finished():
	get_tree().change_scene_to_file("res://scene/transition.tscn")


func _on_fail_finished():
	get_tree().change_scene_to_file("res://scene/transition.tscn")
