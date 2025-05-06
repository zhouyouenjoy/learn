extends Area2D
var init_position
var x=5
var y=5
var vec=Vector2(x,y)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init_position = position
	add_to_group("ball")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move()
	
func move():
	position=position+vec
		
	pass
func rest():
		if vec.x>0:
			ScoreCount.score1+=1
		else :
			ScoreCount.score2+=1
		vec = Vector2(x,y)
		position = init_position
	
	


func _on_sprite_2d_texture_changed() -> void:
	pass # Replace with function body.


func _on_sprite_2d_frame_changed() -> void:
	pass # Replace with function body.
