extends CharacterBody2D


@export var m_speed : float = 50.0;

@export var m_speedDifficultyOffset: float = 20.0;

@onready
var global_vars = get_node("/root/Global")

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready():
	velocity.x = m_speed + (m_speedDifficultyOffset * global_vars.level);
	
func _process(delta):
	pass
	

func _physics_process(delta):
		move_and_slide();
		
		
func _input(event):
	if (event.is_action_pressed("MoveUp") && position.y != -122):
		MoveUp()
	if (event.is_action_pressed("MoveDown") && position.y != 122):
		MoveDown()
	
func MoveUp():
	position.y -= 122;
	pass
	
func MoveDown():
	position.y += 122;
	pass

