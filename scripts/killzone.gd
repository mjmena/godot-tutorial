extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("you died")
	Engine.time_scale = .4
	body.get_node("CollisionShape2D").queue_free()
	body.get_node("AnimationPlayer").play("die")
	body.velocity.y = -100
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
