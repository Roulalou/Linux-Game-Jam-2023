extends Node

#var m_obstacle = preload("res://Assets/Prefabs/people.tscn")
@export var m_obstacle: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	SpawnObstacle()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func SpawnObstacle():
	var instance = m_obstacle.instantiate()
	var root = get_tree().get_root()
	root.add_child(instance)
	
