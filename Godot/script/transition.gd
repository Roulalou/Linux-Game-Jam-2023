extends Node2D

var counter = 0

@onready
var global_vars = get_node("/root/Global")


# Called when the node enters the scene tree for the first time.
func _ready():
	$Control/Number.text = str(global_vars.level)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Control/ProgressBar.value += 1 # * delta
	if $Control/ProgressBar.value >= 100:
		get_tree().change_scene_to_file("res://scene/douche.tscn")
