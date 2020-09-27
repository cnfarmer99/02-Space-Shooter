extends Area2D

onready var global = get_node("/root/Global")

func _on_Level_body_entered(body):
	global.level = 2
	global.score = 0
	get_tree().change_scene("res://Level/Level2.tscn")
