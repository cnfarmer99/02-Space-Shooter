extends Node2D


export var _speed: float = 10


func _physics_process(delta):
	position.y -= _speed * delta

func _on_Target_body_entered(body):
	body.die()
