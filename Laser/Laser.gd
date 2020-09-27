extends Node2D

#var is_casting = false
export var _speed: float = 10

func _physics_process(delta):
	position.y -= _speed * delta

#func fire(pos):
#	is_casting = true
#	cast_to = pos - global_position
#	$Target.position = cast_to
#	$Target.monitoring = true
#
#func stop():
#	is_casting = false
#	cast_to = Vector2.ZERO
#	$Target.position = Vector2.ZERO
#	$Target.monitoring = false
#
#
#func _on_Target_body_entered(body):
#	body.die()


func _on_Target_body_entered(body):
	body.die()
