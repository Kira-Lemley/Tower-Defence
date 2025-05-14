extends Marker2D


var the_level
var bolt_scene
var new_bolt
var time_elapsed

func _ready():
	the_level = get_parent().get_parent()
	bolt_scene = preload("res://bullet.tscn")
	new_bolt = bolt_scene.instantiate()
	time_elapsed = 0
	
func _process(delta):
	if get_parent().target != null:
		var new_bolt = bolt_scene.instantiate()
	
		time_elapsed = time_elapsed + delta
	
		self.look_at(get_parent().target.global_position)
		if time_elapsed >= 0.5:
			time_elapsed = 0
			new_bolt = bolt_scene.instantiate()
			new_bolt.vector = (get_parent().target.global_position - get_parent().global_position)
			new_bolt.global_position = global_position
			#new_bolt.rotate(PI/4)
			the_level.add_child(new_bolt)
