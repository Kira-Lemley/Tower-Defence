extends Node2D


var target

func _ready():
	target = null
	
func _process(delta):
	print(target)


func _on_range_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemies"):
		target = area

func _on_range_area_exited(area: Area2D) -> void:
	pass
