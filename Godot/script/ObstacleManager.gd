extends Node2D

#var m_obstacle = preload("res://Assets/Prefabs/people.tscn")
@export var m_obstacle: PackedScene

@export var m_obstacleSpawnGap : float = 596;

@export var m_obstacleGapMargin : float = 10;

@export var m_numberOfObstacles = 20;

@export var m_verticalOffset : float = 122;


# Called when the node enters the scene tree for the first time.
func _ready():
	SpawnObstacles()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func SpawnObstacle(xOffsetScale, yOffsetScale):
	var instance = m_obstacle.instantiate() as Node2D
	instance.position = position +  (Vector2.RIGHT * (xOffsetScale * m_obstacleSpawnGap + m_obstacleGapMargin)) + (Vector2.UP * (yOffsetScale * m_verticalOffset))
	add_child(instance)
	
func SpawnObstacles():
	for i in m_numberOfObstacles:
		var yOffset = randi_range(-1, 1)
		SpawnObstacle(i+1, yOffset)
	
