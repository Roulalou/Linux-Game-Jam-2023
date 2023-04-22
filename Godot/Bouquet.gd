extends Sprite2D
var timer = Timer.new()
var df = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	timer.start(15/df)
	var actTime = randf_range(2,(15-df)-1)
	if timer.time_left == actTime:
		# bouton espace
