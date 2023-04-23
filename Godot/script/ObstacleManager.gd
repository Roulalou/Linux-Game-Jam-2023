extends Node2D

#var m_obstacle = preload("res://Assets/Prefabs/people.tscn")
@export var m_obstacle: PackedScene

@export var m_obstacleSpawnGap : float = 596;

@export var m_obstacleGapMargin : float = 10;

@export var m_numberOfObstacles = 20;


# Called when the node enters the scene tree for the first time.
func _ready():
	SpawnObstacles()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func SpawnObstacle(offsetScale):
	var instance = m_obstacle.instantiate() as Node2D
	instance.position = position +  (Vector2.RIGHT * (offsetScale * m_obstacleSpawnGap + m_obstacleGapMargin))
	add_child(instance)
	
func SpawnObstacles():
	for i in m_numberOfObstacles:
		SpawnObstacle(i+1)
	
