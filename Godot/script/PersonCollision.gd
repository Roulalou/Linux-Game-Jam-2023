extends Area2D

@onready
var global_vars = get_node("/root/Global")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player"):
		global_vars.lost = true
		global_vars.hp -= 1
		get_tree().change_scene_to_file("res://scene/transition.tscn")
