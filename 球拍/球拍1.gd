extends Area2D
var v=5 #速度系数

func _process(delta: float) -> void:
	pass
func _physics_process(delta: float) -> void:
	move()
	for i in get_overlapping_areas():
		if i.is_in_group("ball"):
			get_node("./sound").play()
			i.vec.x=5

func move():
	var direction = Vector2.ZERO
	if Input.is_action_pressed("1player左") and position.x>0:
		direction.x -= 1
		position=position+direction*v
		direction = Vector2.ZERO
	if Input.is_action_pressed("1player右") and position.x<500:
		direction.x += 1
		position=position+direction*v
		direction = Vector2.ZERO
	if Input.is_action_pressed("1player上")and position.y>-250:
		direction.y -= 1
		position=position+direction*v
		direction = Vector2.ZERO
	if Input.is_action_pressed("1player下") and position.y<280:
		direction.y += 1
		position=position+direction*v
		direction = Vector2.ZERO	
	pass
	
 
