extends Node2D

#var m_obstacle = preload("res://Assets/Prefabs/people.tscn")
@export var m_obstacle: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	SpawnObstacle()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func SpawnObstacle():
	var instance = m_obstacle.instantiate() as Node2D
	instance.position = position
	add_child(instance)
	
