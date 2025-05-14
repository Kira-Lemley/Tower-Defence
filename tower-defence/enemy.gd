extends Node2D

var health

#called when the node enters the scene tree for the first time
func _ready():
	health = 100

#Called every frame. 'delta' is elapsed time since the previous frame
func _process(delta):
	position.x = position.x + 1


func _on_area_entered(area: Area2D) -> void:
	health = health - 20
	area.queue_free()
	if health < 1: 
		queue_free()
