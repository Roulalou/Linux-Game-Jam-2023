extends Node2D

@onready
var global_vars = get_node("/root/Global")


# Called when the node enters the scene tree for the first time.
func _ready():
	$Control/Label.text = str(global_vars.level) + " !!"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	global_vars.hp = 4
	global_vars.level = 1
	get_tree().change_scene_to_file("res://scene/mainmenu.tscn")
