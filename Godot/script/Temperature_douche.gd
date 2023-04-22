extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	$TDouche.value -= 1
	$Time.value -= 8
	
	if $Time.value <= 0:
		get_tree().change_scene_to_file("res://scene/mainmenu.tscn")
	
	# value not  between x and y : lose hp
	if $TDouche.value < 70 || $TDouche.value >80:
		$HP.value -= 1
	
func _input(event):
	if event.is_action_pressed("doucheUP"):
		$TDouche.value +=5
