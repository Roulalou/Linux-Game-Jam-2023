extends AnimatedSprite2D

@onready
var global_vars = get_node("/root/Global")

# Called when the node enters the scene tree for the first time.
func _ready():
	speed_scale = 0.5 * global_vars.level


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
