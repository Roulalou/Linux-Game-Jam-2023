extends Node2D

@onready
var global_vars = get_node("/root/Global")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_douche_pressed():
	global_vars.game = "douche"
	get_tree().change_scene_to_file("res://scene/transition.tscn")


func _on_samourai_pressed():
	global_vars.game = "bouquet"
	get_tree().change_scene_to_file("res://scene/transition.tscn")


func _on_trolley_pressed():
	global_vars.game = "trolley"
	get_tree().change_scene_to_file("res://scene/transition.tscn")


func _on_multi_pressed():
	global_vars.game = "random"
	get_tree().change_scene_to_file("res://scene/transition.tscn")
