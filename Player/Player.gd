extends KinematicBody2D


onready var HUD = get_node("/root/Game/HUD")
export var _laser_scene: PackedScene

func _physics_process(delta):
	#follows mouse position along x
	position.x = get_global_mouse_position().x
	
	#shooting laser
	if Input.is_action_just_pressed("shoot"):
		var new_laser = _laser_scene.instance() as Node2D
		new_laser.position = self.position
		self.get_parent().add_child(new_laser)

func _on_Damage_body_entered(body):
	#HUD.update_health(-body.damage)
	body.die()
	HUD.update_score(0)
