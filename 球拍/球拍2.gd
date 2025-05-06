extends Area2D
var v=5
signal abc
func _ready():
	connect("abc",Callable(self,"a"))
	emit_signal("abc",12)
func a(b):
	print(b)

func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	move()
	for i in get_overlapping_areas():
		pass

func move():
	var direction = Vector2.ZERO
	if Input.is_action_pressed("2player左") and position.x>-500:
		direction.x -= 1
		position=position+direction*v
		direction = Vector2.ZERO
	if Input.is_action_pressed("2player右") and position.x<0:
		direction.x += 1
		position=position+direction*v
		direction = Vector2.ZERO
	if Input.is_action_pressed("2player上")and position.y>-250:
		direction.y -= 1
		position=position+direction*v
		direction = Vector2.ZERO
	if Input.is_action_pressed("2player下") and position.y<280:
		direction.y += 1
		position=position+direction*v
		direction = Vector2.ZERO	
	pass
	

func on_area_entered(area: Area2D) -> void:
	
	if area.is_in_group("ball"):
		$sound.play()
		area.vec.x=-5
	pass # Replace with function body.
