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
		get_tree().change_scene_to_file("res://scene/douche.tscn")
