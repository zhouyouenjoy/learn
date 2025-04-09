extends Area2D
var v=2

func _process(delta: float) -> void:
	move()

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
	
 
