extends KinematicBody2D

onready var HUD = get_node("/root/Game/HUD")
export var _laser_scene: PackedScene

#func _physics_process(delta):
#	position += get_input()*speed
#	if Input.is_action_pressed("shoot") and not $Laser.is_casting:
#		$Laser.fire(get_viewport().get_mouse_position())
#	elif $Laser.is_casting:
#		$Laser.stop()


#moving player with mouse
func _physics_process(delta):
	self.position = get_global_mouse_position()
	
	#spawn laser
	if Input.is_action_just_pressed("shoot"):
		var new_laser = _laser_scene.instance() 
		new_laser.position = position 
		get_parent().add_child(new_laser)


#func get_input():
#	var input_dir = Vector2(0,0)
#	if Input.is_action_pressed("up"):
#		input_dir.y -= 1
#	if Input.is_action_pressed("down"):
#		input_dir.y += 1
#	if Input.is_action_pressed("left"):
#		input_dir.x -= 1
#	if Input.is_action_pressed("right"):
#		input_dir.x += 1
#	return input_dir.rotated(rotation)

#damage
func _on_Damage_body_entered(body):
	HUD.update_health(-body.damage)
	body.die()
