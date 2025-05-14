extends Control

var button
var level
var tower_scene
var new_tower

func _ready():
	button = $build_tower
	level = get_parent()
	tower_scene = preload("res://good_cat.tscn")
	
func _input(event):
	#mouse in viewport coordinates
	
	if event is InputEventMouseButton:
		if button.build_mode:
			print("mouse Click/Unlcick at:" , event.position)
			new_tower = tower_scene.instantiate()
			new_tower.global_position = get_viewport().get_mouse_position()
			level.add_child(new_tower)
		else:
			print("No")


#Built in button? Are we using that?
