extends Area2D

onready var global = get_node("/root/Global")


func _on_Next_Level_body_entered(body):
	global.level = 3
	global.score = 0
	get_tree().change_scene("res://Level/Level3.tscn")
