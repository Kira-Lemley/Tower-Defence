extends Area2D

var parent

func _ready():
	parent = get_parent()
	
func _process(delta):
	parent.target
	
