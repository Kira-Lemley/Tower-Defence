extends Button

var build_mode = false
var tower_icon


func _ready():
	build_mode = false
	tower_icon = $GoodCat_Tower_preview
	

func _process(delta):
	pass




func _on_pressed() -> void:
	if build_mode:
		build_mode = false
		tower_icon.visible = false
	else:
		build_mode = true
		tower_icon.visible = true
		
