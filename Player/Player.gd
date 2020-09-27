extends Node2D

onready var HUD = get_node("/root/Game/HUD")
export var _laser_scene: PackedScene


#moving player with mouse
func _physics_process(delta):
	self.position = get_global_mouse_position()
	
	#spawn laser
	if Input.is_action_just_pressed("shoot"):
		var new_laser = _laser_scene.instance() 
		new_laser.position = position 
		get_parent().add_child(new_laser)


func _on_Damage_area_entered(other_area: Area2D):
	HUD.update_health(-Area2D.damage)
	self.queue_free()
	other_area.get_parent().queue_free()
