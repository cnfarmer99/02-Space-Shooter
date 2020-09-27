extends KinematicBody2D

export var speed = Vector2(0,3)
export var health = 100
export var points = 100
export var damage = 50
onready var HUD = get_node("/root/Game/HUD")

onready var Explosion = load("res://Explosion/Explosion.tscn")


func _physics_process(delta):
	position += speed

	if position.y > get_viewport().size.y + 100:
		queue_free()

func die():
	HUD.update_score(points)
	#explosion
	var explosion = Explosion.instance()
	explosion.position = position
	get_node("/root/Game/Explosions").add_child(explosion)
	explosion.get_node("Animation").play()
	queue_free()
	
# other_area is obj involved in collision, Area2D is self.area
func _on_Area2D_area_entered(other_area: Area2D):
	self.queue_free() # queue_free destroys obj
	other_area.get_parent().queue_free()
	HUD.update_score(points)
