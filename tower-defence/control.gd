extends Control

var button

func _ready():
	button = $build_tower
	
func _input(event):
	#mouse in viewport coordinates
	
	if event is InputEventMouseButton:
		if button.build_mode:
			print("mouse Click/Unlcick at:" , event.position)
		else:
			print("No")


#Built in button? Are we using that?
