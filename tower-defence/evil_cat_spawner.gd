extends Marker2D

var evilCat_scene 
var parent_node
var new_evilCat
var elapsed_time

func _ready():
	evilCat_scene = preload("res://enemy.tscn")
	parent_node = get_parent()
	new_evilCat = evilCat_scene.instantiate()
	elapsed_time = 0
	
func _process(delta):
	elapsed_time = elapsed_time + delta
	
	if elapsed_time >= 4:
		elapsed_time = 0
		new_evilCat = evilCat_scene.instantiate()
		new_evilCat.add_to_group("enemies")
		new_evilCat.global_position = global_position
		parent_node.add_child(new_evilCat)
	
