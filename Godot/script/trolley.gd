extends CharacterBody2D


@export var m_speed : float = 50.0;

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready():
	velocity.x = m_speed;
	

func _physics_process(delta):
		move_and_slide();
		
		
func _process(delta):
	pass
	
func MoveUp():
	pass
	
func MoveDown():
	pass
