extends Control

@onready
var global_vars = get_node("/root/Global")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	$TDouche.value -= 6 + (global_vars.level * 2)
	$Time.value -= 8 + (global_vars.level * 0.5)
	
	if $Time.value <= 0:
		global_vars.level += 1
		get_tree().change_scene_to_file("res://scene/transition.tscn")
	
	# value not  between x and y : lose hp
	if $TDouche.value < 700 || $TDouche.value >800:
		$SebLaverChaud.visible = true
		$HP.value -= 3
		if $HP.value <= 0:
			global_vars.hp -= 1
			get_tree().change_scene_to_file("res://scene/transition.tscn")
	else:
		$SebLaverChaud.visible = false
	
func _input(event):
	if event.is_action_pressed("doucheUP"):
		$TDouche.value += 50
