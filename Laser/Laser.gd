extends Node2D

# export changes laser speed from editor
export var _speed = 2
onready var Explosion = load("res://Explosion/Explosion.tscn")

func _physics_process(delta):
	# multiply by delta makes it not frame rate dependent
	position.y -= _speed * delta

