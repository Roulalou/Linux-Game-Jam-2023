extends Node2D

@onready
var global_vars = get_node("/root/Global")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ParallaxBackground.scroll_offset += Vector2(0,1) * 1000 * delta


func _on_douche_pressed():
	global_vars.game = "douche"
	get_tree().change_scene_to_file("res://scene/douche.tscn")


func _on_samourai_pressed():
	global_vars.game = "bouquet"
	get_tree().change_scene_to_file("res://scene/bouquet.tscn")


func _on_trolley_pressed():
	global_vars.game = "trolley"
	get_tree().change_scene_to_file("res://scene/trolley_level.tscn")


func _on_random_pressed():
	global_vars.game = "random"
	var next = randi() % 3
	if next == 0: 
		get_tree().change_scene_to_file("res://scene/douche.tscn")
	if next == 1:
		get_tree().change_scene_to_file("res://scene/bouquet.tscn")
	if next == 2:
		get_tree().change_scene_to_file("res://scene/trolley_level.tscn")
