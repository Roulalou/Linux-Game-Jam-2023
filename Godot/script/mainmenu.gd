extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_douche_pressed():
	get_tree().change_scene_to_file("res://scene/douche.tscn")


func _on_samourai_pressed():
	get_tree().change_scene_to_file("res://scene/bouquet.tscn")


func _on_trolley_pressed():
	get_tree().change_scene_to_file("res://scene/trolley_level.tscn")
