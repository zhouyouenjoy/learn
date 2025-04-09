extends Area2D
var vec=Vector2(5,5)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	add_to_group("ball")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move()
	pass
	
func move():
	position=position+vec
		
	pass
