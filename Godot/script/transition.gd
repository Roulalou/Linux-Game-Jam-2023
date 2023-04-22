extends Node2D

var counter = 0

@onready
var global_vars = get_node("/root/Global")


# Called when the node enters the scene tree for the first time.
func _ready():
	$Control/Number.text = str(global_vars.level)
	$Control/HP.value = global_vars.hp
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Control/loading.value += 1 # * delta
	if $Control/loading.value >= 100:
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
