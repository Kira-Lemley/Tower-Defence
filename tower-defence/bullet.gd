extends Area2D

var speed
var vector

func _ready():
	speed = 50
	vector = Vector2(1,0)
	
func _process(delta):
	global_position = global_position - delta * speed * vector

#updatePosition
