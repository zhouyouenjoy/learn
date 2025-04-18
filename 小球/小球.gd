extends Area2D
var init_position
var x=0
var y=5
var vec=Vector2(x,y)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init_position = position
	add_to_group("ball")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move()
	rest()
	
func move():
	position=position+vec
		
	pass
func rest():
	if position.x>1120 or position.x<0:
		vec = Vector2(x,y)
		position = init_position
	
	
