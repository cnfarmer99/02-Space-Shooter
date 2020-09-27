extends Node2D

onready var cow = load("res://Enemy/Enemy.tscn")
onready var narwhal = load("res://Enemy/Enemy2.tscn")
export var prob = 0.8

onready var width = get_viewport().size.x

func _on_Timer_timeout():
	if randf() < prob:
		var enemy1 = cow.instance()
		enemy1.position.x = randi() % (int(width) - 350)
		enemy1.speed = Vector2(0, 3)
		add_child(enemy1)
		
		var enemy2 = narwhal.instance()
		enemy2.position.x = enemy1.position.x + 350
		enemy2.speed = Vector2(0, 5)
		add_child(enemy2)
		
