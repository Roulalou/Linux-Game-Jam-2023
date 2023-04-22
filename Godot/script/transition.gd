extends Node2D

var counter = 0

@onready
var global_vars = get_node("/root/Global")


# Called when the node enters the scene tree for the first time.
func _ready():
	$Control/transiAnim.speed_scale = (global_vars.level * 0.2)
	$Control/C1.speed_scale = (global_vars.level * 0.2)
	$Control/C2.speed_scale = (global_vars.level * 0.2)
	$Control/C3.speed_scale = (global_vars.level * 0.2)
	$Control/C4.speed_scale = (global_vars.level * 0.2)
	
	$Control/Number.text = str(global_vars.level)
	if global_vars.lost == true:
		$Control/transiAnim.animation = "sad"
		global_vars.lost = false
	else : 
		$Control/transiAnim.animation = "Good"
		
	if global_vars.hp >= 4:
		$Control/C4.visible = true
	if global_vars.hp >= 3:
		$Control/C3.visible = true
	if global_vars.hp >= 2:
		$Control/C2.visible = true
	if global_vars.hp >= 1:
		$Control/C1.visible = true

func _on_timer_timeout():
	if global_vars.game == "douche":
		get_tree().change_scene_to_file("res://scene/douche.tscn")
	elif global_vars.game == "bouquet":
		get_tree().change_scene_to_file("res://scene/bouquet.tscn")
	elif global_vars.game == "trolley":
		get_tree().change_scene_to_file("res://scene/trolley_level.tscn")
	else:
		var next = randi() % 3
		if next == 0: 
			get_tree().change_scene_to_file("res://scene/douche.tscn")
		if next == 1:
			get_tree().change_scene_to_file("res://scene/bouquet.tscn")
		if next == 2:
			get_tree().change_scene_to_file("res://scene/trolley_level.tscn")
